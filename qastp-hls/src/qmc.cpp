#include "../include/sqa.hpp"

#include <cmath>
#include <iostream>

/* Quantum Monte-Carlo */
void QuantumMonteCarlo(const int nTrot, const int nSpin,
                       spin_t     trotters[MAX_NTROT][MAX_NSPIN],
                       const fp_t Jcoup[MAX_NSPIN][MAX_NSPIN],
                       const fp_t h[MAX_NSPIN], const fp_t Jperp,
                       const fp_t Beta,
                       const fp_t logRandNumber[MAX_NTROT][MAX_NSPIN]) {
#pragma HLS INTERFACE s_axilite port = return
#pragma HLS INTERFACE s_axilite port = trotters
#pragma HLS INTERFACE s_axilite port = Jperp
#pragma HLS INTERFACE s_axilite port = Beta
#pragma HLS INTERFACE s_axilite port = nTrot
#pragma HLS INTERFACE s_axilite port = nSpin
#pragma HLS INTERFACE s_axilite port = logRandNumber
#pragma HLS INTERFACE s_axilite port = Jcoup
#pragma HLS INTERFACE s_axilite port = h

    QuantumMonteCarloBasic(nTrot, nSpin, trotters, Jcoup, h, Jperp, Beta,
                            logRandNumber);
}