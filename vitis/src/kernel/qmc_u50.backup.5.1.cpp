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

typedef hls::stream<fp_pack_t, NUM_SPIN / PACKET_SIZE> fp_pack_strm_t;

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

void Run(const u32_t stage, const info_t info, const state_t state,
         spin_pack_u50_t trotters_local[NUM_SPIN / PACKET_SIZE],
         fp_pack_strm_t& j_stream) {
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

            fp_pack_t tmp_pack = j_stream.read();

        UNPACK_PACK:
            for (u32_t spin_ofst = 0; spin_ofst < PACKET_SIZE; spin_ofst++) {
#pragma HLS UNROLL
                // Multiply
                fp_buffer[strm_ofst][spin_ofst] =
                    Multiply(trotters_local[pack_ofst + strm_ofst][spin_ofst],
                             tmp_pack.data[spin_ofst]);
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

    // Run Final
    RunFinal(stage, info, state, dh_tmp[0], trotters_local);
}
}  // namespace TrotterUnit

class CacheUnit {
   private:
    fp_pack_t jcoup_local[NUM_TROT][NUM_SPIN / PACKET_SIZE];

   public:
    spin_pack_u50_t trotters_local[NUM_TROT][NUM_SPIN / PACKET_SIZE];
    state_t         state[NUM_TROT];

   public:
    CacheUnit() {
// #pragma HLS BIND_STORAGE variable = trotters_local type = ram_2p impl
//         = bram
#pragma HLS ARRAY_PARTITION dim = 1 type = complete variable = trotters_local
#pragma HLS ARRAY_PARTITION dim = 2 type = cyclic factor = 2 variable = \
    trotters_local
// #pragma HLS BIND_STORAGE variable = jcoup_local type = ram_2p impl = bram
#pragma HLS AGGREGATE compact = auto variable = jcoup_local
#pragma HLS ARRAY_PARTITION dim = 1 type = complete variable = jcoup_local
#pragma HLS ARRAY_PARTITION dim = 2 type = cyclic factor = 2 variable = \
    jcoup_local
    }

    void UpdateState(const u32_t stage, const fp_t h[NUM_SPIN],
                     const fp_t log_rand[NUM_TROT][NUM_SPIN]) {
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
        }

        // Update up_spin
    UPDATE_UP_SPIN:
        for (u32_t t = 1; t < NUM_TROT; t++) {
#pragma HLS UNROLL
            state[t].up_spin =
                trotters_local[t - 1][state[t].i_pack][state[t].i_spin];
        }
        state[0].up_spin =
            trotters_local[NUM_TROT - 1][state[0].i_pack][state[0].i_pack];

        // Update down_spin
    UPDATE_DOWN_SPIN:
        for (u32_t t = 0; t < NUM_TROT - 1; t++) {
#pragma HLS UNROLL
            state[t].down_spin =
                trotters_local[t + 1][state[t].i_pack][state[t].i_spin];
        }
        state[NUM_TROT - 1].down_spin =
            trotters_local[0][state[NUM_TROT - 1].i_pack]
                          [state[NUM_TROT - 1].i_spin];
    }

    void ReadTrottersFromHost(
        spin_pack_u50_t trotters[NUM_TROT][NUM_SPIN / PACKET_SIZE]) {
        // Read trotters to local memory
    READ_TROTTERS:
        for (u32_t t = 0; t < NUM_TROT; t++) {
        READ_TROTTERS_1:
            for (u32_t ofst = 0; ofst < NUM_SPIN / PACKET_SIZE; ofst++) {
#pragma HLS PIPELINE
                trotters_local[t][ofst] = trotters[t][ofst];
            }
        }
    }

    void WriteTrottersToHost(
        spin_pack_u50_t trotters[NUM_TROT][NUM_SPIN / PACKET_SIZE]) {
    WRITE_TROTTERS:
        for (u32_t t = 0; t < NUM_TROT; t++) {
        WRITE_TROTTERS_1:
            for (u32_t ofst = 0; ofst < NUM_SPIN / PACKET_SIZE; ofst++) {
#pragma HLS PIPELINE
                trotters[t][ofst] = trotters_local[t][ofst];
            }
        }
    }

    void ReadJcoupFromHost(
        const u32_t     stage,
        const fp_pack_t jcoup[NUM_SPIN][NUM_SPIN / PACKET_SIZE]) {
        /* Remove if condition enable the overlap of read request */
        // if (stage < NUM_SPIN) {
    READ_JCOUP:
        for (u32_t ofst = 0; ofst < NUM_SPIN / PACKET_SIZE; ofst++) {
#pragma HLS PIPELINE
            jcoup_local[0][ofst] = jcoup[stage & (NUM_SPIN - 1)][ofst];
        }
        // }
    }

    void ShiftJcoupCache() {
    SHIFT_JCOUP:
        for (u32_t ofst = 0; ofst < NUM_SPIN / PACKET_SIZE; ofst++) {
#pragma HLS PIPELINE
            for (i32_t t = NUM_TROT - 2; t >= 0; t--) {
#pragma HLS UNROLL
                jcoup_local[t + 1][ofst] = jcoup_local[t][ofst];
            }
        }
    }

    void WriteJcoupToStreams(fp_pack_strm_t j_stream[NUM_TROT]) {
#pragma HLS INLINE OFF
        for (u32_t t = 0; t < NUM_TROT; t++) {
#pragma HLS UNROLL
            for (u32_t ofst = 0; ofst < NUM_SPIN / PACKET_SIZE; ofst++) {
#pragma HLS PIPELINE
                j_stream[t] << jcoup_local[t][ofst];
            }
        }
    }
};

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

    // Cache Unit
    CacheUnit cu;

    // Connect
    fp_pack_strm_t j_stream[NUM_TROT];

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

    // Read Trotters From Host
    cu.ReadTrottersFromHost(trotters);

    // Loop of stage
LOOP_STAGE:
    for (u32_t stage = 0; stage < (NUM_SPIN + NUM_TROT - 1); stage++) {
        // Update States
        cu.UpdateState(stage, h, log_rand);

        // Read new jcoup
        cu.ReadJcoupFromHost(stage, jcoup);

        // Write jcoup to streams
        cu.WriteJcoupToStreams(j_stream);

        // Shift Jcoup Cache
        cu.ShiftJcoupCache();

        // Run Trotter Units
    RUN_TU:
        for (u32_t t = 0; t < NUM_TROT; t++) {
#pragma HLS UNROLL
            TrotterUnit::Run(stage, info[t], cu.state[t], cu.trotters_local[t],
                             j_stream[t]);
        }
    }

    // Write trotters_local to host memory
    cu.WriteTrottersToHost(trotters);
}
}
