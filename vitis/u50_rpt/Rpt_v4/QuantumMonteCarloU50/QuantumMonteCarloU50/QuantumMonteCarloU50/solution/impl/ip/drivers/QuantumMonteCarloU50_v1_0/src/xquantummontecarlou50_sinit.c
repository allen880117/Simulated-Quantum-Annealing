// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xquantummontecarlou50.h"

extern XQuantummontecarlou50_Config XQuantummontecarlou50_ConfigTable[];

XQuantummontecarlou50_Config *XQuantummontecarlou50_LookupConfig(u16 DeviceId) {
	XQuantummontecarlou50_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XQUANTUMMONTECARLOU50_NUM_INSTANCES; Index++) {
		if (XQuantummontecarlou50_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XQuantummontecarlou50_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XQuantummontecarlou50_Initialize(XQuantummontecarlou50 *InstancePtr, u16 DeviceId) {
	XQuantummontecarlou50_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XQuantummontecarlou50_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XQuantummontecarlou50_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

