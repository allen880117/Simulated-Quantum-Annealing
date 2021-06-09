#ifndef __COEFF_GENERATE_HPP_
#define __COEFF_GENERATE_HPP_

#define MAX_NCITY 64
#define MAX_NS 4096

typedef float fp_t;

void GenerateCoeff(const int ns, fp_t J[MAX_NS][MAX_NS], fp_t Jt[MAX_NS],
                   fp_t &Offset, const int ncity,
                   const fp_t citys[MAX_NCITY][2]);

#endif