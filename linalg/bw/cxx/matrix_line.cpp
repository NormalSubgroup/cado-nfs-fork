#include <iostream>
#include <string>
#include <sstream>
#include "parsing_tools.hpp"
#include "matrix_line.hpp"

std::ostream& std::operator<<(std::ostream& os, const matrix_line& m)
{
	os << m.size();
	for(unsigned int i = 0 ; i < m.size() ; i++) {
		os << " " << m[i].first << ":" << m[i].second;
	}
	return os;
}

std::istream& std::operator>>(std::istream& is, matrix_line& m)
{
	using namespace std;

	bool sorted = true;

	if (is.eof()) return is;

	/* clear the fail bit */
	is.clear();

	comment_strip cs(is, "//");
	string buffer;
	getline(cs, buffer);
	istringstream st (buffer);

	m.clear();
	unsigned int n;
	
	if (!(st >> n)) {
		is.setstate(ios::failbit);
		return is;
	}

	m.reserve(n);

	for( ; !st.eof() ; st >> ws) {
		boost::uint32_t idx;
		boost::int32_t val;
		
		if (!(st >> idx >> wanted(':') >> noskipws >> val)) {
			is.setstate(ios::failbit);
			return is;
		}

		if (val == 0) {
			cerr << "error: coefficients must not be zero\n";
			/* Coefficients must not be zero */
			is.setstate(ios::failbit);
			return is;
		}

		if (!m.empty() && idx <= m.back().first) {
			sorted = false;
#if 0
			/* Coefficients must come in increasing order */
			is.setstate(ios::failbit);
			return is;
#endif
		}

		m.push_back(make_pair(idx,val));
	}

	if (n != m.size()) {
		/* The number of coefficients must match the announced
		 * quantity */
		is.setstate(ios::failbit);
		return is;
	}

	if (!sorted) {
		std::sort(m.begin(), m.end());
	}

	return is;
}
