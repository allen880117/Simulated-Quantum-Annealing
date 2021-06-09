#ifndef _SQA_HPP_
#define _SQA_HPP_

#include <cmath>
#include <iostream>

#define MAX_NT 32
#define MAX_NS 4096

#define fp_t double

/* Quantum Monte-Carlo */
void QuantumMonteCarlo(const int nt, const int ns, int trotters[MAX_NT][MAX_NS],
                       const fp_t J[MAX_NS][MAX_NS], const fp_t Jt[MAX_NS],
                       const fp_t T, const fp_t logRandNumber[MAX_NT][MAX_NS]);

#endif