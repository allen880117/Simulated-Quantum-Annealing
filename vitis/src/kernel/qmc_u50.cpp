#include "../include/sqa.hpp"

/*
 *  Reduce Intra-Buffer
 *  * Inline functions
 *  * Recursion using template meta programming
 */
namespace U50 {

template <u32_t SIZE>
void ReduceIntraBuffer(fp_t fpBuffer[PACKET_SIZE]) {
#pragma HLS INLINE
    ReduceIntraBuffer<SIZE / 2>(fpBuffer);
    for (u32_t i = 0; i < PACKET_SIZE; i += SIZE) {
#pragma HLS UNROLL
        fpBuffer[i] += fpBuffer[i + SIZE / 2];
    }
}

template <>
void ReduceIntraBuffer<2>(fp_t fpBuffer[PACKET_SIZE]) {
#pragma HLS INLINE
    for (u32_t i = 0; i < PACKET_SIZE; i += 2) {
#pragma HLS UNROLL
        fpBuffer[i] += fpBuffer[i + 1];
    }
}

template <>
void ReduceIntraBuffer<1>(fp_t fpBuffer[PACKET_SIZE]) {
    ;
}

}  // namespace U50

/*
 *  Reduce Inter-Buffer
 *  * Inline functions
 *  * Recursion using template meta programming
 */
namespace U50 {

template <u32_t NSTRM>
void ReduceInterBuffer(fp_t fpBuffer[NUM_STREAM][PACKET_SIZE]) {
#pragma HLS INLINE
    ReduceInterBuffer<NSTRM / 2>(fpBuffer);
    for (u32_t i = 0; i < NUM_STREAM; i += NSTRM) {
#pragma HLS UNROLL
        fpBuffer[i][0] += fpBuffer[i + NSTRM / 2][0];
    }
}

template <>
void ReduceInterBuffer<2>(fp_t fpBuffer[NUM_STREAM][PACKET_SIZE]) {
#pragma HLS INLINE
    for (u32_t i = 0; i < NUM_STREAM; i += 2) {
#pragma HLS UNROLL
        fpBuffer[i][0] += fpBuffer[i + 1][0];
    }
}

template <>
void ReduceInterBuffer<1>(fp_t fpBuffer[NUM_STREAM][PACKET_SIZE]) {
    ;
}

}  // namespace U50

/*
 * Sign
 * * To reduce the usage of LUT (for xor)
 */
namespace U50 {
inline float Sign(float input) {
#pragma HLS INLINE
    union {
        float fp_data;
        uint32_t int_data;
    } converter;

    converter.fp_data = input;

    ap_uint<32> tmp = converter.int_data;
    tmp[31] = (~tmp[31]);

    converter.int_data = tmp;

    return converter.fp_data;
}
}  // namespace U50

/*
 * Trotter Unit
 * * Run      : Sum up spin[j] * Jcoup[i][j]
 * * RunFinal : Add other terms and do the flip
 */
namespace U50 {
namespace TrotterUnit {
void Run(
    // Timeline Status
    const u32_t t, const u32_t stage, const u32_t packOfst,
    // Spins
    spin_pack_u50_t trotters[NUM_SPIN / PACKET_SIZE],
    // Local field
    fp_t &dH,
    // Jcoup
    fp_pack_t JcoupLocal[NUM_SPIN / PACKET_SIZE]) {
    /*
     * Use INLINE here.
     * When PACKET_SIZE and NUM_STREAM is lower than a threshold
     * It's possible for loop step to
     * merge the usage of fadd between TrotterUnits
     */
#pragma HLS INLINE
    // CTX_PRAGMA(HLS ALLOCATION operation instances = fadd limit = NUM_FADD)
    // CTX_PRAGMA(HLS PIPELINE II = HALF_NUM_STREAM)
    // CTX_PRAGMA(HLS PIPELINE)

    /*
     * Remove stage check here for better timing
     */

    // Cache
    fp_t dHTmp = dH;

    // Buffer for Reduction
    fp_t fpBuffer[NUM_STREAM][PACKET_SIZE];
#pragma HLS ARRAY_PARTITION dim = 1 type = complete variable = fpBuffer
#pragma HLS ARRAY_PARTITION dim = 2 type = complete variable = fpBuffer

    // Multiple Stream
    for (u32_t strmOfst = 0; strmOfst < NUM_STREAM; strmOfst++) {
#pragma HLS UNROLL

        // Multiply
        for (u32_t k = 0; k < PACKET_SIZE; k++) {
#pragma HLS UNROLL
            fpBuffer[strmOfst][k] =
                (!trotters[packOfst + strmOfst][k])
                    ? (Sign(JcoupLocal[packOfst + strmOfst].data[k]))
                    : (JcoupLocal[packOfst + strmOfst].data[k]);
        }
    }

    // Reduction
    for (u32_t strmOfst = 0; strmOfst < NUM_STREAM; strmOfst++) {
#pragma HLS UNROLL
        ReduceIntraBuffer<PACKET_SIZE>(fpBuffer[strmOfst]);
    }
    ReduceInterBuffer<NUM_STREAM>(fpBuffer);

    // Sum up and Write back
    dHTmp += fpBuffer[0][0];
    dH = dHTmp;
};

void RunFinal(
    // Timeline Status
    const u32_t t, const u32_t stage,
    // Index of i
    const u32_t iPack, const u32_t iSpin,
    // Spins
    spin_pack_u50_t trotters[NUM_SPIN / PACKET_SIZE],
    // Local field
    const fp_t dH,
    // Spin from up/down trotters
    const spin_t upSpin, const spin_t downSpin,
    // Field-Related Parameters
    const fp_t Beta, const fp_t dHTunnel, const fp_t hLocal,
    const fp_t logRandNumber) {
    // Check stage
    bool inside = (stage >= t && stage < NUM_SPIN + t);
    if (inside) {
        // Cache
        fp_t dHTmp = dH;
        spin_t this_spin = trotters[iPack][iSpin];

        /* Add tunnel energy */
        bool sameDirection = (upSpin == downSpin);
        if (sameDirection && upSpin) {
            dHTmp = (dHTmp - dHTunnel) * 2.0f;
        } else if (sameDirection && (!upSpin)) {
            dHTmp = (dHTmp + dHTunnel) * 2.0f;
        } else {
            dHTmp = dHTmp * 2.0f;
        }

        // Add h
        dHTmp += hLocal;

        /*
         * Formula: - (-2) * spin(i) * dHTmp > lrn / beta
         * EqualTo:          spin(i) * dHTmp > lrn / Beta / 2
         */
        // Times itself
        if (!this_spin) {
            dHTmp = -dHTmp;
        }

        // Flip
        if ((dHTmp) > logRandNumber / Beta / 2) {
            trotters[iPack][iSpin] = (!this_spin);
        }
    }
};
}  // namespace TrotterUnit
}  // namespace U50

extern "C" {
void QuantumMonteCarloU50(
    /* Spins */
    spin_pack_u50_t trotters[NUM_TROT][NUM_SPIN / PACKET_SIZE],
    /* Jcoup */
    const fp_pack_t Jcoup[NUM_SPIN][NUM_SPIN / PACKET_SIZE],
    /* Array of h */
    const fp_t h[NUM_SPIN],
    /* Thermal Related */
    const fp_t Jperp,
    /* Thermal Related */
    const fp_t Beta,
    /* Log(Random Number = [0, 1]) */
    const fp_t logRand[NUM_TROT][NUM_SPIN]) {
#pragma HLS AGGREGATE compact = auto variable = Jcoup

    u32_t idxUp[NUM_TROT], idxDown[NUM_TROT], iPack[NUM_TROT], iSpin[NUM_TROT];
#pragma HLS ARRAY_PARTITION dim = 1 type = complete variable = idxUp
#pragma HLS ARRAY_PARTITION dim = 1 type = complete variable = idxDown
#pragma HLS ARRAY_PARTITION dim = 1 type = complete variable = iPack
#pragma HLS ARRAY_PARTITION dim = 1 type = complete variable = iSpin

    spin_t upSpin[NUM_TROT], downSpin[NUM_TROT];
#pragma HLS ARRAY_PARTITION dim = 1 type = complete variable = upSpin
#pragma HLS ARRAY_PARTITION dim = 1 type = complete variable = downSpin

    fp_t dH[NUM_TROT], hLocal[NUM_TROT], logRandLocal[NUM_TROT];
#pragma HLS ARRAY_PARTITION dim = 1 type = complete variable = dH
#pragma HLS ARRAY_PARTITION dim = 1 type = complete variable = hLocal
#pragma HLS ARRAY_PARTITION dim = 1 type = complete variable = logRandLocal

    static spin_pack_u50_t trottersLocal[NUM_TROT][NUM_SPIN / PACKET_SIZE];
// #pragma HLS BIND_STORAGE variable = trottersLocal type = ram_2p impl = bram
#pragma HLS ARRAY_PARTITION dim = 1 type = complete variable = trottersLocal
    CTX_PRAGMA(HLS ARRAY_PARTITION dim = 2 type = cyclic factor =
                   NUM_STREAM variable = trottersLocal)

    fp_pack_t JcoupLocal[NUM_TROT][NUM_SPIN / PACKET_SIZE];
// #pragma HLS BIND_STORAGE variable = JcoupLocal type = ram_2p impl = bram
#pragma HLS AGGREGATE compact = auto variable = JcoupLocal
#pragma HLS ARRAY_PARTITION dim = 1 type = complete variable = JcoupLocal
    CTX_PRAGMA(HLS ARRAY_PARTITION dim = 2 type = cyclic factor =
                   NUM_STREAM variable = JcoupLocal)

    // Cache Trotters
READ_TROTTERS:
    for (u32_t t = 0; t < NUM_TROT; t++) {
        for (u32_t packOfst = 0; packOfst < NUM_SPIN / PACKET_SIZE;
             packOfst++) {
#pragma HLS PIPELINE
            trottersLocal[t][packOfst] = trotters[t][packOfst];
        }
    }

    // Initialize idxUp/idxDown
INIT_IDX:
    for (u32_t t = 0; t < NUM_TROT; t++) {
#pragma HLS UNROLL
        idxUp[t] = (t == 0) ? (NUM_TROT - 1) : (t - 1);
        idxDown[t] = (t == NUM_TROT - 1) ? 0 : (t + 1);
    }

    // Precomputation of Tunnel-Related Energy
    const fp_t dHTunnel = Jperp * ((fp_t)(NUM_TROT));

    // Loop Stage
LOOP_STAGE:
    for (u32_t stage = 0; stage < (NUM_SPIN + NUM_TROT - 1); stage++) {
        // Force not to pipeline
#pragma HLS PIPELINE off

        // Update Input State
    UPDATE_INPUT_STATE:
        for (u32_t t = 0; t < NUM_TROT; t++) {
            // Use unroll fro better timing than using pipeline
#pragma HLS UNROLL

            // Compute Ofst  & Clamp into [0~NUM_SPIN)
            u32_t Ofst = ((stage + NUM_SPIN - t) & (NUM_SPIN - 1));
            u32_t packOfst = (Ofst >> (LOG2_PACKET_SIZE));
            u32_t spinOfst = (Ofst & (PACKET_SIZE - 1));

            // Update Index of i, upSpin/downSpin
            iPack[t] = packOfst;
            iSpin[t] = spinOfst;
            upSpin[t] = trottersLocal[idxUp[t]][packOfst][spinOfst];
            downSpin[t] = trottersLocal[idxDown[t]][packOfst][spinOfst];

            // Reset dH
            dH[t] = 0.0f;

            // Cache h and logRand
            hLocal[t] = h[Ofst];
            logRandLocal[t] = logRand[t][Ofst];
        }

        // Read new Jcoup[0]
        if (stage < NUM_SPIN) {
        READ_NEW_JCOUP:
            for (u32_t packOfst = 0; packOfst < NUM_SPIN / PACKET_SIZE;
                 packOfst++) {
#pragma HLS PIPELINE
                JcoupLocal[0][packOfst] = Jcoup[stage][packOfst];
            }
        }

        // Loop Step
    LOOP_STEP:
        for (u32_t step = 0, packOfst = 0; step < NUM_SPIN;
             step += PACKET_SIZE * NUM_STREAM, packOfst += NUM_STREAM) {
#pragma HLS PIPELINE
        // Trotter Units
        RUN_TU:
            for (u32_t t = 0; t < NUM_TROT; t++) {
#pragma HLS UNROLL
                U50::TrotterUnit::Run(t, stage, packOfst, trottersLocal[t],
                                      dH[t], JcoupLocal[t]);
            }
        }

        // Final of Trotter Units
    RUN_TU_FINAL:
        for (u32_t t = 0; t < NUM_TROT; t++) {
#pragma HLS UNROLL
            U50::TrotterUnit::RunFinal(t, stage, iPack[t], iSpin[t],
                                       trottersLocal[t], dH[t], upSpin[t],
                                       downSpin[t], Beta, dHTunnel, hLocal[t],
                                       logRandLocal[t]);
        }

        // Shift Down JcoupLocal
    SHIFT_JCOUP:
        for (u32_t packOfst = 0; packOfst < NUM_SPIN / PACKET_SIZE;
             packOfst++) {
#pragma HLS PIPELINE
            for (i32_t t = NUM_TROT - 2; t >= 0; t--) {
#pragma HLS UNROLL
                JcoupLocal[t + 1][packOfst] = JcoupLocal[t][packOfst];
            }
        }
    }

    // Write out trotters
WRITE_TROTTERS:
    for (u32_t t = 0; t < NUM_TROT; t++) {
        for (u32_t packOfst = 0; packOfst < NUM_SPIN / PACKET_SIZE;
             packOfst++) {
#pragma HLS PIPELINE
            trotters[t][packOfst] = trottersLocal[t][packOfst];
        }
    }
}
}
