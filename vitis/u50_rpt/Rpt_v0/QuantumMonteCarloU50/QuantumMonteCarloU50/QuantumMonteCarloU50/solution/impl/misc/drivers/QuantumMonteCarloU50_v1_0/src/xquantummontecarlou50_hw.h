// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
// control
// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read/COR)
//        bit 4  - ap_continue (Read/Write/SC)
//        bit 7  - auto_restart (Read/Write)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0  - enable ap_done interrupt (Read/Write)
//        bit 1  - enable ap_ready interrupt (Read/Write)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0  - ap_done (COR/TOW)
//        bit 1  - ap_ready (COR/TOW)
//        others - reserved
// 0x10 : Data signal of trotters
//        bit 31~0 - trotters[31:0] (Read/Write)
// 0x14 : Data signal of trotters
//        bit 31~0 - trotters[63:32] (Read/Write)
// 0x18 : reserved
// 0x1c : Data signal of Jcoup
//        bit 31~0 - Jcoup[31:0] (Read/Write)
// 0x20 : Data signal of Jcoup
//        bit 31~0 - Jcoup[63:32] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of h
//        bit 31~0 - h[31:0] (Read/Write)
// 0x2c : Data signal of h
//        bit 31~0 - h[63:32] (Read/Write)
// 0x30 : reserved
// 0x34 : Data signal of Jperp
//        bit 31~0 - Jperp[31:0] (Read/Write)
// 0x38 : reserved
// 0x3c : Data signal of Beta
//        bit 31~0 - Beta[31:0] (Read/Write)
// 0x40 : reserved
// 0x44 : Data signal of logRand
//        bit 31~0 - logRand[31:0] (Read/Write)
// 0x48 : Data signal of logRand
//        bit 31~0 - logRand[63:32] (Read/Write)
// 0x4c : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XQUANTUMMONTECARLOU50_CONTROL_ADDR_AP_CTRL       0x00
#define XQUANTUMMONTECARLOU50_CONTROL_ADDR_GIE           0x04
#define XQUANTUMMONTECARLOU50_CONTROL_ADDR_IER           0x08
#define XQUANTUMMONTECARLOU50_CONTROL_ADDR_ISR           0x0c
#define XQUANTUMMONTECARLOU50_CONTROL_ADDR_TROTTERS_DATA 0x10
#define XQUANTUMMONTECARLOU50_CONTROL_BITS_TROTTERS_DATA 64
#define XQUANTUMMONTECARLOU50_CONTROL_ADDR_JCOUP_DATA    0x1c
#define XQUANTUMMONTECARLOU50_CONTROL_BITS_JCOUP_DATA    64
#define XQUANTUMMONTECARLOU50_CONTROL_ADDR_H_DATA        0x28
#define XQUANTUMMONTECARLOU50_CONTROL_BITS_H_DATA        64
#define XQUANTUMMONTECARLOU50_CONTROL_ADDR_JPERP_DATA    0x34
#define XQUANTUMMONTECARLOU50_CONTROL_BITS_JPERP_DATA    32
#define XQUANTUMMONTECARLOU50_CONTROL_ADDR_BETA_DATA     0x3c
#define XQUANTUMMONTECARLOU50_CONTROL_BITS_BETA_DATA     32
#define XQUANTUMMONTECARLOU50_CONTROL_ADDR_LOGRAND_DATA  0x44
#define XQUANTUMMONTECARLOU50_CONTROL_BITS_LOGRAND_DATA  64

