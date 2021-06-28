#include "../include/prng.hpp"

fp_t uniform01(int &seed) {
    const int i4_huge = 2147483647;
    int       k;
    float     r;

    k = seed / 127773;
    seed = 16807 * (seed - k * 127773) - k * 2836;

    if (seed < 0) {
        seed = seed + i4_huge;
    }

    r = (float)(seed)*4.656612875E-10;
    return r;
}