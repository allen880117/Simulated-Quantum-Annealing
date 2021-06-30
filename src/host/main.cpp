#include <algorithm>
#include <cmath>
#include <cstring>
#include <fstream>
#include <iostream>
#include <random>
#include <vector>

#include "../include/helper.hpp"
#include "../include/sqa.hpp"
#include "hls_stream.h"

/* Change These Options to Test */
/* You can only enable 1 unit each time*/
#define BASIC 0
#define OPT_1 0
#define OPT_2 0
#define OPT_3 0
#define OPT_5 0
#define OPT_5_ADV 1

#if !OPT_5_ADV
/* Field */
fp_t Jcoup[MAX_NSPIN][MAX_NSPIN];
fp_t h[MAX_NSPIN];
#else
/* Field */
fp_t Jcoup[MAX_NSPIN][MAX_NSPIN];
fp_t h[MAX_NTROT][MAX_NSPIN];
#endif

/* Main Program */
int main(int argc, char *argv[]) {

#if 0
    /* Arguments */
    if (argc != 3) {
        std::cout << "./sqa nTrot nSpin" << std::endl;
        return (-1);
    }

    /* Number of Trotters and Number of Spins */
    const int nTrot = atoi(argv[1]);
    const int nSpin = atoi(argv[2]);
#else
    /* Number of Trotters and Number of Spins */
#if OPT_2 | OPT_3 | OPT_5_ADV
    // They only support MAX_NTROT (<= MAX_NTROT)
    const int nTrot = MAX_NTROT;
#else
#if OPT_1
    // It only support 4 trotters
    const int nTrot = 4;
#else
    // Support Variable Size of Trotters (<= MAX_NTROT)
    const int nTrot = 6;
#endif
#endif

#if OPT_1 | OPT_2 | OPT_3
    // They only support MAX_NSPIN
    const int nSpin = MAX_NSPIN;
#else
    // Support Variable Size of Spins (<= MAX_NSPIN)
    const int nSpin = 255;
#endif
#endif

    /* Random Generators */
    std::random_device                   rd;
    std::mt19937                         rng(rd());
    std::uniform_real_distribution<fp_t> unif(0.0, 1.0);
    // std::uniform_int_distribution<int>   int_unif(0, 27545);
    std::normal_distribution<fp_t> int_unif(0, 1);

    /* Trotters */
    spin_t trotters[MAX_NTROT][MAX_NSPIN];
    generateRandomState(trotters, nTrot, nSpin);

    /* Generate Random Numbers */
    fp_t rndNum[MAX_NSPIN];
    for (int i = 0; i < nSpin; i++) {
        // rndNum[i] = int_unif(rng);
        rndNum[i] = (float)(i + 1) / (float)nSpin;
    }

    /* Field Initialization */
    for (int i = 0; i < nSpin; i++) {
#if !OPT_5_ADV
        h[i] = 0.0f;
#endif
        for (int j = 0; j < nSpin; j++) {
            Jcoup[i][j] = 0.0f;
        }
    }
#if OPT_5_ADV
    for (int i = 0; i < nTrot; i++) {
        for (int j = 0; j < nSpin; j++) {
            h[i][j] = 0.0f;
        }
    }
#endif

    /* The problem we solved here is "Number Partition" */
    for (int i = 0; i < nSpin; i++) {
        for (int j = 0; j < nSpin; j++) {
            Jcoup[i][j] = -(rndNum[i] * rndNum[j]);
        }
    }

    /* Parameters */
    fp_t iter    = 500;                 // default 500
    fp_t maxBeta = ((fp_t)8) / 1.0f;    // default 8.0f
    fp_t Beta    = 1 / ((fp_t)4096.0f); // default 1/16
    fp_t G0      = 8.0f;                // default 8.0f
    fp_t dBeta   = (maxBeta - Beta) / (fp_t)iter;

    /* Best */
    fp_t   bestEnergy = 10e22;
    spin_t bestTrotter[MAX_NSPIN];
    int    bestRun     = 0;
    int    bestTrotNum = 0;

    /* Log */
    std::ofstream out("out.txt");

    /* SQA */
    for (int i = 0; i < iter; i++) {
        std::cout << i << std::endl;

        /* Generate Random Number for Flipping */
        fp_t logRandNum[MAX_NTROT][MAX_NSPIN];
        for (int j = 0; j < nTrot; j++) {
            for (int k = 0; k < nSpin; k++) {
                /* Do some computation first */
                logRandNum[j][k] = log(unif(rng)) * nTrot;
            }
        }

        /* Get Jperp */
        fp_t Gamma = G0 * (1 - (float)i / iter);
        fp_t Jperp = -0.5 * log(tanh((Gamma / nTrot) * Beta)) / Beta;

#if OPT_1 | OPT_2 | OPT_3 | OPT_5 | OPT_5_ADV
        /* Do Quantum Monte-Carlo */
        hls::stream<fp_t> JcoupStream;
        for (int j = 0; j < nSpin; j++)
            for (int k = 0; k < nSpin; k++)
                JcoupStream << Jcoup[j][k];
#endif

#if BASIC
        QuantumMonteCarlo(nTrot, nSpin, trotters, Jcoup, h, Jperp, Beta,
                          logRandNum);
#endif
#if OPT_1
        QuantumMonteCarloOpt(nTrot, nSpin, trotters, JcoupStream, h, Jperp,
                             Beta, logRandNum);

#endif
#if OPT_2
        QuantumMonteCarloOpt2(nTrot, nSpin, trotters, JcoupStream, h, Jperp,
                              Beta, logRandNum);

#endif
#if OPT_3
        QuantumMonteCarloOpt3(nTrot, nSpin, trotters, JcoupStream, h, Jperp,
                              Beta);

#endif
#if OPT_5
        QuantumMonteCarloOpt5(nTrot, nSpin, trotters, JcoupStream, h, Jperp,
                              Beta);

#endif
#if OPT_5_ADV
        QuantumMonteCarloOpt5Adv(nSpin, trotters, JcoupStream, h, Jperp, Beta);
#endif

        /* Calculate energy of each turn */
        fp_t sumEnergy = 0;
        for (int t = 0; t < nTrot; t++) {
            /* Calcualte */
#if !OPT_5_ADV
            fp_t energy = computeEnergyPerTrotter(nSpin, trotters[t], Jcoup, h);
#else
            fp_t energy =
                computeEnergyPerTrotter(nSpin, trotters[t], Jcoup, h[0]);
#endif
            /* Compare */
            if (fabs(energy) < fabs(bestEnergy)) {
                bestEnergy = energy;
                memcpy(bestTrotter, trotters[t], MAX_NSPIN * sizeof(spin_t));
                bestRun     = i;
                bestTrotNum = t;
            }
            /* Sum up */
            sumEnergy += energy;
        }

        /* Sum of the energy of all trotters in this turn */
        out << "Energy: " << sumEnergy << std::endl;

        /* Beta Increment */
        Beta += dBeta;
    }

    /* Output Close */
    out.close();

    /* Print Best Trotter */
    std::cout << "Run, Trotter: " << bestRun << " ," << bestTrotNum
              << std::endl;
    for (int i = 0; i < nSpin; i++) {
        std::cout << bestTrotter[i] << " ";
    }
    std::cout << std::endl;

    /* Print Best Energy */
    std::cout << "Energy: " << bestEnergy << std::endl;

    /* Calculate the summation of each set */
    fp_t a = 0, b = 0;
    for (int i = 0; i < nSpin; i++) {
        if (bestTrotter[i])
            a += rndNum[i];
        else
            b += rndNum[i];
    }

    /* Print out */
    std::cout << a << " " << b << std::endl;
}
