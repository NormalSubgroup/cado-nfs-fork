// TODO: use unified compact lists...!
// TODO: reintroduce mat->weight

/* If one wants to change the R data structure, please check the diff of
   revision 1568, which clearly identifies the places where R is used. */

#include "cado.h"
#include <stdio.h>
#include <stdlib.h>
#include <gmp.h>
#include <string.h>
#include <math.h>
#include <unistd.h>

#include "portability.h"
#include "utils_with_io.h"

#include "filter_config.h"
#include "merge_replay_matrix.h"
#include "sparse.h"
#include "mst.h"
#include "report.h"

#include "markowitz.h"
#include "merge_mono.h"

#define DEBUG 0

#if DEBUG >= 1
/* total number of row additions in merge */
static unsigned long row_additions = 0;
#endif

/* Given an ideal of weight m, returns the best index i, 0 <= i < m,
   such that merging the i-th relation containing the ideal with all
   others (m-1) gives the smallest total weight.
   Note: for m >= 4 this might not be the best possible merge. For example
   for m=4 the best possible merge might be: 0-1, 1-2, 2-3 which is not
   of this shape (but for m <= 3 all possible merges are of this shape). */
static int
findBestIndex(filter_matrix_t *mat, int m, int32_t *ind, int32_t ideal)
{
    /* not mallocing A[][] to speed up things */
    int A[MERGE_LEVEL_MAX][MERGE_LEVEL_MAX], i, j, imin, wmin, w;

    ASSERT(m <= MERGE_LEVEL_MAX);
    if (m == 2)
      return 0;
    fillRowAddMatrix(A, mat, m, ind, ideal);
    // iterate over all vertices
    imin = -1;
    wmin = SMAX(int);
    for(i = 0; i < m; i++){
	// compute the new total weight if i is used as pivot
	w = 0;
	for(j = 0; j < m; j++)
	    // note A[i][i] = 0
	    w += A[i][j];
#if DEBUG >= 1
	printf ("W[%d]=%d\n", i, w);
#endif
	if (w < wmin)
          {
	    imin = i;
	    wmin = w;
          }
    }
    return imin;
}

#if DEBUG >= 2
// We should have mat->wt[j] == m == nchk
static void
checkCoherence(filter_matrix_t *mat, int m, int j)
{
    int nchk = 0, k;

    nchk = mat->R[j][0];
    ASSERT(nchk == (mat->wt[j] >= 0 ? mat->wt[j] : -mat->wt[j]));
    if(m != -1){
	if(nchk != m){
	    printf ("HYPERCHECK: mat->R[%d][0]=%ld, m=%d\n", j,
                     (long int) mat->R[j][0], m);
	    printf ("Gasp: nchk=%d\n", nchk);
	}
	ASSERT(nchk == m);
    }
}
#endif

//////////////////////////////////////////////////////////////////////
// making things independent of the real data structure used
//////////////////////////////////////////////////////////////////////

/* remove column j and update matrix */
static void
removeColumnAndUpdate(filter_matrix_t *mat, int j)
{
    MkzRemoveJ (mat, j);
    freeRj (mat, j);
}

/* remove column j, and update the matrix */
static void
removeColDefinitely(report_t *rep, filter_matrix_t *mat, int32_t j)
{
  unsigned int k;

  for (k = 1; k <= mat->R[j][0]; k++)
    {
# if TRACE_COL >= 0 || TRACE_ROW >= 0
      if (j == TRACE_COL || mat->R[j][k] == TRACE_ROW)
        printf ("TRACE: removeColDefinitely j=%d: remove row %d, weight %d\n",
                j, mat->R[j][k], mat->wt[j]);
# endif
      removeRowDefinitely (rep, mat, mat->R[j][k]);
      mat->rem_ncols--;
    }
  removeColumnAndUpdate (mat, j);
}

// The cell [i, j] may be incorporated to the data structure, at least
// if j is not too heavy, etc.
static void
addCellAndUpdate(filter_matrix_t *mat, int i, int32_t j)
{
    int w = MkzIncrCol(mat, j);

    if (w >= 0)
      {
	if(w > mat->cwmax)
          {
	    // the weight of column w exceeds cwmax, thus we remove it
	    removeColumnAndUpdate(mat, j);
	    mat->wt[j] = -w;
          }
	else
          {
	    // update R[j] by adding i
	    add_i_to_Rj(mat, i, j);
	    MkzUpdate(mat, i, j);
          }
      }
}

// remove the cell (i,j), and updates matrix correspondingly.
// if final, also update the Markowitz counts
static void
removeCellAndUpdate(filter_matrix_t *mat, int i, int32_t j, int final)
{
#if TRACE_ROW >= 0
    if(i == TRACE_ROW){
	printf ("TRACE_ROW: removeCellAndUpdate i=%d j=%d\n", i, j);
    }
#endif
    if(mat->wt[j] < 0){
	// if mat->wt[j] is already < 0, we don't care about
	// decreasing, updating, etc. except when > 2
	return;
    }
    MkzDecreaseColWeight(mat, j);
    // update R[j] by removing i
    remove_i_from_Rj(mat, i, j);
    if (final)
      MkzUpdateDown (mat, j);
}

//////////////////////////////////////////////////////////////////////
// now, these guys are generic...!

// for all j in row[i], removes j and update data
// if final, also update the Markowitz counts
static void
removeRowAndUpdate(filter_matrix_t *mat, int i, int final)
{
    unsigned int k;

#if TRACE_ROW >= 0
    if(i == TRACE_ROW)
	printf ("TRACE_ROW: removeRowAndUpdate i=%d\n", i);
#endif
    mat->weight -= rowWeight(mat, i);
    for(k = 1; k <= matLengthRow(mat, i); k++){
#if TRACE_COL >= 0
      unsigned int w = mat->wt[matCell(mat, i, k)];
#endif
	removeCellAndUpdate(mat, i, matCell(mat, i, k), final);
#if TRACE_COL >= 0
	if(matCell(mat, i, k) == TRACE_COL && final)
          printf ("TRACE_COL: removeRowAndUpdate removes %d from R_%d (weight %d -> %d)\n",
                  TRACE_COL, i, w, mat->wt[TRACE_COL]);
#endif
    }
}

#ifdef NFS_DL
// All entries M[i, j] are potentially added to the structure.
static void
addOneRowAndUpdate(filter_matrix_t *mat, int i)
{
  unsigned int k;

  mat->weight += rowWeight(mat, i);
  for(k = 1; k <= matLengthRow(mat, i); k++)
    {
#if TRACE_ROW >= 0
      if (matCell(mat, i, k) == TRACE_ROW)
        printf ("TRACE_ROW: addOneRowAndUpdate i=%d j=%d\n", i,
                matCell(mat, i, k));
#endif
      addCellAndUpdate(mat, i, matCell(mat, i, k));
    }
}

// realize mat[i1] += mat[i2] and update the data structure.
// len could be the real length of row[i1]+row[i2] or -1.
static void
addRowsAndUpdate(filter_matrix_t *mat, int i1, int i2, int32_t j)
{
    // cleaner one, that shares addRowsData() to prepare the next move...!
    // i1 is to disappear, replaced by a new one
    removeRowAndUpdate(mat, i1, 0);
    // we know the length of row[i1]+row[i2]
    addRows(mat->rows, i1, i2, j);
    addOneRowAndUpdate(mat, i1);
}
#else
/* special version for factorization */
static void
addRowsAndUpdate (filter_matrix_t *mat, int i1, int i2, int32_t j MAYBE_UNUSED)
{
    uint32_t k, k1, k2, l1, l2, len;
    typerow_t **rows = mat->rows, *tmp, *r1 = rows[i1], *r2 = rows[i2];

    l1 = rowLength (rows, i1);
    l2 = rowLength (rows, i2);

    /* removeRowAndUpdate(mat, i1, 0) */
    mat->weight -= l1;
    for (k1 = 1; k1 <= l1; k1++)
      removeCellAndUpdate (mat, i1, r1[k1], 0);

    /* addRows(mat->rows, i1, i2, j), i.e.,
       addRowsUpdateIndex(mat->rows, NULL, i1, i2, j) */
    len = 1 + l1 + l2;
    tmp = (typerow_t *) malloc (len * sizeof(typerow_t));
    k = k1 = k2 = 1;

    while ((k1 <= l1) && (k2 <= l2))
      if (r1[k1] < r2[k2])
        tmp[k++] = r1[k1++];
      else if (r1[k1] > r2[k2])
        tmp[k++] = r2[k2++];
      else
        k1++, k2++;
    for(; k1 <= l1;)
      tmp[k++] = r1[k1++];
    free (r1);
    for(; k2 <= l2;)
      tmp[k++] = r2[k2++];
    tmp[0] = k - 1;
    rows[i1] = (k == len) ? tmp : realloc (tmp, k * sizeof(typerow_t));

    /* addOneRowAndUpdate(mat, i1) */
    mat->weight += k - 1;
    for (r1 = rows[i1], k1 = 1; k1 < k; k1++)
      addCellAndUpdate (mat, i1, r1[k1]);
}
#endif

static void
removeSingletons(report_t *rep, filter_matrix_t *mat)
{
  index_t j;

  for (j = 0; j < mat->ncols; j++)
    if (mat->wt[j] == 1)
      removeColDefinitely (rep, mat, j);
}

void
removeRowDefinitely(report_t *rep, filter_matrix_t *mat, int32_t i)
{
    removeRowAndUpdate(mat, i, 1);
    destroyRow(mat, i);
    report1(rep, i, -1);
    mat->rem_nrows--;
    /* delete the row from the heap of heavy rows */
    heap_delete (mat->Heavy, mat, i);
}

/* Try all combinations of merging one row with all others (m-1) ones
   to find the smaller one; resists to m==1.
 */
static void
tryAllCombinations(report_t *rep, filter_matrix_t *mat, int m, int32_t *ind,
                   int32_t j)
{
    int i, k;

    if(m == 1)
      printf ("Warning: m=1 in tryAllCombinations\n");
    i = findBestIndex(mat, m, ind, j);
#if DEBUG >= 1
    printf ("Minimal is i=%d (%d %d)\n", i, ind[0], ind[1]);
#endif
    for(k = 0; k < m; k++)
	if(k != i){
	    addRowsAndUpdate(mat, ind[k], ind[i], j);
#if DEBUG >= 1
	    printf ("new row[%d]=", ind[k]);
	    print_row (mat, ind[k]);
	    printf ("\n");
#endif
	}

    /* swap ind[0] and ind[i] */
    int itmp = ind[i];
    ind[i] = ind[0];
    ind[0] = itmp;

#if DEBUG >= 1
    printf ("=> new_ind: %d %d\n", ind[0], ind[1]);
#endif
    reportn(rep, ind, m, j);
    removeRowAndUpdate(mat, ind[0], 1);
    destroyRow(mat, ind[0]);
}

// add u to its sons; we save the history in the history array, so that
// we can report all at once
// A[i][j] contains the estimated weight/length of R[ind[i]]+R[ind[j]].
static int
addFatherToSonsRec(int history[MERGE_LEVEL_MAX][MERGE_LEVEL_MAX+1],
		   filter_matrix_t *mat, int m, int *ind, int32_t j,
		   int A[MERGE_LEVEL_MAX][MERGE_LEVEL_MAX],
		   int *father,
		   int sons[MERGE_LEVEL_MAX][MERGE_LEVEL_MAX+1],
		   int u, int level0)
{
    int k, itab = 1, i1, i2, level = level0;

    if(sons[u][0] == 0)
	// nothing to do for a leaf...!
	return -1;
    i2 = ind[u];
    if(u == father[u])
	history[level0][itab++] = i2; // trick for the root!!!
    else
	// the usual trick not to destroy row
	history[level0][itab++] = -(i2+1);
    for(k = 1; k <= sons[u][0]; k++){
	i1 = addFatherToSonsRec(history, mat, m, ind, j, A,
				father, sons, sons[u][k], level+1);
	if(i1 != -1)
	    level = i1;
	i1 = ind[sons[u][k]];
	// add u to its son
	addRowsAndUpdate(mat, i1, i2, j);
	history[level0][itab++] = i1;
    }
    history[level0][0] = itab-1;
    return level;
}

int
addFatherToSons(int history[MERGE_LEVEL_MAX][MERGE_LEVEL_MAX+1],
		filter_matrix_t *mat, int m, int *ind, int32_t j,
		int A[MERGE_LEVEL_MAX][MERGE_LEVEL_MAX],
		int *father,
                int *height MAYBE_UNUSED, int hmax MAYBE_UNUSED,
		int sons[MERGE_LEVEL_MAX][MERGE_LEVEL_MAX+1])
{
    return addFatherToSonsRec(history, mat, m, ind, j, A, father, sons, 0, 0);
}

void
MSTWithA(report_t *rep, filter_matrix_t *mat, int m, int32_t *ind, int32_t j, 
         double *tMST, int A[MERGE_LEVEL_MAX][MERGE_LEVEL_MAX])
{
    int history[MERGE_LEVEL_MAX][MERGE_LEVEL_MAX+1];
    int sons[MERGE_LEVEL_MAX][MERGE_LEVEL_MAX+1];
    int father[MERGE_LEVEL_MAX], height[MERGE_LEVEL_MAX], hmax, i, w;

    *tMST = seconds();
    hmax = minimalSpanningTree(&w, father, height, sons, m, A);
    *tMST = seconds()-*tMST;
#if DEBUG >= 1
    printMST(father, sons, m);
#endif
    hmax = addFatherToSons(history, mat, m, ind, j,A, father, height, hmax,sons);
    for(i = hmax; i >= 0; i--)
#if 0
	reporthis(rep, history, i);
#else
        reportn(rep, history[i]+1, history[i][0], j);
#endif
    removeRowAndUpdate(mat, ind[0], 1);
    destroyRow(mat, ind[0]);
}

static void
useMinimalSpanningTree(report_t *rep, filter_matrix_t *mat, int m, int32_t *ind,
                       int32_t j, double *tfill, double *tMST)
{
    int A[MERGE_LEVEL_MAX][MERGE_LEVEL_MAX];

    *tfill = seconds();
    fillRowAddMatrix(A, mat, m, ind, j);
    *tfill = seconds()-*tfill;
    MSTWithA(rep, mat, m, ind, j, tMST, A);
}

static void
findOptimalCombination(report_t *rep, filter_matrix_t *mat, int m, int32_t *ind,
                       int32_t j, double *tfill, double *tMST)
{
  /* we can use here two algorithms:
     (a) tryAllCombinations tries to merge row i with all other (m-1) rows,
         for each i, 0 <= i < m, and keeps the best i
     (b) useMinimalSpanningTree computes a minimal spanning tree
     Both have complexity O(m^2), and useMinimalSpanningTree is always better
     or equal. */
  if (m <= 2)
    {
      *tfill = *tMST = 0;
      tryAllCombinations (rep, mat, m, ind, j);
    }
  else
    useMinimalSpanningTree (rep, mat, m, ind, j, tfill, tMST);
}

#if DEBUG >= 1
static void
checkWeights (filter_matrix_t *mat)
{
  int *W, j, i, k, minw = INT_MAX;

  W = (int*) malloc (mat->ncols * sizeof(int));
  for (j = 0; j < mat->ncols; j++)
    W[j] = 0;
  for(i = 0; i < mat->nrows; i++)
    if(!isRowNull(mat, i))
      {
        for(k = 1; k <= lengthRow(mat, i); k++)
          {
            j = cell(mat, i, k);
            ASSERT_ALWAYS(0 <= j && j < mat->ncols);
            W[j] ++;
          }
      }
  for (j = 0; j < mat->ncols; j++)
    {
      static int count = 0;
      if (W[j] != mat->wt[j])
        {
          if (mat->wt[j] >= 0)
            {
              fprintf (stderr, "Wrong weight for column %d: expected %d, got %d\n",
                       j, mat->wt[j], W[j]);
              exit (1);
            }
          else if (W[j] <= mat->mergelevelmax)
            {
              if (count++ <= 10)
                fprintf (stderr, "Warning, column %d: wt=%d W=%d\n",
                         j, mat->wt[j], W[j]);
            }
        }
      if (W[j] == 1 && mat->wt[j] == 1)
        {
          fprintf (stderr, "Error, weight=1 for column %d\n", j);
          exit (1);
        }
      if (W[j] != 0 && mat->wt[j] >= 0 && W[j] < minw)
        minw = W[j];
      if (W[j] == 2 && mat->wt[j] == 2)
        {
          static int count = 0;
          if (count ++ <= 10)
            fprintf (stderr, "Warning, column %d: wt=%d W=%d\n",
                     j, mat->wt[j], W[j]);
        }
    }
  printf ("Minimum non-zero column weight: %d\n", minw);
  free (W);
}
#endif


// j has weight m, which should coherent with mat->wt[j] == m
static void
mergeForColumn (report_t *rep, double *tt, double *tfill, double *tMST,
                filter_matrix_t *mat, int m, int32_t j)
{
    int32_t ind[MERGE_LEVEL_MAX];
    int ni;

    ASSERT(mat->wt[j] == m);

    /* each m-merge leads to m-1 additions of rows */
#if DEBUG >= 1
    row_additions += m - 1;
    if (m > MERGE_LEVEL_MAX)
      {
	fprintf (stderr, "Error: m=%d > MERGE_LEVEL_MAX=%d\n",
                 m, MERGE_LEVEL_MAX);
	exit(1);
      }
    printf ("Treating column %d of weight %d\n", j, mat->wt[j]);
#if DEBUG >= 2
    printf ("Status before next j=%d to start\n", j);
    // the corresponding rows are in R[j], skipping 1st cell
    checkCoherence(mat, m, j);
#endif
#endif

    memcpy (ind, mat->R[j] + 1, mat->R[j][0] * sizeof (int32_t));

    /* now ind[0], ..., ind[m-1] are the m rows containing j */

#if DEBUG >= 1
    printf (" %d", j);
    printf (" => the %d rows are:\n", m);
    for(int k = 0; k < m; k++){
	printf ("row[%d]=", ind[k]);
	print_row (mat, ind[k]);
	printf ("\n");
    }
    printf ("\n");
#endif

    *tt = seconds();
    findOptimalCombination (rep, mat, m, ind, j, tfill, tMST);
    *tt = seconds()-(*tt);
    mat->rem_nrows--;
    mat->rem_ncols--;
    removeColumnAndUpdate (mat, j);

    /* update the status of rows in heap of heavy rows */
    for (ni = 0; ni < m; ni++)
      {
        if (mat->rows[ind[ni]] != NULL) /* row is still active */
          heap_push (mat->Heavy, mat, ind[ni]);
        else
          heap_delete (mat->Heavy, mat, ind[ni]);
      }
}

// Delete at most niremmax superfluous rows such that nrows-ncols >= keep.
// Let's say we are at merge-level m.
// Return the number of removed rows.
static int
deleteSuperfluousRows (report_t *rep, filter_matrix_t *mat,
                       int niremmax, int m)
{
  int keep = mat->keep;
  int nirem = 0;

  if (m <= 2)
    return 0; /* it is not worth removing rows during level-2 merges */

  if ((int) (mat->rem_nrows - mat->rem_ncols) <= keep)
    return 0;

  if (niremmax > (int) (mat->rem_nrows - mat->rem_ncols) - keep)
    niremmax = (mat->rem_nrows - mat->rem_ncols) - keep;

  for (nirem = 0; nirem < niremmax && mat->Heavy->size > 0; nirem++)
    {
      uint32_t i = heap_pop (mat->Heavy, mat);
      removeRowDefinitely (rep, mat, i);
    }
  return nirem;
}

static void
mergeForColumn2 (report_t *rep, filter_matrix_t *mat,
                 double *totopt, double *totfill, double *totMST, int32_t j)
{
    double tt, tfill, tMST;
    
    mergeForColumn(rep, &tt, &tfill, &tMST, mat, mat->wt[j], j);
    *totopt += tt;
    *totfill += tfill;
    *totMST += tMST;
}

int
number_of_superfluous_rows(filter_matrix_t *mat)
{
    int kappa, ni2rem;

    if (mat->keep > 0)
      kappa = (mat->rem_nrows-mat->rem_ncols) / mat->keep;
    else
      kappa = (mat->rem_nrows-mat->rem_ncols);

    if(kappa <= (1<<4))
      ni2rem = mat->keep / 2;
    else if(kappa <= (1<<5))
      ni2rem = mat->keep * (kappa/4);
    else if(kappa <= (1<<10))
      ni2rem = mat->keep * (kappa/8);
    else if(kappa <= (1<<15))
      ni2rem = mat->keep * (kappa/16);
    else if(kappa <= (1<<20))
      ni2rem = mat->keep * (kappa/32);
    else
      ni2rem = mat->keep * (kappa/64);
    return ni2rem;
}

static void
print_memory_usage (filter_matrix_t *mat)
{
  unsigned long mem_rows, mem_wt, mem_cols, mem_MKZ;

  mem_rows = mat->nrows * sizeof (typerow_t*);
  for (unsigned long i = 0; i < mat->nrows; i++)
    if (mat->rows[i] != NULL)
      mem_rows += (rowLength(mat->rows, i) + 1) * sizeof (typerow_t);
  mem_wt = mat->ncols * sizeof (int32_t);
  mem_cols = mat->ncols * sizeof (index_t*);
  for (unsigned long j = 0; j < mat->ncols; j++)
    if (mat->R[j] != NULL)
      mem_cols += (mat->R[j][0] + 1) * sizeof (index_t);
  mem_MKZ = (mat->MKZQ[1] + 1) * 2 * sizeof(int32_t); /* memory for MKZQ */
  mem_MKZ += (mat->ncols + 1) * sizeof(index_t); /* memory for MKZA */
  printf ("# memory usage: rows %luMB, cols %luMB, wt %luMB, MKZ %luMB, "
          "tot %lu MB (VmPeak %ld)\n",
          mem_rows >> 20, mem_cols >> 20, mem_wt >> 20, mem_MKZ >> 20,
          (mem_rows + mem_cols + mem_wt + mem_MKZ) >> 20,
          PeakMemusage () >> 10);
}

static inline void
print_report (filter_matrix_t *mat)
{
  printf ("N=%" PRIu64 " (%" PRId64 ") W=%" PRIu64 " W*N=%.2e "
          "W/N=%.2f #Q=%d\n", mat->rem_nrows,
          ((int64_t) mat->rem_nrows) - ((int64_t) mat->rem_ncols),
          mat->weight, (double) compute_WN (mat), compute_WoverN (mat),
          MkzQueueCardinality (mat->MKZQ));
  if (mat->verbose)
    print_memory_usage (mat);
  fflush (stdout);
}

struct merge_stats_s
{
  uint64_t nb;
  int32_t w_min;
  int32_t w_max;
  float w_av;
};

typedef struct merge_stats_s merge_stats_t;

merge_stats_t *
merge_stats_malloc (int maxlevel)
{
  merge_stats_t *data = NULL;
  data = (merge_stats_t *) malloc ((maxlevel + 1) * sizeof (merge_stats_t));
  ASSERT_ALWAYS (data != NULL);
  for (int i = 0; i <= maxlevel; i++)
  {
    data[i].nb = 0;
    data[i].w_min = INT32_MAX;
    data[i].w_max = INT32_MIN;
    data[i].w_av = 0.0;
  }

  return data;
}

/* This function assumes that 0 <= level <= maxlevel */
static inline int
merge_stats_is_first_merge (merge_stats_t *data, int level)
{
  return (data[level].nb == 0);
}

/* This function assumes that 0 <= level <= maxlevel */
static inline void
merge_stats_update (merge_stats_t *data, int level, int32_t weight)
{
  data[level].nb++;
  data[level].w_max = MAX (data[level].w_max, weight);
  data[level].w_min = MIN (data[level].w_min, weight);
  data[level].w_av += (float) weight;
}

void
merge_stats_print (merge_stats_t *data, int maxlevel)
{
  uint64_t nbtot = 0;
  for (int level = 1; level <= maxlevel; level++)
  {
    nbtot += data[level].nb;
    if (data[level].nb > 0)
      printf ("Number of %d-merges: %" PRIu64 " (min_weight = %" PRId32 ", "
              "max_weight = %" PRId32 ", av_weight = %.2f)\n", level,
              data[level].nb, data[level].w_min, data[level].w_max,
              data[level].w_av / ((float) data[level].nb));
    else
      printf ("Number of %d-merges: %" PRIu64 "\n", level, data[level].nb);
  }
  printf ("Total number of merges: %" PRIu64 "\n", nbtot);
}

void
mergeOneByOne (report_t *rep, filter_matrix_t *mat, int maxlevel,
               double target_density)
{
  double totopt = 0.0, totfill = 0.0, totMST = 0.0;
  int ni2rem;
  int32_t j, mkz;
  uint64_t WN_prev, WN_cur, WN_min;
  double WoverN;
  unsigned int ncost = 0;
  int m;
  merge_stats_t *merge_data;

  printf ("# Using %s to compute the merges\n", __func__);

  /* initialize the heap of heavy rows */
  for (unsigned long i = 0; i < mat->nrows; i++)
    {
      ASSERT_ALWAYS(mat->rows[i] != NULL);
      heap_push (mat->Heavy, mat, i);
    }

  // clean things
  removeSingletons (rep, mat);

  merge_data = merge_stats_malloc (maxlevel);

  WN_min = WN_cur = compute_WN(mat);
  WoverN = compute_WoverN(mat);

  /* report lines are printed for each multiple of report_incr */
  double report_incr = 5.0;
  double report_next = ceil (WoverN / report_incr) * report_incr;

  while(1)
  {
    /* Do we need to stop */
    if (WoverN >= target_density)
    {
      printf ("Reached target density W/N=%.2f.\n", WoverN);
      break;
    }

    /* Do one merge */
    if (MkzPopQueue(&j, &mkz, mat) == 0)
    {
      printf ("Heap is empty, stopping. Rerun with larger maxlevel if more "
               "merges are needed\n");
      break;
    }
    m = mat->wt[j];
#if 0
    /* m=0 can happen for already merged ideals */ /* Really ??? */
    if (m == 0)
    {
      printf("Warning, ideal j=%" PRId32 " was proposed for a merge but it has "
             "weight 0\n", j);
      continue;
    }
#endif
    if (m == 1) /* singleton ideal */
        removeColDefinitely(rep, mat, j);
    else if (m > 0)
    {
      if (m > 1 && merge_stats_is_first_merge (merge_data, m))
      {
        fprintf (rep->outfile, "## First %d-merge\n", m);
        print_report (mat);
        printf ("First %d-merge, (estimated) cost %d\n", m, mkz);
        fflush (stdout);
      }
      fprintf(rep->outfile, "#\n");
      mergeForColumn2 (rep, mat, &totopt, &totfill, &totMST, j);
    }

    /* Update values and report if necessary */
    merge_stats_update (merge_data, m, mkz);
    WoverN = compute_WoverN(mat);
    WN_prev = WN_cur;
    WN_cur = compute_WN(mat);
    if (WN_cur > WN_prev)
      ncost++;
    else
      ncost = 0;
    if (WN_cur < WN_min)
      WN_min = WN_cur;

    if (WoverN >= report_next)
    {
      print_report (mat);
      report_next += report_incr;
      removeSingletons (rep, mat);
      ni2rem = number_of_superfluous_rows (mat);
      deleteSuperfluousRows (rep, mat, ni2rem, m);
      // recomputeR (mat);
    }
  }

  uint64_t excess = mat->rem_nrows - mat->rem_ncols;
  printf ("Removing final excess, nrows=%" PRIu64 "\n", mat->rem_nrows);
  deleteSuperfluousRows(rep, mat, excess - mat->keep, INT_MAX);
  printf ("Removing singletons, nrows=%" PRIu64 "\n", mat->rem_nrows);
  removeSingletons (rep, mat);

#if DEBUG >= 1
  checkWeights (mat);
#endif

  merge_stats_print (merge_data, maxlevel);
  free (merge_data);

  printf ("Total number of removed columns: %" PRId64 "\n",
          mat->ncols-mat->rem_ncols);

  printf ("Time spent finding optimal combination: %.2fs (among which %.2fs "
          "for filling the weight matrices and %.2fs for computing minimal "
          "spanning tree)\n", totopt, totfill, totMST);
}

//////////////////////////////////////////////////////////////////////
//
// Resume section: very much inspired by replay.c, of course...!
//
//////////////////////////////////////////////////////////////////////

// A line is "i i1 ... ik".
// If i >= 0 then
//     row[i] is to be added to rows i1...ik and destroyed at the end of
//     the process.
//     Works also is i is alone (hence: destroyed row).
// If i < 0 then
//     row[-i-1] is to be added to rows i1...ik and NOT destroyed.
//
static void
doAllAdds(report_t *rep, filter_matrix_t *mat, char *str)
{
  int32_t j;
  int32_t ind[MERGE_LEVEL_MAX], i0;
  int ni, sg, k;

  ni = parse_hisfile_line (ind, str, &j);  
  
  if (ind[0] < 0)
    {
      sg = -1;
      i0 = -ind[0]-1;
    }
  else
    {
      sg = 1;
      i0 = ind[0];
    }

  for (k = 1; k < ni; k++)
      addRowsAndUpdate(mat, ind[k], i0, j);

  reportn(rep, ind, ni, j);
  
  if (sg > 0)
    {
      removeRowAndUpdate(mat, i0, 1);
      destroyRow(mat, i0);
      mat->rem_nrows--;
    }
}

// resumename is a file of the type mergehis.
// TODO: Compiles, but not really tested with Markowitz...!
void
resume(report_t *rep, filter_matrix_t *mat, const char *resumename)
{
    FILE *resumefile = fopen(resumename, "r");
    char str[RELATION_MAX_BYTES];
    unsigned long addread = 0;
    int nactivej;
    index_t j;
    char * rp;
    int REPORT = 10000;

    printf ("Resuming computations from %s\n", resumename);
    // skip first line containing nrows ncols
    rp = fgets(str, RELATION_MAX_BYTES, resumefile);
    ASSERT_ALWAYS(rp);

    printf ("Reading row additions\n");
    while(fgets(str, RELATION_MAX_BYTES, resumefile)){
	addread++;
	if((addread % (10 * REPORT)) == 0)
	    printf ("%lu lines read at %2.2lf\n", addread, seconds());
	if(str[strlen(str)-1] != '\n'){
	    printf ("Gasp: not a complete a line!");
	    printf (" I stop reading and go to the next phase\n");
	    break;
	}
        doAllAdds(rep, mat, str);
    }
    fclose(resumefile);
    for(j = 0; j < mat->ncols; j++)
	if((mat->wt[j] == 0) && MkzIsAlive(mat->MKZA, j))
	    // be sure j was removed...
	    removeColumnAndUpdate(mat, j);
    nactivej = 0;
    for(j = 0; j < mat->ncols; j++)
	if(mat->wt[j] != 0)
	    nactivej++;
    mat->rem_ncols = nactivej;
    printf ("At the end of resume, we have");
    printf (" nrows=%" PRIu64 " ncols=%" PRIu64 " (%" PRIu64 ")\n",
            mat->rem_nrows, mat->rem_ncols, mat->rem_nrows-mat->rem_ncols);
}
