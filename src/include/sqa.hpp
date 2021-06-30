#ifndef _SQA_HPP_
#define _SQA_HPP_

#include "hls_stream.h"
#include <cmath>
#include <iostream>

//#define MAX_NTROT 32
//#define MAX_NSPIN 8192

#define MAX_NTROT 8
#define MAX_NSPIN 1024

#define LOG2_MAX_NTROT 3
#define LOG2_MAX_NSPIN 10

typedef float fp_t;
typedef bool  spin_t;

/* Quantum Monte-Carlo */
void QuantumMonteCarlo(const int nTrot, const int nSpin,
                       spin_t     trotters[MAX_NTROT][MAX_NSPIN],
                       const fp_t Jcoup[MAX_NSPIN][MAX_NSPIN],
                       const fp_t h[MAX_NSPIN], const fp_t Jperp,
                       const fp_t Beta,
                       const fp_t logRandNumber[MAX_NTROT][MAX_NSPIN]);

/* Quantum Monte-Carlo */
void QuantumMonteCarloBasic(const int nTrot, const int nSpin,
                            spin_t     trotters[MAX_NTROT][MAX_NSPIN],
                            const fp_t Jcoup[MAX_NSPIN][MAX_NSPIN],
                            const fp_t h[MAX_NSPIN], const fp_t Jperp,
                            const fp_t Beta,
                            const fp_t logRandNumber[MAX_NTROT][MAX_NSPIN]);

/* Quantum Monte-Carlo Opt */
void QuantumMonteCarloOpt(const int nTrot, const int nSpin,
                          spin_t trotters[MAX_NTROT][MAX_NSPIN], /* Spins */
                          hls::stream<fp_t> &Jcoup,        /* Stream of Jcoup */
                          const fp_t         h[MAX_NSPIN], /* Arraay of h */
                          const fp_t         Jperp, /* Thermal Related  */
                          const fp_t         Beta,  /* Thermal Related  */
                          const fp_t logRandNumber[MAX_NTROT][MAX_NSPIN]);

/* Quantum Monte-Carlo Opt */
void QuantumMonteCarloOpt2(const int nTrot, const int nSpin,
                           spin_t trotters[MAX_NTROT][MAX_NSPIN], /* Spins */
                           hls::stream<fp_t> &Jcoup, /* Stream of Jcoup */
                           const fp_t         h[MAX_NSPIN], /* Arraay of h */
                           const fp_t         Jperp, /* Thermal Related  */
                           const fp_t         Beta,  /* Thermal Related  */
                           const fp_t logRandNumber[MAX_NTROT][MAX_NSPIN]);

/* Quantum Monte-Carlo Opt */
void QuantumMonteCarloOpt3(const int nTrot, const int nSpin,
                           spin_t trotters[MAX_NTROT][MAX_NSPIN], /* Spins */
                           hls::stream<fp_t> &Jcoup, /* Stream of Jcoup */
                           const fp_t         h[MAX_NSPIN], /* Arraay of h */
                           const fp_t         Jperp, /* Thermal Related  */
                           const fp_t         Beta /* Thermal Related  */);

/* Quantum Monte-Carlo Opt */
void QuantumMonteCarloOpt4(
    const int nTrot, const int nSpin,
    spin_t               trotters[MAX_NTROT][MAX_NSPIN], /* Spins */
    hls::stream<fp_t> &  Jcoup,                          /* Stream of Jcoup */
    const fp_t           h[MAX_NSPIN],                   /* Arraay of h */
    const fp_t           Jperp,                          /* Thermal Related  */
    const fp_t           Beta /* Thermal Related  */,
    hls::stream<spin_t> &trottersOut /* Stream of Jcoup */
);

/* Quantum Monte-Carlo Opt */
void QuantumMonteCarloOpt5(const int nTrot, const int nSpin,
                           spin_t trotters[MAX_NTROT][MAX_NSPIN], /* Spins */
                           hls::stream<fp_t> &Jcoup, /* Stream of Jcoup */
                           const fp_t         h[MAX_NSPIN], /* Arraay of h */
                           const fp_t         Jperp, /* Thermal Related  */
                           const fp_t         Beta   /* Thermal Related  */
);

/* Quantum Monte-Carlo Opt */
void QuantumMonteCarloOpt5S(const int nTrot, const int nSpin,
                            spin_t trotters[MAX_NTROT][MAX_NSPIN], /* Spins */
                            hls::stream<fp_t> &Jcoup, /* Stream of Jcoup */
                            const fp_t         h[MAX_NSPIN], /* Arraay of h */
                            const fp_t         Jperp, /* Thermal Related  */
                            const fp_t         Beta,  /* Thermal Related  */
                            const int          boardLen,
                            const bool         constraint[MAX_NTROT][9 * 9]);

/* Quantum Monte-Carlo Opt */
void QuantumMonteCarloOpt5Adv(
    const int nSpin, spin_t trotters[MAX_NTROT][MAX_NSPIN], /* Spins */
    hls::stream<fp_t> &Jcoup, /* Stream of Jcoup */
    const fp_t h[MAX_NTROT][MAX_NSPIN], /* Arraay of h */
    const fp_t Jperp,                   /* Thermal Related  */
    const fp_t Beta /* Thermal Related  */);

#endif
