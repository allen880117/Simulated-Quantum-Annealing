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

#define FIXED_POINT 0
#define ADV 1

#if !FIXED_POINT
/* Field */
fp_t Jcoup[MAX_NSPIN][MAX_NSPIN];
#if !ADV
fp_t h[MAX_NSPIN];
#else
fp_t h[MAX_NTROT][MAX_NSPIN];
#endif
#else
/* Field */
fix_t Jcoup[MAX_NSPIN][MAX_NSPIN];
fix_t h[MAX_NSPIN];
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
    const int nTrot = MAX_NTROT;
    const int nSpin = 729;
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
#if !FIXED_POINT
    fp_t rndNum[MAX_NSPIN];
    for (int i = 0; i < nSpin; i++) {
        // rndNum[i] = int_unif(rng);
        rndNum[i] = (float)(i + 1) / (float)nSpin;
    }
#else
    fix_t     rndNum[MAX_NSPIN];
    for (int i = 0; i < nSpin; i++) {
        rndNum[i] = i - nSpin / 2;
    }
#endif

    /* Field Initialization */
    for (int i = 0; i < nSpin; i++) {
#if !ADV
        h[i] = 0.0f;
#endif
        for (int j = 0; j < nSpin; j++) {
            Jcoup[i][j] = 0.0f;
        }
    }
#if ADV
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
    fp_t iter = 500; // default 500
#if !FIXED_POINT
    fp_t maxBeta = ((fp_t)8) / 1.0f;    // default 8.0f
    fp_t Beta    = 1 / ((fp_t)4096.0f); // default 1/16
    fp_t G0      = 8.0f;                // default 8.0f
#else
    fp_t maxBeta = ((fp_t)8 / pow((fp_t)nSpin, 2)) / 1.0f; // default 8.0f
    fp_t Beta    = 1 / ((fp_t)4096.0f * (fp_t)nSpin);      // default 1/16
    fp_t G0      = 8.0f / (fp_t)nSpin;                     // default 8.0f
#endif
    fp_t dBeta = (maxBeta - Beta) / (fp_t)iter;

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

        /* Do Quantum Monte-Carlo */
#if !MAXI
#if !FIXED_POINT
        hls::stream<fp_t> JcoupStream;
#else
        hls::stream<fix_t> JcoupStream;
#endif
        for (int j = 0; j < nSpin; j++)
            for (int k = 0; k < nSpin; k++)
                JcoupStream << Jcoup[j][k];
#endif

#if !FIXED_POINT
#if !ADV
        QuantumMonteCarloOpt5(nTrot, nSpin, trotters, JcoupStream, h, Jperp,
                              Beta);
#else
#if !MAXI
        QuantumMonteCarloOpt5Adv(nSpin, trotters, JcoupStream, h, Jperp, Beta);
#else
        QuantumMonteCarloOpt5Adv(nSpin, trotters, Jcoup, h, Jperp, Beta);
#endif
#endif
        // QuantumMonteCarloOpt3(nTrot, nSpin, trotters, JcoupStream, h, Jperp,
        //                       Beta);

        // QuantumMonteCarloOpt2(nTrot, nSpin, trotters, JcoupStream, h, Jperp,
        //                       Beta, logRandNum);

        // QuantumMonteCarlo(nTrot, nSpin, trotters, Jcoup, h, Jperp, Beta,
        //                   logRandNum);
#else
        QuantumMonteCarloOpt5Fixed(nTrot, nSpin, trotters, JcoupStream, h,
                                   Jperp, Beta);
#endif

        /* Calculate energy of each turn */
        fp_t sumEnergy = 0;
        for (int t = 0; t < nTrot; t++) {
            /* Calcualte */
#if !FIXED_POINT
#if !ADV
            fp_t energy = computeEnergyPerTrotter(nSpin, trotters[t], Jcoup, h);
#else
            fp_t energy =
                computeEnergyPerTrotter(nSpin, trotters[t], Jcoup, h[0]);
#endif
#else
            fp_t energy =
                computeEnergyPerTrotterFixed(nSpin, trotters[t], Jcoup, h);
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
