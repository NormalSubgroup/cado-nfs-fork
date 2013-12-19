/*
 * Program: free relations
 * Original author : F. Morain
 * Purpose: creating free relations in a suitable format
 * Modified / rewritten by C. Bouvier (and others)

This file is part of CADO-NFS.

CADO-NFS is free software; you can redistribute it and/or modify it under the
terms of the GNU Lesser General Public License as published by the Free
Software Foundation; either version 2.1 of the License, or (at your option)
any later version.

CADO-NFS is distributed in the hope that it will be useful, but WITHOUT ANY
WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR
A PARTICULAR PURPOSE.  See the GNU Lesser General Public License for more
details.

You should have received a copy of the GNU Lesser General Public License
along with CADO-NFS; see the file COPYING.  If not, write to the Free Software
Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301, USA.
*/

#include "cado.h"
#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>   /* for _O_BINARY */
#include <string.h>
#include <math.h>

#include <gmp.h>
#include "mod_ul.c"
#include "portability.h"
#include "utils.h"
#include "typedefs.h"

/* generate all free relations up to the large prime bound */
/* generate the renumbering table */


static unsigned long MAYBE_UNUSED
allFreeRelations (cado_poly pol, unsigned long pmin, unsigned long pmax,
                  unsigned long lpb[2], renumber_t renumber_table,
                  const char *outfilename)
{
  unsigned long p, *roots[2], nfree = 0;
  int d[2], k[2], i, min_side, max_side, rat_side, alg_side;
  index_t old_table_size = renumber_table->size;
  FILE *fpout = stdout;

  fpout = fopen_maybe_compressed (outfilename, "w");

  rat_side = renumber_table->rat;
  alg_side = 1 - rat_side;
  d[rat_side] = pol->rat->deg;
  d[alg_side] = pol->alg->deg;

  /* we generate all free relations up to the *minimum* of the two large
     prime bounds, since larger primes will never occur on both sides */
  /* we generate the renumbering table up to the *maximun* of the two large
     prime bounds */
  min_side = (lpb[0] < lpb[1]) ? 0 : 1;
  max_side = 1 - min_side;
  for (i = 0; i < 2; i++)
  {
    ASSERT_ALWAYS(lpb[i] < sizeof(unsigned long) * CHAR_BIT);
    lpb[i] = 1UL << lpb[i];
    roots[i] = (unsigned long*) malloc (d[i] * sizeof (unsigned long));
  }

  if (pmax == 0)
    pmax = lpb[min_side];
  ASSERT_ALWAYS (pmax <= lpb[min_side]);

  fprintf (stderr, "Generating freerels for %lu <= p <= %lu\n", pmin, pmax);
  fprintf (stderr, "Generating renumber table for 2 <= p <= %lu\n",
                   lpb[max_side]);

  for (p = 2; p <= lpb[max_side]; p = getprime (p))
  {
    /* first compute the roots */
    if (p < lpb[rat_side])
      k[rat_side] = 1;
    else
      k[rat_side] = 0;

    if (p < lpb[alg_side])
    {
      k[alg_side] = poly_roots_ulong(roots[alg_side],pol->alg->coeff,d[alg_side],p);
      // Check for a projective root
      if (mpz_divisible_ui_p (pol->alg->coeff[d[alg_side]], p))
        roots[alg_side][k[alg_side]++] = p;
    }
    else
      k[alg_side] = 0;

    renumber_write_p (renumber_table, p, roots, k);

    if (p >= pmin && p <= pmax && k[alg_side] == d[alg_side])
    {
      //print the free rels
      index_t l;
      fprintf (fpout, "%lx,0:%lx", p, (unsigned long) old_table_size);
      for (l = old_table_size + 1; l < renumber_table->size; l++)
        fprintf (fpout, ",%lx", (unsigned long) l);
      fprintf (fpout, "\n");
      nfree++;
    }

    old_table_size = renumber_table->size;
  }

  getprime (0);
  free (roots[0]);
  free (roots[1]);

  fclose_maybe_compressed (fpout, outfilename);

  return nfree;
}

static void declare_usage(param_list pl)
{
  param_list_decl_usage(pl, "poly", "input polynomial file");
  param_list_decl_usage(pl, "renumber", "output file for renumbering table");
  param_list_decl_usage(pl, "out", "output file for free relations");
  param_list_decl_usage(pl, "lpbr", "rational large prime bound");
  param_list_decl_usage(pl, "lpba", "algebraic large prime bound");
  param_list_decl_usage(pl, "pmin", "do not create freerel below this bound");
  param_list_decl_usage(pl, "pmax", "do not create freerel beyond this bound");
  param_list_decl_usage(pl, "badideals", "file describing bad ideals (for DL)");
  param_list_decl_usage(pl, "addfullcol", "(switch) add a column of 1 in the matrix (for DL)");
}

static void
usage (param_list pl, char *argv0)
{
    param_list_print_usage(pl, argv0, stderr);
    exit(EXIT_FAILURE);
}

int
main (int argc, char *argv[])
{
    const char *renumberfilename = NULL;
    const char *badidealsfilename = NULL;
    const char *polyfilename = NULL;
    const char *outfilename = NULL;
    char *argv0 = argv[0];
    cado_poly cpoly;
    unsigned long pmin = 2, pmax = 0, nfree;
    renumber_t renumber_table;
    int add_full_col = 0;
    unsigned long lpb[2] = {0, 0};

    param_list pl;
    param_list_init(pl);
    declare_usage(pl);
    param_list_configure_switch(pl, "-addfullcol", &add_full_col);

#ifdef HAVE_MINGW
    _fmode = _O_BINARY;     /* Binary open for all files */
#endif

    argv++, argc--;
    if (argc == 0)
      usage (pl, argv0);

    for( ; argc ; ) {
        if (param_list_update_cmdline(pl, &argc, &argv))
            continue;
        FILE *f;
        if ((f = fopen(argv[0], "r")) != NULL) {
            param_list_read_stream(pl, f);
            fclose(f);
            argv++,argc--;
            continue;
        }
        fprintf(stderr, "Unhandled parameter %s\n", argv[0]);
        usage (pl, argv0);
    }
    /* print command-line arguments */
    param_list_print_command_line (stdout, pl);
    fflush(stdout);

    polyfilename = param_list_lookup_string(pl, "poly");
    outfilename = param_list_lookup_string(pl, "out");
    badidealsfilename = param_list_lookup_string(pl, "badideals");
    renumberfilename = param_list_lookup_string(pl, "renumber");


    if (polyfilename == NULL)
    {
      fprintf (stderr, "Error, missing -poly command line argument\n");
      usage (pl, argv0);
    }
    if (renumberfilename == NULL)
    {
      fprintf (stderr, "Error, missing -renumber command line argument\n");
      usage (pl, argv0);
    }
    if (outfilename == NULL)
    {
      fprintf (stderr, "Error, missing -out command line argument\n");
      usage (pl, argv0);
    }

    cado_poly_init(cpoly);
    if (!cado_poly_read (cpoly, polyfilename))
      {
        fprintf (stderr, "Error reading polynomial file\n");
        exit (EXIT_FAILURE);
      }

    param_list_parse_ulong(pl, "lpbr", &lpb[RATIONAL_SIDE]);
    param_list_parse_ulong(pl, "lpba", &lpb[ALGEBRAIC_SIDE]);
    param_list_parse_ulong(pl, "pmin", &pmin);
    param_list_parse_ulong(pl, "pmax", &pmax);

    if (lpb[0] == 0 || lpb[1] == 0)
    {
      fprintf (stderr, "Error, missing -lpbr or -lpba command line argument\n");
      usage (pl, argv0);
    }

    if (param_list_warn_unused(pl))
    {
      usage (pl, argv0);
    }

    renumber_init (renumber_table, cpoly, lpb);
    renumber_init_write (renumber_table, renumberfilename, badidealsfilename,
                         add_full_col);

    nfree = allFreeRelations (cpoly, pmin, pmax, lpb, renumber_table,
                              outfilename);
    fprintf (stderr, "# Free relations: %lu\n", nfree);

    renumber_close_write (renumber_table, renumberfilename);
    cado_poly_clear (cpoly);
    param_list_clear(pl);

    return 0;
}
