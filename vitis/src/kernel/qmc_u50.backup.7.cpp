#include "../include/sqa.hpp"

/* General Inpput State for Run Final */
struct state_t {
    u32_t  i_pack;          // pack index of current spin
    u32_t  i_spin;          // spin index of current spin
    spin_t up_spin;         // spin from up trotter
    spin_t down_spin;       // spin from down trotter
    fp_t   h_local;         // cache h
    fp_t   log_rand_local;  // cache log rand
};

/* Fix Info for Run Final */
struct info_t {
    u32_t t;              // Number of this trotter
    fp_t  beta;           // beta
    fp_t  dh_tunnel;      // + tunnel energy
    fp_t  neg_dh_tunnel;  // - tunnel energy
};

/*
 * Sign
 * - Invert the sign of single-precision float-point
 * - To reduce the usage of LUT (replace the xor)
 */
inline float Sign(float input) {
#pragma HLS  INLINE
    union {
        float    fp_data;
        uint32_t int_data;
    } converter;

    converter.fp_data = input;

    ap_uint<32> tmp = converter.int_data;
    tmp[31]         = (~tmp[31]);

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
template <u32_t BUF_SIZE, u32_t GAP_SIZE>
inline void ReduceIntra(fp_t fp_buffer[BUF_SIZE]) {
#pragma HLS INLINE
    // Next call
    ReduceIntra<BUF_SIZE, GAP_SIZE / 2>(fp_buffer);

    // Reduce Intra
REDUCE_INTRA:
    for (u32_t i = 0; i < BUF_SIZE; i += GAP_SIZE) {
#pragma HLS UNROLL
        fp_buffer[i] += fp_buffer[i + GAP_SIZE / 2];
    }
}

/*
 * ReduceIntra (BOTTOM)(BUF_SIZE = PACKET_SIZE)
 */
template <>
inline void ReduceIntra<PACKET_SIZE, 1>(fp_t fp_buffer[PACKET_SIZE]) {
    ;
}

/*
 * ReduceIntra (BOTTOM)(BUF_SIZE = NUM_SPIN / PACKET_SIZE / NUM_STREAM)
 */
#if (NUM_SPIN / PACKET_SIZE / NUM_STREAM != PACKET_SIZE)
template <>
inline void ReduceIntra<NUM_SPIN / PACKET_SIZE / NUM_STREAM, 1>(
    fp_t fp_buffer[NUM_SPIN / PACKET_SIZE / NUM_STREAM]) {
    ;
}
#endif

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
         const fp_pack_t       jcoup_local[NUM_SPIN / PACKET_SIZE]) {
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
            ReduceIntra<PACKET_SIZE, PACKET_SIZE>(fp_buffer[strm_ofst]);
        }

        // Reduce between different fp_buffer
        ReduceInter<NUM_STREAM>(fp_buffer);

        // Write into dh_tmp buffer
        dh_tmp[ofst] = fp_buffer[0][0];
    }

    // Reduce between dh_tmp buffers
    ReduceIntra<NUM_SPIN / PACKET_SIZE / NUM_STREAM,
                NUM_SPIN / PACKET_SIZE / NUM_STREAM>(dh_tmp);

    // Return
    return dh_tmp[0];
}

void RunFinal(const u32_t stage, const info_t info, const state_t state,
              const fp_t      dh,
              spin_pack_u50_t trotters_local[NUM_SPIN / PACKET_SIZE]) {
    bool inside = (stage >= info.t && stage < NUM_SPIN + info.t);
    if (inside) {
        // Cache
        fp_t   dh_tmp    = dh;
        spin_t this_spin = trotters_local[state.i_pack][state.i_spin];

        // Add dh_tunnel
        bool same_dir = (state.up_spin == state.down_spin);
        if (same_dir) {
            dh_tmp += (state.up_spin) ? info.neg_dh_tunnel : info.dh_tunnel;
        }

        // Times 2.0f then Add h_local
        dh_tmp *= 2.0f;
        dh_tmp += state.h_local;

        /*
         * Formula: - (-2) * spin(i) * dHTmp > lrn / beta
         * EqualTo:          spin(i) * dHTmp > lrn / Beta / 2
         */
        // Times this_spin
        if (!this_spin) { dh_tmp = Sign(dh_tmp); }

        // Flip and Return
        if ((dh_tmp) > state.log_rand_local / info.beta * 0.5f) {
            trotters_local[state.i_pack][state.i_spin] = (~this_spin);
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
#if (NUM_STREAM >= 2)
    #pragma HLS ARRAY_PARTITION dim = 2 type = cyclic factor = 2 variable = \
        trotters_local
#endif

    // Local jcoup
    fp_pack_t jcoup_local[NUM_TROT][NUM_SPIN / PACKET_SIZE];
// #pragma HLS BIND_STORAGE variable = jcoup_local type = ram_2p impl = bram
#pragma HLS AGGREGATE compact = auto variable = jcoup_local
#pragma HLS ARRAY_PARTITION dim = 1 type = complete variable = jcoup_local
#if (NUM_STREAM >= 2)
    #pragma HLS ARRAY_PARTITION dim = 2 type = cyclic factor = 2 variable = \
        jcoup_local
#endif

    // Tunnel-Related Energy
    const fp_t dh_tunnel     = jperp * ((fp_t)NUM_TROT);
    const fp_t neg_dh_tunnel = Sign(dh_tunnel);

    // Fix info of trotter units
    info_t info[NUM_TROT];
INIT_INFO:
    for (u32_t t = 0; t < NUM_TROT; t++) {
#pragma HLS UNROLL
        info[t].t             = t;
        info[t].beta          = beta;
        info[t].dh_tunnel     = dh_tunnel;
        info[t].neg_dh_tunnel = neg_dh_tunnel;
    }

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
        // input state and dh
        state_t state[NUM_TROT];
        fp_t    dh[NUM_TROT];
#pragma HLS ARRAY_PARTITION dim = 1 type = complete variable = state
#pragma HLS ARRAY_PARTITION dim = 1 type = complete variable = dh

        // Update offset, h_local, log_rand_local
    UPDATE_OFST_H_LRN:
        for (u32_t t = 0; t < NUM_TROT; t++) {
#pragma HLS UNROLL
            u32_t ofst = ((stage + NUM_SPIN - t) & (NUM_SPIN - 1));

            // offset
            state[t].i_pack = (ofst >> (LOG2_PACKET_SIZE));
            state[t].i_spin = (ofst & (PACKET_SIZE - 1));

            // h, lrn
            state[t].h_local        = h[ofst];
            state[t].log_rand_local = log_rand[t][ofst];

            // up/down spin
            u32_t up   = (t == 0) ? (NUM_TROT - 1) : (t - 1);
            u32_t down = (t == NUM_TROT - 1) ? (0) : (t + 1);
            state[t].up_spin =
                trotters_local[up][state[t].i_pack][state[t].i_spin];
            state[t].down_spin =
                trotters_local[down][state[t].i_pack][state[t].i_spin];
        }

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
            TrotterUnit::RunFinal(stage, info[t], state[t], dh[t],
                                  trotters_local[t]);
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
