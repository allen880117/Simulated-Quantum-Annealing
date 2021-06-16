#ifndef _SQA_HPP_
#define _SQA_HPP_

#include <cmath>
#include <iostream>

#define MAX_NTROT 32
#define MAX_NCITY 64
#define MAX_NSPIN 4096

typedef double fp_t;
typedef bool   spin_t;

/* Quantum Monte-Carlo */
void QuantumMonteCarlo(const int nTrot, const int nSpin,
                       spin_t     trotters[MAX_NTROT][MAX_NSPIN],
                       const fp_t Jcoup[MAX_NSPIN][MAX_NSPIN],
                       const fp_t h[MAX_NSPIN], const fp_t Joffset,
                       const fp_t Jperp, const fp_t Beta,
                       const fp_t logRandNumber[MAX_NTROT][MAX_NSPIN]);

#endif