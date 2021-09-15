#include "../include/sqa.hpp"

/*
 * Sign
 * - Invert the sign of single-precision float-point
 * - To reduce the usage of LUT (replace the xor)
 */
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

/*
 * Multiply
 * - Spin (boolean) times Jcoup
 */
inline fp_t Multiply(spin_t spin, fp_t jcoup) {
#pragma HLS INLINE
    return ((!spin) ? (Sign(jcoup)) : (jcoup));
}

/*
 * ReduceIntra (TOP)(BUF_SIZE = PACKET_SIZE)
 * - Recursion using template meta programming
 * - Reduce Intra-Buffer
 */
template <u32_t GAP_SIZE>
inline void ReduceIntra(fp_t fp_buffer[PACKET_SIZE]) {
#pragma HLS INLINE
    // Next call
    ReduceIntra<GAP_SIZE / 2>(fp_buffer);

    // Reduce Intra
REDUCE_INTRA:
    for (u32_t i = 0; i < PACKET_SIZE; i += GAP_SIZE) {
#pragma HLS UNROLL
        fp_buffer[i] += fp_buffer[i + GAP_SIZE / 2];
    }
}

/*
 * ReduceIntra (BOTTOM)(BUF_SIZE = PACKET_SIZE)
 */
template <>
inline void ReduceIntra<1>(fp_t fp_buffer[PACKET_SIZE]) {
    ;
}

/*
 * ReduceIntra (TOP)(BUF_SIZE = NUM_SPIN / PACKET_SIZE / NUM_STREAM)
 * - Recursion using template meta programming
 * - Reduce Intra-Buffer
 */
template <u32_t GAP_SIZE>
inline void ReduceIntra2(fp_t fp_buffer[NUM_SPIN / PACKET_SIZE / NUM_STREAM]) {
#pragma HLS INLINE
    // Next call
    ReduceIntra2<GAP_SIZE / 2>(fp_buffer);

    // Reduce Intra
REDUCE_INTRA:
    for (u32_t i = 0; i < NUM_SPIN / PACKET_SIZE / NUM_STREAM; i += GAP_SIZE) {
#pragma HLS UNROLL
        fp_buffer[i] += fp_buffer[i + GAP_SIZE / 2];
    }
}

/*
 * ReduceIntra (BOTTOM)(BUF_SIZE = NUM_SPIN / PACKET_SIZE / NUM_STREAM)
 */
template <>
inline void ReduceIntra2<1>(
    fp_t fp_buffer[NUM_SPIN / PACKET_SIZE / NUM_STREAM]) {
    ;
}

/*
 * ReduceInter (TOP)
 * - Recursion using template meta programming
 * - Reduce Inter-Buffers
 */
template <u32_t N_STRM>
inline void ReduceInter(fp_t fp_buffer[NUM_STREAM][PACKET_SIZE]) {
#pragma HLS INLINE
    // Next call
    ReduceInter<N_STRM / 2>(fp_buffer);

    // Reduce Inter
REDUCE_INTER:
    for (u32_t i = 0; i < NUM_STREAM; i += N_STRM) {
#pragma HLS UNROLL
        fp_buffer[i][0] += fp_buffer[i + N_STRM / 2][0];
    }
}

/*
 * ReduceInter (BOTTOM)
 */
template <>
inline void ReduceInter<1>(fp_t fp_buffer[NUM_STREAM][PACKET_SIZE]) {
    ;
}

/*
 * Trotter Unit
 * - Run      : Sum up spin[j] * Jcoup[i][j]
 * - RunFinal : Add other terms and do the flip
 */
namespace TrotterUnit {
fp_t Run(const spin_pack_u50_t trotters_local[NUM_SPIN / PACKET_SIZE],
         const fp_pack_t jcoup_local[NUM_SPIN / PACKET_SIZE]) {
    /* Remove stage check for better timing */

    // Buffer for dh
    fp_t dh_tmp[NUM_SPIN / PACKET_SIZE / NUM_STREAM];

    // Sum up
SUM_UP:
    for (u32_t ofst = 0, pack_ofst = 0;
         ofst < NUM_SPIN / PACKET_SIZE / NUM_STREAM;
         ofst++, pack_ofst += NUM_STREAM) {
        // Pramgas: Pipeline and Confine the usage of fadd
        CTX_PRAGMA(HLS ALLOCATION operation instances = fadd limit = 64)
        CTX_PRAGMA(HLS PIPELINE)

        // Buffer for source of adder
        fp_t fp_buffer[NUM_STREAM][PACKET_SIZE];

        // Unpack and Multiply
    UNPACK_STREAM:
        for (u32_t strm_ofst = 0; strm_ofst < NUM_STREAM; strm_ofst++) {
#pragma HLS UNROLL

        UNPACK_PACK:
            for (u32_t spin_ofst = 0; spin_ofst < PACKET_SIZE; spin_ofst++) {
#pragma HLS UNROLL
                // Multiply
                fp_buffer[strm_ofst][spin_ofst] = Multiply(
                    trotters_local[pack_ofst + strm_ofst][spin_ofst],
                    jcoup_local[pack_ofst + strm_ofst].data[spin_ofst]);
            }

            // Reduce inside each fp_buffer
            ReduceIntra<PACKET_SIZE>(fp_buffer[strm_ofst]);
        }

        // Reduce between different fp_buffer
        ReduceInter<NUM_STREAM>(fp_buffer);

        // Write into dh_tmp buffer
        dh_tmp[ofst] = fp_buffer[0][0];
    }

    // Reduce between dh_tmp buffers
    ReduceIntra2<NUM_SPIN / PACKET_SIZE / NUM_STREAM>(dh_tmp);

    // Return
    return dh_tmp[0];
}

void RunFinal(const u32_t t, const u32_t stage, const u32_t i_pack,
              const u32_t i_spin,
              spin_pack_u50_t trotters_local[NUM_SPIN / PACKET_SIZE],
              const spin_t up_spin, const spin_t down_spin, const fp_t dh,
              const fp_t beta, const fp_t dh_tunnel, const fp_t h_local,
              const fp_t log_rand_local) {
    bool inside = (stage >= t && stage < NUM_SPIN + t);
    if (inside) {
        // Cache
        fp_t dh_tmp = dh;
        spin_t this_spin = trotters_local[i_pack][i_spin];

        // Add dh_tunnel
        bool same_dir = (up_spin == down_spin);
        if (same_dir) {
            dh_tmp += (up_spin) ? (Sign(dh_tunnel)) : (dh_tunnel);
        }

        // Times 2.0f then Add h_local
        dh_tmp *= 2.0f;
        dh_tmp += h_local;

        /*
         * Formula: - (-2) * spin(i) * dHTmp > lrn / beta
         * EqualTo:          spin(i) * dHTmp > lrn / Beta / 2
         */
        // Times this_spin
        if (!this_spin) {
            dh_tmp = Sign(dh_tmp);
        }

        // Flip and Return
        if ((dh_tmp) > log_rand_local / beta * 0.5f) {
            trotters_local[i_pack][i_spin] = (~this_spin);
        }
    }
}
}  // namespace TrotterUnit

extern "C" {
void QuantumMonteCarloU50(
    spin_pack_u50_t trotters[NUM_TROT][NUM_SPIN / PACKET_SIZE],
    const fp_pack_t jcoup[NUM_SPIN][NUM_SPIN / PACKET_SIZE],
    const fp_t h[NUM_SPIN], const fp_t jperp, const fp_t beta,
    const fp_t log_rand[NUM_TROT][NUM_SPIN]) {
    // Interface
#pragma HLS INTERFACE mode = m_axi bundle = gmem0 port = trotters
#pragma HLS INTERFACE mode = m_axi bundle = gmem1 port = jcoup
#pragma HLS INTERFACE mode = m_axi bundle = gmem2 port = h
#pragma HLS INTERFACE mode = m_axi bundle = gmem3 port = log_rand

    // Pragma: Aggreate for better throughput
#pragma HLS AGGREGATE compact = auto variable = jcoup

    // Local trotters
    spin_pack_u50_t trotters_local[NUM_TROT][NUM_SPIN / PACKET_SIZE];
// #pragma HLS BIND_STORAGE variable = trotters_local type = ram_2p impl = bram
#pragma HLS ARRAY_PARTITION dim = 1 type = complete variable = trotters_local
#pragma HLS ARRAY_PARTITION dim = 2 type = cyclic factor = 2 variable = \
    trotters_local
    // CTX_PRAGMA(HLS ARRAY_PARTITION dim = 2 type = cyclic factor =
    //                NUM_STREAM variable = trotters_local)

    // Local jcoup
    fp_pack_t jcoup_local[NUM_TROT][NUM_SPIN / PACKET_SIZE];
// #pragma HLS BIND_STORAGE variable = jcoup_local type = ram_2p impl = bram
#pragma HLS AGGREGATE compact = auto variable = jcoup_local
#pragma HLS ARRAY_PARTITION dim = 1 type = complete variable = jcoup_local
#pragma HLS ARRAY_PARTITION dim = 2 type = cyclic factor = 2 variable = \
    jcoup_local
    //    CTX_PRAGMA(HLS ARRAY_PARTITION dim = 2 type = cyclic factor =
    //                   NUM_STREAM variable = jcoup_local)

    // Tunnel-Related Energy
    const fp_t dh_tunnel = jperp * ((fp_t)NUM_TROT);

    // Read trotters to local memory
READ_TROTTERS:
    for (u32_t t = 0; t < NUM_TROT; t++) {
    READ_TROTTERS_1:
        for (u32_t ofst = 0; ofst < NUM_SPIN / PACKET_SIZE; ofst++) {
#pragma HLS PIPELINE
            trotters_local[t][ofst] = trotters[t][ofst];
        }
    }

    // Loop of stage
LOOP_STAGE:
    for (u32_t stage = 0; stage < (NUM_SPIN + NUM_TROT - 1); stage++) {
        // index of current spin
        u32_t i_pack[NUM_TROT], i_spin[NUM_TROT];
#pragma HLS ARRAY_PARTITION dim = 1 type = complete variable = i_pack
#pragma HLS ARRAY_PARTITION dim = 1 type = complete variable = i_spin

        // current spin, spin from up/down trotters
        spin_t up_spin[NUM_TROT], down_spin[NUM_TROT];
#pragma HLS ARRAY_PARTITION dim = 1 type = complete variable = up_spin
#pragma HLS ARRAY_PARTITION dim = 1 type = complete variable = down_spin

        // dh, h_local and log_rand_local
        fp_t dh[NUM_TROT], h_local[NUM_TROT], log_rand_local[NUM_TROT];
#pragma HLS ARRAY_PARTITION dim = 1 type = complete variable = dh
#pragma HLS ARRAY_PARTITION dim = 1 type = complete variable = h_local
#pragma HLS ARRAY_PARTITION dim = 1 type = complete variable = log_rand_local

        // Update offset, h_local, log_rand_local
    UPDATE_OFST_H_LRN:
        for (u32_t t = 0; t < NUM_TROT; t++) {
#pragma HLS UNROLL
            u32_t ofst = ((stage + NUM_SPIN - t) & (NUM_SPIN - 1));

            // offset
            i_pack[t] = (ofst >> (LOG2_PACKET_SIZE));
            i_spin[t] = (ofst & (PACKET_SIZE - 1));

            // h, lrn
            h_local[t] = h[ofst];
            log_rand_local[t] = log_rand[t][ofst];
        }

        // Update up_spin
    UPDATE_UP_SPIN:
        for (u32_t t = 1; t < NUM_TROT; t++) {
#pragma HLS UNROLL
            up_spin[t] = trotters_local[t - 1][i_pack[t]][i_spin[t]];
        }
        up_spin[0] = trotters_local[NUM_TROT - 1][i_pack[0]][i_spin[0]];

        // Update down_spin
    UPDATE_DOWN_SPIN:
        for (u32_t t = 0; t < NUM_TROT - 1; t++) {
#pragma HLS UNROLL
            down_spin[t] = trotters_local[t + 1][i_pack[t]][i_spin[t]];
        }
        down_spin[NUM_TROT - 1] =
            trotters_local[0][i_pack[NUM_TROT - 1]][i_spin[NUM_TROT - 1]];

        // Read New Jcuop[0]
        /* Remove if condition enable the overlap of read request */
        // if (stage < NUM_SPIN) {
    READ_JCOUP:
        for (u32_t ofst = 0; ofst < NUM_SPIN / PACKET_SIZE; ofst++) {
#pragma HLS PIPELINE
            jcoup_local[0][ofst] = jcoup[stage & (NUM_SPIN - 1)][ofst];
        }
        // }

        // Run Trotter Units
    RUN_TU:
        for (u32_t t = 0; t < NUM_TROT; t++) {
#pragma HLS UNROLL
            dh[t] = TrotterUnit::Run(trotters_local[t], jcoup_local[t]);
        }

        // Run final step of Trotter Units
    RUN_TU_FINAL:
        for (u32_t t = 0; t < NUM_TROT; t++) {
#pragma HLS UNROLL
            TrotterUnit::RunFinal(t, stage, i_pack[t], i_spin[t],
                                  trotters_local[t], up_spin[t], down_spin[t],
                                  dh[t], beta, dh_tunnel, h_local[t],
                                  log_rand_local[t]);
        }

        // Shift down jcoup_local
    SHIFT_JCOUP:
        for (u32_t ofst = 0; ofst < NUM_SPIN / PACKET_SIZE; ofst++) {
#pragma HLS PIPELINE
            for (i32_t t = NUM_TROT - 2; t >= 0; t--) {
#pragma HLS UNROLL
                jcoup_local[t + 1][ofst] = jcoup_local[t][ofst];
            }
        }
    }

    // Write trotters_local to host memory
WRITE_TROTTERS:
    for (u32_t t = 0; t < NUM_TROT; t++) {
    WRITE_TROTTERS_1:
        for (u32_t ofst = 0; ofst < NUM_SPIN / PACKET_SIZE; ofst++) {
#pragma HLS PIPELINE
            trotters[t][ofst] = trotters_local[t][ofst];
        }
    }
}
}
