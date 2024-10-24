#ifndef UTILS_NUMBERTHEORY_NUMBER_FIELD_ELEMENT_HPP_
#define UTILS_NUMBERTHEORY_NUMBER_FIELD_ELEMENT_HPP_

#include <utility>
#include "numbertheory/numbertheory_fwd_types.hpp"
#include "numbertheory/number_field.hpp"
#include "numbertheory/fmt_helpers.hpp"
#include "mpz_mat.h"

class number_field_element {
    friend struct fmt::formatter<number_field_element>;
    friend class number_field_fractional_ideal;
    friend class number_field_order_element;
    friend class number_field;
    friend struct fmt::formatter<number_field_element>;
    class number_field const & K;
    cxx_mpq_mat coefficients;
    public:
    inline class number_field const & number_field() const { return K; }
    /* construct the element a(alpha), where alpha is the root of
     * K.defining_polynomial()
     */
    number_field_element(class number_field const & K, cxx_mpz_poly const & a, cxx_mpz const & denom=1);

    number_field_element(class number_field const & K, cxx_mpz_mat const & a, cxx_mpz const & denom=1);

    /* construct a number field element from a vector of coordinates */
    number_field_element(class number_field const & K, cxx_mpq_mat const & a)
        : K(K)
        , coefficients(a)
    {
        ASSERT_ALWAYS(a->m == 1);
        ASSERT_ALWAYS((int) a->n == K.degree());
    }

    /* construct the zero element in the field K */
    number_field_element(class number_field const & K)
        : K(K)
        , coefficients(1, K.degree())
    {}

    /* return the polynomial representation of the element, as a
     * polynomial with integer coefficients (evaluated in the number
     * field generator alpha), together with a denominator.
     */
    std::pair<cxx_mpz_poly, cxx_mpz> as_polynomial() const;

    /* This returns the matrix representation of the multiplication by
     * the element, in the polynomial basis generated by the number field
     * generator alpha */
    cxx_mpq_mat multiplication_matrix() const;

    cxx_mpq trace() const;

    number_field_element operator*(number_field_element const &) const;

    /* copy and move ctors and assignment operators are straightforward.
     * Note that there is no such thing as assigning an element to become
     * an element of a different number field, since we can't reseat the
     * reference.
     */
    number_field_element(number_field_element const & a)
        : K(a.K)
        , coefficients(a.coefficients)
    {}

    number_field_element(number_field_element && a)
        : K(a.K)
        , coefficients(a.coefficients)
    {}

    number_field_element& operator=(number_field_element const & a)
    {
        ASSERT_ALWAYS(&K == &a.K);
        coefficients = a.coefficients;
        return *this;
    }
    number_field_element& operator=(number_field_element && a)
    {
        ASSERT_ALWAYS(&K == &a.K);
        coefficients = std::move(a.coefficients);
        return *this;
    }
};

namespace fmt {
    template <>
    struct formatter<number_field_element>
        : formatter<string_view>
        , fmt_helper_sagemath<number_field_element>
    {
        static constexpr const decltype(custom_format) custom_format_default = SAGEMATH;
        using fmt_helper_sagemath::parse;
        auto format(number_field_element const & e, format_context& ctx) const
            -> format_context::iterator;
    };
}
inline std::ostream& operator<<(std::ostream& os, number_field_element const & e) { return os << fmt::format("{}", e); }



#endif	/* UTILS_NUMBERTHEORY_NUMBER_FIELD_ELEMENT_HPP_ */