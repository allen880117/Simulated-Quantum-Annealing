#ifndef _SQA_HPP_
#define _SQA_HPP_

#include "hls_math.h"
#include "hls_stream.h"

#define PRAGMA_SUB(PRAG) _Pragma(#PRAG)
#define CTX_PRAGMA(PRAG) PRAGMA_SUB(PRAG)

#define CONFIG_VERSION 1

#if (CONFIG_VERSION == 0)
#define NUM_TROT 16
#define NUM_SPIN 4096
#define PACKET_SIZE 64
#define LOG2_PACKET_SIZE 6
#define NUM_STREAM 1
#define LOG2_NUM_STREAM 0
#define NUM_FADD 4
#define COPYSIGNF 1

#elif (CONFIG_VERSION == 1)
#define NUM_TROT 4
#define NUM_SPIN 4096
#define PACKET_SIZE 128
#define LOG2_PACKET_SIZE 7
#define NUM_STREAM 8
#define LOG2_NUM_STREAM 3
#define NUM_FADD 64
#define COPYSIGNF 1

#else
#define NUM_TROT 8
#define NUM_SPIN 1024
#define PACKET_SIZE 16
#define LOG2_PACKET_SIZE 4
#define NUM_STREAM 4
#define LOG2_NUM_STREAM 2
#define NUM_FADD 16
#define COPYSIGNF 0

#endif

typedef unsigned int u32_t;
typedef int i32_t;

typedef float fp_t;
typedef ap_uint<1> spin_t;
typedef struct {
    fp_t data[PACKET_SIZE];
} fp_pack_t;
typedef ap_uint<PACKET_SIZE * NUM_STREAM> spin_pack_t;

/* Quantum Monte-Carlo */
void QuantumMonteCarlo(
    /* Spins */
    spin_pack_t trotters[NUM_TROT][NUM_SPIN / PACKET_SIZE / NUM_STREAM],
    /* Jcoup */
    hls::stream<fp_pack_t> &Jcoup,
    /* Array of h */
    const fp_t h[NUM_SPIN],
    /* Thermal Related */
    const fp_t Jperp,
    /* Thermal Related */
    const fp_t Beta,
    /* Log(Random Number = [0, 1]) */
    const fp_t logRand[NUM_TROT][NUM_SPIN]);

/* Naive Version */
void QuantumMonteCarloBasic(const int nTrot, const int nSpin,
                            spin_t trotters[NUM_TROT][NUM_SPIN],
                            const fp_t Jcoup[NUM_SPIN][NUM_SPIN],
                            const fp_t h[NUM_SPIN], const fp_t Jperp,
                            const fp_t Beta,
                            const fp_t logRandNumber[NUM_TROT][NUM_SPIN]);

#endif
