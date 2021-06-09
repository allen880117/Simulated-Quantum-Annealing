#include "../include/sqa.hpp"

void QuantumMonteCarlo(const int nt, const int ns,
                       int        trotters[MAX_NT][MAX_NS][MAX_NS],
                       const fp_t city_distances[MAX_NS][MAX_NS],
                       const fp_t max_distance, const fp_t cost_qr,
                       const fp_t beta, const fp_t log_uni_rn, const int a,
                       const int b, const int tr) {
    int p, q;
    for (int i = 0; i < MAX_NS; i++) {
        if (i == ns) break;
        if (trotters[tr][a][i] == 1) p = i;
        if (trotters[tr][b][i] == 1) q = i;
    }

    /* Classic Cost */
    fp_t cost_c_sep[MAX_NS];
    for (int i = 0; i < MAX_NS; i++) {
        if (i == ns) break;
        fp_t lpi      = city_distances[p][i];
        fp_t lqi      = city_distances[q][i];
        int  cost_c1  = trotters[tr][a - 1][i] + trotters[tr][(a + 1) % ns][i];
        int  cost_c2  = trotters[tr][b - 1][i] + trotters[tr][(b + 1) % ns][i];
        cost_c_sep[i] = (-lpi + lqi) * ((fp_t)(cost_c1 - cost_c2));
    }

    fp_t cost_c = 0;
    for (int i = 0; i < MAX_NS; i++) {
        if (i == ns) break;
        cost_c += cost_c_sep[i];
    }

    cost_c = 2.0f * cost_c / max_distance;

    /* Quantum Cost */
    int  tr_m1   = (tr - 1) % nt;
    int  tr_p1   = (tr + 1) % nt;
    int  cost_q1 = trotters[tr_m1][a][p] + trotters[tr_p1][a][p];
    int  cost_q2 = -(trotters[tr_m1][a][q] + trotters[tr_p1][a][q]);
    int  cost_q3 = -(trotters[tr_m1][b][p] + trotters[tr_p1][b][p]);
    int  cost_q4 = trotters[tr_m1][b][q] + trotters[tr_p1][b][q];
    fp_t cost_q  = cost_qr * ((fp_t)(cost_q1 + cost_q2 + cost_q3 + cost_q4));

    /* Calculate Cost */
    fp_t cost = cost_c / nt + cost_q;

    /* Flip */
    if (cost <= 0 || log_uni_rn < (-beta * cost)) {
        trotters[tr][a][p] = -1;
        trotters[tr][a][q] = 1;
        trotters[tr][b][p] = 1;
        trotters[tr][b][q] = -1;
    }
}