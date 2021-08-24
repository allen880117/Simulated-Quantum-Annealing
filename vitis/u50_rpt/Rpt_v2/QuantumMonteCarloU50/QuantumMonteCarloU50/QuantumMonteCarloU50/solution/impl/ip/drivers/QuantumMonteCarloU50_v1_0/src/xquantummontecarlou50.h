// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XQUANTUMMONTECARLOU50_H
#define XQUANTUMMONTECARLOU50_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xquantummontecarlou50_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
    u16 DeviceId;
    u32 Control_BaseAddress;
} XQuantummontecarlou50_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XQuantummontecarlou50;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XQuantummontecarlou50_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XQuantummontecarlou50_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XQuantummontecarlou50_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XQuantummontecarlou50_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XQuantummontecarlou50_Initialize(XQuantummontecarlou50 *InstancePtr, u16 DeviceId);
XQuantummontecarlou50_Config* XQuantummontecarlou50_LookupConfig(u16 DeviceId);
int XQuantummontecarlou50_CfgInitialize(XQuantummontecarlou50 *InstancePtr, XQuantummontecarlou50_Config *ConfigPtr);
#else
int XQuantummontecarlou50_Initialize(XQuantummontecarlou50 *InstancePtr, const char* InstanceName);
int XQuantummontecarlou50_Release(XQuantummontecarlou50 *InstancePtr);
#endif

void XQuantummontecarlou50_Start(XQuantummontecarlou50 *InstancePtr);
u32 XQuantummontecarlou50_IsDone(XQuantummontecarlou50 *InstancePtr);
u32 XQuantummontecarlou50_IsIdle(XQuantummontecarlou50 *InstancePtr);
u32 XQuantummontecarlou50_IsReady(XQuantummontecarlou50 *InstancePtr);
void XQuantummontecarlou50_Continue(XQuantummontecarlou50 *InstancePtr);
void XQuantummontecarlou50_EnableAutoRestart(XQuantummontecarlou50 *InstancePtr);
void XQuantummontecarlou50_DisableAutoRestart(XQuantummontecarlou50 *InstancePtr);

void XQuantummontecarlou50_Set_trotters(XQuantummontecarlou50 *InstancePtr, u64 Data);
u64 XQuantummontecarlou50_Get_trotters(XQuantummontecarlou50 *InstancePtr);
void XQuantummontecarlou50_Set_Jcoup(XQuantummontecarlou50 *InstancePtr, u64 Data);
u64 XQuantummontecarlou50_Get_Jcoup(XQuantummontecarlou50 *InstancePtr);
void XQuantummontecarlou50_Set_h(XQuantummontecarlou50 *InstancePtr, u64 Data);
u64 XQuantummontecarlou50_Get_h(XQuantummontecarlou50 *InstancePtr);
void XQuantummontecarlou50_Set_Jperp(XQuantummontecarlou50 *InstancePtr, u32 Data);
u32 XQuantummontecarlou50_Get_Jperp(XQuantummontecarlou50 *InstancePtr);
void XQuantummontecarlou50_Set_Beta(XQuantummontecarlou50 *InstancePtr, u32 Data);
u32 XQuantummontecarlou50_Get_Beta(XQuantummontecarlou50 *InstancePtr);
void XQuantummontecarlou50_Set_logRand(XQuantummontecarlou50 *InstancePtr, u64 Data);
u64 XQuantummontecarlou50_Get_logRand(XQuantummontecarlou50 *InstancePtr);

void XQuantummontecarlou50_InterruptGlobalEnable(XQuantummontecarlou50 *InstancePtr);
void XQuantummontecarlou50_InterruptGlobalDisable(XQuantummontecarlou50 *InstancePtr);
void XQuantummontecarlou50_InterruptEnable(XQuantummontecarlou50 *InstancePtr, u32 Mask);
void XQuantummontecarlou50_InterruptDisable(XQuantummontecarlou50 *InstancePtr, u32 Mask);
void XQuantummontecarlou50_InterruptClear(XQuantummontecarlou50 *InstancePtr, u32 Mask);
u32 XQuantummontecarlou50_InterruptGetEnabled(XQuantummontecarlou50 *InstancePtr);
u32 XQuantummontecarlou50_InterruptGetStatus(XQuantummontecarlou50 *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
