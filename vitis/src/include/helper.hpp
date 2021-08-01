#ifndef _HELPER_HPP_
#define _HELPER_HPP_

#include "sqa.hpp"

/* Progress Bar */
#define PBSTR "||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||"
#define PBWIDTH 60

/* Print the progress bar */
void printProgress(double percentage);

/* Generate Random Initial State */
void generateRandomState(spin_t trotters[NUM_TROT][NUM_SPIN], int nTrot,
                         int nSpin);

/* Compute Energy Summation of A Trotter*/
fp_t computeEnergyPerTrotter(int nSpin, spin_t trotter[NUM_SPIN],
                             fp_t Jcoup[NUM_SPIN][NUM_SPIN],
                             fp_t h[NUM_SPIN]);

#endif
