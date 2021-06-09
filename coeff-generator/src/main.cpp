#include <cstdio>
#include <fstream>
#include <iostream>

#include "../include/coeff_generate.hpp"

fp_t J[MAX_NS][MAX_NS];
fp_t Jt[MAX_NS];
fp_t Offset;

int main(int argc, char *argv[]) {
    /* Read Coordinate of Cities */
    fprintf(stderr, "NORMAL\n");
    /* Number of Trotters and Number of Spins */
    const int ncity = 3;
    const int ns    = ncity * ncity;
    /* City */
    fp_t          citys[MAX_NS][2];
    std::ifstream data(argv[1]);
    for (int i = 0; i < ncity; i++) {
        data >> citys[i][0] >> citys[i][1];
    }
    data.close();
    /* Coefficient Generate */
    GenerateCoeff(ns, J, Jt, Offset, ncity, citys);
    /* Print */
    for (int i = 0; i < ns; i++) {
        for (int j = 0; j < ns; j++) {
            printf("%f ", J[i][j]);
        }
        printf("\n");
    }
    printf("\n");
    for (int i = 0; i < ns; i++) {
        printf("%f\n", Jt[i]);
    }
    printf("\n");
    printf("%f ", Offset);
    printf("\n");
}