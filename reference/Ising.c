#include <CL/opencl.h>
#include <assert.h>
#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/time.h>

#define AOCL_ALIGNMENT 64
#define MAXDEVICE 10
#define MAXK 50000000
#define N 256
#define M 32
#define SWEEP 500
#define TIMES 5
#define NANO2SECOND 1000000000.0
#define PRINT 1

void usage() {
    printf("Usage:\n");
    printf("       ./Ising-opencl [kernel file] [spin configuration]\n");
    exit(0);
}

unsigned char kernelBuffer[MAXK];

int main(int argc, char *argv[]) {
    if (argc != 3) usage();

    srand(123);

    struct timeval timeStart, timeEnd;

    // Platform info
    cl_int         status;
    cl_platform_id platform_id[2];  // Nvidia and Intel
    cl_int         platform_id_got;
    status = clGetPlatformIDs(2, platform_id, &platform_id_got);
    assert(status == CL_SUCCESS);
    printf("%d platform found\n", platform_id_got);
    for (int i = 0; i < platform_id_got; i++) {
        char   buffer[256];
        size_t length;
        clGetPlatformInfo(platform_id[i], CL_PLATFORM_NAME, 256, buffer,
                          &length);
        buffer[length] = '\0';
        printf("    platform name: %s\n", buffer);
    }

    // Device info
    cl_device_id DEVICES[MAXDEVICE];
    cl_int       DEVICE_id_got;
    status =
        clGetDeviceIDs(platform_id[0], CL_DEVICE_TYPE_ALL, MAXDEVICE, DEVICES,
                       &DEVICE_id_got);  // GPU or CPU
    assert(status == CL_SUCCESS);
    printf("There are %d FPGA devices\n", DEVICE_id_got);
    for (int i = 0; i < DEVICE_id_got; i++) {
        char   buffer[256];
        size_t length;
        clGetDeviceInfo(DEVICES[i], CL_DEVICE_NAME, MAXDEVICE, buffer, &length);
        buffer[length] = '\0';
        printf("    Device name: %s\n", buffer);
    }

    // Context consists of devices that will participate the computation
    cl_context context =
        clCreateContext(NULL, 1, DEVICES, NULL, NULL, &status);  // 1~3
    assert(status == CL_SUCCESS);

    // Command Queue: send commands to devices
    cl_command_queue commandQueue = clCreateCommandQueue(
        context, DEVICES[0], CL_QUEUE_PROFILING_ENABLE, &status);
    assert(status == CL_SUCCESS);

    // Kernel Program: we must specify the computation as a kernel
    FILE *kernelfp = fopen(argv[1], "rb");
    assert(kernelfp != NULL);
    const unsigned char *constKernelSource = kernelBuffer;
    size_t               kernelLength = fread(kernelBuffer, 1, MAXK, kernelfp);
    printf("The size of kernel binary is %zu\n", kernelLength);
    cl_program program = clCreateProgramWithBinary(
        context, 1, DEVICES, &kernelLength, &constKernelSource, &status, NULL);
    fclose(kernelfp);
    assert(status == CL_SUCCESS);

    // Build Program
    status = clBuildProgram(program, 1, DEVICES, NULL, NULL, NULL);  // 1~3
    assert(status == CL_SUCCESS);
    printf("Build program completes\n");

    // Create Kernel (which function in program)
    cl_kernel kernel = clCreateKernel(program, "sqa", &status);
    assert(status == CL_SUCCESS);
    printf("Build kernel completes\n");

    // Prepare problems input
    cl_char *couplings = (cl_char *)malloc(N * N * sizeof(cl_char));
    posix_memalign((void *)&couplings, AOCL_ALIGNMENT, N * N * sizeof(cl_char));
    assert(couplings != NULL);
    memset(couplings, '\0', N * N * sizeof(char));
    cl_char *spin_in = (cl_char *)malloc(M * N * sizeof(cl_char));
    posix_memalign((void *)&spin_in, AOCL_ALIGNMENT, M * N * sizeof(cl_char));
    assert(spin_in != NULL);
    cl_char *spin_out = (cl_char *)malloc(M * N * sizeof(cl_char));
    posix_memalign((void *)&spin_out, AOCL_ALIGNMENT, M * N * sizeof(cl_char));
    assert(spin_out != NULL);
    cl_float *randomLogT = (cl_float *)malloc(N * M * sizeof(cl_float));
    posix_memalign((void *)&randomLogT, AOCL_ALIGNMENT, N * M * sizeof(cl_int));
    assert(randomLogT != NULL);
    cl_float *Jtrans = (cl_float *)malloc(sizeof(cl_float));
    posix_memalign((void *)&Jtrans, AOCL_ALIGNMENT, sizeof(cl_int));
    assert(Jtrans != NULL);

    // Read couplings file
    FILE *instance = fopen(argv[2], "r");
    assert(instance != NULL);
    int a, b, w;
    fscanf(instance, "%d", &a);
    while (!feof(instance)) {
        fscanf(instance, "%d%d%d", &a, &b, &w);
        couplings[a * N + b] = w;
        couplings[b * N + a] = w;
    }
    fclose(instance);
    printf("Finish reading instance\n");

    // Create Buffer (Pass data to device buffer)
    cl_mem buffer_couplings =
        clCreateBuffer(context, CL_MEM_READ_ONLY | CL_MEM_COPY_HOST_PTR,
                       N * N * sizeof(cl_char), couplings, &status);
    assert(status == CL_SUCCESS);

    // Parameter Linking: link allocated buffers to program's (kernel.cl)
    // function's parametes
    status =
        clSetKernelArg(kernel, 0, sizeof(cl_mem), (void *)&buffer_couplings);
    assert(status == CL_SUCCESS);

    // start annealing
    printf("Start Annealing\n");

    // Shape of Data: How to put data in device
    int   results[TIMES] = {0};
    float increase       = (8 - 1 / (float)16) / (float)SWEEP;
    float G0             = 8.;
    gettimeofday(&timeStart, NULL);
    for (int x = 0; x < TIMES; x++) {
        for (int j = 0; j < N; j++) spin_in[j] = ((rand() & 1) << 1) - 1;
        for (int m = 0; m < M - 1; m++)
            for (int j = 0; j < N; j++)
                spin_in[(m + 1) * N + j] = spin_in[m * N + j];

        // create buffer
        cl_mem buffer_spin_in =
            clCreateBuffer(context, CL_MEM_READ_WRITE | CL_MEM_COPY_HOST_PTR,
                           M * N * sizeof(cl_char), spin_in, &status);
        assert(status == CL_SUCCESS);
        cl_mem buffer_spin_out =
            clCreateBuffer(context, CL_MEM_READ_WRITE | CL_MEM_COPY_HOST_PTR,
                           M * N * sizeof(cl_char), spin_out, &status);
        assert(status == CL_SUCCESS);

        float beta = 1 / (float)16;
        for (int t = 0; t < SWEEP; t++) {
            for (int i = 0; i < M; i++)
                for (int j = 0; j < N; j++)
                    randomLogT[i * N + j] =
                        -log(rand() / (float)RAND_MAX) / beta / 2.0 * M;
            cl_mem buffer_randomLogT =
                clCreateBuffer(context, CL_MEM_READ_ONLY | CL_MEM_COPY_HOST_PTR,
                               N * M * sizeof(cl_float), randomLogT, &status);
            assert(status == CL_SUCCESS);

            float Gamma = G0 * (1 - (float)t / SWEEP);
            Jtrans[0]   = -0.5 * log(tanh((Gamma / M) * beta)) / beta;
            cl_mem buffer_Jtrans =
                clCreateBuffer(context, CL_MEM_READ_ONLY | CL_MEM_COPY_HOST_PTR,
                               1 * sizeof(cl_float), Jtrans, &status);
            // printf("%d %f %f %f\n", t, Gamma, beta, Jtrans[0]);
            assert(status == CL_SUCCESS);

            status = clSetKernelArg(kernel, 1, sizeof(cl_mem),
                                    (void *)&buffer_randomLogT);
            assert(status == CL_SUCCESS);
            status = clSetKernelArg(kernel, 2, sizeof(cl_mem),
                                    (void *)&buffer_Jtrans);
            assert(status == CL_SUCCESS);

            if (t % 2 == 0) {
                status = clSetKernelArg(kernel, 3, sizeof(cl_mem),
                                        (void *)&buffer_spin_in);
                assert(status == CL_SUCCESS);
                status = clSetKernelArg(kernel, 4, sizeof(cl_mem),
                                        (void *)&buffer_spin_out);
                assert(status == CL_SUCCESS);
            } else {
                status = clSetKernelArg(kernel, 3, sizeof(cl_mem),
                                        (void *)&buffer_spin_out);
                assert(status == CL_SUCCESS);
                status = clSetKernelArg(kernel, 4, sizeof(cl_mem),
                                        (void *)&buffer_spin_in);
                assert(status == CL_SUCCESS);
            }

#ifdef PRINT
            cl_event event;
            status = clEnqueueTask(commandQueue, kernel, 0, NULL, &event);
            assert(status == CL_SUCCESS);
            clFinish(commandQueue);

            clWaitForEvents(1, &event);
            cl_ulong tQ, tSub, tS, tE;
            clGetEventProfilingInfo(event, CL_PROFILING_COMMAND_QUEUED,
                                    sizeof(cl_ulong), &tQ, NULL);
            clGetEventProfilingInfo(event, CL_PROFILING_COMMAND_SUBMIT,
                                    sizeof(cl_ulong), &tSub, NULL);
            clGetEventProfilingInfo(event, CL_PROFILING_COMMAND_START,
                                    sizeof(cl_ulong), &tS, NULL);
            clGetEventProfilingInfo(event, CL_PROFILING_COMMAND_END,
                                    sizeof(cl_ulong), &tE, NULL);
            printf("Queued time %f (s)\n", (tSub - tQ) / 1000000000.0);
            printf("Submission time %f (s)\n", (tS - tSub) / 1000000000.0);
            printf("Execution time %f (s)\n", (tE - tS) / 1000000000.0);
#endif
#ifndef PRINT
            status = clEnqueueTask(commandQueue, kernel, 0, NULL, NULL);
            assert(status == CL_SUCCESS);
            clFinish(commandQueue);
#endif
            beta += increase;
        }

        // Get Result from device
        status = clEnqueueReadBuffer(commandQueue, buffer_spin_out, CL_TRUE, 0,
                                     M * N * sizeof(cl_char), spin_out, 0, NULL,
                                     NULL);
        for (int i = 0; i < N; i++) {
            results[x] += -spin_out[i] * couplings[i * N + i];
            for (int j = i + 1; j < N; j++)
                results[x] += -spin_out[i] * spin_out[j] * couplings[i * N + j];
        }
        assert(status == CL_SUCCESS);
    }
    gettimeofday(&timeEnd, NULL);

    long  seconds = timeEnd.tv_sec - timeStart.tv_sec;
    long  micro   = ((seconds * 1000000) + timeEnd.tv_usec) - timeStart.tv_usec;
    float time_statistics = micro / (float)1000000.0;
    printf("%d times in %lf. Average time: %lf\n", TIMES, time_statistics,
           time_statistics / (float)TIMES);

    // Write statistics to file
    FILE *output;
    output = fopen("output.txt", "w");
    for (int i = 0; i < TIMES; i++) fprintf(output, "%d\n", results[i]);
    fclose(output);

    // Release Objects
    free(couplings);
    clReleaseContext(context);
    clReleaseCommandQueue(commandQueue);
    clReleaseProgram(program);
    clReleaseKernel(kernel);
    clReleaseMemObject(buffer_couplings);
    return 0;
}
