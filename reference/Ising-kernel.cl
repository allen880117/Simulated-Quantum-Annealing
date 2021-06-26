#define N 256
#define bitmask 0xff
#define bitshift 8
#define M 32

__kernel void sqa(__global char *restrict couplings,
                  __global float *restrict randomLog,
                  __global float *restrict Jtrans,
                  __global char *restrict SPIN_IN, 
                  __global char *restrict SPIN_OUT)
{
    __private unsigned int LOOPCNT = (N+M-1)*(N);
    // __private float lrandom[M];
    __private short lfield[M];
    __private char localJ[M][N+1];
    __private char lspin[M][N];
    __private float lJtrans;

    lJtrans = Jtrans[0];

    // copy global memory data to the internal memory;
    for (int j = 0; j < N; j++)
        # pragma unroll
        for (int i = 0; i < M; i++)
            lspin[i][j] = SPIN_IN[(i<<bitshift)+j];
    
    // copy random
    // #pragma unroll
    // for (int i = 0; i < M; i++)
    //     lrandom[i] = randomLog[i];

    // initialization
    #pragma unroll
    for (int i = 0; i < M; i++)
        lfield[i] = 0;

    #pragma ivdep
    for (int count = 0; count < LOOPCNT; count++) {
        #pragma unroll
        for (int i = N; i > 0; i--) {
            // shifting interaction coefficients
            #pragma unroll
            for (int m = 0; m < M; m++)
                localJ[m][i] = localJ[m][i-1]; 
        }

        // copying interaction coefficient data
        unsigned int index = (int)((count >> bitshift) << bitshift) + (count & bitmask); 
        localJ[0][0] = couplings[index];

        // copying interaction coefficient to the next Trotter slice
        #pragma unroll
        for (int m = 0; m < M-1; m++)
            localJ[m+1][0] = localJ[m][N];

		#pragma unroll
        for (int m = 0; m < M; m++) {
            /*
                [0*256 ~ 0*256 + 256*256)
                [1*256 ~ 1*256 + 256*256)
                [2*256 ~ 2*256 + 256*256)
                [3*256 ~ 3*256 + 256*256)
                ...
            */
            if (count >= (m<<bitshift) && count < ((N+m)<<bitshift)) { 
                int klocal = (int)(((count - (m<<bitshift)) >> bitshift)); 
                int j = ( count & bitmask );
                if (j == klocal)
                    lfield[m] += localJ[m][0];
                else
                    lfield[m] += localJ[m][0]*lspin[m][j]; 
                unsigned int up = (m!=0) ? m-1 : M-1;
                unsigned int down = (m!=M-1) ? m+1 : 0;
                char u = lspin[up][klocal];
                char d = lspin[down][klocal];
                char cur = lspin[m][klocal];
                float tmp1 = lfield[m];
                if ( ((count+1) & bitmask) == 0 ) {
                    float tmp2 = tmp1-lJtrans*M*(u + d);
                    float diff = cur * tmp2; 
                    if ( diff < randomLog[m*N+klocal] )
                        lspin[m][klocal] = -cur;
                    lfield[m] = 0;
                }
            } 
        }
    }

    // copy spin values from the internal memory to the global memory
    for (int j = 0; j < N; j++)
        # pragma unroll
        for (int i = 0; i < M; i++)
            SPIN_OUT[(i<<bitshift)+j] = lspin[i][j];
}
