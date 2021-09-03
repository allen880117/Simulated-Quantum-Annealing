#include "../include/sqa.hpp"

/* Quantum Monte-Carlo */
void QuantumMonteCarloBasic(const int nTrot, const int nSpin,
                            spin_t trotters[NUM_TROT][NUM_SPIN],
                            const fp_t Jcoup[NUM_SPIN][NUM_SPIN],
                            const fp_t h[NUM_SPIN], const fp_t Jperp,
                            const fp_t Beta,
                            const fp_t logRandNumber[NUM_TROT][NUM_SPIN]) {
    /* Tunnel-related energy */
    // fp_t dHTunnel = 2.0f * Jperp * nTrot;
    fp_t dHTunnel = 2.0f * 0.5f * Jperp * (fp_t)nTrot;

/* Traverse all trotters */
LOOP_TROTTERS:
    for (int m = 0; m < NUM_TROT; m++) {
        /* Exit condition */
        if (m == nTrot) break;

    /* Traverse all spins in trotter m */
    LOOP_SPINS:
        for (int i = 0; i < NUM_SPIN; i++) {
            /* Exit condition */
            if (i == nSpin) break;

            /* Get this spin */
            spin_t this_spin = trotters[m][i];

            /* Local Field of spin(m, i, j) */
            fp_t dH = 0;

        /* Compute Energy from same trotter */
        LOOP_COUPLES:
            for (int j = 0; j < NUM_SPIN; j++) {
                /* Exit Condition */
                if (j == nSpin) break;
                if (trotters[m][j])
                    dH += Jcoup[i][j];
                else
                    dH -= Jcoup[i][j];
            }

            /* Compute Engery from up and down trotter */
            int up = (m == 0) ? (nTrot - 1) : (m - 1);
            int down = (m == nTrot - 1) ? (0) : (m + 1);
            spin_t up_trotter = trotters[up][i];
            spin_t down_trotter = trotters[down][i];
            if (up_trotter == down_trotter) {
                if (up_trotter)
                    dH -= dHTunnel;
                else
                    dH += dHTunnel;
            }

            // Times 2
            dH *= 2.0f;

            // Add h[i]
            dH += h[i];

            /* Times -2 and itself */
            dH *= -2.0f;
            if (!this_spin) {
                dH = -dH;
            }

            /* Flip */
            if ((-Beta * dH) > logRandNumber[m][i]) {
                trotters[m][i] = (!trotters[m][i]);
            }
        }
    }
}
