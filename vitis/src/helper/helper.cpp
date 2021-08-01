#include "../include/helper.hpp"
#include <random>

void printProgress(double percentage) {
    int val  = (int)(percentage * 100);
    int lpad = (int)(percentage * PBWIDTH);
    int rpad = PBWIDTH - lpad;
    printf("\r%3d%% [%.*s%*s]", val, lpad, PBSTR, rpad, "");
    fflush(stdout);
    if (val == 100)
        printf("\n");
}

void generateRandomState(spin_t trotters[NUM_TROT][NUM_SPIN], int nTrot,
                         int nSpin) {
    /* Random Device & Random Number Generator */
    static std::random_device                 rd;
    static std::mt19937                       rng(rd());
    static std::uniform_int_distribution<int> unif(0, 1);
    /* Generate */
    for (int i = 0; i < nTrot; i++) {
        for (int j = 0; j < nSpin; j++) {
            trotters[i][j] = (bool)unif(rng);
        }
    }
}

fp_t computeEnergyPerTrotter(int nSpin, spin_t trotter[NUM_SPIN],
                             fp_t Jcoup[NUM_SPIN][NUM_SPIN],
                             fp_t h[NUM_SPIN]) {
    /* Follow the Formula */
    /* H = sum(J(i,j) * spin[i] * spin[j]) + sum(h[i] * spin[i]) */

    /* Total Energy */
    fp_t H = 0;

    /* Traverse All Spins */
    for (int i = 0; i < nSpin; i++) {
        /* Two-Spin Energy */
        for (int j = 0; j < nSpin; j++) {
            if (trotter[i] == trotter[j])
                H += Jcoup[i][j];
            else
                H -= Jcoup[i][j];
        }
        /* One-Spin Energy */
        if (trotter[i])
            H += h[i];
        else
            H -= h[i];
    }

    /* Return */
    // return fabs(H);
    return (H);
}
