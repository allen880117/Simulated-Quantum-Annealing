// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xquantummontecarlou50.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XQuantummontecarlou50_CfgInitialize(XQuantummontecarlou50 *InstancePtr, XQuantummontecarlou50_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XQuantummontecarlou50_Start(XQuantummontecarlou50 *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XQuantummontecarlou50_ReadReg(InstancePtr->Control_BaseAddress, XQUANTUMMONTECARLOU50_CONTROL_ADDR_AP_CTRL) & 0x80;
    XQuantummontecarlou50_WriteReg(InstancePtr->Control_BaseAddress, XQUANTUMMONTECARLOU50_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XQuantummontecarlou50_IsDone(XQuantummontecarlou50 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XQuantummontecarlou50_ReadReg(InstancePtr->Control_BaseAddress, XQUANTUMMONTECARLOU50_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XQuantummontecarlou50_IsIdle(XQuantummontecarlou50 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XQuantummontecarlou50_ReadReg(InstancePtr->Control_BaseAddress, XQUANTUMMONTECARLOU50_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XQuantummontecarlou50_IsReady(XQuantummontecarlou50 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XQuantummontecarlou50_ReadReg(InstancePtr->Control_BaseAddress, XQUANTUMMONTECARLOU50_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XQuantummontecarlou50_Continue(XQuantummontecarlou50 *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XQuantummontecarlou50_ReadReg(InstancePtr->Control_BaseAddress, XQUANTUMMONTECARLOU50_CONTROL_ADDR_AP_CTRL) & 0x80;
    XQuantummontecarlou50_WriteReg(InstancePtr->Control_BaseAddress, XQUANTUMMONTECARLOU50_CONTROL_ADDR_AP_CTRL, Data | 0x10);
}

void XQuantummontecarlou50_EnableAutoRestart(XQuantummontecarlou50 *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XQuantummontecarlou50_WriteReg(InstancePtr->Control_BaseAddress, XQUANTUMMONTECARLOU50_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XQuantummontecarlou50_DisableAutoRestart(XQuantummontecarlou50 *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XQuantummontecarlou50_WriteReg(InstancePtr->Control_BaseAddress, XQUANTUMMONTECARLOU50_CONTROL_ADDR_AP_CTRL, 0);
}

void XQuantummontecarlou50_Set_trotters(XQuantummontecarlou50 *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XQuantummontecarlou50_WriteReg(InstancePtr->Control_BaseAddress, XQUANTUMMONTECARLOU50_CONTROL_ADDR_TROTTERS_DATA, (u32)(Data));
    XQuantummontecarlou50_WriteReg(InstancePtr->Control_BaseAddress, XQUANTUMMONTECARLOU50_CONTROL_ADDR_TROTTERS_DATA + 4, (u32)(Data >> 32));
}

u64 XQuantummontecarlou50_Get_trotters(XQuantummontecarlou50 *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XQuantummontecarlou50_ReadReg(InstancePtr->Control_BaseAddress, XQUANTUMMONTECARLOU50_CONTROL_ADDR_TROTTERS_DATA);
    Data += (u64)XQuantummontecarlou50_ReadReg(InstancePtr->Control_BaseAddress, XQUANTUMMONTECARLOU50_CONTROL_ADDR_TROTTERS_DATA + 4) << 32;
    return Data;
}

void XQuantummontecarlou50_Set_Jcoup(XQuantummontecarlou50 *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XQuantummontecarlou50_WriteReg(InstancePtr->Control_BaseAddress, XQUANTUMMONTECARLOU50_CONTROL_ADDR_JCOUP_DATA, (u32)(Data));
    XQuantummontecarlou50_WriteReg(InstancePtr->Control_BaseAddress, XQUANTUMMONTECARLOU50_CONTROL_ADDR_JCOUP_DATA + 4, (u32)(Data >> 32));
}

u64 XQuantummontecarlou50_Get_Jcoup(XQuantummontecarlou50 *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XQuantummontecarlou50_ReadReg(InstancePtr->Control_BaseAddress, XQUANTUMMONTECARLOU50_CONTROL_ADDR_JCOUP_DATA);
    Data += (u64)XQuantummontecarlou50_ReadReg(InstancePtr->Control_BaseAddress, XQUANTUMMONTECARLOU50_CONTROL_ADDR_JCOUP_DATA + 4) << 32;
    return Data;
}

void XQuantummontecarlou50_Set_h(XQuantummontecarlou50 *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XQuantummontecarlou50_WriteReg(InstancePtr->Control_BaseAddress, XQUANTUMMONTECARLOU50_CONTROL_ADDR_H_DATA, (u32)(Data));
    XQuantummontecarlou50_WriteReg(InstancePtr->Control_BaseAddress, XQUANTUMMONTECARLOU50_CONTROL_ADDR_H_DATA + 4, (u32)(Data >> 32));
}

u64 XQuantummontecarlou50_Get_h(XQuantummontecarlou50 *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XQuantummontecarlou50_ReadReg(InstancePtr->Control_BaseAddress, XQUANTUMMONTECARLOU50_CONTROL_ADDR_H_DATA);
    Data += (u64)XQuantummontecarlou50_ReadReg(InstancePtr->Control_BaseAddress, XQUANTUMMONTECARLOU50_CONTROL_ADDR_H_DATA + 4) << 32;
    return Data;
}

void XQuantummontecarlou50_Set_Jperp(XQuantummontecarlou50 *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XQuantummontecarlou50_WriteReg(InstancePtr->Control_BaseAddress, XQUANTUMMONTECARLOU50_CONTROL_ADDR_JPERP_DATA, Data);
}

u32 XQuantummontecarlou50_Get_Jperp(XQuantummontecarlou50 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XQuantummontecarlou50_ReadReg(InstancePtr->Control_BaseAddress, XQUANTUMMONTECARLOU50_CONTROL_ADDR_JPERP_DATA);
    return Data;
}

void XQuantummontecarlou50_Set_Beta(XQuantummontecarlou50 *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XQuantummontecarlou50_WriteReg(InstancePtr->Control_BaseAddress, XQUANTUMMONTECARLOU50_CONTROL_ADDR_BETA_DATA, Data);
}

u32 XQuantummontecarlou50_Get_Beta(XQuantummontecarlou50 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XQuantummontecarlou50_ReadReg(InstancePtr->Control_BaseAddress, XQUANTUMMONTECARLOU50_CONTROL_ADDR_BETA_DATA);
    return Data;
}

void XQuantummontecarlou50_Set_logRand(XQuantummontecarlou50 *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XQuantummontecarlou50_WriteReg(InstancePtr->Control_BaseAddress, XQUANTUMMONTECARLOU50_CONTROL_ADDR_LOGRAND_DATA, (u32)(Data));
    XQuantummontecarlou50_WriteReg(InstancePtr->Control_BaseAddress, XQUANTUMMONTECARLOU50_CONTROL_ADDR_LOGRAND_DATA + 4, (u32)(Data >> 32));
}

u64 XQuantummontecarlou50_Get_logRand(XQuantummontecarlou50 *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XQuantummontecarlou50_ReadReg(InstancePtr->Control_BaseAddress, XQUANTUMMONTECARLOU50_CONTROL_ADDR_LOGRAND_DATA);
    Data += (u64)XQuantummontecarlou50_ReadReg(InstancePtr->Control_BaseAddress, XQUANTUMMONTECARLOU50_CONTROL_ADDR_LOGRAND_DATA + 4) << 32;
    return Data;
}

void XQuantummontecarlou50_InterruptGlobalEnable(XQuantummontecarlou50 *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XQuantummontecarlou50_WriteReg(InstancePtr->Control_BaseAddress, XQUANTUMMONTECARLOU50_CONTROL_ADDR_GIE, 1);
}

void XQuantummontecarlou50_InterruptGlobalDisable(XQuantummontecarlou50 *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XQuantummontecarlou50_WriteReg(InstancePtr->Control_BaseAddress, XQUANTUMMONTECARLOU50_CONTROL_ADDR_GIE, 0);
}

void XQuantummontecarlou50_InterruptEnable(XQuantummontecarlou50 *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XQuantummontecarlou50_ReadReg(InstancePtr->Control_BaseAddress, XQUANTUMMONTECARLOU50_CONTROL_ADDR_IER);
    XQuantummontecarlou50_WriteReg(InstancePtr->Control_BaseAddress, XQUANTUMMONTECARLOU50_CONTROL_ADDR_IER, Register | Mask);
}

void XQuantummontecarlou50_InterruptDisable(XQuantummontecarlou50 *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XQuantummontecarlou50_ReadReg(InstancePtr->Control_BaseAddress, XQUANTUMMONTECARLOU50_CONTROL_ADDR_IER);
    XQuantummontecarlou50_WriteReg(InstancePtr->Control_BaseAddress, XQUANTUMMONTECARLOU50_CONTROL_ADDR_IER, Register & (~Mask));
}

void XQuantummontecarlou50_InterruptClear(XQuantummontecarlou50 *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XQuantummontecarlou50_WriteReg(InstancePtr->Control_BaseAddress, XQUANTUMMONTECARLOU50_CONTROL_ADDR_ISR, Mask);
}

u32 XQuantummontecarlou50_InterruptGetEnabled(XQuantummontecarlou50 *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XQuantummontecarlou50_ReadReg(InstancePtr->Control_BaseAddress, XQUANTUMMONTECARLOU50_CONTROL_ADDR_IER);
}

u32 XQuantummontecarlou50_InterruptGetStatus(XQuantummontecarlou50 *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XQuantummontecarlou50_ReadReg(InstancePtr->Control_BaseAddress, XQUANTUMMONTECARLOU50_CONTROL_ADDR_ISR);
}

