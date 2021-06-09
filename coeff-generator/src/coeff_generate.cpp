#include "../include/coeff_generate.hpp"

#include <cmath>

void GenerateCoeff(const int ns, fp_t J[MAX_NS][MAX_NS], fp_t Jt[MAX_NS],
                   fp_t &Offset, const int ncity,
                   const fp_t citys[MAX_NCITY][2]) {
    /* Initialization: Reset to 0 */
    for (int i = 0; i < MAX_NS; i++) {
        if (i == ns) break;
        Jt[i] = 0.0f;
        for (int j = 0; j < MAX_NS; j++) {
            if (j == ns) break;
            J[i][j] = 0.0f;
        }
    }
    Offset = 0;
    /* Calculate City Distances */
    fp_t city_distances[MAX_NCITY][MAX_NCITY];
    for (int i = 0; i < MAX_NCITY; i++) {
        if (i == ncity) break;
        for (int j = i + 1; j < MAX_NCITY; j++) {
            if (j == ncity) break;
            fp_t x0              = citys[i][0];
            fp_t y0              = citys[i][1];
            fp_t x1              = citys[j][0];
            fp_t y1              = citys[j][1];
            fp_t dx              = x1 - x0;
            fp_t dy              = y1 - y0;
            fp_t dist            = sqrt(dx * dx + dy * dy);
            city_distances[i][j] = dist;
            city_distances[j][i] = dist;
        }
    }
    /* First Term : Total Distances */
    for (int i = 0; i < MAX_NCITY; i++) {
        if (i == ncity) break;
        for (int j = 0; j < MAX_NCITY; j++) {
            if (j == ncity) break;

            fp_t dij = city_distances[i][j];

            for (int a = 0; a < MAX_NCITY; a++) {
                if (a == ncity) break;

                int up   = (a == 0) ? (ncity - 1) : (a - 1);
                int down = (a == ncity - 1) ? 0 : (a + 1);

                int SaiIdx    = a * ncity + i;
                int SdownjIdx = down * ncity + j;
                int SupjIdx   = up * ncity + j;

                /* PyQubo only calculate the up-trangle of J */
                /* So it will times 2 for the quad terms */
                J[SaiIdx][SdownjIdx] += dij / 8 ;
                J[SaiIdx][SupjIdx] += dij / 8 ;

                Jt[SaiIdx] += dij / 4;     // It has better form
                Jt[SupjIdx] += dij / 8;    // It has better form
                Jt[SdownjIdx] += dij / 8;  // It has better form

                Offset += dij / 4;  // It has better form
            }
        }
    }
    /* Add Row, Column Constraint First */
    /*
        1. For each Row, There is only 1 city is positive
        2. For each Column, There is only 1 city is positive
     */
    fp_t tmp0 = (ncity - 2.0f) / 2.0f;
    for (int i = 0; i < MAX_NCITY; i++) {
        if (i == ncity) break;
        for (int a = 0; a < MAX_NCITY; a++) {
            if (a == ncity) break;
            int SaiIdx = a * ncity + i;

            for (int b = 0; b < MAX_NCITY; b++) {
                if (b >= ncity) break;
                int SbiIdx = b * ncity + i;
                J[SaiIdx][SbiIdx] += 0.25f;
            }

            Jt[SaiIdx] += tmp0;
        }
    }
    Offset += tmp0 * tmp0 * ncity;
    for (int a = 0; a < MAX_NCITY; a++) {
        if (a == ncity) break;
        for (int i = 0; i < MAX_NCITY; i++) {
            if (i == ncity) break;
            int SaiIdx = a * ncity + i;

            for (int b = 0; b < MAX_NCITY; b++) {
                if (b >= ncity) break;
                int SbiIdx = b * ncity + i;
                J[SaiIdx][SbiIdx] += 0.25f;
            }

            Jt[SaiIdx] += tmp0;
        }
    }
    Offset += tmp0 * tmp0 * ncity;
}

/* Some Formula */
/*
    Binary = {0, 1}
    Spin = {-1, 1}
    Binary = (Spin+1)/2


 */