#ifndef _SQA_HPP_
#define _SQA_HPP_

#include <cmath>
#include <iostream>

#define MAX_NT 32
#define MAX_NS 64

#define fp_t double

/* Quantum Monte-Carlo */
void QuantumMonteCarlo(const int nt, const int ns,
                       int        trotters[MAX_NT][MAX_NS][MAX_NS],
                       const fp_t city_distances[MAX_NS][MAX_NS],
                       const fp_t max_distance, const fp_t cost_qr,
                       const fp_t beta, const fp_t log_uni_rn, const int a,
                       const int b, const int tr);

#endif