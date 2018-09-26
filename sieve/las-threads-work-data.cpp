#include "cado.h"
#include "las-types.hpp"
#include "las-threads-work-data.hpp"

void nfs_work::thread_data::side_data::allocate_bucket_region()
{
  /* Allocate memory for each side's bucket region. Our intention is to
   * avoid doing it in case we have no factor base. Not that much because
   * of the spared memory, but rather because it's a useful way to trim
   * the irrelevant parts of the code in that case.
   */
  if (!bucket_region)
  bucket_region = (unsigned char *) contiguous_malloc(BUCKET_REGION + MEMSET_MIN);
}

nfs_work::thread_data::thread_data(thread_data const & o)
    : ws(o.ws), sides(o.sides)
{
    SS = (unsigned char *) contiguous_malloc(BUCKET_REGION);
    memcpy(SS, o.SS, BUCKET_REGION);
}

nfs_work::thread_data::side_data::~side_data()
{
  if (bucket_region) contiguous_free(bucket_region);
  bucket_region = NULL;
}

nfs_work::thread_data::thread_data(nfs_work & ws)
    : ws(ws)
{
  /* Allocate memory for the intermediate sum (only one for both sides) */
  SS = (unsigned char *) contiguous_malloc(BUCKET_REGION);
}

nfs_work::thread_data::~thread_data()
{
    contiguous_free(SS);
}

void nfs_work::thread_data::allocate_bucket_regions()
{
    for (auto & S : sides)
        S.allocate_bucket_region();
}

void nfs_work::zeroinit_defaults()
{
    memset(nb_buckets, 0, sizeof(nb_buckets));
    toplevel = 0;
}

nfs_work::nfs_work(las_info const & _las)
    : nfs_work(_las, NUMBER_OF_BAS_FOR_THREADS(_las.nb_threads))
{
    zeroinit_defaults();
}
nfs_work::nfs_work(las_info const & _las, int nr_workspaces)
    : las(_las),
    nr_workspaces(nr_workspaces),
    sides {{ {nr_workspaces}, {nr_workspaces} }},
    th(_las.nb_threads, thread_data(*this))
{
    zeroinit_defaults();
}

nfs_work_cofac::nfs_work_cofac(las_info const& las, sieve_info & si, nfs_work const & ws) :
    las(las),
    sc(ws.conf),
    doing(ws.Q.doing)
{
    strategies = si.get_strategies(sc);
}

/* Prepare to work on sieving a special-q as described by _si.
   This implies allocating all the memory we need for bucket arrays,
   sieve regions, etc. */
void nfs_work::allocate_buckets(nfs_aux & aux, thread_pool & pool)
{
    /* We always allocate the max number of buckets (i.e., as if we were
     * using the max value for J), even if we use a smaller J due to a
     * poor q-lattice basis */ 

    verbose_output_print(0, 2, "# Reserving buckets with a multiplier of %s\n",
            bk_multiplier.print_all().c_str());

    bool do_resieve = conf.sides[0].lim && conf.sides[1].lim;

    for (unsigned int side = 0; side < 2; side++) {
        side_data & wss(sides[side]);
        if (wss.no_fb()) continue;
        wss.group.allocate_buckets(nb_buckets,
                bk_multiplier,
                wss.fbs->stats.weight,
                conf.logI,
                aux, pool, do_resieve);
    }
    pool.drain_queue(2);
}

void nfs_work::allocate_bucket_regions() {
    for(auto & T : th)
        T.allocate_bucket_regions();
}

template <int LEVEL, typename HINT>
double
nfs_work::buckets_max_full()
{
    /* find the most full bucket across all buckets in the bucket array */
    double maxfull_ratio = 0;
    int maxfull_side = -1;
    unsigned int maxfull_index = 0;
    size_t maxfull_updates = 0;
    size_t maxfull_room = 0;
    typedef bucket_array_t<LEVEL, HINT> BA_t;
    for(int side = 0 ; side < 2 ; side++) {
        side_data & wss(sides[side]);
        for (auto const & BA : wss.bucket_arrays<LEVEL, HINT>()) {
            unsigned int index;
            const double ratio = BA.max_full(&index);
            if (ratio > maxfull_ratio) {
                maxfull_ratio = ratio;
                maxfull_side = side;
                maxfull_index = index;
                maxfull_updates = BA.nb_of_updates(index);
                maxfull_room = BA.room_allocated_for_updates(index);
            }
        }
    }
    if (maxfull_ratio > 1) {
        int side = maxfull_side;
        side_data & wss(sides[side]);
        auto const & BAs = wss.bucket_arrays<LEVEL, HINT>();
        std::ostringstream os;
        os << "bucket " << maxfull_index << " on side " << maxfull_side << ":";
        size_t m = 0;
        for (auto const & BA : wss.bucket_arrays<LEVEL, HINT>()) {
            if (BA.nb_of_updates(maxfull_index) >= m)
                m = BA.nb_of_updates(maxfull_index);
        }
        for (auto const & BA : wss.bucket_arrays<LEVEL, HINT>()) {
            size_t z = BA.nb_of_updates(maxfull_index);
            os << " " << z;
            if (z == m) os << "*";
        }
        os << " /" << BAs[0].room_allocated_for_updates(maxfull_index);

        auto k = bkmult_specifier::getkey<typename BA_t::update_t>();
        verbose_output_print(0, 1, "# Error: %s buckets are full, worst is %s\n",

                bkmult_specifier::printkey(k).c_str(),
                os.str().c_str());

        throw buckets_are_full(
                k,
                maxfull_index,
                maxfull_updates,
                maxfull_room);
    }
    return maxfull_ratio;
}
double nfs_work::check_buckets_max_full()
{
    double mf0 = 0, mf;
    mf = buckets_max_full<3, shorthint_t>(); if (mf > mf0) mf0 = mf;
    mf = buckets_max_full<2, shorthint_t>(); if (mf > mf0) mf0 = mf;
    mf = buckets_max_full<2, longhint_t>();  if (mf > mf0) mf0 = mf;
    mf = buckets_max_full<1, shorthint_t>(); if (mf > mf0) mf0 = mf;
    mf = buckets_max_full<1, longhint_t>();  if (mf > mf0) mf0 = mf;
    mf = buckets_max_full<3, emptyhint_t>(); if (mf > mf0) mf0 = mf;
    mf = buckets_max_full<2, emptyhint_t>(); if (mf > mf0) mf0 = mf;
    mf = buckets_max_full<2, logphint_t>();  if (mf > mf0) mf0 = mf;
    mf = buckets_max_full<1, emptyhint_t>(); if (mf > mf0) mf0 = mf;
    mf = buckets_max_full<1, logphint_t>();  if (mf > mf0) mf0 = mf;
    return mf0;
}

template <typename HINT>
double nfs_work::check_buckets_max_full(int level)
{
    switch(level) {
        case 3:
            if (std::is_same<HINT, shorthint_t>::value)
                return buckets_max_full<3, shorthint_t>();
            else if (std::is_same<HINT, emptyhint_t>::value)
                return buckets_max_full<3, emptyhint_t>();
            else
                ASSERT_ALWAYS(0);
        case 2: return buckets_max_full<2, HINT>();
        case 1: return buckets_max_full<1, HINT>();
    }
    return 0;
}

template double nfs_work::buckets_max_full<1, shorthint_t>();
template double nfs_work::buckets_max_full<2, shorthint_t>();
template double nfs_work::buckets_max_full<3, shorthint_t>();
template double nfs_work::buckets_max_full<1, longhint_t>();
template double nfs_work::buckets_max_full<2, longhint_t>();
template double nfs_work::buckets_max_full<1, emptyhint_t>();
template double nfs_work::buckets_max_full<2, emptyhint_t>();
template double nfs_work::buckets_max_full<3, emptyhint_t>();
template double nfs_work::buckets_max_full<1, logphint_t>();
template double nfs_work::buckets_max_full<2, logphint_t>();
template double nfs_work::check_buckets_max_full<shorthint_t>(int);
template double nfs_work::check_buckets_max_full<longhint_t>(int);
template double nfs_work::check_buckets_max_full<emptyhint_t>(int);
template double nfs_work::check_buckets_max_full<logphint_t>(int);

template <int LEVEL, typename HINT>
void
nfs_work::side_data::reset_all_pointers() {
    group.get<LEVEL, HINT>().reset_all_pointers();
}

template void nfs_work::side_data::reset_all_pointers<1, shorthint_t>();
template void nfs_work::side_data::reset_all_pointers<2, shorthint_t>();
template void nfs_work::side_data::reset_all_pointers<3, shorthint_t>();
template void nfs_work::side_data::reset_all_pointers<1, emptyhint_t>();
template void nfs_work::side_data::reset_all_pointers<2, emptyhint_t>();
template void nfs_work::side_data::reset_all_pointers<3, emptyhint_t>();

void nfs_work::compute_toplevel_and_buckets()
{
    // Now that fb have been initialized, we can set the toplevel.
    toplevel = -1;
    for(int side = 0 ; side < 2 ; side++) {
        side_data & wss(sides[side]);
        if (wss.no_fb()) continue;

        int level = wss.fbs->get_toplevel();
        if (level > toplevel) toplevel = level;
    }
    ASSERT_ALWAYS(toplevel >= 1);

    /* update number of buckets at toplevel */
    size_t (&BRS)[FB_MAX_PARTS] = BUCKET_REGIONS;

    for(int i = 0 ; i < FB_MAX_PARTS ; ++i) nb_buckets[i] = 0;

    nb_buckets[toplevel] = iceildiv(1UL << conf.logA, BRS[toplevel]);

    // maybe there is only 1 bucket at toplevel and less than 256 at
    // toplevel-1, due to a tiny J.
    if (toplevel > 1) {
        if (nb_buckets[toplevel] == 1) {
            nb_buckets[toplevel-1] = iceildiv(1UL << conf.logA, BRS[toplevel - 1]);
            // we forbid skipping two levels.
            ASSERT_ALWAYS(nb_buckets[toplevel-1] != 1);
        } else {
            nb_buckets[toplevel-1] = BRS[toplevel]/BRS[toplevel-1];
        }
    }
}

void nfs_work::prepare_for_new_q(sieve_info & si) {
    /* The config on which we're running is now decided. In order to
     * select the factor base to use, we also need the log scale */
    for(int side = 0 ; side < 2 ; side++) {
        sieve_info::side_data & sis(si.sides[side]);
        nfs_work::side_data & wss(sides[side]);

        /* Even when we have no factor base, we do the lognorm setup
         * because we need it for the norm computation. It's admittedly a
         * bit ridiculous, given that only initializing lognorm_base
         * would be sufficient. The cost should be negligible, though.
         */
        wss.lognorms = lognorm_smart(conf, las.cpoly, side, Q, conf.logI, J);

        if (sis.no_fb()) {
            wss.fbs = NULL;
            continue;
        }

        wss.fbK = conf.instantiate_thresholds(side);
        wss.fbK.scale = wss.lognorms.scale;
        wss.fbK.nb_threads = las.nb_threads;

        /* Now possibly trigger the creation of a new slicing. There's a
         * design decision of whether we want the slicing replicated on
         * all sub-jobs, on sub-jobs with the same memory binding only,
         * or in a loose, unbound fashion. I think the second option is
         * better.
         */
        wss.fbs = sis.get_factorbase_slicing(wss.fbK);
        wss.td = sis.get_trialdiv_data(wss.fbK, wss.fbs);
    }
    compute_toplevel_and_buckets();

    jd = si.get_j_divisibility_helper(J);
    us = si.get_unsieve_data(conf);

}