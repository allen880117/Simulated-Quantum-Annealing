#include "../include/sqa.hpp"

#include <cmath>
#include <iostream>

/* Quantum Monte-Carlo */
void QuantumMonteCarlo(const int nTrot, const int nSpin,
                       spin_t     trotters[MAX_NTROT][MAX_NSPIN],
                       const fp_t Jcoup[MAX_NSPIN][MAX_NSPIN],
                       const fp_t h[MAX_NSPIN], const fp_t Joffset,
                       const fp_t Jperp, const fp_t Beta,
                       const fp_t logRandNumber[MAX_NTROT][MAX_NSPIN]) {
    
    fp_t dHTunnel = 2.0f * Jperp * nTrot;

    for (int m = 0; m < MAX_NTROT; m++) {
        if (m == nTrot) break;
        for (int i = 0; i < MAX_NSPIN; i++) {
            if (i == nSpin) break;
            /* This Spin */
            spin_t this_spin = trotters[m][i];

            /* Local Field of spin(m, i, j) */
            fp_t dH = h[i];

            /* Compute Energy from same trotter */
            for (int j = 0; j < MAX_NSPIN; j++) {
                if (j == nSpin) break;
                // dH += J[i][j] * trotters[m][j];
                if (trotters[m][j])
                    dH += Jcoup[i][j];
                else
                    dH -= Jcoup[i][j];
            }

            /* Compute Engery from up and down trotter */
            int up   = (m == 0) ? (nTrot - 1) : (m - 1);
            int down = (m == nTrot - 1) ? (0) : (m + 1);

            spin_t up_trotter   = trotters[up][i];
            spin_t down_trotter = trotters[down][i];

            if (up_trotter == down_trotter) {
                if (up_trotter) {
                    dH -= dHTunnel;
                } else {
                    dH += dHTunnel;
                }
            }

            dH *= 2.0f;
            if (!this_spin) dH = -dH;

            /* Flip */
            // std::cout << (-Beta * dH) << " " << logRandNumber[m][i] << "\n";
            if ((-Beta * dH) > logRandNumber[m][i]) {
                trotters[m][i] = (!trotters[m][i]);
            }
        }
    }
}