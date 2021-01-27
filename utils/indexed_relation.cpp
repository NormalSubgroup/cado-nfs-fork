#include "cado.h"
#include <algorithm>
#include "fmt/core.h"
#include "fmt/format.h"
#include "relation-tools.h"
#include "indexed_relation.hpp"

template<typename Storage>
indexed_relation_tmpl<Storage>::indexed_relation_tmpl(relation const & rel, renumber_t const & R)
    : relation_ab(rel)
{
    Storage::set_nsides(rel.nb_polys);
    for(int side = 0 ; side < rel.nb_polys ; side++) {
        for(auto const & pr : rel.sides[side]) {
            p_r_values_t p = mpz_get_ui(pr.p);
            p_r_values_t r = mpz_get_ui(pr.r);
            if (side == rel.rational_side)
                r = relation_compute_r(a, b, p);
            renumber_t::p_r_side ipr { p, r, side };

            if (R.is_bad(ipr)) {
                auto ie = R.indices_from_p_a_b(ipr, pr.e, a, b);
                for(size_t i = 0 ; i < ie.second.size() ; i++)
                    for(int k = ie.second[i] ; k-- ; )
                        (*this)[side].push_back(ie.first + i);
            } else {
                index_t i = R.index_from_p_r(ipr);
                for(int k = pr.e ; k-- ; )
                    (*this)[side].push_back(i);
            }
        }
    }
}

template<typename Storage>
void indexed_relation_tmpl<Storage>::sort() {
    for(auto & s : Storage::containers())
        std::sort(s.begin(), s.end());
}

template<typename Storage>
void 
indexed_relation_tmpl<Storage>::shrink(int shrink_factor, index_t noshrink_threshold) {
    // Indices below noshrink_threshold are not shrunk
    // FIXME: I am not sure we should keep the heavy weight columns
    // un-shrunk. The answer might be different in DL and in facto...
    for(auto & s : Storage::containers()) {
        for(auto & i : s) {
            //        if (i >= noshrink_threshold)
            if (1) {
                i = noshrink_threshold +
                    (i - noshrink_threshold) / shrink_factor;
            }
        }
    }
}

template<typename Storage>
void indexed_relation_tmpl<Storage>::compress(bool dl) {
    /* sort() must be called first ! */
    for(auto & s : Storage::containers()){
        if (dl) continue;
        auto jt = s.begin();
        for(auto it = s.begin() ; it != s.end() ; ) {
            int n = 0;
            auto itx = it;
            for(; itx != s.end() && *it == *itx ; ++itx, n++);
            if (n & 1)
                *jt++ = *it;
            it = itx;
        }
        s.erase(jt, s.end());
    }
}

template<typename Storage>
std::ostream& operator<<(std::ostream& os, indexed_relation_tmpl<Storage> const & rel)
{
#if 0
    os << fmt::format(FMT_STRING("{:x},{:x}"), (uint64_t) rel.a, rel.b);
    /* this sorts the indices before printing. A priori there's no real
     * point in doing that, but just in case.
     *
     * The old fake_rels binary was doing that, though. And it was also
     * printing rel.a as unsigned.
     */
    std::vector<index_t> S;
    char c = ':';
    for(auto const & s : rel.sides) {
        std::copy(s.begin(), s.end(), std::back_inserter(S));
    }
    std::sort(S.begin(), S.end());

        for(auto i : S) {
            os << c << fmt::format(FMT_STRING("{:x}"), i);
            c = ',';
        }
#else
    os << fmt::format(FMT_STRING("{:x},{:x}"), rel.a, rel.b);
    char c = ':';
    for(auto const & s : rel.containers()) {
        for(auto i : s) {
            os << c << fmt::format(FMT_STRING("{:x}"), i);
            c = ',';
        }
    }
#endif
    return os;
}

template<typename Storage>
std::istream& operator>>(std::istream& is, indexed_relation_tmpl<Storage>& rel)
{
    std::string s;
    if (!std::getline(is, s, '\n') || !rel.parse(rel, s.c_str())) {
        is.setstate(std::ios_base::failbit);
        rel = indexed_relation_tmpl<Storage>();
    }
    return is;
}


int 
indexed_relation_normal_storage::parse(relation_ab & ab, const char *line)
{
    int consumed;

    if (gmp_sscanf(line, "%Zx,%Zx:%n", (mpz_ptr) ab.az, (mpz_ptr) ab.bz, &consumed) < 2)
        return 0;
    ab.a = mpz_get_int64(ab.az);
    ab.b = mpz_get_uint64(ab.bz);

    while(line[consumed] != '\0' && line[consumed] != '\n') {
        index_t p;
        int consumed_p;
        if (sscanf(line + consumed, "%" SCNid "%n", &p, &consumed_p) < 1)
            return 0;
        (*this)[0].push_back(p);
        consumed += consumed_p;
        if (line[consumed] == ',')
            consumed++;
    }
    return 1;
}

template struct indexed_relation_tmpl<indexed_relation_normal_storage>;
template struct indexed_relation_tmpl<indexed_relation_byside_storage>;

template 
std::ostream& operator<<(std::ostream& os, indexed_relation_tmpl<indexed_relation_byside_storage> const & rel);
template 
std::ostream& operator<<(std::ostream& os, indexed_relation_tmpl<indexed_relation_normal_storage> const & rel);

template
std::istream& operator>>(std::istream& is, indexed_relation_tmpl<indexed_relation_normal_storage>& rel);

