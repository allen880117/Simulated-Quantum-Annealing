#ifndef _HELPER_HPP_
#define _HELPER_HPP_

#include "sqa.hpp"

/* Progress Bar */
#define PBSTR "||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||"
#define PBWIDTH 60

/* Print the progress bar */
void printProgress(double percentage);

/* Generate Random Initial State */
void generateRandomState(spin_t trotters[MAX_NTROT][MAX_NSPIN], int nTrot,
                         int nSpin);

/* Compute Energy Summation of A Trotter*/
fp_t computeEnergyPerTrotter(int nSpin, spin_t trotter[MAX_NSPIN],
                             fp_t Jcoup[MAX_NSPIN][MAX_NSPIN],
                             fp_t h[MAX_NSPIN]);

#endif
