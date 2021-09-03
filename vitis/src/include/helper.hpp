#ifndef _HELPER_HPP_
#define _HELPER_HPP_

#include "sqa.hpp"

/* Progress Bar */
#define PBSTR "||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||"
#define PBWIDTH 60

/* Print the progress bar */
void PrintProgress(double percentage);

/* Generate Random Initial State */
void GenerateRandomState(spin_t trotters[NUM_TROT][NUM_SPIN], int nTrot,
                         int nSpin);

/* Generate Log Random Number = log(unif(rng)) * nTrot */
void GenerateLogRandomNumber(int nTrot, fp_t log_rand_nums[NUM_TROT][NUM_SPIN]);

/* Compute Energy Summation of A Trotter*/
fp_t ComputeEnergyPerTrotter(int nSpin, spin_t trotter[NUM_SPIN],
                             fp_t Jcoup[NUM_SPIN][NUM_SPIN], fp_t h[NUM_SPIN]);

/* Convert trotters into pack form*/
void PackTrotters(
    spin_pack_u50_t trotters_pack[NUM_TROT][NUM_SPIN / PACKET_SIZE],
    spin_t trotters[NUM_TROT][NUM_SPIN]);

/* Unpack trotters */
void UnpackTrotters(
    spin_pack_u50_t trotters_pack[NUM_TROT][NUM_SPIN / PACKET_SIZE],
    spin_t trotters[NUM_TROT][NUM_SPIN]);

/* Convert Jcoup into pack form */
void PackJcoup(fp_pack_t Jcoup_pack[NUM_SPIN][NUM_SPIN / PACKET_SIZE],
               fp_t Jcoup[NUM_SPIN][NUM_SPIN]);

/* Generate Jcoup of Number Partition */
void GenerateJcoupNP(int nSpin, fp_t Jcoup[NUM_SPIN][NUM_SPIN],
                     fp_t rand_nums[NUM_SPIN]);

/* Read Jcoup of AM */
void ReadJcoupAM(int nSpin, fp_t Jcoup[NUM_SPIN][NUM_SPIN],
                 std::string J_file_path);

/* Generate H of Number Partition */
void GenerateHNP(int nSpin, fp_t h[NUM_SPIN]);

/* Read H of AM */
void ReadHAM(int nSpin, fp_t h[NUM_SPIN], std::string h_file_path);

#endif
