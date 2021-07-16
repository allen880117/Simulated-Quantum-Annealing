#ifndef _SQA_HPP_
#define _SQA_HPP_

#include "hls_math.h"
#include "hls_stream.h"
#include "hls_vector.h"

//#define MAX_NTROT 32
//#define MAX_NSPIN 8192

#if 0
#define MAX_NTROT 16
#define MAX_NSPIN 1024
#define PACKET_SIZE 64
#define LOG2_PACKET_SIZE 6
#define NUM_STREAM 1
#else
#if 1
#define MAX_NTROT 4
#define MAX_NSPIN 4096
#define PACKET_SIZE 64
#define LOG2_PACKET_SIZE 6
#define NUM_STREAM 8
#else
#define MAX_NTROT 8
#define MAX_NSPIN 1024
#define PACKET_SIZE 16
#define LOG2_PACKET_SIZE 4
#define NUM_STREAM 4
#endif
#endif

typedef float fp_t;
typedef bool spin_t;
typedef hls::vector<fp_t, PACKET_SIZE> fp_pack_t;
typedef hls::vector<spin_t, PACKET_SIZE> spin_pack_t;

typedef unsigned int u32_t;
typedef int i32_t;

/* Quantum Monte-Carlo */
void QuantumMonteCarlo(
    /* Spins */
    spin_pack_t trotters[MAX_NTROT][MAX_NSPIN / PACKET_SIZE],
    /* Jcoup */
    hls::stream<fp_pack_t> &Jcoup_0,
#if NUM_STREAM >= 2
    hls::stream<fp_pack_t> &Jcoup_1,
#endif
#if NUM_STREAM >= 4
    hls::stream<fp_pack_t> &Jcoup_2, hls::stream<fp_pack_t> &Jcoup_3,
#endif
#if NUM_STREAM >= 8
    hls::stream<fp_pack_t> &Jcoup_4, hls::stream<fp_pack_t> &Jcoup_5,
    hls::stream<fp_pack_t> &Jcoup_6, hls::stream<fp_pack_t> &Jcoup_7,
#endif
    /* Array of h */
    const fp_t h[MAX_NSPIN],
    /* Thermal Related */
    const fp_t Jperp, const fp_t Beta,
    /* Log(Random Number = [0, 1]) */
    const fp_t logRandomNumber[MAX_NTROT][MAX_NSPIN]);

#endif
