#include "cado.h"

#include "matmul_top_vec.hpp"
#include "timing.h"
#include "portability.h"

/* At some point we had this. Not sure it's still useful. */
#define ABASE_UNIVERSAL_READAHEAD_ITEMS 8

/* Some info about distributed vectors.
 *
 * See linalg/bwc/GUIDED_TOUR_OF_SOURCES for documentation about what's
 * in the mmt_vec type.
 *
 * Here are some pre- and post- conditions about consistency for the
 * common routines:
 *
 * matmul_top_mul_cpu:
 *      input: fully consistent
 *      output: inconsistent
 * reduce (all variants)
 *      input: inconsistent
 *      output: partially consistent
 * allreduce
 *      input: inconsistent
 *      output: fully consistent
 * broadcast
 *      input: partially consistent
 *      output: fully consistent
 * matmul_top_mul_comm:
 *      input: inconsistent
 *      output: fully consistent
 *
 * The following are non-critical. So for easiness, we require and
 * provide full consistency.
 *
 * apply_identity:
 *      input: fully consistent
 *      output: fully consistent
 *
 */


/* {{{ vector init/clear */

/* this is for a vector which will be of interest to a group of threads
 * and jobs in direction d */
void mmt_vec_init(matmul_top_data_ptr mmt, arith_generic * abase, pi_datatype_ptr pitype, mmt_vec_ptr v, int d, int flags, unsigned int n)
{
    ASSERT_ALWAYS(v != NULL);
    if (abase == NULL) abase = mmt->abase;
    if (pitype == NULL) pitype = mmt->pitype;
    memset(v, 0, sizeof(mmt_vec));
    v->pi = mmt->pi;
    v->d = d;
    v->abase = abase;
    v->pitype = pitype;
    v->n = n;

    ASSERT_ALWAYS(n % mmt->pi->m->totalsize == 0);

    pi_comm_ptr wr = mmt->pi->wr[d];
    pi_comm_ptr xwr = mmt->pi->wr[!d];

    /* now what is the size which we are going to allocate locally */
    n /= xwr->totalsize;
    v->i0 = n * (xwr->jrank * xwr->ncores + xwr->trank);
    v->i1 = v->i0 + n;

    /* Look for readahead settings for all submatrices */
    n += ABASE_UNIVERSAL_READAHEAD_ITEMS;
    for(int i = 0 ; i < mmt->nmatrices ; i++) {
        matmul_aux(mmt->matrices[i]->mm, MATMUL_AUX_GET_READAHEAD, &n);
    }

    if (flags & THREAD_SHARED_VECTOR) {
        if (wr->trank == 0) {
            v->v = abase->alloc(n, ALIGNMENT_ON_ALL_BWC_VECTORS);
            abase->vec_set_zero(v->v, n);
        }
        pi_thread_bcast(&v->v, sizeof(void*), BWC_PI_BYTE, 0, wr);
        v->siblings = NULL;
    } else {
        v->v = abase->alloc(n, ALIGNMENT_ON_ALL_BWC_VECTORS);
        abase->vec_set_zero(v->v, n);
        v->siblings = (mmt_vec_s **) shared_malloc(wr, wr->ncores * sizeof(mmt_vec_s *));
        v->siblings[wr->trank] = v;
    }
    /* Vectors begin initialized to zero, so we have full consistency */
    v->consistency = 2;
    serialize_threads(v->pi->m);

    // pi_log_op(v->pi->m, "Hello, world");
    /* fill wrpals and mpals */
    v->wrpals[0] = (mmt_vec_ptr *) shared_malloc(v->pi->wr[0], v->pi->wr[0]->ncores * sizeof(mmt_vec_ptr));
    v->wrpals[0][v->pi->wr[0]->trank] = v;
    serialize_threads(v->pi->m);
    v->wrpals[1] = (mmt_vec_ptr *) shared_malloc(v->pi->wr[1], v->pi->wr[1]->ncores * sizeof(mmt_vec_ptr));
    v->wrpals[1][v->pi->wr[1]->trank] = v;
    serialize_threads(v->pi->m);
    v->mpals = (mmt_vec_ptr *) shared_malloc(v->pi->m, v->pi->m->ncores * sizeof(mmt_vec_ptr));
    v->mpals[v->pi->m->trank] = v;
    serialize_threads(v->pi->m);

}

void mmt_vec_clear(matmul_top_data_ptr mmt, mmt_vec_ptr v)
{
    ASSERT_ALWAYS(v != NULL);
    pi_comm_ptr wr = mmt->pi->wr[v->d];
    serialize_threads(wr);
    if (v->rsbuf[0]) v->abase->free(v->rsbuf[0]);
    if (v->rsbuf[1]) v->abase->free(v->rsbuf[1]);
    unsigned int n = v->i1 - v->i0;
    /* see above */
    n += ABASE_UNIVERSAL_READAHEAD_ITEMS;
    for(int i = 0 ; i < mmt->nmatrices ; i++) {
        matmul_aux(mmt->matrices[i]->mm, MATMUL_AUX_GET_READAHEAD, &n);
    }
    if (v->siblings) {
        v->abase->free(v->v);
        shared_free(wr, v->siblings);
    } else {
        if (wr->trank == 0)
            v->abase->free(v->v);
    }
    shared_free(v->pi->wr[0], v->wrpals[0]);
    shared_free(v->pi->wr[1], v->wrpals[1]);
    shared_free(v->pi->m, v->mpals);
    memset(v, 0, sizeof(mmt_vec));
}
/* }}} */

/* my "own" offset is the added offset within my locally stored data area
 * which represents the data range I am the owner of. This data range
 * correspond to the index range v->i0 + offset to v->i0 + offset + size
 */
size_t mmt_my_own_offset_in_items(mmt_vec_ptr v)
{
    pi_comm_ptr wr = v->pi->wr[v->d];
    size_t eblock = (v->i1 - v->i0) /  wr->totalsize;
    int pos = wr->jrank * wr->ncores + wr->trank;
    return pos * eblock;
}

size_t mmt_my_own_offset_in_bytes(mmt_vec_ptr v)
{
    return v->abase->vec_elt_stride(mmt_my_own_offset_in_items(v));
}

arith_generic::elt * mmt_my_own_subvec(mmt_vec_ptr v)
{
    return v->abase->vec_subvec(v->v, mmt_my_own_offset_in_items(v));
}

size_t mmt_my_own_size_in_items(mmt_vec_ptr v)
{
    pi_comm_ptr wr = v->pi->wr[v->d];
    size_t eblock = (v->i1 - v->i0) /  wr->totalsize;
    return eblock;
}

size_t mmt_my_own_size_in_bytes(mmt_vec_ptr v)
{
    return v->abase->vec_elt_stride(mmt_my_own_size_in_items(v));
}

/* This copies **ONLY** the data we are supposed to own from v to w.
 * mmt_own_vec_set2 is slightly special, since in this case we might in
 * this way be picking data from vector areas owned by other blocks (or
 * writing there). Therefore we convey the info about which vector piece
 * we care about with the first argument z.
 *
 */
void mmt_own_vec_set2(mmt_vec_ptr z, mmt_vec_ptr w, mmt_vec_ptr v)
{
    ASSERT_ALWAYS(z != NULL);
    ASSERT_ALWAYS(v != NULL);
    ASSERT_ALWAYS(w != NULL);
    if (v == w) return;
    ASSERT_ALWAYS(z->d == v->d);
    ASSERT_ALWAYS(z->d == w->d);
    size_t off = mmt_my_own_offset_in_items(z);
    size_t sz = mmt_my_own_size_in_items(z);
    ASSERT_ALWAYS(sz == mmt_my_own_size_in_items(v));
    ASSERT_ALWAYS(sz == mmt_my_own_size_in_items(w));
    v->abase->vec_set(
            w->abase->vec_subvec(w->v, off),
            v->abase->vec_subvec(v->v, off),
            sz);
}
void mmt_own_vec_set(mmt_vec_ptr w, mmt_vec_ptr v)
{
    ASSERT_ALWAYS(v->abase == w->abase);
    mmt_own_vec_set2(v, w, v);
    w->consistency = 1;
}
void mmt_vec_swap(mmt_vec_ptr w, mmt_vec_ptr v)
{
    mmt_vec foo;
    memcpy(foo,v,sizeof(mmt_vec));
    memcpy(v,w,sizeof(mmt_vec));
    memcpy(w,foo,sizeof(mmt_vec));
}

void mmt_full_vec_set(mmt_vec_ptr w, mmt_vec_ptr v)
{
    ASSERT_ALWAYS(v != NULL);
    ASSERT_ALWAYS(w != NULL);
    /* DO **NOT** early-quit when v==w, because we might be calling this
     * with v and w being siblings, maybe equal for one of the threads.
     */
    // same remark as above
    // ASSERT_ALWAYS(v->abase == w->abase);
    ASSERT_ALWAYS(v->d == w->d);
    ASSERT_ALWAYS(mmt_my_own_size_in_items(v) == mmt_my_own_size_in_items(w));
    if (w->siblings) {
        if (w->v != v->v) {
            v->abase->vec_set(w->v, v->v, v->i1 - v->i0);
        }
    } else {
        ASSERT_ALWAYS(v->siblings == NULL);
        if (w->v != v->v) {
            if (w->pi->wr[w->d]->trank == 0) {
                v->abase->vec_set(w->v, v->v, v->i1 - v->i0);
            }
        }
        serialize_threads(w->pi->wr[w->d]);
    }
    if (v != w)
        w->consistency = v->consistency;
}

void mmt_full_vec_set_zero(mmt_vec_ptr v)
{
    ASSERT_ALWAYS(v != NULL);
    if (v->siblings) {
        v->abase->vec_set_zero(v->v, v->i1 - v->i0);
    } else {
        serialize_threads(v->pi->wr[v->d]);
        if (v->pi->wr[v->d]->trank == 0)
            v->abase->vec_set_zero(v->v, v->i1 - v->i0);
    }
    v->consistency = 2;
    serialize_threads(v->pi->wr[v->d]);
}

void mmt_vec_set_basis_vector_at(mmt_vec_ptr v, int k, unsigned int j)
{
    mmt_full_vec_set_zero(v);
    mmt_vec_add_basis_vector_at(v,k,j);
}

void mmt_vec_add_basis_vector_at(mmt_vec_ptr v, int k, unsigned int j)
{
    if (v->i0 <= j && j < v->i1) {
        if (v->siblings) {
            v->abase->simd_set_ui_at(v->abase->vec_item(v->v, j - v->i0), k, 1);
        } else {
            serialize_threads(v->pi->wr[v->d]);
            if (v->pi->wr[v->d]->trank == 0)
                v->abase->simd_set_ui_at(v->abase->vec_item(v->v, j - v->i0), k, 1);
            serialize_threads(v->pi->wr[v->d]);
        }
    }
}

void mmt_vec_add_basis_vector(mmt_vec_ptr v, unsigned int j)
{
    mmt_vec_add_basis_vector_at(v, 0, j);
}

void mmt_vec_set_basis_vector(mmt_vec_ptr v, unsigned int j)
{
    mmt_vec_set_basis_vector_at(v, 0, j);
}

void mmt_vec_downgrade_consistency(mmt_vec_ptr v)
{
    ASSERT_ALWAYS(v->consistency == 2);
    size_t erase[2][2];
    size_t off = mmt_my_own_offset_in_items(v);
    size_t sz = mmt_my_own_size_in_items(v);
        serialize_threads(v->pi->wr[v->d]);
    if (v->siblings) {
        erase[0][0] = 0;
        erase[0][1] = off;
        erase[1][0] = off + sz;
        erase[1][1] = v->i1 - v->i0;
    } else {
        /* There are no siblings, which means that this vector is shared
         * across all threads in this direction. Let only one thread do
         * the job.
         */
        if (v->pi->wr[v->d]->trank == 0) {
            erase[0][0] = 0;
            /* because we are rank 0, this is the minimal offset for this set
             * of threads */
            erase[0][1] = off;
            erase[1][0] = off + sz * v->pi->wr[v->d]->ncores;
            erase[1][1] = v->i1 - v->i0;
        } else {
            erase[0][0] = 0;
            erase[0][1] = 0;
            erase[1][0] = 0;
            erase[1][1] = 0;
        }
    }
    for(int i = 0 ; i < 2 ; i++) {
        if (erase[i][1] != erase[i][0]) {
            v->abase->vec_set_zero(
                    v->abase->vec_subvec(v->v, erase[i][0]),
                    erase[i][1] - erase[i][0]);
        }
    }
    v->consistency = 1;
    serialize_threads(v->pi->wr[v->d]);
}


#if 0
// looks utterly bogus, so...
/* On a shared vector which is assumed to be commonly known by all
 * nodes/threads, select only one portion to remain, and zero out the
 * rest (for later use by e.g.  matmul_top_mul_comm or other integrated
 * function).
 */
static void mmt_own_vec_clear_complement(matmul_top_data_ptr mmt, int d)
{
    mmt_comm_ptr mdst = mmt->wr[d];
    pi_comm_ptr pidst = mmt->pi->wr[d];
    if (mdst->v->flags & THREAD_SHARED_VECTOR)
        serialize_threads(pidst);
    if (pidst->trank == 0 || !(mdst->v->flags & THREAD_SHARED_VECTOR)) {
        if (pidst->jrank == 0 && pidst->trank == 0) {
            /* ok, we keep the data */
        } else {
            mdst->v->abase->vec_set_zero(mdst->v->abase, mdst->v->v, mdst->i1 - mdst->i0);
        }
    }
}
#endif
void mmt_vec_clear_padding(mmt_vec_ptr v, size_t unpadded, size_t padded)
{
    /* This can be applied no matter what the consistency argument says
     * */
    serialize(v->pi->m);
    if (unpadded >= padded) return;

    size_t s0 = unpadded >= v->i0 ? (unpadded - v->i0) : 0;
    size_t s1 = padded >= v->i0 ? (padded - v->i0) : 0;
    s0 = MIN(s0, v->i1 - v->i0);
    s1 = MIN(s1, v->i1 - v->i0);

    if (s1 - s0)
        v->abase->vec_set_zero(
                v->abase->vec_subvec(v->v, s0), s1-s0);

    serialize(v->pi->m);
}

mmt_vec_ptr mmt_vec_sibling(mmt_vec_ptr v, unsigned int i)
{
    if (v->siblings) {
        return v->siblings[i];
    } else {
        return v;
    }
}

/* {{{ generic interfaces for load/save */
/* {{{ load */
int mmt_vec_load(mmt_vec_ptr v, const char * filename_pattern, unsigned int itemsondisk, unsigned int block_position)
{
    ASSERT_ALWAYS(v != NULL);
    serialize(v->pi->m);
    int tcan_print = v->pi->m->trank == 0 && v->pi->m->jrank == 0;

    ASSERT_ALWAYS(strstr(filename_pattern, "%u-%u") != NULL);

    int char2 = v->abase->is_characteristic_two();
    int splitwidth = char2 ? 64 : 1;
    unsigned int Adisk_width = splitwidth;
    unsigned int Adisk_multiplex = v->abase->simd_groupsize() / Adisk_width;

    size_t sizeondisk = v->abase->vec_elt_stride(itemsondisk);
    arith_generic::elt * mychunk = mmt_my_own_subvec(v);
    size_t mysize = mmt_my_own_size_in_bytes(v);
    size_t bigstride = v->abase->vec_elt_stride(1);
    size_t smallstride = bigstride / Adisk_multiplex;

    int global_ok = 1;

    for(unsigned int b = 0 ; global_ok && b < Adisk_multiplex ; b++) {
        unsigned int b0 = block_position + b * Adisk_width;
        char * filename;
        int rc;
        rc = asprintf(&filename, filename_pattern, b0, b0 + splitwidth);
        ASSERT_ALWAYS(rc >= 0);
        double tt = -wct_seconds();
        if (tcan_print) {
            printf("Loading %s ...", filename);
            fflush(stdout);
        }
        pi_file_handle f;
        int ok = pi_file_open(f, v->pi, v->d, filename, "rb");
        /* "ok" is globally consistent after pi_file_open */
        if (!ok) {
            if (v->pi->m->trank == 0 && v->pi->m->jrank == 0) {
                fprintf(stderr, "ERROR: failed to load %s: %s\n", filename, strerror(errno));
            }
        } else {
            ASSERT_ALWAYS(v != NULL);
            serialize(v->pi->m);
            ssize_t s = pi_file_read_chunk(f, mychunk, mysize, sizeondisk,
                    bigstride, b * smallstride, (b+1) * smallstride);
            int ok = s >= 0 && (size_t) s == sizeondisk / Adisk_multiplex;
            /* "ok" is globally consistent after pi_file_read_chunk */
            if (!ok) {
                if (v->pi->m->trank == 0 && v->pi->m->jrank == 0) {
                    fprintf(stderr, "ERROR: failed to load %s: short read, %s\n", filename, errno ? strerror(errno) : "no error reported via errno");
                }
            }
            /* Always reduce mod p after load */
            for(size_t i = 0 ; i < mmt_my_own_size_in_items(v) ; i++) {
                v->abase->reduce(v->abase->vec_item(mychunk, i));
            }
            v->consistency = ok;
            /* not clear it's useful, but well. */
            if (ok) mmt_vec_broadcast(v);
            serialize_threads(v->pi->m);
            pi_file_close(f);
        }
        free(filename);
        tt += wct_seconds();
        if (ok && tcan_print) {
            char buf[20], buf2[20];
            printf(" done [%s in %.2fs, %s/s]\n",
                    size_disp(sizeondisk / Adisk_multiplex, buf),
                    tt,
                    size_disp(sizeondisk / Adisk_multiplex / tt, buf2));
        }
        global_ok = global_ok && ok;
    }

    serialize_threads(v->pi->m);
    return global_ok;
}
/* }}} */
/* {{{ save */
int mmt_vec_save(mmt_vec_ptr v, const char * filename_pattern, unsigned int itemsondisk, unsigned int block_position)
{
    serialize_threads(v->pi->m);
    int tcan_print = v->pi->m->trank == 0 && v->pi->m->jrank == 0;

    ASSERT_ALWAYS(strstr(filename_pattern, "%u-%u") != NULL);

    int char2 = v->abase->is_characteristic_two();
    int splitwidth = char2 ? 64 : 1;
    unsigned int Adisk_width = splitwidth;
    unsigned int Adisk_multiplex = v->abase->simd_groupsize() / Adisk_width;

    size_t sizeondisk = v->abase->vec_elt_stride(itemsondisk);
    arith_generic::elt * mychunk = mmt_my_own_subvec(v);
    size_t mysize = mmt_my_own_size_in_bytes(v);
    size_t bigstride = v->abase->vec_elt_stride(1);
    size_t smallstride = bigstride / Adisk_multiplex;

    int global_ok = 1;

    for(unsigned int b = 0 ; b < Adisk_multiplex ; b++) {
        unsigned int b0 = block_position + b * Adisk_width;
        char * filename;
        int rc = asprintf(&filename, filename_pattern, b0, b0 + splitwidth);
        ASSERT_ALWAYS(rc >= 0);
        char * tmpfilename;
        rc = asprintf(&tmpfilename, "%s.tmp", filename);
        ASSERT_ALWAYS(rc >= 0);
        double tt = -wct_seconds();
        if (tcan_print) {
            printf("Saving %s ...", filename);
            fflush(stdout);
        }
        pi_file_handle f;
        int ok = pi_file_open(f, v->pi, v->d, tmpfilename, "wb");
        /* "ok" is globally consistent after pi_file_open */
        if (!ok) {
            if (v->pi->m->trank == 0 && v->pi->m->jrank == 0) {
                fprintf(stderr, "WARNING: failed to save %s: %s\n", filename, strerror(errno));
                unlink(tmpfilename);    // just in case
            }
        } else {
            ASSERT_ALWAYS(v != NULL);
            ASSERT_ALWAYS(v->consistency == 2);
            serialize_threads(v->pi->m);
            ssize_t s = pi_file_write_chunk(f, mychunk, mysize, sizeondisk,
                    bigstride, b * smallstride, (b+1) * smallstride);
            serialize_threads(v->pi->m);
            ok = s >= 0 && (size_t) s == sizeondisk / Adisk_multiplex;
            /* "ok" is globally consistent after pi_file_write_chunk */
            if (!ok && v->pi->m->trank == 0 && v->pi->m->jrank == 0) {
                fprintf(stderr, "ERROR: failed to save %s: short write, %s\n", filename, errno ? strerror(errno) : "no error reported via errno");
            }
            ok = pi_file_close(f);
            if (!ok && v->pi->m->trank == 0 && v->pi->m->jrank == 0) {
                fprintf(stderr, "ERROR: failed to save %s: failed fclose, %s\n", filename, errno ? strerror(errno) : "no error reported via errno");
            }
            if (v->pi->m->trank == 0 && v->pi->m->jrank == 0) {
                ok = rename(tmpfilename, filename) == 0;
                if (!ok) {
                    fprintf(stderr, "ERROR: failed to save %s: failed rename, %s\n", filename, errno ? strerror(errno) : "no error reported via errno");
                }
            }
            pi_bcast(&ok, 1, BWC_PI_INT, 0, 0, v->pi->m);
        }
        free(filename);
        free(tmpfilename);
        tt += wct_seconds();
        if (tcan_print) {
            char buf[20], buf2[20];
            printf(" done [%s in %.2fs, %s/s]\n",
                    size_disp(sizeondisk / Adisk_multiplex, buf),
                    tt,
                    size_disp(sizeondisk / Adisk_multiplex / tt, buf2));
        }
        global_ok = global_ok && ok;
    }

    serialize_threads(v->pi->m);
    return global_ok;
}
/* }}} */
/* }}} */

