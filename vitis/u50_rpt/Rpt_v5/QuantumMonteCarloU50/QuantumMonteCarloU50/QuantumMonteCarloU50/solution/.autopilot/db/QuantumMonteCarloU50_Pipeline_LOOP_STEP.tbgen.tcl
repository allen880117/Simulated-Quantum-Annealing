set moduleName QuantumMonteCarloU50_Pipeline_LOOP_STEP
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {QuantumMonteCarloU50_Pipeline_LOOP_STEP}
set C_modelType { void 0 }
set C_modelArgList {
	{ dH_3_1_reload float 32 regular  }
	{ dH_2_1_reload float 32 regular  }
	{ dH_1_1_reload float 32 regular  }
	{ dH_0_1_reload float 32 regular  }
	{ stage int 13 regular  }
	{ trottersLocal_V_0_0 int 16 regular {array 16 { 1 1 } 1 1 }  }
	{ trottersLocal_V_0_1 int 16 regular {array 16 { 1 1 } 1 1 }  }
	{ trottersLocal_V_0_2 int 16 regular {array 16 { 1 1 } 1 1 }  }
	{ trottersLocal_V_0_3 int 16 regular {array 16 { 1 1 } 1 1 }  }
	{ trottersLocal_V_0_4 int 16 regular {array 16 { 1 1 } 1 1 }  }
	{ trottersLocal_V_0_5 int 16 regular {array 16 { 1 1 } 1 1 }  }
	{ trottersLocal_V_0_6 int 16 regular {array 16 { 1 1 } 1 1 }  }
	{ trottersLocal_V_0_7 int 16 regular {array 16 { 1 1 } 1 1 }  }
	{ trottersLocal_V_0_8 int 16 regular {array 16 { 1 1 } 1 1 }  }
	{ trottersLocal_V_0_9 int 16 regular {array 16 { 1 1 } 1 1 }  }
	{ trottersLocal_V_0_10 int 16 regular {array 16 { 1 1 } 1 1 }  }
	{ trottersLocal_V_0_11 int 16 regular {array 16 { 1 1 } 1 1 }  }
	{ trottersLocal_V_0_12 int 16 regular {array 16 { 1 1 } 1 1 }  }
	{ trottersLocal_V_0_13 int 16 regular {array 16 { 1 1 } 1 1 }  }
	{ trottersLocal_V_0_14 int 16 regular {array 16 { 1 1 } 1 1 }  }
	{ trottersLocal_V_0_15 int 16 regular {array 16 { 1 1 } 1 1 }  }
	{ JcoupLocal_0_0 int 512 regular {array 16 { 1 1 } 1 1 }  }
	{ JcoupLocal_0_1 int 512 regular {array 16 { 1 1 } 1 1 }  }
	{ JcoupLocal_0_2 int 512 regular {array 16 { 1 1 } 1 1 }  }
	{ JcoupLocal_0_3 int 512 regular {array 16 { 1 1 } 1 1 }  }
	{ JcoupLocal_0_4 int 512 regular {array 16 { 1 1 } 1 1 }  }
	{ JcoupLocal_0_5 int 512 regular {array 16 { 1 1 } 1 1 }  }
	{ JcoupLocal_0_6 int 512 regular {array 16 { 1 1 } 1 1 }  }
	{ JcoupLocal_0_7 int 512 regular {array 16 { 1 1 } 1 1 }  }
	{ JcoupLocal_0_8 int 512 regular {array 16 { 1 1 } 1 1 }  }
	{ JcoupLocal_0_9 int 512 regular {array 16 { 1 1 } 1 1 }  }
	{ JcoupLocal_0_10 int 512 regular {array 16 { 1 1 } 1 1 }  }
	{ JcoupLocal_0_11 int 512 regular {array 16 { 1 1 } 1 1 }  }
	{ JcoupLocal_0_12 int 512 regular {array 16 { 1 1 } 1 1 }  }
	{ JcoupLocal_0_13 int 512 regular {array 16 { 1 1 } 1 1 }  }
	{ JcoupLocal_0_14 int 512 regular {array 16 { 1 1 } 1 1 }  }
	{ JcoupLocal_0_15 int 512 regular {array 16 { 1 1 } 1 1 }  }
	{ trottersLocal_V_1_0 int 16 regular {array 16 { 1 1 } 1 1 }  }
	{ trottersLocal_V_1_1 int 16 regular {array 16 { 1 1 } 1 1 }  }
	{ trottersLocal_V_1_2 int 16 regular {array 16 { 1 1 } 1 1 }  }
	{ trottersLocal_V_1_3 int 16 regular {array 16 { 1 1 } 1 1 }  }
	{ trottersLocal_V_1_4 int 16 regular {array 16 { 1 1 } 1 1 }  }
	{ trottersLocal_V_1_5 int 16 regular {array 16 { 1 1 } 1 1 }  }
	{ trottersLocal_V_1_6 int 16 regular {array 16 { 1 1 } 1 1 }  }
	{ trottersLocal_V_1_7 int 16 regular {array 16 { 1 1 } 1 1 }  }
	{ trottersLocal_V_1_8 int 16 regular {array 16 { 1 1 } 1 1 }  }
	{ trottersLocal_V_1_9 int 16 regular {array 16 { 1 1 } 1 1 }  }
	{ trottersLocal_V_1_10 int 16 regular {array 16 { 1 1 } 1 1 }  }
	{ trottersLocal_V_1_11 int 16 regular {array 16 { 1 1 } 1 1 }  }
	{ trottersLocal_V_1_12 int 16 regular {array 16 { 1 1 } 1 1 }  }
	{ trottersLocal_V_1_13 int 16 regular {array 16 { 1 1 } 1 1 }  }
	{ trottersLocal_V_1_14 int 16 regular {array 16 { 1 1 } 1 1 }  }
	{ trottersLocal_V_1_15 int 16 regular {array 16 { 1 1 } 1 1 }  }
	{ JcoupLocal_1_0 int 512 regular {array 16 { 1 1 } 1 1 }  }
	{ JcoupLocal_1_1 int 512 regular {array 16 { 1 1 } 1 1 }  }
	{ JcoupLocal_1_2 int 512 regular {array 16 { 1 1 } 1 1 }  }
	{ JcoupLocal_1_3 int 512 regular {array 16 { 1 1 } 1 1 }  }
	{ JcoupLocal_1_4 int 512 regular {array 16 { 1 1 } 1 1 }  }
	{ JcoupLocal_1_5 int 512 regular {array 16 { 1 1 } 1 1 }  }
	{ JcoupLocal_1_6 int 512 regular {array 16 { 1 1 } 1 1 }  }
	{ JcoupLocal_1_7 int 512 regular {array 16 { 1 1 } 1 1 }  }
	{ JcoupLocal_1_8 int 512 regular {array 16 { 1 1 } 1 1 }  }
	{ JcoupLocal_1_9 int 512 regular {array 16 { 1 1 } 1 1 }  }
	{ JcoupLocal_1_10 int 512 regular {array 16 { 1 1 } 1 1 }  }
	{ JcoupLocal_1_11 int 512 regular {array 16 { 1 1 } 1 1 }  }
	{ JcoupLocal_1_12 int 512 regular {array 16 { 1 1 } 1 1 }  }
	{ JcoupLocal_1_13 int 512 regular {array 16 { 1 1 } 1 1 }  }
	{ JcoupLocal_1_14 int 512 regular {array 16 { 1 1 } 1 1 }  }
	{ JcoupLocal_1_15 int 512 regular {array 16 { 1 1 } 1 1 }  }
	{ trottersLocal_V_2_0 int 16 regular {array 16 { 1 1 } 1 1 }  }
	{ trottersLocal_V_2_1 int 16 regular {array 16 { 1 1 } 1 1 }  }
	{ trottersLocal_V_2_2 int 16 regular {array 16 { 1 1 } 1 1 }  }
	{ trottersLocal_V_2_3 int 16 regular {array 16 { 1 1 } 1 1 }  }
	{ trottersLocal_V_2_4 int 16 regular {array 16 { 1 1 } 1 1 }  }
	{ trottersLocal_V_2_5 int 16 regular {array 16 { 1 1 } 1 1 }  }
	{ trottersLocal_V_2_6 int 16 regular {array 16 { 1 1 } 1 1 }  }
	{ trottersLocal_V_2_7 int 16 regular {array 16 { 1 1 } 1 1 }  }
	{ trottersLocal_V_2_8 int 16 regular {array 16 { 1 1 } 1 1 }  }
	{ trottersLocal_V_2_9 int 16 regular {array 16 { 1 1 } 1 1 }  }
	{ trottersLocal_V_2_10 int 16 regular {array 16 { 1 1 } 1 1 }  }
	{ trottersLocal_V_2_11 int 16 regular {array 16 { 1 1 } 1 1 }  }
	{ trottersLocal_V_2_12 int 16 regular {array 16 { 1 1 } 1 1 }  }
	{ trottersLocal_V_2_13 int 16 regular {array 16 { 1 1 } 1 1 }  }
	{ trottersLocal_V_2_14 int 16 regular {array 16 { 1 1 } 1 1 }  }
	{ trottersLocal_V_2_15 int 16 regular {array 16 { 1 1 } 1 1 }  }
	{ JcoupLocal_2_0 int 512 regular {array 16 { 1 1 } 1 1 }  }
	{ JcoupLocal_2_1 int 512 regular {array 16 { 1 1 } 1 1 }  }
	{ JcoupLocal_2_2 int 512 regular {array 16 { 1 1 } 1 1 }  }
	{ JcoupLocal_2_3 int 512 regular {array 16 { 1 1 } 1 1 }  }
	{ JcoupLocal_2_4 int 512 regular {array 16 { 1 1 } 1 1 }  }
	{ JcoupLocal_2_5 int 512 regular {array 16 { 1 1 } 1 1 }  }
	{ JcoupLocal_2_6 int 512 regular {array 16 { 1 1 } 1 1 }  }
	{ JcoupLocal_2_7 int 512 regular {array 16 { 1 1 } 1 1 }  }
	{ JcoupLocal_2_8 int 512 regular {array 16 { 1 1 } 1 1 }  }
	{ JcoupLocal_2_9 int 512 regular {array 16 { 1 1 } 1 1 }  }
	{ JcoupLocal_2_10 int 512 regular {array 16 { 1 1 } 1 1 }  }
	{ JcoupLocal_2_11 int 512 regular {array 16 { 1 1 } 1 1 }  }
	{ JcoupLocal_2_12 int 512 regular {array 16 { 1 1 } 1 1 }  }
	{ JcoupLocal_2_13 int 512 regular {array 16 { 1 1 } 1 1 }  }
	{ JcoupLocal_2_14 int 512 regular {array 16 { 1 1 } 1 1 }  }
	{ JcoupLocal_2_15 int 512 regular {array 16 { 1 1 } 1 1 }  }
	{ trottersLocal_V_3_0 int 16 regular {array 16 { 1 1 } 1 1 }  }
	{ trottersLocal_V_3_1 int 16 regular {array 16 { 1 1 } 1 1 }  }
	{ trottersLocal_V_3_2 int 16 regular {array 16 { 1 1 } 1 1 }  }
	{ trottersLocal_V_3_3 int 16 regular {array 16 { 1 1 } 1 1 }  }
	{ trottersLocal_V_3_4 int 16 regular {array 16 { 1 1 } 1 1 }  }
	{ trottersLocal_V_3_5 int 16 regular {array 16 { 1 1 } 1 1 }  }
	{ trottersLocal_V_3_6 int 16 regular {array 16 { 1 1 } 1 1 }  }
	{ trottersLocal_V_3_7 int 16 regular {array 16 { 1 1 } 1 1 }  }
	{ trottersLocal_V_3_8 int 16 regular {array 16 { 1 1 } 1 1 }  }
	{ trottersLocal_V_3_9 int 16 regular {array 16 { 1 1 } 1 1 }  }
	{ trottersLocal_V_3_10 int 16 regular {array 16 { 1 1 } 1 1 }  }
	{ trottersLocal_V_3_11 int 16 regular {array 16 { 1 1 } 1 1 }  }
	{ trottersLocal_V_3_12 int 16 regular {array 16 { 1 1 } 1 1 }  }
	{ trottersLocal_V_3_13 int 16 regular {array 16 { 1 1 } 1 1 }  }
	{ trottersLocal_V_3_14 int 16 regular {array 16 { 1 1 } 1 1 }  }
	{ trottersLocal_V_3_15 int 16 regular {array 16 { 1 1 } 1 1 }  }
	{ JcoupLocal_3_0 int 512 regular {array 16 { 1 1 } 1 1 }  }
	{ JcoupLocal_3_1 int 512 regular {array 16 { 1 1 } 1 1 }  }
	{ JcoupLocal_3_2 int 512 regular {array 16 { 1 1 } 1 1 }  }
	{ JcoupLocal_3_3 int 512 regular {array 16 { 1 1 } 1 1 }  }
	{ JcoupLocal_3_4 int 512 regular {array 16 { 1 1 } 1 1 }  }
	{ JcoupLocal_3_5 int 512 regular {array 16 { 1 1 } 1 1 }  }
	{ JcoupLocal_3_6 int 512 regular {array 16 { 1 1 } 1 1 }  }
	{ JcoupLocal_3_7 int 512 regular {array 16 { 1 1 } 1 1 }  }
	{ JcoupLocal_3_8 int 512 regular {array 16 { 1 1 } 1 1 }  }
	{ JcoupLocal_3_9 int 512 regular {array 16 { 1 1 } 1 1 }  }
	{ JcoupLocal_3_10 int 512 regular {array 16 { 1 1 } 1 1 }  }
	{ JcoupLocal_3_11 int 512 regular {array 16 { 1 1 } 1 1 }  }
	{ JcoupLocal_3_12 int 512 regular {array 16 { 1 1 } 1 1 }  }
	{ JcoupLocal_3_13 int 512 regular {array 16 { 1 1 } 1 1 }  }
	{ JcoupLocal_3_14 int 512 regular {array 16 { 1 1 } 1 1 }  }
	{ JcoupLocal_3_15 int 512 regular {array 16 { 1 1 } 1 1 }  }
	{ dH_3_3_out float 32 regular {pointer 1}  }
	{ dH_2_3_out float 32 regular {pointer 1}  }
	{ dH_1_3_out float 32 regular {pointer 1}  }
	{ dH_0_3_out float 32 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "dH_3_1_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "dH_2_1_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "dH_1_1_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "dH_0_1_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "stage", "interface" : "wire", "bitwidth" : 13, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_0_0", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_0_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_0_2", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_0_3", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_0_4", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_0_5", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_0_6", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_0_7", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_0_8", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_0_9", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_0_10", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_0_11", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_0_12", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_0_13", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_0_14", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_0_15", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_0_0", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_0_1", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_0_2", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_0_3", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_0_4", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_0_5", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_0_6", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_0_7", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_0_8", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_0_9", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_0_10", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_0_11", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_0_12", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_0_13", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_0_14", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_0_15", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_1_0", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_1_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_1_2", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_1_3", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_1_4", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_1_5", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_1_6", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_1_7", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_1_8", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_1_9", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_1_10", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_1_11", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_1_12", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_1_13", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_1_14", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_1_15", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_1_0", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_1_1", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_1_2", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_1_3", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_1_4", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_1_5", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_1_6", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_1_7", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_1_8", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_1_9", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_1_10", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_1_11", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_1_12", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_1_13", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_1_14", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_1_15", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_2_0", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_2_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_2_2", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_2_3", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_2_4", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_2_5", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_2_6", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_2_7", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_2_8", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_2_9", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_2_10", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_2_11", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_2_12", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_2_13", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_2_14", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_2_15", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_2_0", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_2_1", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_2_2", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_2_3", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_2_4", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_2_5", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_2_6", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_2_7", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_2_8", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_2_9", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_2_10", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_2_11", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_2_12", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_2_13", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_2_14", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_2_15", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_3_0", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_3_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_3_2", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_3_3", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_3_4", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_3_5", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_3_6", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_3_7", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_3_8", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_3_9", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_3_10", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_3_11", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_3_12", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_3_13", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_3_14", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_3_15", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_3_0", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_3_1", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_3_2", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_3_3", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_3_4", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_3_5", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_3_6", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_3_7", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_3_8", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_3_9", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_3_10", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_3_11", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_3_12", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_3_13", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_3_14", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_3_15", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "dH_3_3_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dH_2_3_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dH_1_3_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dH_0_3_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 787
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ dH_3_1_reload sc_in sc_lv 32 signal 0 } 
	{ dH_2_1_reload sc_in sc_lv 32 signal 1 } 
	{ dH_1_1_reload sc_in sc_lv 32 signal 2 } 
	{ dH_0_1_reload sc_in sc_lv 32 signal 3 } 
	{ stage sc_in sc_lv 13 signal 4 } 
	{ trottersLocal_V_0_0_address0 sc_out sc_lv 4 signal 5 } 
	{ trottersLocal_V_0_0_ce0 sc_out sc_logic 1 signal 5 } 
	{ trottersLocal_V_0_0_q0 sc_in sc_lv 16 signal 5 } 
	{ trottersLocal_V_0_0_address1 sc_out sc_lv 4 signal 5 } 
	{ trottersLocal_V_0_0_ce1 sc_out sc_logic 1 signal 5 } 
	{ trottersLocal_V_0_0_q1 sc_in sc_lv 16 signal 5 } 
	{ trottersLocal_V_0_1_address0 sc_out sc_lv 4 signal 6 } 
	{ trottersLocal_V_0_1_ce0 sc_out sc_logic 1 signal 6 } 
	{ trottersLocal_V_0_1_q0 sc_in sc_lv 16 signal 6 } 
	{ trottersLocal_V_0_1_address1 sc_out sc_lv 4 signal 6 } 
	{ trottersLocal_V_0_1_ce1 sc_out sc_logic 1 signal 6 } 
	{ trottersLocal_V_0_1_q1 sc_in sc_lv 16 signal 6 } 
	{ trottersLocal_V_0_2_address0 sc_out sc_lv 4 signal 7 } 
	{ trottersLocal_V_0_2_ce0 sc_out sc_logic 1 signal 7 } 
	{ trottersLocal_V_0_2_q0 sc_in sc_lv 16 signal 7 } 
	{ trottersLocal_V_0_2_address1 sc_out sc_lv 4 signal 7 } 
	{ trottersLocal_V_0_2_ce1 sc_out sc_logic 1 signal 7 } 
	{ trottersLocal_V_0_2_q1 sc_in sc_lv 16 signal 7 } 
	{ trottersLocal_V_0_3_address0 sc_out sc_lv 4 signal 8 } 
	{ trottersLocal_V_0_3_ce0 sc_out sc_logic 1 signal 8 } 
	{ trottersLocal_V_0_3_q0 sc_in sc_lv 16 signal 8 } 
	{ trottersLocal_V_0_3_address1 sc_out sc_lv 4 signal 8 } 
	{ trottersLocal_V_0_3_ce1 sc_out sc_logic 1 signal 8 } 
	{ trottersLocal_V_0_3_q1 sc_in sc_lv 16 signal 8 } 
	{ trottersLocal_V_0_4_address0 sc_out sc_lv 4 signal 9 } 
	{ trottersLocal_V_0_4_ce0 sc_out sc_logic 1 signal 9 } 
	{ trottersLocal_V_0_4_q0 sc_in sc_lv 16 signal 9 } 
	{ trottersLocal_V_0_4_address1 sc_out sc_lv 4 signal 9 } 
	{ trottersLocal_V_0_4_ce1 sc_out sc_logic 1 signal 9 } 
	{ trottersLocal_V_0_4_q1 sc_in sc_lv 16 signal 9 } 
	{ trottersLocal_V_0_5_address0 sc_out sc_lv 4 signal 10 } 
	{ trottersLocal_V_0_5_ce0 sc_out sc_logic 1 signal 10 } 
	{ trottersLocal_V_0_5_q0 sc_in sc_lv 16 signal 10 } 
	{ trottersLocal_V_0_5_address1 sc_out sc_lv 4 signal 10 } 
	{ trottersLocal_V_0_5_ce1 sc_out sc_logic 1 signal 10 } 
	{ trottersLocal_V_0_5_q1 sc_in sc_lv 16 signal 10 } 
	{ trottersLocal_V_0_6_address0 sc_out sc_lv 4 signal 11 } 
	{ trottersLocal_V_0_6_ce0 sc_out sc_logic 1 signal 11 } 
	{ trottersLocal_V_0_6_q0 sc_in sc_lv 16 signal 11 } 
	{ trottersLocal_V_0_6_address1 sc_out sc_lv 4 signal 11 } 
	{ trottersLocal_V_0_6_ce1 sc_out sc_logic 1 signal 11 } 
	{ trottersLocal_V_0_6_q1 sc_in sc_lv 16 signal 11 } 
	{ trottersLocal_V_0_7_address0 sc_out sc_lv 4 signal 12 } 
	{ trottersLocal_V_0_7_ce0 sc_out sc_logic 1 signal 12 } 
	{ trottersLocal_V_0_7_q0 sc_in sc_lv 16 signal 12 } 
	{ trottersLocal_V_0_7_address1 sc_out sc_lv 4 signal 12 } 
	{ trottersLocal_V_0_7_ce1 sc_out sc_logic 1 signal 12 } 
	{ trottersLocal_V_0_7_q1 sc_in sc_lv 16 signal 12 } 
	{ trottersLocal_V_0_8_address0 sc_out sc_lv 4 signal 13 } 
	{ trottersLocal_V_0_8_ce0 sc_out sc_logic 1 signal 13 } 
	{ trottersLocal_V_0_8_q0 sc_in sc_lv 16 signal 13 } 
	{ trottersLocal_V_0_8_address1 sc_out sc_lv 4 signal 13 } 
	{ trottersLocal_V_0_8_ce1 sc_out sc_logic 1 signal 13 } 
	{ trottersLocal_V_0_8_q1 sc_in sc_lv 16 signal 13 } 
	{ trottersLocal_V_0_9_address0 sc_out sc_lv 4 signal 14 } 
	{ trottersLocal_V_0_9_ce0 sc_out sc_logic 1 signal 14 } 
	{ trottersLocal_V_0_9_q0 sc_in sc_lv 16 signal 14 } 
	{ trottersLocal_V_0_9_address1 sc_out sc_lv 4 signal 14 } 
	{ trottersLocal_V_0_9_ce1 sc_out sc_logic 1 signal 14 } 
	{ trottersLocal_V_0_9_q1 sc_in sc_lv 16 signal 14 } 
	{ trottersLocal_V_0_10_address0 sc_out sc_lv 4 signal 15 } 
	{ trottersLocal_V_0_10_ce0 sc_out sc_logic 1 signal 15 } 
	{ trottersLocal_V_0_10_q0 sc_in sc_lv 16 signal 15 } 
	{ trottersLocal_V_0_10_address1 sc_out sc_lv 4 signal 15 } 
	{ trottersLocal_V_0_10_ce1 sc_out sc_logic 1 signal 15 } 
	{ trottersLocal_V_0_10_q1 sc_in sc_lv 16 signal 15 } 
	{ trottersLocal_V_0_11_address0 sc_out sc_lv 4 signal 16 } 
	{ trottersLocal_V_0_11_ce0 sc_out sc_logic 1 signal 16 } 
	{ trottersLocal_V_0_11_q0 sc_in sc_lv 16 signal 16 } 
	{ trottersLocal_V_0_11_address1 sc_out sc_lv 4 signal 16 } 
	{ trottersLocal_V_0_11_ce1 sc_out sc_logic 1 signal 16 } 
	{ trottersLocal_V_0_11_q1 sc_in sc_lv 16 signal 16 } 
	{ trottersLocal_V_0_12_address0 sc_out sc_lv 4 signal 17 } 
	{ trottersLocal_V_0_12_ce0 sc_out sc_logic 1 signal 17 } 
	{ trottersLocal_V_0_12_q0 sc_in sc_lv 16 signal 17 } 
	{ trottersLocal_V_0_12_address1 sc_out sc_lv 4 signal 17 } 
	{ trottersLocal_V_0_12_ce1 sc_out sc_logic 1 signal 17 } 
	{ trottersLocal_V_0_12_q1 sc_in sc_lv 16 signal 17 } 
	{ trottersLocal_V_0_13_address0 sc_out sc_lv 4 signal 18 } 
	{ trottersLocal_V_0_13_ce0 sc_out sc_logic 1 signal 18 } 
	{ trottersLocal_V_0_13_q0 sc_in sc_lv 16 signal 18 } 
	{ trottersLocal_V_0_13_address1 sc_out sc_lv 4 signal 18 } 
	{ trottersLocal_V_0_13_ce1 sc_out sc_logic 1 signal 18 } 
	{ trottersLocal_V_0_13_q1 sc_in sc_lv 16 signal 18 } 
	{ trottersLocal_V_0_14_address0 sc_out sc_lv 4 signal 19 } 
	{ trottersLocal_V_0_14_ce0 sc_out sc_logic 1 signal 19 } 
	{ trottersLocal_V_0_14_q0 sc_in sc_lv 16 signal 19 } 
	{ trottersLocal_V_0_14_address1 sc_out sc_lv 4 signal 19 } 
	{ trottersLocal_V_0_14_ce1 sc_out sc_logic 1 signal 19 } 
	{ trottersLocal_V_0_14_q1 sc_in sc_lv 16 signal 19 } 
	{ trottersLocal_V_0_15_address0 sc_out sc_lv 4 signal 20 } 
	{ trottersLocal_V_0_15_ce0 sc_out sc_logic 1 signal 20 } 
	{ trottersLocal_V_0_15_q0 sc_in sc_lv 16 signal 20 } 
	{ trottersLocal_V_0_15_address1 sc_out sc_lv 4 signal 20 } 
	{ trottersLocal_V_0_15_ce1 sc_out sc_logic 1 signal 20 } 
	{ trottersLocal_V_0_15_q1 sc_in sc_lv 16 signal 20 } 
	{ JcoupLocal_0_0_address0 sc_out sc_lv 4 signal 21 } 
	{ JcoupLocal_0_0_ce0 sc_out sc_logic 1 signal 21 } 
	{ JcoupLocal_0_0_q0 sc_in sc_lv 512 signal 21 } 
	{ JcoupLocal_0_0_address1 sc_out sc_lv 4 signal 21 } 
	{ JcoupLocal_0_0_ce1 sc_out sc_logic 1 signal 21 } 
	{ JcoupLocal_0_0_q1 sc_in sc_lv 512 signal 21 } 
	{ JcoupLocal_0_1_address0 sc_out sc_lv 4 signal 22 } 
	{ JcoupLocal_0_1_ce0 sc_out sc_logic 1 signal 22 } 
	{ JcoupLocal_0_1_q0 sc_in sc_lv 512 signal 22 } 
	{ JcoupLocal_0_1_address1 sc_out sc_lv 4 signal 22 } 
	{ JcoupLocal_0_1_ce1 sc_out sc_logic 1 signal 22 } 
	{ JcoupLocal_0_1_q1 sc_in sc_lv 512 signal 22 } 
	{ JcoupLocal_0_2_address0 sc_out sc_lv 4 signal 23 } 
	{ JcoupLocal_0_2_ce0 sc_out sc_logic 1 signal 23 } 
	{ JcoupLocal_0_2_q0 sc_in sc_lv 512 signal 23 } 
	{ JcoupLocal_0_2_address1 sc_out sc_lv 4 signal 23 } 
	{ JcoupLocal_0_2_ce1 sc_out sc_logic 1 signal 23 } 
	{ JcoupLocal_0_2_q1 sc_in sc_lv 512 signal 23 } 
	{ JcoupLocal_0_3_address0 sc_out sc_lv 4 signal 24 } 
	{ JcoupLocal_0_3_ce0 sc_out sc_logic 1 signal 24 } 
	{ JcoupLocal_0_3_q0 sc_in sc_lv 512 signal 24 } 
	{ JcoupLocal_0_3_address1 sc_out sc_lv 4 signal 24 } 
	{ JcoupLocal_0_3_ce1 sc_out sc_logic 1 signal 24 } 
	{ JcoupLocal_0_3_q1 sc_in sc_lv 512 signal 24 } 
	{ JcoupLocal_0_4_address0 sc_out sc_lv 4 signal 25 } 
	{ JcoupLocal_0_4_ce0 sc_out sc_logic 1 signal 25 } 
	{ JcoupLocal_0_4_q0 sc_in sc_lv 512 signal 25 } 
	{ JcoupLocal_0_4_address1 sc_out sc_lv 4 signal 25 } 
	{ JcoupLocal_0_4_ce1 sc_out sc_logic 1 signal 25 } 
	{ JcoupLocal_0_4_q1 sc_in sc_lv 512 signal 25 } 
	{ JcoupLocal_0_5_address0 sc_out sc_lv 4 signal 26 } 
	{ JcoupLocal_0_5_ce0 sc_out sc_logic 1 signal 26 } 
	{ JcoupLocal_0_5_q0 sc_in sc_lv 512 signal 26 } 
	{ JcoupLocal_0_5_address1 sc_out sc_lv 4 signal 26 } 
	{ JcoupLocal_0_5_ce1 sc_out sc_logic 1 signal 26 } 
	{ JcoupLocal_0_5_q1 sc_in sc_lv 512 signal 26 } 
	{ JcoupLocal_0_6_address0 sc_out sc_lv 4 signal 27 } 
	{ JcoupLocal_0_6_ce0 sc_out sc_logic 1 signal 27 } 
	{ JcoupLocal_0_6_q0 sc_in sc_lv 512 signal 27 } 
	{ JcoupLocal_0_6_address1 sc_out sc_lv 4 signal 27 } 
	{ JcoupLocal_0_6_ce1 sc_out sc_logic 1 signal 27 } 
	{ JcoupLocal_0_6_q1 sc_in sc_lv 512 signal 27 } 
	{ JcoupLocal_0_7_address0 sc_out sc_lv 4 signal 28 } 
	{ JcoupLocal_0_7_ce0 sc_out sc_logic 1 signal 28 } 
	{ JcoupLocal_0_7_q0 sc_in sc_lv 512 signal 28 } 
	{ JcoupLocal_0_7_address1 sc_out sc_lv 4 signal 28 } 
	{ JcoupLocal_0_7_ce1 sc_out sc_logic 1 signal 28 } 
	{ JcoupLocal_0_7_q1 sc_in sc_lv 512 signal 28 } 
	{ JcoupLocal_0_8_address0 sc_out sc_lv 4 signal 29 } 
	{ JcoupLocal_0_8_ce0 sc_out sc_logic 1 signal 29 } 
	{ JcoupLocal_0_8_q0 sc_in sc_lv 512 signal 29 } 
	{ JcoupLocal_0_8_address1 sc_out sc_lv 4 signal 29 } 
	{ JcoupLocal_0_8_ce1 sc_out sc_logic 1 signal 29 } 
	{ JcoupLocal_0_8_q1 sc_in sc_lv 512 signal 29 } 
	{ JcoupLocal_0_9_address0 sc_out sc_lv 4 signal 30 } 
	{ JcoupLocal_0_9_ce0 sc_out sc_logic 1 signal 30 } 
	{ JcoupLocal_0_9_q0 sc_in sc_lv 512 signal 30 } 
	{ JcoupLocal_0_9_address1 sc_out sc_lv 4 signal 30 } 
	{ JcoupLocal_0_9_ce1 sc_out sc_logic 1 signal 30 } 
	{ JcoupLocal_0_9_q1 sc_in sc_lv 512 signal 30 } 
	{ JcoupLocal_0_10_address0 sc_out sc_lv 4 signal 31 } 
	{ JcoupLocal_0_10_ce0 sc_out sc_logic 1 signal 31 } 
	{ JcoupLocal_0_10_q0 sc_in sc_lv 512 signal 31 } 
	{ JcoupLocal_0_10_address1 sc_out sc_lv 4 signal 31 } 
	{ JcoupLocal_0_10_ce1 sc_out sc_logic 1 signal 31 } 
	{ JcoupLocal_0_10_q1 sc_in sc_lv 512 signal 31 } 
	{ JcoupLocal_0_11_address0 sc_out sc_lv 4 signal 32 } 
	{ JcoupLocal_0_11_ce0 sc_out sc_logic 1 signal 32 } 
	{ JcoupLocal_0_11_q0 sc_in sc_lv 512 signal 32 } 
	{ JcoupLocal_0_11_address1 sc_out sc_lv 4 signal 32 } 
	{ JcoupLocal_0_11_ce1 sc_out sc_logic 1 signal 32 } 
	{ JcoupLocal_0_11_q1 sc_in sc_lv 512 signal 32 } 
	{ JcoupLocal_0_12_address0 sc_out sc_lv 4 signal 33 } 
	{ JcoupLocal_0_12_ce0 sc_out sc_logic 1 signal 33 } 
	{ JcoupLocal_0_12_q0 sc_in sc_lv 512 signal 33 } 
	{ JcoupLocal_0_12_address1 sc_out sc_lv 4 signal 33 } 
	{ JcoupLocal_0_12_ce1 sc_out sc_logic 1 signal 33 } 
	{ JcoupLocal_0_12_q1 sc_in sc_lv 512 signal 33 } 
	{ JcoupLocal_0_13_address0 sc_out sc_lv 4 signal 34 } 
	{ JcoupLocal_0_13_ce0 sc_out sc_logic 1 signal 34 } 
	{ JcoupLocal_0_13_q0 sc_in sc_lv 512 signal 34 } 
	{ JcoupLocal_0_13_address1 sc_out sc_lv 4 signal 34 } 
	{ JcoupLocal_0_13_ce1 sc_out sc_logic 1 signal 34 } 
	{ JcoupLocal_0_13_q1 sc_in sc_lv 512 signal 34 } 
	{ JcoupLocal_0_14_address0 sc_out sc_lv 4 signal 35 } 
	{ JcoupLocal_0_14_ce0 sc_out sc_logic 1 signal 35 } 
	{ JcoupLocal_0_14_q0 sc_in sc_lv 512 signal 35 } 
	{ JcoupLocal_0_14_address1 sc_out sc_lv 4 signal 35 } 
	{ JcoupLocal_0_14_ce1 sc_out sc_logic 1 signal 35 } 
	{ JcoupLocal_0_14_q1 sc_in sc_lv 512 signal 35 } 
	{ JcoupLocal_0_15_address0 sc_out sc_lv 4 signal 36 } 
	{ JcoupLocal_0_15_ce0 sc_out sc_logic 1 signal 36 } 
	{ JcoupLocal_0_15_q0 sc_in sc_lv 512 signal 36 } 
	{ JcoupLocal_0_15_address1 sc_out sc_lv 4 signal 36 } 
	{ JcoupLocal_0_15_ce1 sc_out sc_logic 1 signal 36 } 
	{ JcoupLocal_0_15_q1 sc_in sc_lv 512 signal 36 } 
	{ trottersLocal_V_1_0_address0 sc_out sc_lv 4 signal 37 } 
	{ trottersLocal_V_1_0_ce0 sc_out sc_logic 1 signal 37 } 
	{ trottersLocal_V_1_0_q0 sc_in sc_lv 16 signal 37 } 
	{ trottersLocal_V_1_0_address1 sc_out sc_lv 4 signal 37 } 
	{ trottersLocal_V_1_0_ce1 sc_out sc_logic 1 signal 37 } 
	{ trottersLocal_V_1_0_q1 sc_in sc_lv 16 signal 37 } 
	{ trottersLocal_V_1_1_address0 sc_out sc_lv 4 signal 38 } 
	{ trottersLocal_V_1_1_ce0 sc_out sc_logic 1 signal 38 } 
	{ trottersLocal_V_1_1_q0 sc_in sc_lv 16 signal 38 } 
	{ trottersLocal_V_1_1_address1 sc_out sc_lv 4 signal 38 } 
	{ trottersLocal_V_1_1_ce1 sc_out sc_logic 1 signal 38 } 
	{ trottersLocal_V_1_1_q1 sc_in sc_lv 16 signal 38 } 
	{ trottersLocal_V_1_2_address0 sc_out sc_lv 4 signal 39 } 
	{ trottersLocal_V_1_2_ce0 sc_out sc_logic 1 signal 39 } 
	{ trottersLocal_V_1_2_q0 sc_in sc_lv 16 signal 39 } 
	{ trottersLocal_V_1_2_address1 sc_out sc_lv 4 signal 39 } 
	{ trottersLocal_V_1_2_ce1 sc_out sc_logic 1 signal 39 } 
	{ trottersLocal_V_1_2_q1 sc_in sc_lv 16 signal 39 } 
	{ trottersLocal_V_1_3_address0 sc_out sc_lv 4 signal 40 } 
	{ trottersLocal_V_1_3_ce0 sc_out sc_logic 1 signal 40 } 
	{ trottersLocal_V_1_3_q0 sc_in sc_lv 16 signal 40 } 
	{ trottersLocal_V_1_3_address1 sc_out sc_lv 4 signal 40 } 
	{ trottersLocal_V_1_3_ce1 sc_out sc_logic 1 signal 40 } 
	{ trottersLocal_V_1_3_q1 sc_in sc_lv 16 signal 40 } 
	{ trottersLocal_V_1_4_address0 sc_out sc_lv 4 signal 41 } 
	{ trottersLocal_V_1_4_ce0 sc_out sc_logic 1 signal 41 } 
	{ trottersLocal_V_1_4_q0 sc_in sc_lv 16 signal 41 } 
	{ trottersLocal_V_1_4_address1 sc_out sc_lv 4 signal 41 } 
	{ trottersLocal_V_1_4_ce1 sc_out sc_logic 1 signal 41 } 
	{ trottersLocal_V_1_4_q1 sc_in sc_lv 16 signal 41 } 
	{ trottersLocal_V_1_5_address0 sc_out sc_lv 4 signal 42 } 
	{ trottersLocal_V_1_5_ce0 sc_out sc_logic 1 signal 42 } 
	{ trottersLocal_V_1_5_q0 sc_in sc_lv 16 signal 42 } 
	{ trottersLocal_V_1_5_address1 sc_out sc_lv 4 signal 42 } 
	{ trottersLocal_V_1_5_ce1 sc_out sc_logic 1 signal 42 } 
	{ trottersLocal_V_1_5_q1 sc_in sc_lv 16 signal 42 } 
	{ trottersLocal_V_1_6_address0 sc_out sc_lv 4 signal 43 } 
	{ trottersLocal_V_1_6_ce0 sc_out sc_logic 1 signal 43 } 
	{ trottersLocal_V_1_6_q0 sc_in sc_lv 16 signal 43 } 
	{ trottersLocal_V_1_6_address1 sc_out sc_lv 4 signal 43 } 
	{ trottersLocal_V_1_6_ce1 sc_out sc_logic 1 signal 43 } 
	{ trottersLocal_V_1_6_q1 sc_in sc_lv 16 signal 43 } 
	{ trottersLocal_V_1_7_address0 sc_out sc_lv 4 signal 44 } 
	{ trottersLocal_V_1_7_ce0 sc_out sc_logic 1 signal 44 } 
	{ trottersLocal_V_1_7_q0 sc_in sc_lv 16 signal 44 } 
	{ trottersLocal_V_1_7_address1 sc_out sc_lv 4 signal 44 } 
	{ trottersLocal_V_1_7_ce1 sc_out sc_logic 1 signal 44 } 
	{ trottersLocal_V_1_7_q1 sc_in sc_lv 16 signal 44 } 
	{ trottersLocal_V_1_8_address0 sc_out sc_lv 4 signal 45 } 
	{ trottersLocal_V_1_8_ce0 sc_out sc_logic 1 signal 45 } 
	{ trottersLocal_V_1_8_q0 sc_in sc_lv 16 signal 45 } 
	{ trottersLocal_V_1_8_address1 sc_out sc_lv 4 signal 45 } 
	{ trottersLocal_V_1_8_ce1 sc_out sc_logic 1 signal 45 } 
	{ trottersLocal_V_1_8_q1 sc_in sc_lv 16 signal 45 } 
	{ trottersLocal_V_1_9_address0 sc_out sc_lv 4 signal 46 } 
	{ trottersLocal_V_1_9_ce0 sc_out sc_logic 1 signal 46 } 
	{ trottersLocal_V_1_9_q0 sc_in sc_lv 16 signal 46 } 
	{ trottersLocal_V_1_9_address1 sc_out sc_lv 4 signal 46 } 
	{ trottersLocal_V_1_9_ce1 sc_out sc_logic 1 signal 46 } 
	{ trottersLocal_V_1_9_q1 sc_in sc_lv 16 signal 46 } 
	{ trottersLocal_V_1_10_address0 sc_out sc_lv 4 signal 47 } 
	{ trottersLocal_V_1_10_ce0 sc_out sc_logic 1 signal 47 } 
	{ trottersLocal_V_1_10_q0 sc_in sc_lv 16 signal 47 } 
	{ trottersLocal_V_1_10_address1 sc_out sc_lv 4 signal 47 } 
	{ trottersLocal_V_1_10_ce1 sc_out sc_logic 1 signal 47 } 
	{ trottersLocal_V_1_10_q1 sc_in sc_lv 16 signal 47 } 
	{ trottersLocal_V_1_11_address0 sc_out sc_lv 4 signal 48 } 
	{ trottersLocal_V_1_11_ce0 sc_out sc_logic 1 signal 48 } 
	{ trottersLocal_V_1_11_q0 sc_in sc_lv 16 signal 48 } 
	{ trottersLocal_V_1_11_address1 sc_out sc_lv 4 signal 48 } 
	{ trottersLocal_V_1_11_ce1 sc_out sc_logic 1 signal 48 } 
	{ trottersLocal_V_1_11_q1 sc_in sc_lv 16 signal 48 } 
	{ trottersLocal_V_1_12_address0 sc_out sc_lv 4 signal 49 } 
	{ trottersLocal_V_1_12_ce0 sc_out sc_logic 1 signal 49 } 
	{ trottersLocal_V_1_12_q0 sc_in sc_lv 16 signal 49 } 
	{ trottersLocal_V_1_12_address1 sc_out sc_lv 4 signal 49 } 
	{ trottersLocal_V_1_12_ce1 sc_out sc_logic 1 signal 49 } 
	{ trottersLocal_V_1_12_q1 sc_in sc_lv 16 signal 49 } 
	{ trottersLocal_V_1_13_address0 sc_out sc_lv 4 signal 50 } 
	{ trottersLocal_V_1_13_ce0 sc_out sc_logic 1 signal 50 } 
	{ trottersLocal_V_1_13_q0 sc_in sc_lv 16 signal 50 } 
	{ trottersLocal_V_1_13_address1 sc_out sc_lv 4 signal 50 } 
	{ trottersLocal_V_1_13_ce1 sc_out sc_logic 1 signal 50 } 
	{ trottersLocal_V_1_13_q1 sc_in sc_lv 16 signal 50 } 
	{ trottersLocal_V_1_14_address0 sc_out sc_lv 4 signal 51 } 
	{ trottersLocal_V_1_14_ce0 sc_out sc_logic 1 signal 51 } 
	{ trottersLocal_V_1_14_q0 sc_in sc_lv 16 signal 51 } 
	{ trottersLocal_V_1_14_address1 sc_out sc_lv 4 signal 51 } 
	{ trottersLocal_V_1_14_ce1 sc_out sc_logic 1 signal 51 } 
	{ trottersLocal_V_1_14_q1 sc_in sc_lv 16 signal 51 } 
	{ trottersLocal_V_1_15_address0 sc_out sc_lv 4 signal 52 } 
	{ trottersLocal_V_1_15_ce0 sc_out sc_logic 1 signal 52 } 
	{ trottersLocal_V_1_15_q0 sc_in sc_lv 16 signal 52 } 
	{ trottersLocal_V_1_15_address1 sc_out sc_lv 4 signal 52 } 
	{ trottersLocal_V_1_15_ce1 sc_out sc_logic 1 signal 52 } 
	{ trottersLocal_V_1_15_q1 sc_in sc_lv 16 signal 52 } 
	{ JcoupLocal_1_0_address0 sc_out sc_lv 4 signal 53 } 
	{ JcoupLocal_1_0_ce0 sc_out sc_logic 1 signal 53 } 
	{ JcoupLocal_1_0_q0 sc_in sc_lv 512 signal 53 } 
	{ JcoupLocal_1_0_address1 sc_out sc_lv 4 signal 53 } 
	{ JcoupLocal_1_0_ce1 sc_out sc_logic 1 signal 53 } 
	{ JcoupLocal_1_0_q1 sc_in sc_lv 512 signal 53 } 
	{ JcoupLocal_1_1_address0 sc_out sc_lv 4 signal 54 } 
	{ JcoupLocal_1_1_ce0 sc_out sc_logic 1 signal 54 } 
	{ JcoupLocal_1_1_q0 sc_in sc_lv 512 signal 54 } 
	{ JcoupLocal_1_1_address1 sc_out sc_lv 4 signal 54 } 
	{ JcoupLocal_1_1_ce1 sc_out sc_logic 1 signal 54 } 
	{ JcoupLocal_1_1_q1 sc_in sc_lv 512 signal 54 } 
	{ JcoupLocal_1_2_address0 sc_out sc_lv 4 signal 55 } 
	{ JcoupLocal_1_2_ce0 sc_out sc_logic 1 signal 55 } 
	{ JcoupLocal_1_2_q0 sc_in sc_lv 512 signal 55 } 
	{ JcoupLocal_1_2_address1 sc_out sc_lv 4 signal 55 } 
	{ JcoupLocal_1_2_ce1 sc_out sc_logic 1 signal 55 } 
	{ JcoupLocal_1_2_q1 sc_in sc_lv 512 signal 55 } 
	{ JcoupLocal_1_3_address0 sc_out sc_lv 4 signal 56 } 
	{ JcoupLocal_1_3_ce0 sc_out sc_logic 1 signal 56 } 
	{ JcoupLocal_1_3_q0 sc_in sc_lv 512 signal 56 } 
	{ JcoupLocal_1_3_address1 sc_out sc_lv 4 signal 56 } 
	{ JcoupLocal_1_3_ce1 sc_out sc_logic 1 signal 56 } 
	{ JcoupLocal_1_3_q1 sc_in sc_lv 512 signal 56 } 
	{ JcoupLocal_1_4_address0 sc_out sc_lv 4 signal 57 } 
	{ JcoupLocal_1_4_ce0 sc_out sc_logic 1 signal 57 } 
	{ JcoupLocal_1_4_q0 sc_in sc_lv 512 signal 57 } 
	{ JcoupLocal_1_4_address1 sc_out sc_lv 4 signal 57 } 
	{ JcoupLocal_1_4_ce1 sc_out sc_logic 1 signal 57 } 
	{ JcoupLocal_1_4_q1 sc_in sc_lv 512 signal 57 } 
	{ JcoupLocal_1_5_address0 sc_out sc_lv 4 signal 58 } 
	{ JcoupLocal_1_5_ce0 sc_out sc_logic 1 signal 58 } 
	{ JcoupLocal_1_5_q0 sc_in sc_lv 512 signal 58 } 
	{ JcoupLocal_1_5_address1 sc_out sc_lv 4 signal 58 } 
	{ JcoupLocal_1_5_ce1 sc_out sc_logic 1 signal 58 } 
	{ JcoupLocal_1_5_q1 sc_in sc_lv 512 signal 58 } 
	{ JcoupLocal_1_6_address0 sc_out sc_lv 4 signal 59 } 
	{ JcoupLocal_1_6_ce0 sc_out sc_logic 1 signal 59 } 
	{ JcoupLocal_1_6_q0 sc_in sc_lv 512 signal 59 } 
	{ JcoupLocal_1_6_address1 sc_out sc_lv 4 signal 59 } 
	{ JcoupLocal_1_6_ce1 sc_out sc_logic 1 signal 59 } 
	{ JcoupLocal_1_6_q1 sc_in sc_lv 512 signal 59 } 
	{ JcoupLocal_1_7_address0 sc_out sc_lv 4 signal 60 } 
	{ JcoupLocal_1_7_ce0 sc_out sc_logic 1 signal 60 } 
	{ JcoupLocal_1_7_q0 sc_in sc_lv 512 signal 60 } 
	{ JcoupLocal_1_7_address1 sc_out sc_lv 4 signal 60 } 
	{ JcoupLocal_1_7_ce1 sc_out sc_logic 1 signal 60 } 
	{ JcoupLocal_1_7_q1 sc_in sc_lv 512 signal 60 } 
	{ JcoupLocal_1_8_address0 sc_out sc_lv 4 signal 61 } 
	{ JcoupLocal_1_8_ce0 sc_out sc_logic 1 signal 61 } 
	{ JcoupLocal_1_8_q0 sc_in sc_lv 512 signal 61 } 
	{ JcoupLocal_1_8_address1 sc_out sc_lv 4 signal 61 } 
	{ JcoupLocal_1_8_ce1 sc_out sc_logic 1 signal 61 } 
	{ JcoupLocal_1_8_q1 sc_in sc_lv 512 signal 61 } 
	{ JcoupLocal_1_9_address0 sc_out sc_lv 4 signal 62 } 
	{ JcoupLocal_1_9_ce0 sc_out sc_logic 1 signal 62 } 
	{ JcoupLocal_1_9_q0 sc_in sc_lv 512 signal 62 } 
	{ JcoupLocal_1_9_address1 sc_out sc_lv 4 signal 62 } 
	{ JcoupLocal_1_9_ce1 sc_out sc_logic 1 signal 62 } 
	{ JcoupLocal_1_9_q1 sc_in sc_lv 512 signal 62 } 
	{ JcoupLocal_1_10_address0 sc_out sc_lv 4 signal 63 } 
	{ JcoupLocal_1_10_ce0 sc_out sc_logic 1 signal 63 } 
	{ JcoupLocal_1_10_q0 sc_in sc_lv 512 signal 63 } 
	{ JcoupLocal_1_10_address1 sc_out sc_lv 4 signal 63 } 
	{ JcoupLocal_1_10_ce1 sc_out sc_logic 1 signal 63 } 
	{ JcoupLocal_1_10_q1 sc_in sc_lv 512 signal 63 } 
	{ JcoupLocal_1_11_address0 sc_out sc_lv 4 signal 64 } 
	{ JcoupLocal_1_11_ce0 sc_out sc_logic 1 signal 64 } 
	{ JcoupLocal_1_11_q0 sc_in sc_lv 512 signal 64 } 
	{ JcoupLocal_1_11_address1 sc_out sc_lv 4 signal 64 } 
	{ JcoupLocal_1_11_ce1 sc_out sc_logic 1 signal 64 } 
	{ JcoupLocal_1_11_q1 sc_in sc_lv 512 signal 64 } 
	{ JcoupLocal_1_12_address0 sc_out sc_lv 4 signal 65 } 
	{ JcoupLocal_1_12_ce0 sc_out sc_logic 1 signal 65 } 
	{ JcoupLocal_1_12_q0 sc_in sc_lv 512 signal 65 } 
	{ JcoupLocal_1_12_address1 sc_out sc_lv 4 signal 65 } 
	{ JcoupLocal_1_12_ce1 sc_out sc_logic 1 signal 65 } 
	{ JcoupLocal_1_12_q1 sc_in sc_lv 512 signal 65 } 
	{ JcoupLocal_1_13_address0 sc_out sc_lv 4 signal 66 } 
	{ JcoupLocal_1_13_ce0 sc_out sc_logic 1 signal 66 } 
	{ JcoupLocal_1_13_q0 sc_in sc_lv 512 signal 66 } 
	{ JcoupLocal_1_13_address1 sc_out sc_lv 4 signal 66 } 
	{ JcoupLocal_1_13_ce1 sc_out sc_logic 1 signal 66 } 
	{ JcoupLocal_1_13_q1 sc_in sc_lv 512 signal 66 } 
	{ JcoupLocal_1_14_address0 sc_out sc_lv 4 signal 67 } 
	{ JcoupLocal_1_14_ce0 sc_out sc_logic 1 signal 67 } 
	{ JcoupLocal_1_14_q0 sc_in sc_lv 512 signal 67 } 
	{ JcoupLocal_1_14_address1 sc_out sc_lv 4 signal 67 } 
	{ JcoupLocal_1_14_ce1 sc_out sc_logic 1 signal 67 } 
	{ JcoupLocal_1_14_q1 sc_in sc_lv 512 signal 67 } 
	{ JcoupLocal_1_15_address0 sc_out sc_lv 4 signal 68 } 
	{ JcoupLocal_1_15_ce0 sc_out sc_logic 1 signal 68 } 
	{ JcoupLocal_1_15_q0 sc_in sc_lv 512 signal 68 } 
	{ JcoupLocal_1_15_address1 sc_out sc_lv 4 signal 68 } 
	{ JcoupLocal_1_15_ce1 sc_out sc_logic 1 signal 68 } 
	{ JcoupLocal_1_15_q1 sc_in sc_lv 512 signal 68 } 
	{ trottersLocal_V_2_0_address0 sc_out sc_lv 4 signal 69 } 
	{ trottersLocal_V_2_0_ce0 sc_out sc_logic 1 signal 69 } 
	{ trottersLocal_V_2_0_q0 sc_in sc_lv 16 signal 69 } 
	{ trottersLocal_V_2_0_address1 sc_out sc_lv 4 signal 69 } 
	{ trottersLocal_V_2_0_ce1 sc_out sc_logic 1 signal 69 } 
	{ trottersLocal_V_2_0_q1 sc_in sc_lv 16 signal 69 } 
	{ trottersLocal_V_2_1_address0 sc_out sc_lv 4 signal 70 } 
	{ trottersLocal_V_2_1_ce0 sc_out sc_logic 1 signal 70 } 
	{ trottersLocal_V_2_1_q0 sc_in sc_lv 16 signal 70 } 
	{ trottersLocal_V_2_1_address1 sc_out sc_lv 4 signal 70 } 
	{ trottersLocal_V_2_1_ce1 sc_out sc_logic 1 signal 70 } 
	{ trottersLocal_V_2_1_q1 sc_in sc_lv 16 signal 70 } 
	{ trottersLocal_V_2_2_address0 sc_out sc_lv 4 signal 71 } 
	{ trottersLocal_V_2_2_ce0 sc_out sc_logic 1 signal 71 } 
	{ trottersLocal_V_2_2_q0 sc_in sc_lv 16 signal 71 } 
	{ trottersLocal_V_2_2_address1 sc_out sc_lv 4 signal 71 } 
	{ trottersLocal_V_2_2_ce1 sc_out sc_logic 1 signal 71 } 
	{ trottersLocal_V_2_2_q1 sc_in sc_lv 16 signal 71 } 
	{ trottersLocal_V_2_3_address0 sc_out sc_lv 4 signal 72 } 
	{ trottersLocal_V_2_3_ce0 sc_out sc_logic 1 signal 72 } 
	{ trottersLocal_V_2_3_q0 sc_in sc_lv 16 signal 72 } 
	{ trottersLocal_V_2_3_address1 sc_out sc_lv 4 signal 72 } 
	{ trottersLocal_V_2_3_ce1 sc_out sc_logic 1 signal 72 } 
	{ trottersLocal_V_2_3_q1 sc_in sc_lv 16 signal 72 } 
	{ trottersLocal_V_2_4_address0 sc_out sc_lv 4 signal 73 } 
	{ trottersLocal_V_2_4_ce0 sc_out sc_logic 1 signal 73 } 
	{ trottersLocal_V_2_4_q0 sc_in sc_lv 16 signal 73 } 
	{ trottersLocal_V_2_4_address1 sc_out sc_lv 4 signal 73 } 
	{ trottersLocal_V_2_4_ce1 sc_out sc_logic 1 signal 73 } 
	{ trottersLocal_V_2_4_q1 sc_in sc_lv 16 signal 73 } 
	{ trottersLocal_V_2_5_address0 sc_out sc_lv 4 signal 74 } 
	{ trottersLocal_V_2_5_ce0 sc_out sc_logic 1 signal 74 } 
	{ trottersLocal_V_2_5_q0 sc_in sc_lv 16 signal 74 } 
	{ trottersLocal_V_2_5_address1 sc_out sc_lv 4 signal 74 } 
	{ trottersLocal_V_2_5_ce1 sc_out sc_logic 1 signal 74 } 
	{ trottersLocal_V_2_5_q1 sc_in sc_lv 16 signal 74 } 
	{ trottersLocal_V_2_6_address0 sc_out sc_lv 4 signal 75 } 
	{ trottersLocal_V_2_6_ce0 sc_out sc_logic 1 signal 75 } 
	{ trottersLocal_V_2_6_q0 sc_in sc_lv 16 signal 75 } 
	{ trottersLocal_V_2_6_address1 sc_out sc_lv 4 signal 75 } 
	{ trottersLocal_V_2_6_ce1 sc_out sc_logic 1 signal 75 } 
	{ trottersLocal_V_2_6_q1 sc_in sc_lv 16 signal 75 } 
	{ trottersLocal_V_2_7_address0 sc_out sc_lv 4 signal 76 } 
	{ trottersLocal_V_2_7_ce0 sc_out sc_logic 1 signal 76 } 
	{ trottersLocal_V_2_7_q0 sc_in sc_lv 16 signal 76 } 
	{ trottersLocal_V_2_7_address1 sc_out sc_lv 4 signal 76 } 
	{ trottersLocal_V_2_7_ce1 sc_out sc_logic 1 signal 76 } 
	{ trottersLocal_V_2_7_q1 sc_in sc_lv 16 signal 76 } 
	{ trottersLocal_V_2_8_address0 sc_out sc_lv 4 signal 77 } 
	{ trottersLocal_V_2_8_ce0 sc_out sc_logic 1 signal 77 } 
	{ trottersLocal_V_2_8_q0 sc_in sc_lv 16 signal 77 } 
	{ trottersLocal_V_2_8_address1 sc_out sc_lv 4 signal 77 } 
	{ trottersLocal_V_2_8_ce1 sc_out sc_logic 1 signal 77 } 
	{ trottersLocal_V_2_8_q1 sc_in sc_lv 16 signal 77 } 
	{ trottersLocal_V_2_9_address0 sc_out sc_lv 4 signal 78 } 
	{ trottersLocal_V_2_9_ce0 sc_out sc_logic 1 signal 78 } 
	{ trottersLocal_V_2_9_q0 sc_in sc_lv 16 signal 78 } 
	{ trottersLocal_V_2_9_address1 sc_out sc_lv 4 signal 78 } 
	{ trottersLocal_V_2_9_ce1 sc_out sc_logic 1 signal 78 } 
	{ trottersLocal_V_2_9_q1 sc_in sc_lv 16 signal 78 } 
	{ trottersLocal_V_2_10_address0 sc_out sc_lv 4 signal 79 } 
	{ trottersLocal_V_2_10_ce0 sc_out sc_logic 1 signal 79 } 
	{ trottersLocal_V_2_10_q0 sc_in sc_lv 16 signal 79 } 
	{ trottersLocal_V_2_10_address1 sc_out sc_lv 4 signal 79 } 
	{ trottersLocal_V_2_10_ce1 sc_out sc_logic 1 signal 79 } 
	{ trottersLocal_V_2_10_q1 sc_in sc_lv 16 signal 79 } 
	{ trottersLocal_V_2_11_address0 sc_out sc_lv 4 signal 80 } 
	{ trottersLocal_V_2_11_ce0 sc_out sc_logic 1 signal 80 } 
	{ trottersLocal_V_2_11_q0 sc_in sc_lv 16 signal 80 } 
	{ trottersLocal_V_2_11_address1 sc_out sc_lv 4 signal 80 } 
	{ trottersLocal_V_2_11_ce1 sc_out sc_logic 1 signal 80 } 
	{ trottersLocal_V_2_11_q1 sc_in sc_lv 16 signal 80 } 
	{ trottersLocal_V_2_12_address0 sc_out sc_lv 4 signal 81 } 
	{ trottersLocal_V_2_12_ce0 sc_out sc_logic 1 signal 81 } 
	{ trottersLocal_V_2_12_q0 sc_in sc_lv 16 signal 81 } 
	{ trottersLocal_V_2_12_address1 sc_out sc_lv 4 signal 81 } 
	{ trottersLocal_V_2_12_ce1 sc_out sc_logic 1 signal 81 } 
	{ trottersLocal_V_2_12_q1 sc_in sc_lv 16 signal 81 } 
	{ trottersLocal_V_2_13_address0 sc_out sc_lv 4 signal 82 } 
	{ trottersLocal_V_2_13_ce0 sc_out sc_logic 1 signal 82 } 
	{ trottersLocal_V_2_13_q0 sc_in sc_lv 16 signal 82 } 
	{ trottersLocal_V_2_13_address1 sc_out sc_lv 4 signal 82 } 
	{ trottersLocal_V_2_13_ce1 sc_out sc_logic 1 signal 82 } 
	{ trottersLocal_V_2_13_q1 sc_in sc_lv 16 signal 82 } 
	{ trottersLocal_V_2_14_address0 sc_out sc_lv 4 signal 83 } 
	{ trottersLocal_V_2_14_ce0 sc_out sc_logic 1 signal 83 } 
	{ trottersLocal_V_2_14_q0 sc_in sc_lv 16 signal 83 } 
	{ trottersLocal_V_2_14_address1 sc_out sc_lv 4 signal 83 } 
	{ trottersLocal_V_2_14_ce1 sc_out sc_logic 1 signal 83 } 
	{ trottersLocal_V_2_14_q1 sc_in sc_lv 16 signal 83 } 
	{ trottersLocal_V_2_15_address0 sc_out sc_lv 4 signal 84 } 
	{ trottersLocal_V_2_15_ce0 sc_out sc_logic 1 signal 84 } 
	{ trottersLocal_V_2_15_q0 sc_in sc_lv 16 signal 84 } 
	{ trottersLocal_V_2_15_address1 sc_out sc_lv 4 signal 84 } 
	{ trottersLocal_V_2_15_ce1 sc_out sc_logic 1 signal 84 } 
	{ trottersLocal_V_2_15_q1 sc_in sc_lv 16 signal 84 } 
	{ JcoupLocal_2_0_address0 sc_out sc_lv 4 signal 85 } 
	{ JcoupLocal_2_0_ce0 sc_out sc_logic 1 signal 85 } 
	{ JcoupLocal_2_0_q0 sc_in sc_lv 512 signal 85 } 
	{ JcoupLocal_2_0_address1 sc_out sc_lv 4 signal 85 } 
	{ JcoupLocal_2_0_ce1 sc_out sc_logic 1 signal 85 } 
	{ JcoupLocal_2_0_q1 sc_in sc_lv 512 signal 85 } 
	{ JcoupLocal_2_1_address0 sc_out sc_lv 4 signal 86 } 
	{ JcoupLocal_2_1_ce0 sc_out sc_logic 1 signal 86 } 
	{ JcoupLocal_2_1_q0 sc_in sc_lv 512 signal 86 } 
	{ JcoupLocal_2_1_address1 sc_out sc_lv 4 signal 86 } 
	{ JcoupLocal_2_1_ce1 sc_out sc_logic 1 signal 86 } 
	{ JcoupLocal_2_1_q1 sc_in sc_lv 512 signal 86 } 
	{ JcoupLocal_2_2_address0 sc_out sc_lv 4 signal 87 } 
	{ JcoupLocal_2_2_ce0 sc_out sc_logic 1 signal 87 } 
	{ JcoupLocal_2_2_q0 sc_in sc_lv 512 signal 87 } 
	{ JcoupLocal_2_2_address1 sc_out sc_lv 4 signal 87 } 
	{ JcoupLocal_2_2_ce1 sc_out sc_logic 1 signal 87 } 
	{ JcoupLocal_2_2_q1 sc_in sc_lv 512 signal 87 } 
	{ JcoupLocal_2_3_address0 sc_out sc_lv 4 signal 88 } 
	{ JcoupLocal_2_3_ce0 sc_out sc_logic 1 signal 88 } 
	{ JcoupLocal_2_3_q0 sc_in sc_lv 512 signal 88 } 
	{ JcoupLocal_2_3_address1 sc_out sc_lv 4 signal 88 } 
	{ JcoupLocal_2_3_ce1 sc_out sc_logic 1 signal 88 } 
	{ JcoupLocal_2_3_q1 sc_in sc_lv 512 signal 88 } 
	{ JcoupLocal_2_4_address0 sc_out sc_lv 4 signal 89 } 
	{ JcoupLocal_2_4_ce0 sc_out sc_logic 1 signal 89 } 
	{ JcoupLocal_2_4_q0 sc_in sc_lv 512 signal 89 } 
	{ JcoupLocal_2_4_address1 sc_out sc_lv 4 signal 89 } 
	{ JcoupLocal_2_4_ce1 sc_out sc_logic 1 signal 89 } 
	{ JcoupLocal_2_4_q1 sc_in sc_lv 512 signal 89 } 
	{ JcoupLocal_2_5_address0 sc_out sc_lv 4 signal 90 } 
	{ JcoupLocal_2_5_ce0 sc_out sc_logic 1 signal 90 } 
	{ JcoupLocal_2_5_q0 sc_in sc_lv 512 signal 90 } 
	{ JcoupLocal_2_5_address1 sc_out sc_lv 4 signal 90 } 
	{ JcoupLocal_2_5_ce1 sc_out sc_logic 1 signal 90 } 
	{ JcoupLocal_2_5_q1 sc_in sc_lv 512 signal 90 } 
	{ JcoupLocal_2_6_address0 sc_out sc_lv 4 signal 91 } 
	{ JcoupLocal_2_6_ce0 sc_out sc_logic 1 signal 91 } 
	{ JcoupLocal_2_6_q0 sc_in sc_lv 512 signal 91 } 
	{ JcoupLocal_2_6_address1 sc_out sc_lv 4 signal 91 } 
	{ JcoupLocal_2_6_ce1 sc_out sc_logic 1 signal 91 } 
	{ JcoupLocal_2_6_q1 sc_in sc_lv 512 signal 91 } 
	{ JcoupLocal_2_7_address0 sc_out sc_lv 4 signal 92 } 
	{ JcoupLocal_2_7_ce0 sc_out sc_logic 1 signal 92 } 
	{ JcoupLocal_2_7_q0 sc_in sc_lv 512 signal 92 } 
	{ JcoupLocal_2_7_address1 sc_out sc_lv 4 signal 92 } 
	{ JcoupLocal_2_7_ce1 sc_out sc_logic 1 signal 92 } 
	{ JcoupLocal_2_7_q1 sc_in sc_lv 512 signal 92 } 
	{ JcoupLocal_2_8_address0 sc_out sc_lv 4 signal 93 } 
	{ JcoupLocal_2_8_ce0 sc_out sc_logic 1 signal 93 } 
	{ JcoupLocal_2_8_q0 sc_in sc_lv 512 signal 93 } 
	{ JcoupLocal_2_8_address1 sc_out sc_lv 4 signal 93 } 
	{ JcoupLocal_2_8_ce1 sc_out sc_logic 1 signal 93 } 
	{ JcoupLocal_2_8_q1 sc_in sc_lv 512 signal 93 } 
	{ JcoupLocal_2_9_address0 sc_out sc_lv 4 signal 94 } 
	{ JcoupLocal_2_9_ce0 sc_out sc_logic 1 signal 94 } 
	{ JcoupLocal_2_9_q0 sc_in sc_lv 512 signal 94 } 
	{ JcoupLocal_2_9_address1 sc_out sc_lv 4 signal 94 } 
	{ JcoupLocal_2_9_ce1 sc_out sc_logic 1 signal 94 } 
	{ JcoupLocal_2_9_q1 sc_in sc_lv 512 signal 94 } 
	{ JcoupLocal_2_10_address0 sc_out sc_lv 4 signal 95 } 
	{ JcoupLocal_2_10_ce0 sc_out sc_logic 1 signal 95 } 
	{ JcoupLocal_2_10_q0 sc_in sc_lv 512 signal 95 } 
	{ JcoupLocal_2_10_address1 sc_out sc_lv 4 signal 95 } 
	{ JcoupLocal_2_10_ce1 sc_out sc_logic 1 signal 95 } 
	{ JcoupLocal_2_10_q1 sc_in sc_lv 512 signal 95 } 
	{ JcoupLocal_2_11_address0 sc_out sc_lv 4 signal 96 } 
	{ JcoupLocal_2_11_ce0 sc_out sc_logic 1 signal 96 } 
	{ JcoupLocal_2_11_q0 sc_in sc_lv 512 signal 96 } 
	{ JcoupLocal_2_11_address1 sc_out sc_lv 4 signal 96 } 
	{ JcoupLocal_2_11_ce1 sc_out sc_logic 1 signal 96 } 
	{ JcoupLocal_2_11_q1 sc_in sc_lv 512 signal 96 } 
	{ JcoupLocal_2_12_address0 sc_out sc_lv 4 signal 97 } 
	{ JcoupLocal_2_12_ce0 sc_out sc_logic 1 signal 97 } 
	{ JcoupLocal_2_12_q0 sc_in sc_lv 512 signal 97 } 
	{ JcoupLocal_2_12_address1 sc_out sc_lv 4 signal 97 } 
	{ JcoupLocal_2_12_ce1 sc_out sc_logic 1 signal 97 } 
	{ JcoupLocal_2_12_q1 sc_in sc_lv 512 signal 97 } 
	{ JcoupLocal_2_13_address0 sc_out sc_lv 4 signal 98 } 
	{ JcoupLocal_2_13_ce0 sc_out sc_logic 1 signal 98 } 
	{ JcoupLocal_2_13_q0 sc_in sc_lv 512 signal 98 } 
	{ JcoupLocal_2_13_address1 sc_out sc_lv 4 signal 98 } 
	{ JcoupLocal_2_13_ce1 sc_out sc_logic 1 signal 98 } 
	{ JcoupLocal_2_13_q1 sc_in sc_lv 512 signal 98 } 
	{ JcoupLocal_2_14_address0 sc_out sc_lv 4 signal 99 } 
	{ JcoupLocal_2_14_ce0 sc_out sc_logic 1 signal 99 } 
	{ JcoupLocal_2_14_q0 sc_in sc_lv 512 signal 99 } 
	{ JcoupLocal_2_14_address1 sc_out sc_lv 4 signal 99 } 
	{ JcoupLocal_2_14_ce1 sc_out sc_logic 1 signal 99 } 
	{ JcoupLocal_2_14_q1 sc_in sc_lv 512 signal 99 } 
	{ JcoupLocal_2_15_address0 sc_out sc_lv 4 signal 100 } 
	{ JcoupLocal_2_15_ce0 sc_out sc_logic 1 signal 100 } 
	{ JcoupLocal_2_15_q0 sc_in sc_lv 512 signal 100 } 
	{ JcoupLocal_2_15_address1 sc_out sc_lv 4 signal 100 } 
	{ JcoupLocal_2_15_ce1 sc_out sc_logic 1 signal 100 } 
	{ JcoupLocal_2_15_q1 sc_in sc_lv 512 signal 100 } 
	{ trottersLocal_V_3_0_address0 sc_out sc_lv 4 signal 101 } 
	{ trottersLocal_V_3_0_ce0 sc_out sc_logic 1 signal 101 } 
	{ trottersLocal_V_3_0_q0 sc_in sc_lv 16 signal 101 } 
	{ trottersLocal_V_3_0_address1 sc_out sc_lv 4 signal 101 } 
	{ trottersLocal_V_3_0_ce1 sc_out sc_logic 1 signal 101 } 
	{ trottersLocal_V_3_0_q1 sc_in sc_lv 16 signal 101 } 
	{ trottersLocal_V_3_1_address0 sc_out sc_lv 4 signal 102 } 
	{ trottersLocal_V_3_1_ce0 sc_out sc_logic 1 signal 102 } 
	{ trottersLocal_V_3_1_q0 sc_in sc_lv 16 signal 102 } 
	{ trottersLocal_V_3_1_address1 sc_out sc_lv 4 signal 102 } 
	{ trottersLocal_V_3_1_ce1 sc_out sc_logic 1 signal 102 } 
	{ trottersLocal_V_3_1_q1 sc_in sc_lv 16 signal 102 } 
	{ trottersLocal_V_3_2_address0 sc_out sc_lv 4 signal 103 } 
	{ trottersLocal_V_3_2_ce0 sc_out sc_logic 1 signal 103 } 
	{ trottersLocal_V_3_2_q0 sc_in sc_lv 16 signal 103 } 
	{ trottersLocal_V_3_2_address1 sc_out sc_lv 4 signal 103 } 
	{ trottersLocal_V_3_2_ce1 sc_out sc_logic 1 signal 103 } 
	{ trottersLocal_V_3_2_q1 sc_in sc_lv 16 signal 103 } 
	{ trottersLocal_V_3_3_address0 sc_out sc_lv 4 signal 104 } 
	{ trottersLocal_V_3_3_ce0 sc_out sc_logic 1 signal 104 } 
	{ trottersLocal_V_3_3_q0 sc_in sc_lv 16 signal 104 } 
	{ trottersLocal_V_3_3_address1 sc_out sc_lv 4 signal 104 } 
	{ trottersLocal_V_3_3_ce1 sc_out sc_logic 1 signal 104 } 
	{ trottersLocal_V_3_3_q1 sc_in sc_lv 16 signal 104 } 
	{ trottersLocal_V_3_4_address0 sc_out sc_lv 4 signal 105 } 
	{ trottersLocal_V_3_4_ce0 sc_out sc_logic 1 signal 105 } 
	{ trottersLocal_V_3_4_q0 sc_in sc_lv 16 signal 105 } 
	{ trottersLocal_V_3_4_address1 sc_out sc_lv 4 signal 105 } 
	{ trottersLocal_V_3_4_ce1 sc_out sc_logic 1 signal 105 } 
	{ trottersLocal_V_3_4_q1 sc_in sc_lv 16 signal 105 } 
	{ trottersLocal_V_3_5_address0 sc_out sc_lv 4 signal 106 } 
	{ trottersLocal_V_3_5_ce0 sc_out sc_logic 1 signal 106 } 
	{ trottersLocal_V_3_5_q0 sc_in sc_lv 16 signal 106 } 
	{ trottersLocal_V_3_5_address1 sc_out sc_lv 4 signal 106 } 
	{ trottersLocal_V_3_5_ce1 sc_out sc_logic 1 signal 106 } 
	{ trottersLocal_V_3_5_q1 sc_in sc_lv 16 signal 106 } 
	{ trottersLocal_V_3_6_address0 sc_out sc_lv 4 signal 107 } 
	{ trottersLocal_V_3_6_ce0 sc_out sc_logic 1 signal 107 } 
	{ trottersLocal_V_3_6_q0 sc_in sc_lv 16 signal 107 } 
	{ trottersLocal_V_3_6_address1 sc_out sc_lv 4 signal 107 } 
	{ trottersLocal_V_3_6_ce1 sc_out sc_logic 1 signal 107 } 
	{ trottersLocal_V_3_6_q1 sc_in sc_lv 16 signal 107 } 
	{ trottersLocal_V_3_7_address0 sc_out sc_lv 4 signal 108 } 
	{ trottersLocal_V_3_7_ce0 sc_out sc_logic 1 signal 108 } 
	{ trottersLocal_V_3_7_q0 sc_in sc_lv 16 signal 108 } 
	{ trottersLocal_V_3_7_address1 sc_out sc_lv 4 signal 108 } 
	{ trottersLocal_V_3_7_ce1 sc_out sc_logic 1 signal 108 } 
	{ trottersLocal_V_3_7_q1 sc_in sc_lv 16 signal 108 } 
	{ trottersLocal_V_3_8_address0 sc_out sc_lv 4 signal 109 } 
	{ trottersLocal_V_3_8_ce0 sc_out sc_logic 1 signal 109 } 
	{ trottersLocal_V_3_8_q0 sc_in sc_lv 16 signal 109 } 
	{ trottersLocal_V_3_8_address1 sc_out sc_lv 4 signal 109 } 
	{ trottersLocal_V_3_8_ce1 sc_out sc_logic 1 signal 109 } 
	{ trottersLocal_V_3_8_q1 sc_in sc_lv 16 signal 109 } 
	{ trottersLocal_V_3_9_address0 sc_out sc_lv 4 signal 110 } 
	{ trottersLocal_V_3_9_ce0 sc_out sc_logic 1 signal 110 } 
	{ trottersLocal_V_3_9_q0 sc_in sc_lv 16 signal 110 } 
	{ trottersLocal_V_3_9_address1 sc_out sc_lv 4 signal 110 } 
	{ trottersLocal_V_3_9_ce1 sc_out sc_logic 1 signal 110 } 
	{ trottersLocal_V_3_9_q1 sc_in sc_lv 16 signal 110 } 
	{ trottersLocal_V_3_10_address0 sc_out sc_lv 4 signal 111 } 
	{ trottersLocal_V_3_10_ce0 sc_out sc_logic 1 signal 111 } 
	{ trottersLocal_V_3_10_q0 sc_in sc_lv 16 signal 111 } 
	{ trottersLocal_V_3_10_address1 sc_out sc_lv 4 signal 111 } 
	{ trottersLocal_V_3_10_ce1 sc_out sc_logic 1 signal 111 } 
	{ trottersLocal_V_3_10_q1 sc_in sc_lv 16 signal 111 } 
	{ trottersLocal_V_3_11_address0 sc_out sc_lv 4 signal 112 } 
	{ trottersLocal_V_3_11_ce0 sc_out sc_logic 1 signal 112 } 
	{ trottersLocal_V_3_11_q0 sc_in sc_lv 16 signal 112 } 
	{ trottersLocal_V_3_11_address1 sc_out sc_lv 4 signal 112 } 
	{ trottersLocal_V_3_11_ce1 sc_out sc_logic 1 signal 112 } 
	{ trottersLocal_V_3_11_q1 sc_in sc_lv 16 signal 112 } 
	{ trottersLocal_V_3_12_address0 sc_out sc_lv 4 signal 113 } 
	{ trottersLocal_V_3_12_ce0 sc_out sc_logic 1 signal 113 } 
	{ trottersLocal_V_3_12_q0 sc_in sc_lv 16 signal 113 } 
	{ trottersLocal_V_3_12_address1 sc_out sc_lv 4 signal 113 } 
	{ trottersLocal_V_3_12_ce1 sc_out sc_logic 1 signal 113 } 
	{ trottersLocal_V_3_12_q1 sc_in sc_lv 16 signal 113 } 
	{ trottersLocal_V_3_13_address0 sc_out sc_lv 4 signal 114 } 
	{ trottersLocal_V_3_13_ce0 sc_out sc_logic 1 signal 114 } 
	{ trottersLocal_V_3_13_q0 sc_in sc_lv 16 signal 114 } 
	{ trottersLocal_V_3_13_address1 sc_out sc_lv 4 signal 114 } 
	{ trottersLocal_V_3_13_ce1 sc_out sc_logic 1 signal 114 } 
	{ trottersLocal_V_3_13_q1 sc_in sc_lv 16 signal 114 } 
	{ trottersLocal_V_3_14_address0 sc_out sc_lv 4 signal 115 } 
	{ trottersLocal_V_3_14_ce0 sc_out sc_logic 1 signal 115 } 
	{ trottersLocal_V_3_14_q0 sc_in sc_lv 16 signal 115 } 
	{ trottersLocal_V_3_14_address1 sc_out sc_lv 4 signal 115 } 
	{ trottersLocal_V_3_14_ce1 sc_out sc_logic 1 signal 115 } 
	{ trottersLocal_V_3_14_q1 sc_in sc_lv 16 signal 115 } 
	{ trottersLocal_V_3_15_address0 sc_out sc_lv 4 signal 116 } 
	{ trottersLocal_V_3_15_ce0 sc_out sc_logic 1 signal 116 } 
	{ trottersLocal_V_3_15_q0 sc_in sc_lv 16 signal 116 } 
	{ trottersLocal_V_3_15_address1 sc_out sc_lv 4 signal 116 } 
	{ trottersLocal_V_3_15_ce1 sc_out sc_logic 1 signal 116 } 
	{ trottersLocal_V_3_15_q1 sc_in sc_lv 16 signal 116 } 
	{ JcoupLocal_3_0_address0 sc_out sc_lv 4 signal 117 } 
	{ JcoupLocal_3_0_ce0 sc_out sc_logic 1 signal 117 } 
	{ JcoupLocal_3_0_q0 sc_in sc_lv 512 signal 117 } 
	{ JcoupLocal_3_0_address1 sc_out sc_lv 4 signal 117 } 
	{ JcoupLocal_3_0_ce1 sc_out sc_logic 1 signal 117 } 
	{ JcoupLocal_3_0_q1 sc_in sc_lv 512 signal 117 } 
	{ JcoupLocal_3_1_address0 sc_out sc_lv 4 signal 118 } 
	{ JcoupLocal_3_1_ce0 sc_out sc_logic 1 signal 118 } 
	{ JcoupLocal_3_1_q0 sc_in sc_lv 512 signal 118 } 
	{ JcoupLocal_3_1_address1 sc_out sc_lv 4 signal 118 } 
	{ JcoupLocal_3_1_ce1 sc_out sc_logic 1 signal 118 } 
	{ JcoupLocal_3_1_q1 sc_in sc_lv 512 signal 118 } 
	{ JcoupLocal_3_2_address0 sc_out sc_lv 4 signal 119 } 
	{ JcoupLocal_3_2_ce0 sc_out sc_logic 1 signal 119 } 
	{ JcoupLocal_3_2_q0 sc_in sc_lv 512 signal 119 } 
	{ JcoupLocal_3_2_address1 sc_out sc_lv 4 signal 119 } 
	{ JcoupLocal_3_2_ce1 sc_out sc_logic 1 signal 119 } 
	{ JcoupLocal_3_2_q1 sc_in sc_lv 512 signal 119 } 
	{ JcoupLocal_3_3_address0 sc_out sc_lv 4 signal 120 } 
	{ JcoupLocal_3_3_ce0 sc_out sc_logic 1 signal 120 } 
	{ JcoupLocal_3_3_q0 sc_in sc_lv 512 signal 120 } 
	{ JcoupLocal_3_3_address1 sc_out sc_lv 4 signal 120 } 
	{ JcoupLocal_3_3_ce1 sc_out sc_logic 1 signal 120 } 
	{ JcoupLocal_3_3_q1 sc_in sc_lv 512 signal 120 } 
	{ JcoupLocal_3_4_address0 sc_out sc_lv 4 signal 121 } 
	{ JcoupLocal_3_4_ce0 sc_out sc_logic 1 signal 121 } 
	{ JcoupLocal_3_4_q0 sc_in sc_lv 512 signal 121 } 
	{ JcoupLocal_3_4_address1 sc_out sc_lv 4 signal 121 } 
	{ JcoupLocal_3_4_ce1 sc_out sc_logic 1 signal 121 } 
	{ JcoupLocal_3_4_q1 sc_in sc_lv 512 signal 121 } 
	{ JcoupLocal_3_5_address0 sc_out sc_lv 4 signal 122 } 
	{ JcoupLocal_3_5_ce0 sc_out sc_logic 1 signal 122 } 
	{ JcoupLocal_3_5_q0 sc_in sc_lv 512 signal 122 } 
	{ JcoupLocal_3_5_address1 sc_out sc_lv 4 signal 122 } 
	{ JcoupLocal_3_5_ce1 sc_out sc_logic 1 signal 122 } 
	{ JcoupLocal_3_5_q1 sc_in sc_lv 512 signal 122 } 
	{ JcoupLocal_3_6_address0 sc_out sc_lv 4 signal 123 } 
	{ JcoupLocal_3_6_ce0 sc_out sc_logic 1 signal 123 } 
	{ JcoupLocal_3_6_q0 sc_in sc_lv 512 signal 123 } 
	{ JcoupLocal_3_6_address1 sc_out sc_lv 4 signal 123 } 
	{ JcoupLocal_3_6_ce1 sc_out sc_logic 1 signal 123 } 
	{ JcoupLocal_3_6_q1 sc_in sc_lv 512 signal 123 } 
	{ JcoupLocal_3_7_address0 sc_out sc_lv 4 signal 124 } 
	{ JcoupLocal_3_7_ce0 sc_out sc_logic 1 signal 124 } 
	{ JcoupLocal_3_7_q0 sc_in sc_lv 512 signal 124 } 
	{ JcoupLocal_3_7_address1 sc_out sc_lv 4 signal 124 } 
	{ JcoupLocal_3_7_ce1 sc_out sc_logic 1 signal 124 } 
	{ JcoupLocal_3_7_q1 sc_in sc_lv 512 signal 124 } 
	{ JcoupLocal_3_8_address0 sc_out sc_lv 4 signal 125 } 
	{ JcoupLocal_3_8_ce0 sc_out sc_logic 1 signal 125 } 
	{ JcoupLocal_3_8_q0 sc_in sc_lv 512 signal 125 } 
	{ JcoupLocal_3_8_address1 sc_out sc_lv 4 signal 125 } 
	{ JcoupLocal_3_8_ce1 sc_out sc_logic 1 signal 125 } 
	{ JcoupLocal_3_8_q1 sc_in sc_lv 512 signal 125 } 
	{ JcoupLocal_3_9_address0 sc_out sc_lv 4 signal 126 } 
	{ JcoupLocal_3_9_ce0 sc_out sc_logic 1 signal 126 } 
	{ JcoupLocal_3_9_q0 sc_in sc_lv 512 signal 126 } 
	{ JcoupLocal_3_9_address1 sc_out sc_lv 4 signal 126 } 
	{ JcoupLocal_3_9_ce1 sc_out sc_logic 1 signal 126 } 
	{ JcoupLocal_3_9_q1 sc_in sc_lv 512 signal 126 } 
	{ JcoupLocal_3_10_address0 sc_out sc_lv 4 signal 127 } 
	{ JcoupLocal_3_10_ce0 sc_out sc_logic 1 signal 127 } 
	{ JcoupLocal_3_10_q0 sc_in sc_lv 512 signal 127 } 
	{ JcoupLocal_3_10_address1 sc_out sc_lv 4 signal 127 } 
	{ JcoupLocal_3_10_ce1 sc_out sc_logic 1 signal 127 } 
	{ JcoupLocal_3_10_q1 sc_in sc_lv 512 signal 127 } 
	{ JcoupLocal_3_11_address0 sc_out sc_lv 4 signal 128 } 
	{ JcoupLocal_3_11_ce0 sc_out sc_logic 1 signal 128 } 
	{ JcoupLocal_3_11_q0 sc_in sc_lv 512 signal 128 } 
	{ JcoupLocal_3_11_address1 sc_out sc_lv 4 signal 128 } 
	{ JcoupLocal_3_11_ce1 sc_out sc_logic 1 signal 128 } 
	{ JcoupLocal_3_11_q1 sc_in sc_lv 512 signal 128 } 
	{ JcoupLocal_3_12_address0 sc_out sc_lv 4 signal 129 } 
	{ JcoupLocal_3_12_ce0 sc_out sc_logic 1 signal 129 } 
	{ JcoupLocal_3_12_q0 sc_in sc_lv 512 signal 129 } 
	{ JcoupLocal_3_12_address1 sc_out sc_lv 4 signal 129 } 
	{ JcoupLocal_3_12_ce1 sc_out sc_logic 1 signal 129 } 
	{ JcoupLocal_3_12_q1 sc_in sc_lv 512 signal 129 } 
	{ JcoupLocal_3_13_address0 sc_out sc_lv 4 signal 130 } 
	{ JcoupLocal_3_13_ce0 sc_out sc_logic 1 signal 130 } 
	{ JcoupLocal_3_13_q0 sc_in sc_lv 512 signal 130 } 
	{ JcoupLocal_3_13_address1 sc_out sc_lv 4 signal 130 } 
	{ JcoupLocal_3_13_ce1 sc_out sc_logic 1 signal 130 } 
	{ JcoupLocal_3_13_q1 sc_in sc_lv 512 signal 130 } 
	{ JcoupLocal_3_14_address0 sc_out sc_lv 4 signal 131 } 
	{ JcoupLocal_3_14_ce0 sc_out sc_logic 1 signal 131 } 
	{ JcoupLocal_3_14_q0 sc_in sc_lv 512 signal 131 } 
	{ JcoupLocal_3_14_address1 sc_out sc_lv 4 signal 131 } 
	{ JcoupLocal_3_14_ce1 sc_out sc_logic 1 signal 131 } 
	{ JcoupLocal_3_14_q1 sc_in sc_lv 512 signal 131 } 
	{ JcoupLocal_3_15_address0 sc_out sc_lv 4 signal 132 } 
	{ JcoupLocal_3_15_ce0 sc_out sc_logic 1 signal 132 } 
	{ JcoupLocal_3_15_q0 sc_in sc_lv 512 signal 132 } 
	{ JcoupLocal_3_15_address1 sc_out sc_lv 4 signal 132 } 
	{ JcoupLocal_3_15_ce1 sc_out sc_logic 1 signal 132 } 
	{ JcoupLocal_3_15_q1 sc_in sc_lv 512 signal 132 } 
	{ dH_3_3_out sc_out sc_lv 32 signal 133 } 
	{ dH_3_3_out_ap_vld sc_out sc_logic 1 outvld 133 } 
	{ dH_2_3_out sc_out sc_lv 32 signal 134 } 
	{ dH_2_3_out_ap_vld sc_out sc_logic 1 outvld 134 } 
	{ dH_1_3_out sc_out sc_lv 32 signal 135 } 
	{ dH_1_3_out_ap_vld sc_out sc_logic 1 outvld 135 } 
	{ dH_0_3_out sc_out sc_lv 32 signal 136 } 
	{ dH_0_3_out_ap_vld sc_out sc_logic 1 outvld 136 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "dH_3_1_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dH_3_1_reload", "role": "default" }} , 
 	{ "name": "dH_2_1_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dH_2_1_reload", "role": "default" }} , 
 	{ "name": "dH_1_1_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dH_1_1_reload", "role": "default" }} , 
 	{ "name": "dH_0_1_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dH_0_1_reload", "role": "default" }} , 
 	{ "name": "stage", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "stage", "role": "default" }} , 
 	{ "name": "trottersLocal_V_0_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_0_0", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_0_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_0_0", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_0_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_0_0", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_0_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_0_0", "role": "address1" }} , 
 	{ "name": "trottersLocal_V_0_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_0_0", "role": "ce1" }} , 
 	{ "name": "trottersLocal_V_0_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_0_0", "role": "q1" }} , 
 	{ "name": "trottersLocal_V_0_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_0_1", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_0_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_0_1", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_0_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_0_1", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_0_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_0_1", "role": "address1" }} , 
 	{ "name": "trottersLocal_V_0_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_0_1", "role": "ce1" }} , 
 	{ "name": "trottersLocal_V_0_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_0_1", "role": "q1" }} , 
 	{ "name": "trottersLocal_V_0_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_0_2", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_0_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_0_2", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_0_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_0_2", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_0_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_0_2", "role": "address1" }} , 
 	{ "name": "trottersLocal_V_0_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_0_2", "role": "ce1" }} , 
 	{ "name": "trottersLocal_V_0_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_0_2", "role": "q1" }} , 
 	{ "name": "trottersLocal_V_0_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_0_3", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_0_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_0_3", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_0_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_0_3", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_0_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_0_3", "role": "address1" }} , 
 	{ "name": "trottersLocal_V_0_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_0_3", "role": "ce1" }} , 
 	{ "name": "trottersLocal_V_0_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_0_3", "role": "q1" }} , 
 	{ "name": "trottersLocal_V_0_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_0_4", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_0_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_0_4", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_0_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_0_4", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_0_4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_0_4", "role": "address1" }} , 
 	{ "name": "trottersLocal_V_0_4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_0_4", "role": "ce1" }} , 
 	{ "name": "trottersLocal_V_0_4_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_0_4", "role": "q1" }} , 
 	{ "name": "trottersLocal_V_0_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_0_5", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_0_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_0_5", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_0_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_0_5", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_0_5_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_0_5", "role": "address1" }} , 
 	{ "name": "trottersLocal_V_0_5_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_0_5", "role": "ce1" }} , 
 	{ "name": "trottersLocal_V_0_5_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_0_5", "role": "q1" }} , 
 	{ "name": "trottersLocal_V_0_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_0_6", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_0_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_0_6", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_0_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_0_6", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_0_6_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_0_6", "role": "address1" }} , 
 	{ "name": "trottersLocal_V_0_6_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_0_6", "role": "ce1" }} , 
 	{ "name": "trottersLocal_V_0_6_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_0_6", "role": "q1" }} , 
 	{ "name": "trottersLocal_V_0_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_0_7", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_0_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_0_7", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_0_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_0_7", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_0_7_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_0_7", "role": "address1" }} , 
 	{ "name": "trottersLocal_V_0_7_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_0_7", "role": "ce1" }} , 
 	{ "name": "trottersLocal_V_0_7_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_0_7", "role": "q1" }} , 
 	{ "name": "trottersLocal_V_0_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_0_8", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_0_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_0_8", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_0_8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_0_8", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_0_8_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_0_8", "role": "address1" }} , 
 	{ "name": "trottersLocal_V_0_8_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_0_8", "role": "ce1" }} , 
 	{ "name": "trottersLocal_V_0_8_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_0_8", "role": "q1" }} , 
 	{ "name": "trottersLocal_V_0_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_0_9", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_0_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_0_9", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_0_9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_0_9", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_0_9_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_0_9", "role": "address1" }} , 
 	{ "name": "trottersLocal_V_0_9_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_0_9", "role": "ce1" }} , 
 	{ "name": "trottersLocal_V_0_9_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_0_9", "role": "q1" }} , 
 	{ "name": "trottersLocal_V_0_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_0_10", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_0_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_0_10", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_0_10_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_0_10", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_0_10_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_0_10", "role": "address1" }} , 
 	{ "name": "trottersLocal_V_0_10_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_0_10", "role": "ce1" }} , 
 	{ "name": "trottersLocal_V_0_10_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_0_10", "role": "q1" }} , 
 	{ "name": "trottersLocal_V_0_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_0_11", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_0_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_0_11", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_0_11_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_0_11", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_0_11_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_0_11", "role": "address1" }} , 
 	{ "name": "trottersLocal_V_0_11_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_0_11", "role": "ce1" }} , 
 	{ "name": "trottersLocal_V_0_11_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_0_11", "role": "q1" }} , 
 	{ "name": "trottersLocal_V_0_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_0_12", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_0_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_0_12", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_0_12_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_0_12", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_0_12_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_0_12", "role": "address1" }} , 
 	{ "name": "trottersLocal_V_0_12_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_0_12", "role": "ce1" }} , 
 	{ "name": "trottersLocal_V_0_12_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_0_12", "role": "q1" }} , 
 	{ "name": "trottersLocal_V_0_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_0_13", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_0_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_0_13", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_0_13_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_0_13", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_0_13_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_0_13", "role": "address1" }} , 
 	{ "name": "trottersLocal_V_0_13_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_0_13", "role": "ce1" }} , 
 	{ "name": "trottersLocal_V_0_13_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_0_13", "role": "q1" }} , 
 	{ "name": "trottersLocal_V_0_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_0_14", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_0_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_0_14", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_0_14_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_0_14", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_0_14_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_0_14", "role": "address1" }} , 
 	{ "name": "trottersLocal_V_0_14_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_0_14", "role": "ce1" }} , 
 	{ "name": "trottersLocal_V_0_14_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_0_14", "role": "q1" }} , 
 	{ "name": "trottersLocal_V_0_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_0_15", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_0_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_0_15", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_0_15_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_0_15", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_0_15_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_0_15", "role": "address1" }} , 
 	{ "name": "trottersLocal_V_0_15_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_0_15", "role": "ce1" }} , 
 	{ "name": "trottersLocal_V_0_15_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_0_15", "role": "q1" }} , 
 	{ "name": "JcoupLocal_0_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_0_0", "role": "address0" }} , 
 	{ "name": "JcoupLocal_0_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_0_0", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_0_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_0_0", "role": "q0" }} , 
 	{ "name": "JcoupLocal_0_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_0_0", "role": "address1" }} , 
 	{ "name": "JcoupLocal_0_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_0_0", "role": "ce1" }} , 
 	{ "name": "JcoupLocal_0_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_0_0", "role": "q1" }} , 
 	{ "name": "JcoupLocal_0_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_0_1", "role": "address0" }} , 
 	{ "name": "JcoupLocal_0_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_0_1", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_0_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_0_1", "role": "q0" }} , 
 	{ "name": "JcoupLocal_0_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_0_1", "role": "address1" }} , 
 	{ "name": "JcoupLocal_0_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_0_1", "role": "ce1" }} , 
 	{ "name": "JcoupLocal_0_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_0_1", "role": "q1" }} , 
 	{ "name": "JcoupLocal_0_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_0_2", "role": "address0" }} , 
 	{ "name": "JcoupLocal_0_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_0_2", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_0_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_0_2", "role": "q0" }} , 
 	{ "name": "JcoupLocal_0_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_0_2", "role": "address1" }} , 
 	{ "name": "JcoupLocal_0_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_0_2", "role": "ce1" }} , 
 	{ "name": "JcoupLocal_0_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_0_2", "role": "q1" }} , 
 	{ "name": "JcoupLocal_0_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_0_3", "role": "address0" }} , 
 	{ "name": "JcoupLocal_0_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_0_3", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_0_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_0_3", "role": "q0" }} , 
 	{ "name": "JcoupLocal_0_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_0_3", "role": "address1" }} , 
 	{ "name": "JcoupLocal_0_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_0_3", "role": "ce1" }} , 
 	{ "name": "JcoupLocal_0_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_0_3", "role": "q1" }} , 
 	{ "name": "JcoupLocal_0_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_0_4", "role": "address0" }} , 
 	{ "name": "JcoupLocal_0_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_0_4", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_0_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_0_4", "role": "q0" }} , 
 	{ "name": "JcoupLocal_0_4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_0_4", "role": "address1" }} , 
 	{ "name": "JcoupLocal_0_4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_0_4", "role": "ce1" }} , 
 	{ "name": "JcoupLocal_0_4_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_0_4", "role": "q1" }} , 
 	{ "name": "JcoupLocal_0_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_0_5", "role": "address0" }} , 
 	{ "name": "JcoupLocal_0_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_0_5", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_0_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_0_5", "role": "q0" }} , 
 	{ "name": "JcoupLocal_0_5_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_0_5", "role": "address1" }} , 
 	{ "name": "JcoupLocal_0_5_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_0_5", "role": "ce1" }} , 
 	{ "name": "JcoupLocal_0_5_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_0_5", "role": "q1" }} , 
 	{ "name": "JcoupLocal_0_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_0_6", "role": "address0" }} , 
 	{ "name": "JcoupLocal_0_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_0_6", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_0_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_0_6", "role": "q0" }} , 
 	{ "name": "JcoupLocal_0_6_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_0_6", "role": "address1" }} , 
 	{ "name": "JcoupLocal_0_6_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_0_6", "role": "ce1" }} , 
 	{ "name": "JcoupLocal_0_6_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_0_6", "role": "q1" }} , 
 	{ "name": "JcoupLocal_0_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_0_7", "role": "address0" }} , 
 	{ "name": "JcoupLocal_0_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_0_7", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_0_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_0_7", "role": "q0" }} , 
 	{ "name": "JcoupLocal_0_7_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_0_7", "role": "address1" }} , 
 	{ "name": "JcoupLocal_0_7_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_0_7", "role": "ce1" }} , 
 	{ "name": "JcoupLocal_0_7_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_0_7", "role": "q1" }} , 
 	{ "name": "JcoupLocal_0_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_0_8", "role": "address0" }} , 
 	{ "name": "JcoupLocal_0_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_0_8", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_0_8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_0_8", "role": "q0" }} , 
 	{ "name": "JcoupLocal_0_8_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_0_8", "role": "address1" }} , 
 	{ "name": "JcoupLocal_0_8_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_0_8", "role": "ce1" }} , 
 	{ "name": "JcoupLocal_0_8_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_0_8", "role": "q1" }} , 
 	{ "name": "JcoupLocal_0_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_0_9", "role": "address0" }} , 
 	{ "name": "JcoupLocal_0_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_0_9", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_0_9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_0_9", "role": "q0" }} , 
 	{ "name": "JcoupLocal_0_9_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_0_9", "role": "address1" }} , 
 	{ "name": "JcoupLocal_0_9_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_0_9", "role": "ce1" }} , 
 	{ "name": "JcoupLocal_0_9_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_0_9", "role": "q1" }} , 
 	{ "name": "JcoupLocal_0_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_0_10", "role": "address0" }} , 
 	{ "name": "JcoupLocal_0_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_0_10", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_0_10_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_0_10", "role": "q0" }} , 
 	{ "name": "JcoupLocal_0_10_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_0_10", "role": "address1" }} , 
 	{ "name": "JcoupLocal_0_10_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_0_10", "role": "ce1" }} , 
 	{ "name": "JcoupLocal_0_10_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_0_10", "role": "q1" }} , 
 	{ "name": "JcoupLocal_0_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_0_11", "role": "address0" }} , 
 	{ "name": "JcoupLocal_0_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_0_11", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_0_11_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_0_11", "role": "q0" }} , 
 	{ "name": "JcoupLocal_0_11_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_0_11", "role": "address1" }} , 
 	{ "name": "JcoupLocal_0_11_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_0_11", "role": "ce1" }} , 
 	{ "name": "JcoupLocal_0_11_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_0_11", "role": "q1" }} , 
 	{ "name": "JcoupLocal_0_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_0_12", "role": "address0" }} , 
 	{ "name": "JcoupLocal_0_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_0_12", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_0_12_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_0_12", "role": "q0" }} , 
 	{ "name": "JcoupLocal_0_12_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_0_12", "role": "address1" }} , 
 	{ "name": "JcoupLocal_0_12_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_0_12", "role": "ce1" }} , 
 	{ "name": "JcoupLocal_0_12_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_0_12", "role": "q1" }} , 
 	{ "name": "JcoupLocal_0_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_0_13", "role": "address0" }} , 
 	{ "name": "JcoupLocal_0_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_0_13", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_0_13_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_0_13", "role": "q0" }} , 
 	{ "name": "JcoupLocal_0_13_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_0_13", "role": "address1" }} , 
 	{ "name": "JcoupLocal_0_13_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_0_13", "role": "ce1" }} , 
 	{ "name": "JcoupLocal_0_13_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_0_13", "role": "q1" }} , 
 	{ "name": "JcoupLocal_0_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_0_14", "role": "address0" }} , 
 	{ "name": "JcoupLocal_0_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_0_14", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_0_14_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_0_14", "role": "q0" }} , 
 	{ "name": "JcoupLocal_0_14_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_0_14", "role": "address1" }} , 
 	{ "name": "JcoupLocal_0_14_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_0_14", "role": "ce1" }} , 
 	{ "name": "JcoupLocal_0_14_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_0_14", "role": "q1" }} , 
 	{ "name": "JcoupLocal_0_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_0_15", "role": "address0" }} , 
 	{ "name": "JcoupLocal_0_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_0_15", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_0_15_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_0_15", "role": "q0" }} , 
 	{ "name": "JcoupLocal_0_15_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_0_15", "role": "address1" }} , 
 	{ "name": "JcoupLocal_0_15_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_0_15", "role": "ce1" }} , 
 	{ "name": "JcoupLocal_0_15_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_0_15", "role": "q1" }} , 
 	{ "name": "trottersLocal_V_1_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_1_0", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_1_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_1_0", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_1_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_1_0", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_1_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_1_0", "role": "address1" }} , 
 	{ "name": "trottersLocal_V_1_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_1_0", "role": "ce1" }} , 
 	{ "name": "trottersLocal_V_1_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_1_0", "role": "q1" }} , 
 	{ "name": "trottersLocal_V_1_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_1_1", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_1_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_1_1", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_1_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_1_1", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_1_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_1_1", "role": "address1" }} , 
 	{ "name": "trottersLocal_V_1_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_1_1", "role": "ce1" }} , 
 	{ "name": "trottersLocal_V_1_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_1_1", "role": "q1" }} , 
 	{ "name": "trottersLocal_V_1_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_1_2", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_1_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_1_2", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_1_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_1_2", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_1_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_1_2", "role": "address1" }} , 
 	{ "name": "trottersLocal_V_1_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_1_2", "role": "ce1" }} , 
 	{ "name": "trottersLocal_V_1_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_1_2", "role": "q1" }} , 
 	{ "name": "trottersLocal_V_1_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_1_3", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_1_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_1_3", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_1_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_1_3", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_1_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_1_3", "role": "address1" }} , 
 	{ "name": "trottersLocal_V_1_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_1_3", "role": "ce1" }} , 
 	{ "name": "trottersLocal_V_1_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_1_3", "role": "q1" }} , 
 	{ "name": "trottersLocal_V_1_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_1_4", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_1_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_1_4", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_1_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_1_4", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_1_4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_1_4", "role": "address1" }} , 
 	{ "name": "trottersLocal_V_1_4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_1_4", "role": "ce1" }} , 
 	{ "name": "trottersLocal_V_1_4_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_1_4", "role": "q1" }} , 
 	{ "name": "trottersLocal_V_1_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_1_5", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_1_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_1_5", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_1_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_1_5", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_1_5_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_1_5", "role": "address1" }} , 
 	{ "name": "trottersLocal_V_1_5_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_1_5", "role": "ce1" }} , 
 	{ "name": "trottersLocal_V_1_5_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_1_5", "role": "q1" }} , 
 	{ "name": "trottersLocal_V_1_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_1_6", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_1_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_1_6", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_1_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_1_6", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_1_6_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_1_6", "role": "address1" }} , 
 	{ "name": "trottersLocal_V_1_6_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_1_6", "role": "ce1" }} , 
 	{ "name": "trottersLocal_V_1_6_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_1_6", "role": "q1" }} , 
 	{ "name": "trottersLocal_V_1_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_1_7", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_1_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_1_7", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_1_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_1_7", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_1_7_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_1_7", "role": "address1" }} , 
 	{ "name": "trottersLocal_V_1_7_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_1_7", "role": "ce1" }} , 
 	{ "name": "trottersLocal_V_1_7_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_1_7", "role": "q1" }} , 
 	{ "name": "trottersLocal_V_1_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_1_8", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_1_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_1_8", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_1_8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_1_8", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_1_8_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_1_8", "role": "address1" }} , 
 	{ "name": "trottersLocal_V_1_8_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_1_8", "role": "ce1" }} , 
 	{ "name": "trottersLocal_V_1_8_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_1_8", "role": "q1" }} , 
 	{ "name": "trottersLocal_V_1_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_1_9", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_1_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_1_9", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_1_9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_1_9", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_1_9_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_1_9", "role": "address1" }} , 
 	{ "name": "trottersLocal_V_1_9_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_1_9", "role": "ce1" }} , 
 	{ "name": "trottersLocal_V_1_9_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_1_9", "role": "q1" }} , 
 	{ "name": "trottersLocal_V_1_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_1_10", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_1_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_1_10", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_1_10_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_1_10", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_1_10_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_1_10", "role": "address1" }} , 
 	{ "name": "trottersLocal_V_1_10_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_1_10", "role": "ce1" }} , 
 	{ "name": "trottersLocal_V_1_10_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_1_10", "role": "q1" }} , 
 	{ "name": "trottersLocal_V_1_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_1_11", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_1_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_1_11", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_1_11_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_1_11", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_1_11_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_1_11", "role": "address1" }} , 
 	{ "name": "trottersLocal_V_1_11_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_1_11", "role": "ce1" }} , 
 	{ "name": "trottersLocal_V_1_11_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_1_11", "role": "q1" }} , 
 	{ "name": "trottersLocal_V_1_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_1_12", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_1_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_1_12", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_1_12_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_1_12", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_1_12_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_1_12", "role": "address1" }} , 
 	{ "name": "trottersLocal_V_1_12_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_1_12", "role": "ce1" }} , 
 	{ "name": "trottersLocal_V_1_12_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_1_12", "role": "q1" }} , 
 	{ "name": "trottersLocal_V_1_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_1_13", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_1_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_1_13", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_1_13_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_1_13", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_1_13_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_1_13", "role": "address1" }} , 
 	{ "name": "trottersLocal_V_1_13_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_1_13", "role": "ce1" }} , 
 	{ "name": "trottersLocal_V_1_13_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_1_13", "role": "q1" }} , 
 	{ "name": "trottersLocal_V_1_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_1_14", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_1_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_1_14", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_1_14_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_1_14", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_1_14_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_1_14", "role": "address1" }} , 
 	{ "name": "trottersLocal_V_1_14_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_1_14", "role": "ce1" }} , 
 	{ "name": "trottersLocal_V_1_14_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_1_14", "role": "q1" }} , 
 	{ "name": "trottersLocal_V_1_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_1_15", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_1_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_1_15", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_1_15_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_1_15", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_1_15_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_1_15", "role": "address1" }} , 
 	{ "name": "trottersLocal_V_1_15_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_1_15", "role": "ce1" }} , 
 	{ "name": "trottersLocal_V_1_15_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_1_15", "role": "q1" }} , 
 	{ "name": "JcoupLocal_1_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_1_0", "role": "address0" }} , 
 	{ "name": "JcoupLocal_1_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_1_0", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_1_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_1_0", "role": "q0" }} , 
 	{ "name": "JcoupLocal_1_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_1_0", "role": "address1" }} , 
 	{ "name": "JcoupLocal_1_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_1_0", "role": "ce1" }} , 
 	{ "name": "JcoupLocal_1_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_1_0", "role": "q1" }} , 
 	{ "name": "JcoupLocal_1_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_1_1", "role": "address0" }} , 
 	{ "name": "JcoupLocal_1_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_1_1", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_1_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_1_1", "role": "q0" }} , 
 	{ "name": "JcoupLocal_1_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_1_1", "role": "address1" }} , 
 	{ "name": "JcoupLocal_1_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_1_1", "role": "ce1" }} , 
 	{ "name": "JcoupLocal_1_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_1_1", "role": "q1" }} , 
 	{ "name": "JcoupLocal_1_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_1_2", "role": "address0" }} , 
 	{ "name": "JcoupLocal_1_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_1_2", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_1_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_1_2", "role": "q0" }} , 
 	{ "name": "JcoupLocal_1_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_1_2", "role": "address1" }} , 
 	{ "name": "JcoupLocal_1_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_1_2", "role": "ce1" }} , 
 	{ "name": "JcoupLocal_1_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_1_2", "role": "q1" }} , 
 	{ "name": "JcoupLocal_1_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_1_3", "role": "address0" }} , 
 	{ "name": "JcoupLocal_1_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_1_3", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_1_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_1_3", "role": "q0" }} , 
 	{ "name": "JcoupLocal_1_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_1_3", "role": "address1" }} , 
 	{ "name": "JcoupLocal_1_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_1_3", "role": "ce1" }} , 
 	{ "name": "JcoupLocal_1_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_1_3", "role": "q1" }} , 
 	{ "name": "JcoupLocal_1_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_1_4", "role": "address0" }} , 
 	{ "name": "JcoupLocal_1_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_1_4", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_1_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_1_4", "role": "q0" }} , 
 	{ "name": "JcoupLocal_1_4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_1_4", "role": "address1" }} , 
 	{ "name": "JcoupLocal_1_4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_1_4", "role": "ce1" }} , 
 	{ "name": "JcoupLocal_1_4_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_1_4", "role": "q1" }} , 
 	{ "name": "JcoupLocal_1_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_1_5", "role": "address0" }} , 
 	{ "name": "JcoupLocal_1_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_1_5", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_1_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_1_5", "role": "q0" }} , 
 	{ "name": "JcoupLocal_1_5_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_1_5", "role": "address1" }} , 
 	{ "name": "JcoupLocal_1_5_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_1_5", "role": "ce1" }} , 
 	{ "name": "JcoupLocal_1_5_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_1_5", "role": "q1" }} , 
 	{ "name": "JcoupLocal_1_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_1_6", "role": "address0" }} , 
 	{ "name": "JcoupLocal_1_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_1_6", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_1_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_1_6", "role": "q0" }} , 
 	{ "name": "JcoupLocal_1_6_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_1_6", "role": "address1" }} , 
 	{ "name": "JcoupLocal_1_6_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_1_6", "role": "ce1" }} , 
 	{ "name": "JcoupLocal_1_6_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_1_6", "role": "q1" }} , 
 	{ "name": "JcoupLocal_1_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_1_7", "role": "address0" }} , 
 	{ "name": "JcoupLocal_1_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_1_7", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_1_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_1_7", "role": "q0" }} , 
 	{ "name": "JcoupLocal_1_7_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_1_7", "role": "address1" }} , 
 	{ "name": "JcoupLocal_1_7_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_1_7", "role": "ce1" }} , 
 	{ "name": "JcoupLocal_1_7_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_1_7", "role": "q1" }} , 
 	{ "name": "JcoupLocal_1_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_1_8", "role": "address0" }} , 
 	{ "name": "JcoupLocal_1_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_1_8", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_1_8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_1_8", "role": "q0" }} , 
 	{ "name": "JcoupLocal_1_8_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_1_8", "role": "address1" }} , 
 	{ "name": "JcoupLocal_1_8_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_1_8", "role": "ce1" }} , 
 	{ "name": "JcoupLocal_1_8_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_1_8", "role": "q1" }} , 
 	{ "name": "JcoupLocal_1_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_1_9", "role": "address0" }} , 
 	{ "name": "JcoupLocal_1_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_1_9", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_1_9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_1_9", "role": "q0" }} , 
 	{ "name": "JcoupLocal_1_9_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_1_9", "role": "address1" }} , 
 	{ "name": "JcoupLocal_1_9_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_1_9", "role": "ce1" }} , 
 	{ "name": "JcoupLocal_1_9_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_1_9", "role": "q1" }} , 
 	{ "name": "JcoupLocal_1_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_1_10", "role": "address0" }} , 
 	{ "name": "JcoupLocal_1_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_1_10", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_1_10_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_1_10", "role": "q0" }} , 
 	{ "name": "JcoupLocal_1_10_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_1_10", "role": "address1" }} , 
 	{ "name": "JcoupLocal_1_10_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_1_10", "role": "ce1" }} , 
 	{ "name": "JcoupLocal_1_10_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_1_10", "role": "q1" }} , 
 	{ "name": "JcoupLocal_1_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_1_11", "role": "address0" }} , 
 	{ "name": "JcoupLocal_1_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_1_11", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_1_11_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_1_11", "role": "q0" }} , 
 	{ "name": "JcoupLocal_1_11_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_1_11", "role": "address1" }} , 
 	{ "name": "JcoupLocal_1_11_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_1_11", "role": "ce1" }} , 
 	{ "name": "JcoupLocal_1_11_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_1_11", "role": "q1" }} , 
 	{ "name": "JcoupLocal_1_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_1_12", "role": "address0" }} , 
 	{ "name": "JcoupLocal_1_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_1_12", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_1_12_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_1_12", "role": "q0" }} , 
 	{ "name": "JcoupLocal_1_12_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_1_12", "role": "address1" }} , 
 	{ "name": "JcoupLocal_1_12_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_1_12", "role": "ce1" }} , 
 	{ "name": "JcoupLocal_1_12_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_1_12", "role": "q1" }} , 
 	{ "name": "JcoupLocal_1_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_1_13", "role": "address0" }} , 
 	{ "name": "JcoupLocal_1_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_1_13", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_1_13_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_1_13", "role": "q0" }} , 
 	{ "name": "JcoupLocal_1_13_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_1_13", "role": "address1" }} , 
 	{ "name": "JcoupLocal_1_13_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_1_13", "role": "ce1" }} , 
 	{ "name": "JcoupLocal_1_13_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_1_13", "role": "q1" }} , 
 	{ "name": "JcoupLocal_1_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_1_14", "role": "address0" }} , 
 	{ "name": "JcoupLocal_1_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_1_14", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_1_14_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_1_14", "role": "q0" }} , 
 	{ "name": "JcoupLocal_1_14_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_1_14", "role": "address1" }} , 
 	{ "name": "JcoupLocal_1_14_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_1_14", "role": "ce1" }} , 
 	{ "name": "JcoupLocal_1_14_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_1_14", "role": "q1" }} , 
 	{ "name": "JcoupLocal_1_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_1_15", "role": "address0" }} , 
 	{ "name": "JcoupLocal_1_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_1_15", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_1_15_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_1_15", "role": "q0" }} , 
 	{ "name": "JcoupLocal_1_15_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_1_15", "role": "address1" }} , 
 	{ "name": "JcoupLocal_1_15_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_1_15", "role": "ce1" }} , 
 	{ "name": "JcoupLocal_1_15_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_1_15", "role": "q1" }} , 
 	{ "name": "trottersLocal_V_2_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_2_0", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_2_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_2_0", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_2_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_2_0", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_2_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_2_0", "role": "address1" }} , 
 	{ "name": "trottersLocal_V_2_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_2_0", "role": "ce1" }} , 
 	{ "name": "trottersLocal_V_2_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_2_0", "role": "q1" }} , 
 	{ "name": "trottersLocal_V_2_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_2_1", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_2_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_2_1", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_2_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_2_1", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_2_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_2_1", "role": "address1" }} , 
 	{ "name": "trottersLocal_V_2_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_2_1", "role": "ce1" }} , 
 	{ "name": "trottersLocal_V_2_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_2_1", "role": "q1" }} , 
 	{ "name": "trottersLocal_V_2_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_2_2", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_2_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_2_2", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_2_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_2_2", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_2_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_2_2", "role": "address1" }} , 
 	{ "name": "trottersLocal_V_2_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_2_2", "role": "ce1" }} , 
 	{ "name": "trottersLocal_V_2_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_2_2", "role": "q1" }} , 
 	{ "name": "trottersLocal_V_2_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_2_3", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_2_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_2_3", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_2_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_2_3", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_2_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_2_3", "role": "address1" }} , 
 	{ "name": "trottersLocal_V_2_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_2_3", "role": "ce1" }} , 
 	{ "name": "trottersLocal_V_2_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_2_3", "role": "q1" }} , 
 	{ "name": "trottersLocal_V_2_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_2_4", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_2_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_2_4", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_2_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_2_4", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_2_4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_2_4", "role": "address1" }} , 
 	{ "name": "trottersLocal_V_2_4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_2_4", "role": "ce1" }} , 
 	{ "name": "trottersLocal_V_2_4_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_2_4", "role": "q1" }} , 
 	{ "name": "trottersLocal_V_2_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_2_5", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_2_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_2_5", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_2_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_2_5", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_2_5_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_2_5", "role": "address1" }} , 
 	{ "name": "trottersLocal_V_2_5_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_2_5", "role": "ce1" }} , 
 	{ "name": "trottersLocal_V_2_5_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_2_5", "role": "q1" }} , 
 	{ "name": "trottersLocal_V_2_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_2_6", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_2_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_2_6", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_2_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_2_6", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_2_6_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_2_6", "role": "address1" }} , 
 	{ "name": "trottersLocal_V_2_6_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_2_6", "role": "ce1" }} , 
 	{ "name": "trottersLocal_V_2_6_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_2_6", "role": "q1" }} , 
 	{ "name": "trottersLocal_V_2_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_2_7", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_2_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_2_7", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_2_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_2_7", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_2_7_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_2_7", "role": "address1" }} , 
 	{ "name": "trottersLocal_V_2_7_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_2_7", "role": "ce1" }} , 
 	{ "name": "trottersLocal_V_2_7_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_2_7", "role": "q1" }} , 
 	{ "name": "trottersLocal_V_2_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_2_8", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_2_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_2_8", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_2_8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_2_8", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_2_8_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_2_8", "role": "address1" }} , 
 	{ "name": "trottersLocal_V_2_8_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_2_8", "role": "ce1" }} , 
 	{ "name": "trottersLocal_V_2_8_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_2_8", "role": "q1" }} , 
 	{ "name": "trottersLocal_V_2_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_2_9", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_2_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_2_9", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_2_9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_2_9", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_2_9_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_2_9", "role": "address1" }} , 
 	{ "name": "trottersLocal_V_2_9_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_2_9", "role": "ce1" }} , 
 	{ "name": "trottersLocal_V_2_9_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_2_9", "role": "q1" }} , 
 	{ "name": "trottersLocal_V_2_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_2_10", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_2_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_2_10", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_2_10_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_2_10", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_2_10_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_2_10", "role": "address1" }} , 
 	{ "name": "trottersLocal_V_2_10_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_2_10", "role": "ce1" }} , 
 	{ "name": "trottersLocal_V_2_10_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_2_10", "role": "q1" }} , 
 	{ "name": "trottersLocal_V_2_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_2_11", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_2_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_2_11", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_2_11_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_2_11", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_2_11_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_2_11", "role": "address1" }} , 
 	{ "name": "trottersLocal_V_2_11_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_2_11", "role": "ce1" }} , 
 	{ "name": "trottersLocal_V_2_11_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_2_11", "role": "q1" }} , 
 	{ "name": "trottersLocal_V_2_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_2_12", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_2_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_2_12", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_2_12_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_2_12", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_2_12_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_2_12", "role": "address1" }} , 
 	{ "name": "trottersLocal_V_2_12_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_2_12", "role": "ce1" }} , 
 	{ "name": "trottersLocal_V_2_12_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_2_12", "role": "q1" }} , 
 	{ "name": "trottersLocal_V_2_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_2_13", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_2_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_2_13", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_2_13_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_2_13", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_2_13_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_2_13", "role": "address1" }} , 
 	{ "name": "trottersLocal_V_2_13_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_2_13", "role": "ce1" }} , 
 	{ "name": "trottersLocal_V_2_13_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_2_13", "role": "q1" }} , 
 	{ "name": "trottersLocal_V_2_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_2_14", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_2_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_2_14", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_2_14_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_2_14", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_2_14_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_2_14", "role": "address1" }} , 
 	{ "name": "trottersLocal_V_2_14_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_2_14", "role": "ce1" }} , 
 	{ "name": "trottersLocal_V_2_14_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_2_14", "role": "q1" }} , 
 	{ "name": "trottersLocal_V_2_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_2_15", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_2_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_2_15", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_2_15_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_2_15", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_2_15_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_2_15", "role": "address1" }} , 
 	{ "name": "trottersLocal_V_2_15_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_2_15", "role": "ce1" }} , 
 	{ "name": "trottersLocal_V_2_15_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_2_15", "role": "q1" }} , 
 	{ "name": "JcoupLocal_2_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_2_0", "role": "address0" }} , 
 	{ "name": "JcoupLocal_2_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_2_0", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_2_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_2_0", "role": "q0" }} , 
 	{ "name": "JcoupLocal_2_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_2_0", "role": "address1" }} , 
 	{ "name": "JcoupLocal_2_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_2_0", "role": "ce1" }} , 
 	{ "name": "JcoupLocal_2_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_2_0", "role": "q1" }} , 
 	{ "name": "JcoupLocal_2_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_2_1", "role": "address0" }} , 
 	{ "name": "JcoupLocal_2_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_2_1", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_2_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_2_1", "role": "q0" }} , 
 	{ "name": "JcoupLocal_2_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_2_1", "role": "address1" }} , 
 	{ "name": "JcoupLocal_2_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_2_1", "role": "ce1" }} , 
 	{ "name": "JcoupLocal_2_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_2_1", "role": "q1" }} , 
 	{ "name": "JcoupLocal_2_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_2_2", "role": "address0" }} , 
 	{ "name": "JcoupLocal_2_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_2_2", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_2_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_2_2", "role": "q0" }} , 
 	{ "name": "JcoupLocal_2_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_2_2", "role": "address1" }} , 
 	{ "name": "JcoupLocal_2_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_2_2", "role": "ce1" }} , 
 	{ "name": "JcoupLocal_2_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_2_2", "role": "q1" }} , 
 	{ "name": "JcoupLocal_2_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_2_3", "role": "address0" }} , 
 	{ "name": "JcoupLocal_2_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_2_3", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_2_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_2_3", "role": "q0" }} , 
 	{ "name": "JcoupLocal_2_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_2_3", "role": "address1" }} , 
 	{ "name": "JcoupLocal_2_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_2_3", "role": "ce1" }} , 
 	{ "name": "JcoupLocal_2_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_2_3", "role": "q1" }} , 
 	{ "name": "JcoupLocal_2_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_2_4", "role": "address0" }} , 
 	{ "name": "JcoupLocal_2_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_2_4", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_2_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_2_4", "role": "q0" }} , 
 	{ "name": "JcoupLocal_2_4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_2_4", "role": "address1" }} , 
 	{ "name": "JcoupLocal_2_4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_2_4", "role": "ce1" }} , 
 	{ "name": "JcoupLocal_2_4_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_2_4", "role": "q1" }} , 
 	{ "name": "JcoupLocal_2_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_2_5", "role": "address0" }} , 
 	{ "name": "JcoupLocal_2_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_2_5", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_2_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_2_5", "role": "q0" }} , 
 	{ "name": "JcoupLocal_2_5_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_2_5", "role": "address1" }} , 
 	{ "name": "JcoupLocal_2_5_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_2_5", "role": "ce1" }} , 
 	{ "name": "JcoupLocal_2_5_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_2_5", "role": "q1" }} , 
 	{ "name": "JcoupLocal_2_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_2_6", "role": "address0" }} , 
 	{ "name": "JcoupLocal_2_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_2_6", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_2_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_2_6", "role": "q0" }} , 
 	{ "name": "JcoupLocal_2_6_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_2_6", "role": "address1" }} , 
 	{ "name": "JcoupLocal_2_6_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_2_6", "role": "ce1" }} , 
 	{ "name": "JcoupLocal_2_6_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_2_6", "role": "q1" }} , 
 	{ "name": "JcoupLocal_2_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_2_7", "role": "address0" }} , 
 	{ "name": "JcoupLocal_2_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_2_7", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_2_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_2_7", "role": "q0" }} , 
 	{ "name": "JcoupLocal_2_7_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_2_7", "role": "address1" }} , 
 	{ "name": "JcoupLocal_2_7_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_2_7", "role": "ce1" }} , 
 	{ "name": "JcoupLocal_2_7_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_2_7", "role": "q1" }} , 
 	{ "name": "JcoupLocal_2_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_2_8", "role": "address0" }} , 
 	{ "name": "JcoupLocal_2_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_2_8", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_2_8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_2_8", "role": "q0" }} , 
 	{ "name": "JcoupLocal_2_8_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_2_8", "role": "address1" }} , 
 	{ "name": "JcoupLocal_2_8_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_2_8", "role": "ce1" }} , 
 	{ "name": "JcoupLocal_2_8_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_2_8", "role": "q1" }} , 
 	{ "name": "JcoupLocal_2_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_2_9", "role": "address0" }} , 
 	{ "name": "JcoupLocal_2_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_2_9", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_2_9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_2_9", "role": "q0" }} , 
 	{ "name": "JcoupLocal_2_9_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_2_9", "role": "address1" }} , 
 	{ "name": "JcoupLocal_2_9_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_2_9", "role": "ce1" }} , 
 	{ "name": "JcoupLocal_2_9_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_2_9", "role": "q1" }} , 
 	{ "name": "JcoupLocal_2_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_2_10", "role": "address0" }} , 
 	{ "name": "JcoupLocal_2_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_2_10", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_2_10_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_2_10", "role": "q0" }} , 
 	{ "name": "JcoupLocal_2_10_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_2_10", "role": "address1" }} , 
 	{ "name": "JcoupLocal_2_10_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_2_10", "role": "ce1" }} , 
 	{ "name": "JcoupLocal_2_10_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_2_10", "role": "q1" }} , 
 	{ "name": "JcoupLocal_2_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_2_11", "role": "address0" }} , 
 	{ "name": "JcoupLocal_2_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_2_11", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_2_11_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_2_11", "role": "q0" }} , 
 	{ "name": "JcoupLocal_2_11_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_2_11", "role": "address1" }} , 
 	{ "name": "JcoupLocal_2_11_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_2_11", "role": "ce1" }} , 
 	{ "name": "JcoupLocal_2_11_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_2_11", "role": "q1" }} , 
 	{ "name": "JcoupLocal_2_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_2_12", "role": "address0" }} , 
 	{ "name": "JcoupLocal_2_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_2_12", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_2_12_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_2_12", "role": "q0" }} , 
 	{ "name": "JcoupLocal_2_12_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_2_12", "role": "address1" }} , 
 	{ "name": "JcoupLocal_2_12_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_2_12", "role": "ce1" }} , 
 	{ "name": "JcoupLocal_2_12_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_2_12", "role": "q1" }} , 
 	{ "name": "JcoupLocal_2_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_2_13", "role": "address0" }} , 
 	{ "name": "JcoupLocal_2_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_2_13", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_2_13_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_2_13", "role": "q0" }} , 
 	{ "name": "JcoupLocal_2_13_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_2_13", "role": "address1" }} , 
 	{ "name": "JcoupLocal_2_13_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_2_13", "role": "ce1" }} , 
 	{ "name": "JcoupLocal_2_13_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_2_13", "role": "q1" }} , 
 	{ "name": "JcoupLocal_2_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_2_14", "role": "address0" }} , 
 	{ "name": "JcoupLocal_2_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_2_14", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_2_14_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_2_14", "role": "q0" }} , 
 	{ "name": "JcoupLocal_2_14_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_2_14", "role": "address1" }} , 
 	{ "name": "JcoupLocal_2_14_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_2_14", "role": "ce1" }} , 
 	{ "name": "JcoupLocal_2_14_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_2_14", "role": "q1" }} , 
 	{ "name": "JcoupLocal_2_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_2_15", "role": "address0" }} , 
 	{ "name": "JcoupLocal_2_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_2_15", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_2_15_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_2_15", "role": "q0" }} , 
 	{ "name": "JcoupLocal_2_15_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_2_15", "role": "address1" }} , 
 	{ "name": "JcoupLocal_2_15_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_2_15", "role": "ce1" }} , 
 	{ "name": "JcoupLocal_2_15_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_2_15", "role": "q1" }} , 
 	{ "name": "trottersLocal_V_3_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_3_0", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_3_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_3_0", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_3_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_3_0", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_3_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_3_0", "role": "address1" }} , 
 	{ "name": "trottersLocal_V_3_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_3_0", "role": "ce1" }} , 
 	{ "name": "trottersLocal_V_3_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_3_0", "role": "q1" }} , 
 	{ "name": "trottersLocal_V_3_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_3_1", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_3_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_3_1", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_3_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_3_1", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_3_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_3_1", "role": "address1" }} , 
 	{ "name": "trottersLocal_V_3_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_3_1", "role": "ce1" }} , 
 	{ "name": "trottersLocal_V_3_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_3_1", "role": "q1" }} , 
 	{ "name": "trottersLocal_V_3_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_3_2", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_3_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_3_2", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_3_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_3_2", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_3_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_3_2", "role": "address1" }} , 
 	{ "name": "trottersLocal_V_3_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_3_2", "role": "ce1" }} , 
 	{ "name": "trottersLocal_V_3_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_3_2", "role": "q1" }} , 
 	{ "name": "trottersLocal_V_3_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_3_3", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_3_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_3_3", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_3_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_3_3", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_3_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_3_3", "role": "address1" }} , 
 	{ "name": "trottersLocal_V_3_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_3_3", "role": "ce1" }} , 
 	{ "name": "trottersLocal_V_3_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_3_3", "role": "q1" }} , 
 	{ "name": "trottersLocal_V_3_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_3_4", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_3_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_3_4", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_3_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_3_4", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_3_4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_3_4", "role": "address1" }} , 
 	{ "name": "trottersLocal_V_3_4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_3_4", "role": "ce1" }} , 
 	{ "name": "trottersLocal_V_3_4_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_3_4", "role": "q1" }} , 
 	{ "name": "trottersLocal_V_3_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_3_5", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_3_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_3_5", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_3_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_3_5", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_3_5_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_3_5", "role": "address1" }} , 
 	{ "name": "trottersLocal_V_3_5_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_3_5", "role": "ce1" }} , 
 	{ "name": "trottersLocal_V_3_5_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_3_5", "role": "q1" }} , 
 	{ "name": "trottersLocal_V_3_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_3_6", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_3_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_3_6", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_3_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_3_6", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_3_6_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_3_6", "role": "address1" }} , 
 	{ "name": "trottersLocal_V_3_6_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_3_6", "role": "ce1" }} , 
 	{ "name": "trottersLocal_V_3_6_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_3_6", "role": "q1" }} , 
 	{ "name": "trottersLocal_V_3_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_3_7", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_3_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_3_7", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_3_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_3_7", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_3_7_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_3_7", "role": "address1" }} , 
 	{ "name": "trottersLocal_V_3_7_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_3_7", "role": "ce1" }} , 
 	{ "name": "trottersLocal_V_3_7_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_3_7", "role": "q1" }} , 
 	{ "name": "trottersLocal_V_3_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_3_8", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_3_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_3_8", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_3_8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_3_8", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_3_8_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_3_8", "role": "address1" }} , 
 	{ "name": "trottersLocal_V_3_8_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_3_8", "role": "ce1" }} , 
 	{ "name": "trottersLocal_V_3_8_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_3_8", "role": "q1" }} , 
 	{ "name": "trottersLocal_V_3_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_3_9", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_3_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_3_9", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_3_9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_3_9", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_3_9_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_3_9", "role": "address1" }} , 
 	{ "name": "trottersLocal_V_3_9_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_3_9", "role": "ce1" }} , 
 	{ "name": "trottersLocal_V_3_9_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_3_9", "role": "q1" }} , 
 	{ "name": "trottersLocal_V_3_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_3_10", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_3_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_3_10", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_3_10_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_3_10", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_3_10_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_3_10", "role": "address1" }} , 
 	{ "name": "trottersLocal_V_3_10_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_3_10", "role": "ce1" }} , 
 	{ "name": "trottersLocal_V_3_10_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_3_10", "role": "q1" }} , 
 	{ "name": "trottersLocal_V_3_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_3_11", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_3_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_3_11", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_3_11_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_3_11", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_3_11_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_3_11", "role": "address1" }} , 
 	{ "name": "trottersLocal_V_3_11_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_3_11", "role": "ce1" }} , 
 	{ "name": "trottersLocal_V_3_11_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_3_11", "role": "q1" }} , 
 	{ "name": "trottersLocal_V_3_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_3_12", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_3_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_3_12", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_3_12_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_3_12", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_3_12_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_3_12", "role": "address1" }} , 
 	{ "name": "trottersLocal_V_3_12_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_3_12", "role": "ce1" }} , 
 	{ "name": "trottersLocal_V_3_12_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_3_12", "role": "q1" }} , 
 	{ "name": "trottersLocal_V_3_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_3_13", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_3_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_3_13", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_3_13_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_3_13", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_3_13_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_3_13", "role": "address1" }} , 
 	{ "name": "trottersLocal_V_3_13_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_3_13", "role": "ce1" }} , 
 	{ "name": "trottersLocal_V_3_13_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_3_13", "role": "q1" }} , 
 	{ "name": "trottersLocal_V_3_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_3_14", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_3_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_3_14", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_3_14_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_3_14", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_3_14_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_3_14", "role": "address1" }} , 
 	{ "name": "trottersLocal_V_3_14_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_3_14", "role": "ce1" }} , 
 	{ "name": "trottersLocal_V_3_14_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_3_14", "role": "q1" }} , 
 	{ "name": "trottersLocal_V_3_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_3_15", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_3_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_3_15", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_3_15_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_3_15", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_3_15_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_3_15", "role": "address1" }} , 
 	{ "name": "trottersLocal_V_3_15_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_3_15", "role": "ce1" }} , 
 	{ "name": "trottersLocal_V_3_15_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_3_15", "role": "q1" }} , 
 	{ "name": "JcoupLocal_3_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_3_0", "role": "address0" }} , 
 	{ "name": "JcoupLocal_3_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_3_0", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_3_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_3_0", "role": "q0" }} , 
 	{ "name": "JcoupLocal_3_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_3_0", "role": "address1" }} , 
 	{ "name": "JcoupLocal_3_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_3_0", "role": "ce1" }} , 
 	{ "name": "JcoupLocal_3_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_3_0", "role": "q1" }} , 
 	{ "name": "JcoupLocal_3_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_3_1", "role": "address0" }} , 
 	{ "name": "JcoupLocal_3_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_3_1", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_3_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_3_1", "role": "q0" }} , 
 	{ "name": "JcoupLocal_3_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_3_1", "role": "address1" }} , 
 	{ "name": "JcoupLocal_3_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_3_1", "role": "ce1" }} , 
 	{ "name": "JcoupLocal_3_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_3_1", "role": "q1" }} , 
 	{ "name": "JcoupLocal_3_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_3_2", "role": "address0" }} , 
 	{ "name": "JcoupLocal_3_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_3_2", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_3_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_3_2", "role": "q0" }} , 
 	{ "name": "JcoupLocal_3_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_3_2", "role": "address1" }} , 
 	{ "name": "JcoupLocal_3_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_3_2", "role": "ce1" }} , 
 	{ "name": "JcoupLocal_3_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_3_2", "role": "q1" }} , 
 	{ "name": "JcoupLocal_3_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_3_3", "role": "address0" }} , 
 	{ "name": "JcoupLocal_3_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_3_3", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_3_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_3_3", "role": "q0" }} , 
 	{ "name": "JcoupLocal_3_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_3_3", "role": "address1" }} , 
 	{ "name": "JcoupLocal_3_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_3_3", "role": "ce1" }} , 
 	{ "name": "JcoupLocal_3_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_3_3", "role": "q1" }} , 
 	{ "name": "JcoupLocal_3_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_3_4", "role": "address0" }} , 
 	{ "name": "JcoupLocal_3_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_3_4", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_3_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_3_4", "role": "q0" }} , 
 	{ "name": "JcoupLocal_3_4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_3_4", "role": "address1" }} , 
 	{ "name": "JcoupLocal_3_4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_3_4", "role": "ce1" }} , 
 	{ "name": "JcoupLocal_3_4_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_3_4", "role": "q1" }} , 
 	{ "name": "JcoupLocal_3_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_3_5", "role": "address0" }} , 
 	{ "name": "JcoupLocal_3_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_3_5", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_3_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_3_5", "role": "q0" }} , 
 	{ "name": "JcoupLocal_3_5_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_3_5", "role": "address1" }} , 
 	{ "name": "JcoupLocal_3_5_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_3_5", "role": "ce1" }} , 
 	{ "name": "JcoupLocal_3_5_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_3_5", "role": "q1" }} , 
 	{ "name": "JcoupLocal_3_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_3_6", "role": "address0" }} , 
 	{ "name": "JcoupLocal_3_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_3_6", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_3_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_3_6", "role": "q0" }} , 
 	{ "name": "JcoupLocal_3_6_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_3_6", "role": "address1" }} , 
 	{ "name": "JcoupLocal_3_6_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_3_6", "role": "ce1" }} , 
 	{ "name": "JcoupLocal_3_6_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_3_6", "role": "q1" }} , 
 	{ "name": "JcoupLocal_3_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_3_7", "role": "address0" }} , 
 	{ "name": "JcoupLocal_3_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_3_7", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_3_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_3_7", "role": "q0" }} , 
 	{ "name": "JcoupLocal_3_7_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_3_7", "role": "address1" }} , 
 	{ "name": "JcoupLocal_3_7_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_3_7", "role": "ce1" }} , 
 	{ "name": "JcoupLocal_3_7_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_3_7", "role": "q1" }} , 
 	{ "name": "JcoupLocal_3_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_3_8", "role": "address0" }} , 
 	{ "name": "JcoupLocal_3_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_3_8", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_3_8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_3_8", "role": "q0" }} , 
 	{ "name": "JcoupLocal_3_8_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_3_8", "role": "address1" }} , 
 	{ "name": "JcoupLocal_3_8_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_3_8", "role": "ce1" }} , 
 	{ "name": "JcoupLocal_3_8_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_3_8", "role": "q1" }} , 
 	{ "name": "JcoupLocal_3_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_3_9", "role": "address0" }} , 
 	{ "name": "JcoupLocal_3_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_3_9", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_3_9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_3_9", "role": "q0" }} , 
 	{ "name": "JcoupLocal_3_9_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_3_9", "role": "address1" }} , 
 	{ "name": "JcoupLocal_3_9_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_3_9", "role": "ce1" }} , 
 	{ "name": "JcoupLocal_3_9_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_3_9", "role": "q1" }} , 
 	{ "name": "JcoupLocal_3_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_3_10", "role": "address0" }} , 
 	{ "name": "JcoupLocal_3_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_3_10", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_3_10_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_3_10", "role": "q0" }} , 
 	{ "name": "JcoupLocal_3_10_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_3_10", "role": "address1" }} , 
 	{ "name": "JcoupLocal_3_10_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_3_10", "role": "ce1" }} , 
 	{ "name": "JcoupLocal_3_10_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_3_10", "role": "q1" }} , 
 	{ "name": "JcoupLocal_3_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_3_11", "role": "address0" }} , 
 	{ "name": "JcoupLocal_3_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_3_11", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_3_11_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_3_11", "role": "q0" }} , 
 	{ "name": "JcoupLocal_3_11_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_3_11", "role": "address1" }} , 
 	{ "name": "JcoupLocal_3_11_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_3_11", "role": "ce1" }} , 
 	{ "name": "JcoupLocal_3_11_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_3_11", "role": "q1" }} , 
 	{ "name": "JcoupLocal_3_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_3_12", "role": "address0" }} , 
 	{ "name": "JcoupLocal_3_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_3_12", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_3_12_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_3_12", "role": "q0" }} , 
 	{ "name": "JcoupLocal_3_12_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_3_12", "role": "address1" }} , 
 	{ "name": "JcoupLocal_3_12_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_3_12", "role": "ce1" }} , 
 	{ "name": "JcoupLocal_3_12_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_3_12", "role": "q1" }} , 
 	{ "name": "JcoupLocal_3_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_3_13", "role": "address0" }} , 
 	{ "name": "JcoupLocal_3_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_3_13", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_3_13_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_3_13", "role": "q0" }} , 
 	{ "name": "JcoupLocal_3_13_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_3_13", "role": "address1" }} , 
 	{ "name": "JcoupLocal_3_13_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_3_13", "role": "ce1" }} , 
 	{ "name": "JcoupLocal_3_13_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_3_13", "role": "q1" }} , 
 	{ "name": "JcoupLocal_3_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_3_14", "role": "address0" }} , 
 	{ "name": "JcoupLocal_3_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_3_14", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_3_14_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_3_14", "role": "q0" }} , 
 	{ "name": "JcoupLocal_3_14_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_3_14", "role": "address1" }} , 
 	{ "name": "JcoupLocal_3_14_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_3_14", "role": "ce1" }} , 
 	{ "name": "JcoupLocal_3_14_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_3_14", "role": "q1" }} , 
 	{ "name": "JcoupLocal_3_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_3_15", "role": "address0" }} , 
 	{ "name": "JcoupLocal_3_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_3_15", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_3_15_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_3_15", "role": "q0" }} , 
 	{ "name": "JcoupLocal_3_15_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_3_15", "role": "address1" }} , 
 	{ "name": "JcoupLocal_3_15_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_3_15", "role": "ce1" }} , 
 	{ "name": "JcoupLocal_3_15_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_3_15", "role": "q1" }} , 
 	{ "name": "dH_3_3_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dH_3_3_out", "role": "default" }} , 
 	{ "name": "dH_3_3_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "dH_3_3_out", "role": "ap_vld" }} , 
 	{ "name": "dH_2_3_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dH_2_3_out", "role": "default" }} , 
 	{ "name": "dH_2_3_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "dH_2_3_out", "role": "ap_vld" }} , 
 	{ "name": "dH_1_3_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dH_1_3_out", "role": "default" }} , 
 	{ "name": "dH_1_3_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "dH_1_3_out", "role": "ap_vld" }} , 
 	{ "name": "dH_0_3_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dH_0_3_out", "role": "default" }} , 
 	{ "name": "dH_0_3_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "dH_0_3_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "98"],
		"CDFG" : "QuantumMonteCarloU50_Pipeline_LOOP_STEP",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1179", "EstimateLatencyMax" : "1179",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "dH_3_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "dH_2_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "dH_1_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "dH_0_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "stage", "Type" : "None", "Direction" : "I"},
			{"Name" : "trottersLocal_V_0_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_0_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters1", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_0_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters2", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_0_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters3", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_0_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters4", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_0_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters5", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_0_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters6", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_0_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters7", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_0_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters8", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_0_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters9", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_0_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters10", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_0_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters11", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_0_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters12", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_0_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters13", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_0_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters14", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_0_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters15", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_0_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_0_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal16", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_0_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal17", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_0_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal18", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_0_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal19", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_0_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal20", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_0_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal21", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_0_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal22", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_0_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal23", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_0_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal24", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_0_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal25", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_0_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal26", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_0_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal27", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_0_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal28", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_0_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal29", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_0_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal30", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_1_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters1", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_1_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters2", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_1_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters3", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_1_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters4", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_1_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters5", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_1_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters6", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_1_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters7", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_1_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters8", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_1_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters9", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_1_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters10", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_1_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters11", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_1_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters12", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_1_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters13", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_1_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters14", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_1_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters15", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_1_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal16", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_1_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal17", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_1_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal18", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_1_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal19", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_1_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal20", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_1_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal21", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_1_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal22", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_1_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal23", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_1_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal24", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_1_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal25", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_1_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal26", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_1_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal27", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_1_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal28", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_1_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal29", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_1_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal30", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters1", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters2", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_2_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters3", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_2_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters4", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_2_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters5", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_2_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters6", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_2_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters7", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_2_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters8", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_2_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters9", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_2_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters10", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_2_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters11", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_2_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters12", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_2_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters13", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_2_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters14", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_2_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters15", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal16", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal17", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_2_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal18", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_2_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal19", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_2_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal20", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_2_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal21", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_2_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal22", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_2_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal23", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_2_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal24", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_2_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal25", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_2_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal26", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_2_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal27", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_2_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal28", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_2_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal29", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_2_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal30", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_3_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_3_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters1", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_3_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters2", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_3_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters3", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_3_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters4", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_3_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters5", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_3_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters6", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_3_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters7", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_3_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters8", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_3_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters9", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_3_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters10", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_3_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters11", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_3_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters12", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_3_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters13", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_3_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters14", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "trottersLocal_V_3_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "trotters15", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_3_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_3_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal16", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_3_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal17", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_3_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal18", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_3_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal19", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_3_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal20", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_3_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal21", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_3_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal22", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_3_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal23", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_3_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal24", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_3_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal25", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_3_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal26", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_3_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal27", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_3_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal28", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_3_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal29", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "JcoupLocal_3_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TrotterUnit_fu_402", "Port" : "JcoupLocal30", "Inst_start_state" : "26", "Inst_end_state" : "98"}]},
			{"Name" : "dH_3_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dH_2_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dH_1_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dH_0_3_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "LOOP_STEP", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "72", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage25", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage25_subdone", "QuitState" : "ap_ST_fsm_pp0_stage25", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage25_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_402", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97"],
		"CDFG" : "TrotterUnit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "8",
		"VariableLatency" : "0", "ExactLatency" : "72", "EstimateLatencyMin" : "72", "EstimateLatencyMax" : "72",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "stage", "Type" : "None", "Direction" : "I"},
			{"Name" : "packOfst", "Type" : "None", "Direction" : "I"},
			{"Name" : "trotters", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trotters1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trotters2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trotters3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trotters4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trotters5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trotters6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trotters7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trotters8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trotters9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trotters10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trotters11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trotters12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trotters13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trotters14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trotters15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dH_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "JcoupLocal", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal16", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal17", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal18", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal19", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal20", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal21", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal22", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal23", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal24", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal25", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal26", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal27", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal28", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal29", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal30", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U213", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U214", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U215", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U216", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U217", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U218", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U219", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U220", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U221", "Parent" : "1"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U222", "Parent" : "1"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U223", "Parent" : "1"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U224", "Parent" : "1"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U225", "Parent" : "1"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U226", "Parent" : "1"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U227", "Parent" : "1"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U228", "Parent" : "1"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U229", "Parent" : "1"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U230", "Parent" : "1"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U231", "Parent" : "1"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U232", "Parent" : "1"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U233", "Parent" : "1"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U234", "Parent" : "1"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U235", "Parent" : "1"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U236", "Parent" : "1"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U237", "Parent" : "1"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U238", "Parent" : "1"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U239", "Parent" : "1"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U240", "Parent" : "1"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U241", "Parent" : "1"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U242", "Parent" : "1"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U243", "Parent" : "1"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U244", "Parent" : "1"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U245", "Parent" : "1"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U246", "Parent" : "1"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U247", "Parent" : "1"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U248", "Parent" : "1"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U249", "Parent" : "1"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U250", "Parent" : "1"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U251", "Parent" : "1"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U252", "Parent" : "1"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U253", "Parent" : "1"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U254", "Parent" : "1"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U255", "Parent" : "1"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U256", "Parent" : "1"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U257", "Parent" : "1"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U258", "Parent" : "1"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U259", "Parent" : "1"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U260", "Parent" : "1"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U261", "Parent" : "1"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U262", "Parent" : "1"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U263", "Parent" : "1"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U264", "Parent" : "1"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U265", "Parent" : "1"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U266", "Parent" : "1"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U267", "Parent" : "1"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U268", "Parent" : "1"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U269", "Parent" : "1"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U270", "Parent" : "1"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U271", "Parent" : "1"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U272", "Parent" : "1"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U273", "Parent" : "1"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U274", "Parent" : "1"},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U275", "Parent" : "1"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_402.fadd_32ns_32ns_32_7_full_dsp_1_U276", "Parent" : "1"},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_402.mux_1664_16_1_1_U277", "Parent" : "1"},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_402.mux_1664_512_1_1_U278", "Parent" : "1"},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_402.mux_1664_16_1_1_U279", "Parent" : "1"},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_402.mux_1664_512_1_1_U280", "Parent" : "1"},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_402.mux_1664_16_1_1_U281", "Parent" : "1"},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_402.mux_1664_512_1_1_U282", "Parent" : "1"},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_402.mux_1664_16_1_1_U283", "Parent" : "1"},
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_402.mux_1664_512_1_1_U284", "Parent" : "1"},
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_402.mux_1664_16_1_1_U285", "Parent" : "1"},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_402.mux_1664_512_1_1_U286", "Parent" : "1"},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_402.mux_1664_16_1_1_U287", "Parent" : "1"},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_402.mux_1664_512_1_1_U288", "Parent" : "1"},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_402.mux_1664_16_1_1_U289", "Parent" : "1"},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_402.mux_1664_512_1_1_U290", "Parent" : "1"},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_402.mux_1664_16_1_1_U291", "Parent" : "1"},
	{"ID" : "81", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_402.mux_1664_512_1_1_U292", "Parent" : "1"},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_402.mux_1664_16_1_1_U293", "Parent" : "1"},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_402.mux_1664_512_1_1_U294", "Parent" : "1"},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_402.mux_1664_16_1_1_U295", "Parent" : "1"},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_402.mux_1664_512_1_1_U296", "Parent" : "1"},
	{"ID" : "86", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_402.mux_1664_16_1_1_U297", "Parent" : "1"},
	{"ID" : "87", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_402.mux_1664_512_1_1_U298", "Parent" : "1"},
	{"ID" : "88", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_402.mux_1664_16_1_1_U299", "Parent" : "1"},
	{"ID" : "89", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_402.mux_1664_512_1_1_U300", "Parent" : "1"},
	{"ID" : "90", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_402.mux_1664_16_1_1_U301", "Parent" : "1"},
	{"ID" : "91", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_402.mux_1664_512_1_1_U302", "Parent" : "1"},
	{"ID" : "92", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_402.mux_1664_16_1_1_U303", "Parent" : "1"},
	{"ID" : "93", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_402.mux_1664_512_1_1_U304", "Parent" : "1"},
	{"ID" : "94", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_402.mux_1664_16_1_1_U305", "Parent" : "1"},
	{"ID" : "95", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_402.mux_1664_512_1_1_U306", "Parent" : "1"},
	{"ID" : "96", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_402.mux_1664_16_1_1_U307", "Parent" : "1"},
	{"ID" : "97", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_402.mux_1664_512_1_1_U308", "Parent" : "1"},
	{"ID" : "98", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	QuantumMonteCarloU50_Pipeline_LOOP_STEP {
		dH_3_1_reload {Type I LastRead 0 FirstWrite -1}
		dH_2_1_reload {Type I LastRead 0 FirstWrite -1}
		dH_1_1_reload {Type I LastRead 0 FirstWrite -1}
		dH_0_1_reload {Type I LastRead 0 FirstWrite -1}
		stage {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_0_0 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_0_1 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_0_2 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_0_3 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_0_4 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_0_5 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_0_6 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_0_7 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_0_8 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_0_9 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_0_10 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_0_11 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_0_12 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_0_13 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_0_14 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_0_15 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_0_0 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_0_1 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_0_2 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_0_3 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_0_4 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_0_5 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_0_6 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_0_7 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_0_8 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_0_9 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_0_10 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_0_11 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_0_12 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_0_13 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_0_14 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_0_15 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_1_0 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_1_1 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_1_2 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_1_3 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_1_4 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_1_5 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_1_6 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_1_7 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_1_8 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_1_9 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_1_10 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_1_11 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_1_12 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_1_13 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_1_14 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_1_15 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_1_0 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_1_1 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_1_2 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_1_3 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_1_4 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_1_5 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_1_6 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_1_7 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_1_8 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_1_9 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_1_10 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_1_11 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_1_12 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_1_13 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_1_14 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_1_15 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_2_0 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_2_1 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_2_2 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_2_3 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_2_4 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_2_5 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_2_6 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_2_7 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_2_8 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_2_9 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_2_10 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_2_11 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_2_12 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_2_13 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_2_14 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_2_15 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_2_0 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_2_1 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_2_2 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_2_3 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_2_4 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_2_5 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_2_6 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_2_7 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_2_8 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_2_9 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_2_10 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_2_11 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_2_12 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_2_13 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_2_14 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_2_15 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_3_0 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_3_1 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_3_2 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_3_3 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_3_4 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_3_5 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_3_6 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_3_7 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_3_8 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_3_9 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_3_10 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_3_11 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_3_12 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_3_13 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_3_14 {Type I LastRead 8 FirstWrite -1}
		trottersLocal_V_3_15 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_3_0 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_3_1 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_3_2 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_3_3 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_3_4 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_3_5 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_3_6 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_3_7 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_3_8 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_3_9 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_3_10 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_3_11 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_3_12 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_3_13 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_3_14 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal_3_15 {Type I LastRead 8 FirstWrite -1}
		dH_3_3_out {Type O LastRead -1 FirstWrite 25}
		dH_2_3_out {Type O LastRead -1 FirstWrite 25}
		dH_1_3_out {Type O LastRead -1 FirstWrite 25}
		dH_0_3_out {Type O LastRead -1 FirstWrite 25}}
	TrotterUnit {
		t_offset {Type I LastRead 7 FirstWrite -1}
		stage {Type I LastRead 7 FirstWrite -1}
		packOfst {Type I LastRead 0 FirstWrite -1}
		trotters {Type I LastRead 8 FirstWrite -1}
		trotters1 {Type I LastRead 8 FirstWrite -1}
		trotters2 {Type I LastRead 8 FirstWrite -1}
		trotters3 {Type I LastRead 8 FirstWrite -1}
		trotters4 {Type I LastRead 8 FirstWrite -1}
		trotters5 {Type I LastRead 8 FirstWrite -1}
		trotters6 {Type I LastRead 8 FirstWrite -1}
		trotters7 {Type I LastRead 8 FirstWrite -1}
		trotters8 {Type I LastRead 8 FirstWrite -1}
		trotters9 {Type I LastRead 8 FirstWrite -1}
		trotters10 {Type I LastRead 8 FirstWrite -1}
		trotters11 {Type I LastRead 8 FirstWrite -1}
		trotters12 {Type I LastRead 8 FirstWrite -1}
		trotters13 {Type I LastRead 8 FirstWrite -1}
		trotters14 {Type I LastRead 8 FirstWrite -1}
		trotters15 {Type I LastRead 8 FirstWrite -1}
		dH_read {Type I LastRead 7 FirstWrite -1}
		JcoupLocal {Type I LastRead 8 FirstWrite -1}
		JcoupLocal16 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal17 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal18 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal19 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal20 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal21 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal22 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal23 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal24 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal25 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal26 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal27 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal28 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal29 {Type I LastRead 8 FirstWrite -1}
		JcoupLocal30 {Type I LastRead 8 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1179", "Max" : "1179"}
	, {"Name" : "Interval", "Min" : "1179", "Max" : "1179"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	dH_3_1_reload { ap_none {  { dH_3_1_reload in_data 0 32 } } }
	dH_2_1_reload { ap_none {  { dH_2_1_reload in_data 0 32 } } }
	dH_1_1_reload { ap_none {  { dH_1_1_reload in_data 0 32 } } }
	dH_0_1_reload { ap_none {  { dH_0_1_reload in_data 0 32 } } }
	stage { ap_none {  { stage in_data 0 13 } } }
	trottersLocal_V_0_0 { ap_memory {  { trottersLocal_V_0_0_address0 mem_address 1 4 }  { trottersLocal_V_0_0_ce0 mem_ce 1 1 }  { trottersLocal_V_0_0_q0 mem_dout 0 16 }  { trottersLocal_V_0_0_address1 MemPortADDR2 1 4 }  { trottersLocal_V_0_0_ce1 MemPortCE2 1 1 }  { trottersLocal_V_0_0_q1 MemPortDOUT2 0 16 } } }
	trottersLocal_V_0_1 { ap_memory {  { trottersLocal_V_0_1_address0 mem_address 1 4 }  { trottersLocal_V_0_1_ce0 mem_ce 1 1 }  { trottersLocal_V_0_1_q0 mem_dout 0 16 }  { trottersLocal_V_0_1_address1 MemPortADDR2 1 4 }  { trottersLocal_V_0_1_ce1 MemPortCE2 1 1 }  { trottersLocal_V_0_1_q1 MemPortDOUT2 0 16 } } }
	trottersLocal_V_0_2 { ap_memory {  { trottersLocal_V_0_2_address0 mem_address 1 4 }  { trottersLocal_V_0_2_ce0 mem_ce 1 1 }  { trottersLocal_V_0_2_q0 mem_dout 0 16 }  { trottersLocal_V_0_2_address1 MemPortADDR2 1 4 }  { trottersLocal_V_0_2_ce1 MemPortCE2 1 1 }  { trottersLocal_V_0_2_q1 MemPortDOUT2 0 16 } } }
	trottersLocal_V_0_3 { ap_memory {  { trottersLocal_V_0_3_address0 mem_address 1 4 }  { trottersLocal_V_0_3_ce0 mem_ce 1 1 }  { trottersLocal_V_0_3_q0 mem_dout 0 16 }  { trottersLocal_V_0_3_address1 MemPortADDR2 1 4 }  { trottersLocal_V_0_3_ce1 MemPortCE2 1 1 }  { trottersLocal_V_0_3_q1 MemPortDOUT2 0 16 } } }
	trottersLocal_V_0_4 { ap_memory {  { trottersLocal_V_0_4_address0 mem_address 1 4 }  { trottersLocal_V_0_4_ce0 mem_ce 1 1 }  { trottersLocal_V_0_4_q0 mem_dout 0 16 }  { trottersLocal_V_0_4_address1 MemPortADDR2 1 4 }  { trottersLocal_V_0_4_ce1 MemPortCE2 1 1 }  { trottersLocal_V_0_4_q1 MemPortDOUT2 0 16 } } }
	trottersLocal_V_0_5 { ap_memory {  { trottersLocal_V_0_5_address0 mem_address 1 4 }  { trottersLocal_V_0_5_ce0 mem_ce 1 1 }  { trottersLocal_V_0_5_q0 mem_dout 0 16 }  { trottersLocal_V_0_5_address1 MemPortADDR2 1 4 }  { trottersLocal_V_0_5_ce1 MemPortCE2 1 1 }  { trottersLocal_V_0_5_q1 MemPortDOUT2 0 16 } } }
	trottersLocal_V_0_6 { ap_memory {  { trottersLocal_V_0_6_address0 mem_address 1 4 }  { trottersLocal_V_0_6_ce0 mem_ce 1 1 }  { trottersLocal_V_0_6_q0 mem_dout 0 16 }  { trottersLocal_V_0_6_address1 MemPortADDR2 1 4 }  { trottersLocal_V_0_6_ce1 MemPortCE2 1 1 }  { trottersLocal_V_0_6_q1 MemPortDOUT2 0 16 } } }
	trottersLocal_V_0_7 { ap_memory {  { trottersLocal_V_0_7_address0 mem_address 1 4 }  { trottersLocal_V_0_7_ce0 mem_ce 1 1 }  { trottersLocal_V_0_7_q0 mem_dout 0 16 }  { trottersLocal_V_0_7_address1 MemPortADDR2 1 4 }  { trottersLocal_V_0_7_ce1 MemPortCE2 1 1 }  { trottersLocal_V_0_7_q1 MemPortDOUT2 0 16 } } }
	trottersLocal_V_0_8 { ap_memory {  { trottersLocal_V_0_8_address0 mem_address 1 4 }  { trottersLocal_V_0_8_ce0 mem_ce 1 1 }  { trottersLocal_V_0_8_q0 mem_dout 0 16 }  { trottersLocal_V_0_8_address1 MemPortADDR2 1 4 }  { trottersLocal_V_0_8_ce1 MemPortCE2 1 1 }  { trottersLocal_V_0_8_q1 MemPortDOUT2 0 16 } } }
	trottersLocal_V_0_9 { ap_memory {  { trottersLocal_V_0_9_address0 mem_address 1 4 }  { trottersLocal_V_0_9_ce0 mem_ce 1 1 }  { trottersLocal_V_0_9_q0 mem_dout 0 16 }  { trottersLocal_V_0_9_address1 MemPortADDR2 1 4 }  { trottersLocal_V_0_9_ce1 MemPortCE2 1 1 }  { trottersLocal_V_0_9_q1 MemPortDOUT2 0 16 } } }
	trottersLocal_V_0_10 { ap_memory {  { trottersLocal_V_0_10_address0 mem_address 1 4 }  { trottersLocal_V_0_10_ce0 mem_ce 1 1 }  { trottersLocal_V_0_10_q0 mem_dout 0 16 }  { trottersLocal_V_0_10_address1 MemPortADDR2 1 4 }  { trottersLocal_V_0_10_ce1 MemPortCE2 1 1 }  { trottersLocal_V_0_10_q1 MemPortDOUT2 0 16 } } }
	trottersLocal_V_0_11 { ap_memory {  { trottersLocal_V_0_11_address0 mem_address 1 4 }  { trottersLocal_V_0_11_ce0 mem_ce 1 1 }  { trottersLocal_V_0_11_q0 mem_dout 0 16 }  { trottersLocal_V_0_11_address1 MemPortADDR2 1 4 }  { trottersLocal_V_0_11_ce1 MemPortCE2 1 1 }  { trottersLocal_V_0_11_q1 MemPortDOUT2 0 16 } } }
	trottersLocal_V_0_12 { ap_memory {  { trottersLocal_V_0_12_address0 mem_address 1 4 }  { trottersLocal_V_0_12_ce0 mem_ce 1 1 }  { trottersLocal_V_0_12_q0 mem_dout 0 16 }  { trottersLocal_V_0_12_address1 MemPortADDR2 1 4 }  { trottersLocal_V_0_12_ce1 MemPortCE2 1 1 }  { trottersLocal_V_0_12_q1 MemPortDOUT2 0 16 } } }
	trottersLocal_V_0_13 { ap_memory {  { trottersLocal_V_0_13_address0 mem_address 1 4 }  { trottersLocal_V_0_13_ce0 mem_ce 1 1 }  { trottersLocal_V_0_13_q0 mem_dout 0 16 }  { trottersLocal_V_0_13_address1 MemPortADDR2 1 4 }  { trottersLocal_V_0_13_ce1 MemPortCE2 1 1 }  { trottersLocal_V_0_13_q1 MemPortDOUT2 0 16 } } }
	trottersLocal_V_0_14 { ap_memory {  { trottersLocal_V_0_14_address0 mem_address 1 4 }  { trottersLocal_V_0_14_ce0 mem_ce 1 1 }  { trottersLocal_V_0_14_q0 mem_dout 0 16 }  { trottersLocal_V_0_14_address1 MemPortADDR2 1 4 }  { trottersLocal_V_0_14_ce1 MemPortCE2 1 1 }  { trottersLocal_V_0_14_q1 MemPortDOUT2 0 16 } } }
	trottersLocal_V_0_15 { ap_memory {  { trottersLocal_V_0_15_address0 mem_address 1 4 }  { trottersLocal_V_0_15_ce0 mem_ce 1 1 }  { trottersLocal_V_0_15_q0 mem_dout 0 16 }  { trottersLocal_V_0_15_address1 MemPortADDR2 1 4 }  { trottersLocal_V_0_15_ce1 MemPortCE2 1 1 }  { trottersLocal_V_0_15_q1 MemPortDOUT2 0 16 } } }
	JcoupLocal_0_0 { ap_memory {  { JcoupLocal_0_0_address0 mem_address 1 4 }  { JcoupLocal_0_0_ce0 mem_ce 1 1 }  { JcoupLocal_0_0_q0 mem_dout 0 512 }  { JcoupLocal_0_0_address1 MemPortADDR2 1 4 }  { JcoupLocal_0_0_ce1 MemPortCE2 1 1 }  { JcoupLocal_0_0_q1 MemPortDOUT2 0 512 } } }
	JcoupLocal_0_1 { ap_memory {  { JcoupLocal_0_1_address0 mem_address 1 4 }  { JcoupLocal_0_1_ce0 mem_ce 1 1 }  { JcoupLocal_0_1_q0 mem_dout 0 512 }  { JcoupLocal_0_1_address1 MemPortADDR2 1 4 }  { JcoupLocal_0_1_ce1 MemPortCE2 1 1 }  { JcoupLocal_0_1_q1 MemPortDOUT2 0 512 } } }
	JcoupLocal_0_2 { ap_memory {  { JcoupLocal_0_2_address0 mem_address 1 4 }  { JcoupLocal_0_2_ce0 mem_ce 1 1 }  { JcoupLocal_0_2_q0 mem_dout 0 512 }  { JcoupLocal_0_2_address1 MemPortADDR2 1 4 }  { JcoupLocal_0_2_ce1 MemPortCE2 1 1 }  { JcoupLocal_0_2_q1 MemPortDOUT2 0 512 } } }
	JcoupLocal_0_3 { ap_memory {  { JcoupLocal_0_3_address0 mem_address 1 4 }  { JcoupLocal_0_3_ce0 mem_ce 1 1 }  { JcoupLocal_0_3_q0 mem_dout 0 512 }  { JcoupLocal_0_3_address1 MemPortADDR2 1 4 }  { JcoupLocal_0_3_ce1 MemPortCE2 1 1 }  { JcoupLocal_0_3_q1 MemPortDOUT2 0 512 } } }
	JcoupLocal_0_4 { ap_memory {  { JcoupLocal_0_4_address0 mem_address 1 4 }  { JcoupLocal_0_4_ce0 mem_ce 1 1 }  { JcoupLocal_0_4_q0 mem_dout 0 512 }  { JcoupLocal_0_4_address1 MemPortADDR2 1 4 }  { JcoupLocal_0_4_ce1 MemPortCE2 1 1 }  { JcoupLocal_0_4_q1 MemPortDOUT2 0 512 } } }
	JcoupLocal_0_5 { ap_memory {  { JcoupLocal_0_5_address0 mem_address 1 4 }  { JcoupLocal_0_5_ce0 mem_ce 1 1 }  { JcoupLocal_0_5_q0 mem_dout 0 512 }  { JcoupLocal_0_5_address1 MemPortADDR2 1 4 }  { JcoupLocal_0_5_ce1 MemPortCE2 1 1 }  { JcoupLocal_0_5_q1 MemPortDOUT2 0 512 } } }
	JcoupLocal_0_6 { ap_memory {  { JcoupLocal_0_6_address0 mem_address 1 4 }  { JcoupLocal_0_6_ce0 mem_ce 1 1 }  { JcoupLocal_0_6_q0 mem_dout 0 512 }  { JcoupLocal_0_6_address1 MemPortADDR2 1 4 }  { JcoupLocal_0_6_ce1 MemPortCE2 1 1 }  { JcoupLocal_0_6_q1 MemPortDOUT2 0 512 } } }
	JcoupLocal_0_7 { ap_memory {  { JcoupLocal_0_7_address0 mem_address 1 4 }  { JcoupLocal_0_7_ce0 mem_ce 1 1 }  { JcoupLocal_0_7_q0 mem_dout 0 512 }  { JcoupLocal_0_7_address1 MemPortADDR2 1 4 }  { JcoupLocal_0_7_ce1 MemPortCE2 1 1 }  { JcoupLocal_0_7_q1 MemPortDOUT2 0 512 } } }
	JcoupLocal_0_8 { ap_memory {  { JcoupLocal_0_8_address0 mem_address 1 4 }  { JcoupLocal_0_8_ce0 mem_ce 1 1 }  { JcoupLocal_0_8_q0 mem_dout 0 512 }  { JcoupLocal_0_8_address1 MemPortADDR2 1 4 }  { JcoupLocal_0_8_ce1 MemPortCE2 1 1 }  { JcoupLocal_0_8_q1 MemPortDOUT2 0 512 } } }
	JcoupLocal_0_9 { ap_memory {  { JcoupLocal_0_9_address0 mem_address 1 4 }  { JcoupLocal_0_9_ce0 mem_ce 1 1 }  { JcoupLocal_0_9_q0 mem_dout 0 512 }  { JcoupLocal_0_9_address1 MemPortADDR2 1 4 }  { JcoupLocal_0_9_ce1 MemPortCE2 1 1 }  { JcoupLocal_0_9_q1 MemPortDOUT2 0 512 } } }
	JcoupLocal_0_10 { ap_memory {  { JcoupLocal_0_10_address0 mem_address 1 4 }  { JcoupLocal_0_10_ce0 mem_ce 1 1 }  { JcoupLocal_0_10_q0 mem_dout 0 512 }  { JcoupLocal_0_10_address1 MemPortADDR2 1 4 }  { JcoupLocal_0_10_ce1 MemPortCE2 1 1 }  { JcoupLocal_0_10_q1 MemPortDOUT2 0 512 } } }
	JcoupLocal_0_11 { ap_memory {  { JcoupLocal_0_11_address0 mem_address 1 4 }  { JcoupLocal_0_11_ce0 mem_ce 1 1 }  { JcoupLocal_0_11_q0 mem_dout 0 512 }  { JcoupLocal_0_11_address1 MemPortADDR2 1 4 }  { JcoupLocal_0_11_ce1 MemPortCE2 1 1 }  { JcoupLocal_0_11_q1 MemPortDOUT2 0 512 } } }
	JcoupLocal_0_12 { ap_memory {  { JcoupLocal_0_12_address0 mem_address 1 4 }  { JcoupLocal_0_12_ce0 mem_ce 1 1 }  { JcoupLocal_0_12_q0 mem_dout 0 512 }  { JcoupLocal_0_12_address1 MemPortADDR2 1 4 }  { JcoupLocal_0_12_ce1 MemPortCE2 1 1 }  { JcoupLocal_0_12_q1 MemPortDOUT2 0 512 } } }
	JcoupLocal_0_13 { ap_memory {  { JcoupLocal_0_13_address0 mem_address 1 4 }  { JcoupLocal_0_13_ce0 mem_ce 1 1 }  { JcoupLocal_0_13_q0 mem_dout 0 512 }  { JcoupLocal_0_13_address1 MemPortADDR2 1 4 }  { JcoupLocal_0_13_ce1 MemPortCE2 1 1 }  { JcoupLocal_0_13_q1 MemPortDOUT2 0 512 } } }
	JcoupLocal_0_14 { ap_memory {  { JcoupLocal_0_14_address0 mem_address 1 4 }  { JcoupLocal_0_14_ce0 mem_ce 1 1 }  { JcoupLocal_0_14_q0 mem_dout 0 512 }  { JcoupLocal_0_14_address1 MemPortADDR2 1 4 }  { JcoupLocal_0_14_ce1 MemPortCE2 1 1 }  { JcoupLocal_0_14_q1 MemPortDOUT2 0 512 } } }
	JcoupLocal_0_15 { ap_memory {  { JcoupLocal_0_15_address0 mem_address 1 4 }  { JcoupLocal_0_15_ce0 mem_ce 1 1 }  { JcoupLocal_0_15_q0 mem_dout 0 512 }  { JcoupLocal_0_15_address1 MemPortADDR2 1 4 }  { JcoupLocal_0_15_ce1 MemPortCE2 1 1 }  { JcoupLocal_0_15_q1 MemPortDOUT2 0 512 } } }
	trottersLocal_V_1_0 { ap_memory {  { trottersLocal_V_1_0_address0 mem_address 1 4 }  { trottersLocal_V_1_0_ce0 mem_ce 1 1 }  { trottersLocal_V_1_0_q0 mem_dout 0 16 }  { trottersLocal_V_1_0_address1 MemPortADDR2 1 4 }  { trottersLocal_V_1_0_ce1 MemPortCE2 1 1 }  { trottersLocal_V_1_0_q1 MemPortDOUT2 0 16 } } }
	trottersLocal_V_1_1 { ap_memory {  { trottersLocal_V_1_1_address0 mem_address 1 4 }  { trottersLocal_V_1_1_ce0 mem_ce 1 1 }  { trottersLocal_V_1_1_q0 mem_dout 0 16 }  { trottersLocal_V_1_1_address1 MemPortADDR2 1 4 }  { trottersLocal_V_1_1_ce1 MemPortCE2 1 1 }  { trottersLocal_V_1_1_q1 MemPortDOUT2 0 16 } } }
	trottersLocal_V_1_2 { ap_memory {  { trottersLocal_V_1_2_address0 mem_address 1 4 }  { trottersLocal_V_1_2_ce0 mem_ce 1 1 }  { trottersLocal_V_1_2_q0 mem_dout 0 16 }  { trottersLocal_V_1_2_address1 MemPortADDR2 1 4 }  { trottersLocal_V_1_2_ce1 MemPortCE2 1 1 }  { trottersLocal_V_1_2_q1 MemPortDOUT2 0 16 } } }
	trottersLocal_V_1_3 { ap_memory {  { trottersLocal_V_1_3_address0 mem_address 1 4 }  { trottersLocal_V_1_3_ce0 mem_ce 1 1 }  { trottersLocal_V_1_3_q0 mem_dout 0 16 }  { trottersLocal_V_1_3_address1 MemPortADDR2 1 4 }  { trottersLocal_V_1_3_ce1 MemPortCE2 1 1 }  { trottersLocal_V_1_3_q1 MemPortDOUT2 0 16 } } }
	trottersLocal_V_1_4 { ap_memory {  { trottersLocal_V_1_4_address0 mem_address 1 4 }  { trottersLocal_V_1_4_ce0 mem_ce 1 1 }  { trottersLocal_V_1_4_q0 mem_dout 0 16 }  { trottersLocal_V_1_4_address1 MemPortADDR2 1 4 }  { trottersLocal_V_1_4_ce1 MemPortCE2 1 1 }  { trottersLocal_V_1_4_q1 MemPortDOUT2 0 16 } } }
	trottersLocal_V_1_5 { ap_memory {  { trottersLocal_V_1_5_address0 mem_address 1 4 }  { trottersLocal_V_1_5_ce0 mem_ce 1 1 }  { trottersLocal_V_1_5_q0 mem_dout 0 16 }  { trottersLocal_V_1_5_address1 MemPortADDR2 1 4 }  { trottersLocal_V_1_5_ce1 MemPortCE2 1 1 }  { trottersLocal_V_1_5_q1 MemPortDOUT2 0 16 } } }
	trottersLocal_V_1_6 { ap_memory {  { trottersLocal_V_1_6_address0 mem_address 1 4 }  { trottersLocal_V_1_6_ce0 mem_ce 1 1 }  { trottersLocal_V_1_6_q0 mem_dout 0 16 }  { trottersLocal_V_1_6_address1 MemPortADDR2 1 4 }  { trottersLocal_V_1_6_ce1 MemPortCE2 1 1 }  { trottersLocal_V_1_6_q1 MemPortDOUT2 0 16 } } }
	trottersLocal_V_1_7 { ap_memory {  { trottersLocal_V_1_7_address0 mem_address 1 4 }  { trottersLocal_V_1_7_ce0 mem_ce 1 1 }  { trottersLocal_V_1_7_q0 mem_dout 0 16 }  { trottersLocal_V_1_7_address1 MemPortADDR2 1 4 }  { trottersLocal_V_1_7_ce1 MemPortCE2 1 1 }  { trottersLocal_V_1_7_q1 MemPortDOUT2 0 16 } } }
	trottersLocal_V_1_8 { ap_memory {  { trottersLocal_V_1_8_address0 mem_address 1 4 }  { trottersLocal_V_1_8_ce0 mem_ce 1 1 }  { trottersLocal_V_1_8_q0 mem_dout 0 16 }  { trottersLocal_V_1_8_address1 MemPortADDR2 1 4 }  { trottersLocal_V_1_8_ce1 MemPortCE2 1 1 }  { trottersLocal_V_1_8_q1 MemPortDOUT2 0 16 } } }
	trottersLocal_V_1_9 { ap_memory {  { trottersLocal_V_1_9_address0 mem_address 1 4 }  { trottersLocal_V_1_9_ce0 mem_ce 1 1 }  { trottersLocal_V_1_9_q0 mem_dout 0 16 }  { trottersLocal_V_1_9_address1 MemPortADDR2 1 4 }  { trottersLocal_V_1_9_ce1 MemPortCE2 1 1 }  { trottersLocal_V_1_9_q1 MemPortDOUT2 0 16 } } }
	trottersLocal_V_1_10 { ap_memory {  { trottersLocal_V_1_10_address0 mem_address 1 4 }  { trottersLocal_V_1_10_ce0 mem_ce 1 1 }  { trottersLocal_V_1_10_q0 mem_dout 0 16 }  { trottersLocal_V_1_10_address1 MemPortADDR2 1 4 }  { trottersLocal_V_1_10_ce1 MemPortCE2 1 1 }  { trottersLocal_V_1_10_q1 MemPortDOUT2 0 16 } } }
	trottersLocal_V_1_11 { ap_memory {  { trottersLocal_V_1_11_address0 mem_address 1 4 }  { trottersLocal_V_1_11_ce0 mem_ce 1 1 }  { trottersLocal_V_1_11_q0 mem_dout 0 16 }  { trottersLocal_V_1_11_address1 MemPortADDR2 1 4 }  { trottersLocal_V_1_11_ce1 MemPortCE2 1 1 }  { trottersLocal_V_1_11_q1 MemPortDOUT2 0 16 } } }
	trottersLocal_V_1_12 { ap_memory {  { trottersLocal_V_1_12_address0 mem_address 1 4 }  { trottersLocal_V_1_12_ce0 mem_ce 1 1 }  { trottersLocal_V_1_12_q0 mem_dout 0 16 }  { trottersLocal_V_1_12_address1 MemPortADDR2 1 4 }  { trottersLocal_V_1_12_ce1 MemPortCE2 1 1 }  { trottersLocal_V_1_12_q1 MemPortDOUT2 0 16 } } }
	trottersLocal_V_1_13 { ap_memory {  { trottersLocal_V_1_13_address0 mem_address 1 4 }  { trottersLocal_V_1_13_ce0 mem_ce 1 1 }  { trottersLocal_V_1_13_q0 mem_dout 0 16 }  { trottersLocal_V_1_13_address1 MemPortADDR2 1 4 }  { trottersLocal_V_1_13_ce1 MemPortCE2 1 1 }  { trottersLocal_V_1_13_q1 MemPortDOUT2 0 16 } } }
	trottersLocal_V_1_14 { ap_memory {  { trottersLocal_V_1_14_address0 mem_address 1 4 }  { trottersLocal_V_1_14_ce0 mem_ce 1 1 }  { trottersLocal_V_1_14_q0 mem_dout 0 16 }  { trottersLocal_V_1_14_address1 MemPortADDR2 1 4 }  { trottersLocal_V_1_14_ce1 MemPortCE2 1 1 }  { trottersLocal_V_1_14_q1 MemPortDOUT2 0 16 } } }
	trottersLocal_V_1_15 { ap_memory {  { trottersLocal_V_1_15_address0 mem_address 1 4 }  { trottersLocal_V_1_15_ce0 mem_ce 1 1 }  { trottersLocal_V_1_15_q0 mem_dout 0 16 }  { trottersLocal_V_1_15_address1 MemPortADDR2 1 4 }  { trottersLocal_V_1_15_ce1 MemPortCE2 1 1 }  { trottersLocal_V_1_15_q1 MemPortDOUT2 0 16 } } }
	JcoupLocal_1_0 { ap_memory {  { JcoupLocal_1_0_address0 mem_address 1 4 }  { JcoupLocal_1_0_ce0 mem_ce 1 1 }  { JcoupLocal_1_0_q0 mem_dout 0 512 }  { JcoupLocal_1_0_address1 MemPortADDR2 1 4 }  { JcoupLocal_1_0_ce1 MemPortCE2 1 1 }  { JcoupLocal_1_0_q1 MemPortDOUT2 0 512 } } }
	JcoupLocal_1_1 { ap_memory {  { JcoupLocal_1_1_address0 mem_address 1 4 }  { JcoupLocal_1_1_ce0 mem_ce 1 1 }  { JcoupLocal_1_1_q0 mem_dout 0 512 }  { JcoupLocal_1_1_address1 MemPortADDR2 1 4 }  { JcoupLocal_1_1_ce1 MemPortCE2 1 1 }  { JcoupLocal_1_1_q1 MemPortDOUT2 0 512 } } }
	JcoupLocal_1_2 { ap_memory {  { JcoupLocal_1_2_address0 mem_address 1 4 }  { JcoupLocal_1_2_ce0 mem_ce 1 1 }  { JcoupLocal_1_2_q0 mem_dout 0 512 }  { JcoupLocal_1_2_address1 MemPortADDR2 1 4 }  { JcoupLocal_1_2_ce1 MemPortCE2 1 1 }  { JcoupLocal_1_2_q1 MemPortDOUT2 0 512 } } }
	JcoupLocal_1_3 { ap_memory {  { JcoupLocal_1_3_address0 mem_address 1 4 }  { JcoupLocal_1_3_ce0 mem_ce 1 1 }  { JcoupLocal_1_3_q0 mem_dout 0 512 }  { JcoupLocal_1_3_address1 MemPortADDR2 1 4 }  { JcoupLocal_1_3_ce1 MemPortCE2 1 1 }  { JcoupLocal_1_3_q1 MemPortDOUT2 0 512 } } }
	JcoupLocal_1_4 { ap_memory {  { JcoupLocal_1_4_address0 mem_address 1 4 }  { JcoupLocal_1_4_ce0 mem_ce 1 1 }  { JcoupLocal_1_4_q0 mem_dout 0 512 }  { JcoupLocal_1_4_address1 MemPortADDR2 1 4 }  { JcoupLocal_1_4_ce1 MemPortCE2 1 1 }  { JcoupLocal_1_4_q1 MemPortDOUT2 0 512 } } }
	JcoupLocal_1_5 { ap_memory {  { JcoupLocal_1_5_address0 mem_address 1 4 }  { JcoupLocal_1_5_ce0 mem_ce 1 1 }  { JcoupLocal_1_5_q0 mem_dout 0 512 }  { JcoupLocal_1_5_address1 MemPortADDR2 1 4 }  { JcoupLocal_1_5_ce1 MemPortCE2 1 1 }  { JcoupLocal_1_5_q1 MemPortDOUT2 0 512 } } }
	JcoupLocal_1_6 { ap_memory {  { JcoupLocal_1_6_address0 mem_address 1 4 }  { JcoupLocal_1_6_ce0 mem_ce 1 1 }  { JcoupLocal_1_6_q0 mem_dout 0 512 }  { JcoupLocal_1_6_address1 MemPortADDR2 1 4 }  { JcoupLocal_1_6_ce1 MemPortCE2 1 1 }  { JcoupLocal_1_6_q1 MemPortDOUT2 0 512 } } }
	JcoupLocal_1_7 { ap_memory {  { JcoupLocal_1_7_address0 mem_address 1 4 }  { JcoupLocal_1_7_ce0 mem_ce 1 1 }  { JcoupLocal_1_7_q0 mem_dout 0 512 }  { JcoupLocal_1_7_address1 MemPortADDR2 1 4 }  { JcoupLocal_1_7_ce1 MemPortCE2 1 1 }  { JcoupLocal_1_7_q1 MemPortDOUT2 0 512 } } }
	JcoupLocal_1_8 { ap_memory {  { JcoupLocal_1_8_address0 mem_address 1 4 }  { JcoupLocal_1_8_ce0 mem_ce 1 1 }  { JcoupLocal_1_8_q0 mem_dout 0 512 }  { JcoupLocal_1_8_address1 MemPortADDR2 1 4 }  { JcoupLocal_1_8_ce1 MemPortCE2 1 1 }  { JcoupLocal_1_8_q1 MemPortDOUT2 0 512 } } }
	JcoupLocal_1_9 { ap_memory {  { JcoupLocal_1_9_address0 mem_address 1 4 }  { JcoupLocal_1_9_ce0 mem_ce 1 1 }  { JcoupLocal_1_9_q0 mem_dout 0 512 }  { JcoupLocal_1_9_address1 MemPortADDR2 1 4 }  { JcoupLocal_1_9_ce1 MemPortCE2 1 1 }  { JcoupLocal_1_9_q1 MemPortDOUT2 0 512 } } }
	JcoupLocal_1_10 { ap_memory {  { JcoupLocal_1_10_address0 mem_address 1 4 }  { JcoupLocal_1_10_ce0 mem_ce 1 1 }  { JcoupLocal_1_10_q0 mem_dout 0 512 }  { JcoupLocal_1_10_address1 MemPortADDR2 1 4 }  { JcoupLocal_1_10_ce1 MemPortCE2 1 1 }  { JcoupLocal_1_10_q1 MemPortDOUT2 0 512 } } }
	JcoupLocal_1_11 { ap_memory {  { JcoupLocal_1_11_address0 mem_address 1 4 }  { JcoupLocal_1_11_ce0 mem_ce 1 1 }  { JcoupLocal_1_11_q0 mem_dout 0 512 }  { JcoupLocal_1_11_address1 MemPortADDR2 1 4 }  { JcoupLocal_1_11_ce1 MemPortCE2 1 1 }  { JcoupLocal_1_11_q1 MemPortDOUT2 0 512 } } }
	JcoupLocal_1_12 { ap_memory {  { JcoupLocal_1_12_address0 mem_address 1 4 }  { JcoupLocal_1_12_ce0 mem_ce 1 1 }  { JcoupLocal_1_12_q0 mem_dout 0 512 }  { JcoupLocal_1_12_address1 MemPortADDR2 1 4 }  { JcoupLocal_1_12_ce1 MemPortCE2 1 1 }  { JcoupLocal_1_12_q1 MemPortDOUT2 0 512 } } }
	JcoupLocal_1_13 { ap_memory {  { JcoupLocal_1_13_address0 mem_address 1 4 }  { JcoupLocal_1_13_ce0 mem_ce 1 1 }  { JcoupLocal_1_13_q0 mem_dout 0 512 }  { JcoupLocal_1_13_address1 MemPortADDR2 1 4 }  { JcoupLocal_1_13_ce1 MemPortCE2 1 1 }  { JcoupLocal_1_13_q1 MemPortDOUT2 0 512 } } }
	JcoupLocal_1_14 { ap_memory {  { JcoupLocal_1_14_address0 mem_address 1 4 }  { JcoupLocal_1_14_ce0 mem_ce 1 1 }  { JcoupLocal_1_14_q0 mem_dout 0 512 }  { JcoupLocal_1_14_address1 MemPortADDR2 1 4 }  { JcoupLocal_1_14_ce1 MemPortCE2 1 1 }  { JcoupLocal_1_14_q1 MemPortDOUT2 0 512 } } }
	JcoupLocal_1_15 { ap_memory {  { JcoupLocal_1_15_address0 mem_address 1 4 }  { JcoupLocal_1_15_ce0 mem_ce 1 1 }  { JcoupLocal_1_15_q0 mem_dout 0 512 }  { JcoupLocal_1_15_address1 MemPortADDR2 1 4 }  { JcoupLocal_1_15_ce1 MemPortCE2 1 1 }  { JcoupLocal_1_15_q1 MemPortDOUT2 0 512 } } }
	trottersLocal_V_2_0 { ap_memory {  { trottersLocal_V_2_0_address0 mem_address 1 4 }  { trottersLocal_V_2_0_ce0 mem_ce 1 1 }  { trottersLocal_V_2_0_q0 mem_dout 0 16 }  { trottersLocal_V_2_0_address1 MemPortADDR2 1 4 }  { trottersLocal_V_2_0_ce1 MemPortCE2 1 1 }  { trottersLocal_V_2_0_q1 MemPortDOUT2 0 16 } } }
	trottersLocal_V_2_1 { ap_memory {  { trottersLocal_V_2_1_address0 mem_address 1 4 }  { trottersLocal_V_2_1_ce0 mem_ce 1 1 }  { trottersLocal_V_2_1_q0 mem_dout 0 16 }  { trottersLocal_V_2_1_address1 MemPortADDR2 1 4 }  { trottersLocal_V_2_1_ce1 MemPortCE2 1 1 }  { trottersLocal_V_2_1_q1 MemPortDOUT2 0 16 } } }
	trottersLocal_V_2_2 { ap_memory {  { trottersLocal_V_2_2_address0 mem_address 1 4 }  { trottersLocal_V_2_2_ce0 mem_ce 1 1 }  { trottersLocal_V_2_2_q0 mem_dout 0 16 }  { trottersLocal_V_2_2_address1 MemPortADDR2 1 4 }  { trottersLocal_V_2_2_ce1 MemPortCE2 1 1 }  { trottersLocal_V_2_2_q1 MemPortDOUT2 0 16 } } }
	trottersLocal_V_2_3 { ap_memory {  { trottersLocal_V_2_3_address0 mem_address 1 4 }  { trottersLocal_V_2_3_ce0 mem_ce 1 1 }  { trottersLocal_V_2_3_q0 mem_dout 0 16 }  { trottersLocal_V_2_3_address1 MemPortADDR2 1 4 }  { trottersLocal_V_2_3_ce1 MemPortCE2 1 1 }  { trottersLocal_V_2_3_q1 MemPortDOUT2 0 16 } } }
	trottersLocal_V_2_4 { ap_memory {  { trottersLocal_V_2_4_address0 mem_address 1 4 }  { trottersLocal_V_2_4_ce0 mem_ce 1 1 }  { trottersLocal_V_2_4_q0 mem_dout 0 16 }  { trottersLocal_V_2_4_address1 MemPortADDR2 1 4 }  { trottersLocal_V_2_4_ce1 MemPortCE2 1 1 }  { trottersLocal_V_2_4_q1 MemPortDOUT2 0 16 } } }
	trottersLocal_V_2_5 { ap_memory {  { trottersLocal_V_2_5_address0 mem_address 1 4 }  { trottersLocal_V_2_5_ce0 mem_ce 1 1 }  { trottersLocal_V_2_5_q0 mem_dout 0 16 }  { trottersLocal_V_2_5_address1 MemPortADDR2 1 4 }  { trottersLocal_V_2_5_ce1 MemPortCE2 1 1 }  { trottersLocal_V_2_5_q1 MemPortDOUT2 0 16 } } }
	trottersLocal_V_2_6 { ap_memory {  { trottersLocal_V_2_6_address0 mem_address 1 4 }  { trottersLocal_V_2_6_ce0 mem_ce 1 1 }  { trottersLocal_V_2_6_q0 mem_dout 0 16 }  { trottersLocal_V_2_6_address1 MemPortADDR2 1 4 }  { trottersLocal_V_2_6_ce1 MemPortCE2 1 1 }  { trottersLocal_V_2_6_q1 MemPortDOUT2 0 16 } } }
	trottersLocal_V_2_7 { ap_memory {  { trottersLocal_V_2_7_address0 mem_address 1 4 }  { trottersLocal_V_2_7_ce0 mem_ce 1 1 }  { trottersLocal_V_2_7_q0 mem_dout 0 16 }  { trottersLocal_V_2_7_address1 MemPortADDR2 1 4 }  { trottersLocal_V_2_7_ce1 MemPortCE2 1 1 }  { trottersLocal_V_2_7_q1 MemPortDOUT2 0 16 } } }
	trottersLocal_V_2_8 { ap_memory {  { trottersLocal_V_2_8_address0 mem_address 1 4 }  { trottersLocal_V_2_8_ce0 mem_ce 1 1 }  { trottersLocal_V_2_8_q0 mem_dout 0 16 }  { trottersLocal_V_2_8_address1 MemPortADDR2 1 4 }  { trottersLocal_V_2_8_ce1 MemPortCE2 1 1 }  { trottersLocal_V_2_8_q1 MemPortDOUT2 0 16 } } }
	trottersLocal_V_2_9 { ap_memory {  { trottersLocal_V_2_9_address0 mem_address 1 4 }  { trottersLocal_V_2_9_ce0 mem_ce 1 1 }  { trottersLocal_V_2_9_q0 mem_dout 0 16 }  { trottersLocal_V_2_9_address1 MemPortADDR2 1 4 }  { trottersLocal_V_2_9_ce1 MemPortCE2 1 1 }  { trottersLocal_V_2_9_q1 MemPortDOUT2 0 16 } } }
	trottersLocal_V_2_10 { ap_memory {  { trottersLocal_V_2_10_address0 mem_address 1 4 }  { trottersLocal_V_2_10_ce0 mem_ce 1 1 }  { trottersLocal_V_2_10_q0 mem_dout 0 16 }  { trottersLocal_V_2_10_address1 MemPortADDR2 1 4 }  { trottersLocal_V_2_10_ce1 MemPortCE2 1 1 }  { trottersLocal_V_2_10_q1 MemPortDOUT2 0 16 } } }
	trottersLocal_V_2_11 { ap_memory {  { trottersLocal_V_2_11_address0 mem_address 1 4 }  { trottersLocal_V_2_11_ce0 mem_ce 1 1 }  { trottersLocal_V_2_11_q0 mem_dout 0 16 }  { trottersLocal_V_2_11_address1 MemPortADDR2 1 4 }  { trottersLocal_V_2_11_ce1 MemPortCE2 1 1 }  { trottersLocal_V_2_11_q1 MemPortDOUT2 0 16 } } }
	trottersLocal_V_2_12 { ap_memory {  { trottersLocal_V_2_12_address0 mem_address 1 4 }  { trottersLocal_V_2_12_ce0 mem_ce 1 1 }  { trottersLocal_V_2_12_q0 mem_dout 0 16 }  { trottersLocal_V_2_12_address1 MemPortADDR2 1 4 }  { trottersLocal_V_2_12_ce1 MemPortCE2 1 1 }  { trottersLocal_V_2_12_q1 MemPortDOUT2 0 16 } } }
	trottersLocal_V_2_13 { ap_memory {  { trottersLocal_V_2_13_address0 mem_address 1 4 }  { trottersLocal_V_2_13_ce0 mem_ce 1 1 }  { trottersLocal_V_2_13_q0 mem_dout 0 16 }  { trottersLocal_V_2_13_address1 MemPortADDR2 1 4 }  { trottersLocal_V_2_13_ce1 MemPortCE2 1 1 }  { trottersLocal_V_2_13_q1 MemPortDOUT2 0 16 } } }
	trottersLocal_V_2_14 { ap_memory {  { trottersLocal_V_2_14_address0 mem_address 1 4 }  { trottersLocal_V_2_14_ce0 mem_ce 1 1 }  { trottersLocal_V_2_14_q0 mem_dout 0 16 }  { trottersLocal_V_2_14_address1 MemPortADDR2 1 4 }  { trottersLocal_V_2_14_ce1 MemPortCE2 1 1 }  { trottersLocal_V_2_14_q1 MemPortDOUT2 0 16 } } }
	trottersLocal_V_2_15 { ap_memory {  { trottersLocal_V_2_15_address0 mem_address 1 4 }  { trottersLocal_V_2_15_ce0 mem_ce 1 1 }  { trottersLocal_V_2_15_q0 mem_dout 0 16 }  { trottersLocal_V_2_15_address1 MemPortADDR2 1 4 }  { trottersLocal_V_2_15_ce1 MemPortCE2 1 1 }  { trottersLocal_V_2_15_q1 MemPortDOUT2 0 16 } } }
	JcoupLocal_2_0 { ap_memory {  { JcoupLocal_2_0_address0 mem_address 1 4 }  { JcoupLocal_2_0_ce0 mem_ce 1 1 }  { JcoupLocal_2_0_q0 mem_dout 0 512 }  { JcoupLocal_2_0_address1 MemPortADDR2 1 4 }  { JcoupLocal_2_0_ce1 MemPortCE2 1 1 }  { JcoupLocal_2_0_q1 MemPortDOUT2 0 512 } } }
	JcoupLocal_2_1 { ap_memory {  { JcoupLocal_2_1_address0 mem_address 1 4 }  { JcoupLocal_2_1_ce0 mem_ce 1 1 }  { JcoupLocal_2_1_q0 mem_dout 0 512 }  { JcoupLocal_2_1_address1 MemPortADDR2 1 4 }  { JcoupLocal_2_1_ce1 MemPortCE2 1 1 }  { JcoupLocal_2_1_q1 MemPortDOUT2 0 512 } } }
	JcoupLocal_2_2 { ap_memory {  { JcoupLocal_2_2_address0 mem_address 1 4 }  { JcoupLocal_2_2_ce0 mem_ce 1 1 }  { JcoupLocal_2_2_q0 mem_dout 0 512 }  { JcoupLocal_2_2_address1 MemPortADDR2 1 4 }  { JcoupLocal_2_2_ce1 MemPortCE2 1 1 }  { JcoupLocal_2_2_q1 MemPortDOUT2 0 512 } } }
	JcoupLocal_2_3 { ap_memory {  { JcoupLocal_2_3_address0 mem_address 1 4 }  { JcoupLocal_2_3_ce0 mem_ce 1 1 }  { JcoupLocal_2_3_q0 mem_dout 0 512 }  { JcoupLocal_2_3_address1 MemPortADDR2 1 4 }  { JcoupLocal_2_3_ce1 MemPortCE2 1 1 }  { JcoupLocal_2_3_q1 MemPortDOUT2 0 512 } } }
	JcoupLocal_2_4 { ap_memory {  { JcoupLocal_2_4_address0 mem_address 1 4 }  { JcoupLocal_2_4_ce0 mem_ce 1 1 }  { JcoupLocal_2_4_q0 mem_dout 0 512 }  { JcoupLocal_2_4_address1 MemPortADDR2 1 4 }  { JcoupLocal_2_4_ce1 MemPortCE2 1 1 }  { JcoupLocal_2_4_q1 MemPortDOUT2 0 512 } } }
	JcoupLocal_2_5 { ap_memory {  { JcoupLocal_2_5_address0 mem_address 1 4 }  { JcoupLocal_2_5_ce0 mem_ce 1 1 }  { JcoupLocal_2_5_q0 mem_dout 0 512 }  { JcoupLocal_2_5_address1 MemPortADDR2 1 4 }  { JcoupLocal_2_5_ce1 MemPortCE2 1 1 }  { JcoupLocal_2_5_q1 MemPortDOUT2 0 512 } } }
	JcoupLocal_2_6 { ap_memory {  { JcoupLocal_2_6_address0 mem_address 1 4 }  { JcoupLocal_2_6_ce0 mem_ce 1 1 }  { JcoupLocal_2_6_q0 mem_dout 0 512 }  { JcoupLocal_2_6_address1 MemPortADDR2 1 4 }  { JcoupLocal_2_6_ce1 MemPortCE2 1 1 }  { JcoupLocal_2_6_q1 MemPortDOUT2 0 512 } } }
	JcoupLocal_2_7 { ap_memory {  { JcoupLocal_2_7_address0 mem_address 1 4 }  { JcoupLocal_2_7_ce0 mem_ce 1 1 }  { JcoupLocal_2_7_q0 mem_dout 0 512 }  { JcoupLocal_2_7_address1 MemPortADDR2 1 4 }  { JcoupLocal_2_7_ce1 MemPortCE2 1 1 }  { JcoupLocal_2_7_q1 MemPortDOUT2 0 512 } } }
	JcoupLocal_2_8 { ap_memory {  { JcoupLocal_2_8_address0 mem_address 1 4 }  { JcoupLocal_2_8_ce0 mem_ce 1 1 }  { JcoupLocal_2_8_q0 mem_dout 0 512 }  { JcoupLocal_2_8_address1 MemPortADDR2 1 4 }  { JcoupLocal_2_8_ce1 MemPortCE2 1 1 }  { JcoupLocal_2_8_q1 MemPortDOUT2 0 512 } } }
	JcoupLocal_2_9 { ap_memory {  { JcoupLocal_2_9_address0 mem_address 1 4 }  { JcoupLocal_2_9_ce0 mem_ce 1 1 }  { JcoupLocal_2_9_q0 mem_dout 0 512 }  { JcoupLocal_2_9_address1 MemPortADDR2 1 4 }  { JcoupLocal_2_9_ce1 MemPortCE2 1 1 }  { JcoupLocal_2_9_q1 MemPortDOUT2 0 512 } } }
	JcoupLocal_2_10 { ap_memory {  { JcoupLocal_2_10_address0 mem_address 1 4 }  { JcoupLocal_2_10_ce0 mem_ce 1 1 }  { JcoupLocal_2_10_q0 mem_dout 0 512 }  { JcoupLocal_2_10_address1 MemPortADDR2 1 4 }  { JcoupLocal_2_10_ce1 MemPortCE2 1 1 }  { JcoupLocal_2_10_q1 MemPortDOUT2 0 512 } } }
	JcoupLocal_2_11 { ap_memory {  { JcoupLocal_2_11_address0 mem_address 1 4 }  { JcoupLocal_2_11_ce0 mem_ce 1 1 }  { JcoupLocal_2_11_q0 mem_dout 0 512 }  { JcoupLocal_2_11_address1 MemPortADDR2 1 4 }  { JcoupLocal_2_11_ce1 MemPortCE2 1 1 }  { JcoupLocal_2_11_q1 MemPortDOUT2 0 512 } } }
	JcoupLocal_2_12 { ap_memory {  { JcoupLocal_2_12_address0 mem_address 1 4 }  { JcoupLocal_2_12_ce0 mem_ce 1 1 }  { JcoupLocal_2_12_q0 mem_dout 0 512 }  { JcoupLocal_2_12_address1 MemPortADDR2 1 4 }  { JcoupLocal_2_12_ce1 MemPortCE2 1 1 }  { JcoupLocal_2_12_q1 MemPortDOUT2 0 512 } } }
	JcoupLocal_2_13 { ap_memory {  { JcoupLocal_2_13_address0 mem_address 1 4 }  { JcoupLocal_2_13_ce0 mem_ce 1 1 }  { JcoupLocal_2_13_q0 mem_dout 0 512 }  { JcoupLocal_2_13_address1 MemPortADDR2 1 4 }  { JcoupLocal_2_13_ce1 MemPortCE2 1 1 }  { JcoupLocal_2_13_q1 MemPortDOUT2 0 512 } } }
	JcoupLocal_2_14 { ap_memory {  { JcoupLocal_2_14_address0 mem_address 1 4 }  { JcoupLocal_2_14_ce0 mem_ce 1 1 }  { JcoupLocal_2_14_q0 mem_dout 0 512 }  { JcoupLocal_2_14_address1 MemPortADDR2 1 4 }  { JcoupLocal_2_14_ce1 MemPortCE2 1 1 }  { JcoupLocal_2_14_q1 MemPortDOUT2 0 512 } } }
	JcoupLocal_2_15 { ap_memory {  { JcoupLocal_2_15_address0 mem_address 1 4 }  { JcoupLocal_2_15_ce0 mem_ce 1 1 }  { JcoupLocal_2_15_q0 mem_dout 0 512 }  { JcoupLocal_2_15_address1 MemPortADDR2 1 4 }  { JcoupLocal_2_15_ce1 MemPortCE2 1 1 }  { JcoupLocal_2_15_q1 MemPortDOUT2 0 512 } } }
	trottersLocal_V_3_0 { ap_memory {  { trottersLocal_V_3_0_address0 mem_address 1 4 }  { trottersLocal_V_3_0_ce0 mem_ce 1 1 }  { trottersLocal_V_3_0_q0 mem_dout 0 16 }  { trottersLocal_V_3_0_address1 MemPortADDR2 1 4 }  { trottersLocal_V_3_0_ce1 MemPortCE2 1 1 }  { trottersLocal_V_3_0_q1 MemPortDOUT2 0 16 } } }
	trottersLocal_V_3_1 { ap_memory {  { trottersLocal_V_3_1_address0 mem_address 1 4 }  { trottersLocal_V_3_1_ce0 mem_ce 1 1 }  { trottersLocal_V_3_1_q0 mem_dout 0 16 }  { trottersLocal_V_3_1_address1 MemPortADDR2 1 4 }  { trottersLocal_V_3_1_ce1 MemPortCE2 1 1 }  { trottersLocal_V_3_1_q1 MemPortDOUT2 0 16 } } }
	trottersLocal_V_3_2 { ap_memory {  { trottersLocal_V_3_2_address0 mem_address 1 4 }  { trottersLocal_V_3_2_ce0 mem_ce 1 1 }  { trottersLocal_V_3_2_q0 mem_dout 0 16 }  { trottersLocal_V_3_2_address1 MemPortADDR2 1 4 }  { trottersLocal_V_3_2_ce1 MemPortCE2 1 1 }  { trottersLocal_V_3_2_q1 MemPortDOUT2 0 16 } } }
	trottersLocal_V_3_3 { ap_memory {  { trottersLocal_V_3_3_address0 mem_address 1 4 }  { trottersLocal_V_3_3_ce0 mem_ce 1 1 }  { trottersLocal_V_3_3_q0 mem_dout 0 16 }  { trottersLocal_V_3_3_address1 MemPortADDR2 1 4 }  { trottersLocal_V_3_3_ce1 MemPortCE2 1 1 }  { trottersLocal_V_3_3_q1 MemPortDOUT2 0 16 } } }
	trottersLocal_V_3_4 { ap_memory {  { trottersLocal_V_3_4_address0 mem_address 1 4 }  { trottersLocal_V_3_4_ce0 mem_ce 1 1 }  { trottersLocal_V_3_4_q0 mem_dout 0 16 }  { trottersLocal_V_3_4_address1 MemPortADDR2 1 4 }  { trottersLocal_V_3_4_ce1 MemPortCE2 1 1 }  { trottersLocal_V_3_4_q1 MemPortDOUT2 0 16 } } }
	trottersLocal_V_3_5 { ap_memory {  { trottersLocal_V_3_5_address0 mem_address 1 4 }  { trottersLocal_V_3_5_ce0 mem_ce 1 1 }  { trottersLocal_V_3_5_q0 mem_dout 0 16 }  { trottersLocal_V_3_5_address1 MemPortADDR2 1 4 }  { trottersLocal_V_3_5_ce1 MemPortCE2 1 1 }  { trottersLocal_V_3_5_q1 MemPortDOUT2 0 16 } } }
	trottersLocal_V_3_6 { ap_memory {  { trottersLocal_V_3_6_address0 mem_address 1 4 }  { trottersLocal_V_3_6_ce0 mem_ce 1 1 }  { trottersLocal_V_3_6_q0 mem_dout 0 16 }  { trottersLocal_V_3_6_address1 MemPortADDR2 1 4 }  { trottersLocal_V_3_6_ce1 MemPortCE2 1 1 }  { trottersLocal_V_3_6_q1 MemPortDOUT2 0 16 } } }
	trottersLocal_V_3_7 { ap_memory {  { trottersLocal_V_3_7_address0 mem_address 1 4 }  { trottersLocal_V_3_7_ce0 mem_ce 1 1 }  { trottersLocal_V_3_7_q0 mem_dout 0 16 }  { trottersLocal_V_3_7_address1 MemPortADDR2 1 4 }  { trottersLocal_V_3_7_ce1 MemPortCE2 1 1 }  { trottersLocal_V_3_7_q1 MemPortDOUT2 0 16 } } }
	trottersLocal_V_3_8 { ap_memory {  { trottersLocal_V_3_8_address0 mem_address 1 4 }  { trottersLocal_V_3_8_ce0 mem_ce 1 1 }  { trottersLocal_V_3_8_q0 mem_dout 0 16 }  { trottersLocal_V_3_8_address1 MemPortADDR2 1 4 }  { trottersLocal_V_3_8_ce1 MemPortCE2 1 1 }  { trottersLocal_V_3_8_q1 MemPortDOUT2 0 16 } } }
	trottersLocal_V_3_9 { ap_memory {  { trottersLocal_V_3_9_address0 mem_address 1 4 }  { trottersLocal_V_3_9_ce0 mem_ce 1 1 }  { trottersLocal_V_3_9_q0 mem_dout 0 16 }  { trottersLocal_V_3_9_address1 MemPortADDR2 1 4 }  { trottersLocal_V_3_9_ce1 MemPortCE2 1 1 }  { trottersLocal_V_3_9_q1 MemPortDOUT2 0 16 } } }
	trottersLocal_V_3_10 { ap_memory {  { trottersLocal_V_3_10_address0 mem_address 1 4 }  { trottersLocal_V_3_10_ce0 mem_ce 1 1 }  { trottersLocal_V_3_10_q0 mem_dout 0 16 }  { trottersLocal_V_3_10_address1 MemPortADDR2 1 4 }  { trottersLocal_V_3_10_ce1 MemPortCE2 1 1 }  { trottersLocal_V_3_10_q1 MemPortDOUT2 0 16 } } }
	trottersLocal_V_3_11 { ap_memory {  { trottersLocal_V_3_11_address0 mem_address 1 4 }  { trottersLocal_V_3_11_ce0 mem_ce 1 1 }  { trottersLocal_V_3_11_q0 mem_dout 0 16 }  { trottersLocal_V_3_11_address1 MemPortADDR2 1 4 }  { trottersLocal_V_3_11_ce1 MemPortCE2 1 1 }  { trottersLocal_V_3_11_q1 MemPortDOUT2 0 16 } } }
	trottersLocal_V_3_12 { ap_memory {  { trottersLocal_V_3_12_address0 mem_address 1 4 }  { trottersLocal_V_3_12_ce0 mem_ce 1 1 }  { trottersLocal_V_3_12_q0 mem_dout 0 16 }  { trottersLocal_V_3_12_address1 MemPortADDR2 1 4 }  { trottersLocal_V_3_12_ce1 MemPortCE2 1 1 }  { trottersLocal_V_3_12_q1 MemPortDOUT2 0 16 } } }
	trottersLocal_V_3_13 { ap_memory {  { trottersLocal_V_3_13_address0 mem_address 1 4 }  { trottersLocal_V_3_13_ce0 mem_ce 1 1 }  { trottersLocal_V_3_13_q0 mem_dout 0 16 }  { trottersLocal_V_3_13_address1 MemPortADDR2 1 4 }  { trottersLocal_V_3_13_ce1 MemPortCE2 1 1 }  { trottersLocal_V_3_13_q1 MemPortDOUT2 0 16 } } }
	trottersLocal_V_3_14 { ap_memory {  { trottersLocal_V_3_14_address0 mem_address 1 4 }  { trottersLocal_V_3_14_ce0 mem_ce 1 1 }  { trottersLocal_V_3_14_q0 mem_dout 0 16 }  { trottersLocal_V_3_14_address1 MemPortADDR2 1 4 }  { trottersLocal_V_3_14_ce1 MemPortCE2 1 1 }  { trottersLocal_V_3_14_q1 MemPortDOUT2 0 16 } } }
	trottersLocal_V_3_15 { ap_memory {  { trottersLocal_V_3_15_address0 mem_address 1 4 }  { trottersLocal_V_3_15_ce0 mem_ce 1 1 }  { trottersLocal_V_3_15_q0 mem_dout 0 16 }  { trottersLocal_V_3_15_address1 MemPortADDR2 1 4 }  { trottersLocal_V_3_15_ce1 MemPortCE2 1 1 }  { trottersLocal_V_3_15_q1 MemPortDOUT2 0 16 } } }
	JcoupLocal_3_0 { ap_memory {  { JcoupLocal_3_0_address0 mem_address 1 4 }  { JcoupLocal_3_0_ce0 mem_ce 1 1 }  { JcoupLocal_3_0_q0 mem_dout 0 512 }  { JcoupLocal_3_0_address1 MemPortADDR2 1 4 }  { JcoupLocal_3_0_ce1 MemPortCE2 1 1 }  { JcoupLocal_3_0_q1 MemPortDOUT2 0 512 } } }
	JcoupLocal_3_1 { ap_memory {  { JcoupLocal_3_1_address0 mem_address 1 4 }  { JcoupLocal_3_1_ce0 mem_ce 1 1 }  { JcoupLocal_3_1_q0 mem_dout 0 512 }  { JcoupLocal_3_1_address1 MemPortADDR2 1 4 }  { JcoupLocal_3_1_ce1 MemPortCE2 1 1 }  { JcoupLocal_3_1_q1 MemPortDOUT2 0 512 } } }
	JcoupLocal_3_2 { ap_memory {  { JcoupLocal_3_2_address0 mem_address 1 4 }  { JcoupLocal_3_2_ce0 mem_ce 1 1 }  { JcoupLocal_3_2_q0 mem_dout 0 512 }  { JcoupLocal_3_2_address1 MemPortADDR2 1 4 }  { JcoupLocal_3_2_ce1 MemPortCE2 1 1 }  { JcoupLocal_3_2_q1 MemPortDOUT2 0 512 } } }
	JcoupLocal_3_3 { ap_memory {  { JcoupLocal_3_3_address0 mem_address 1 4 }  { JcoupLocal_3_3_ce0 mem_ce 1 1 }  { JcoupLocal_3_3_q0 mem_dout 0 512 }  { JcoupLocal_3_3_address1 MemPortADDR2 1 4 }  { JcoupLocal_3_3_ce1 MemPortCE2 1 1 }  { JcoupLocal_3_3_q1 MemPortDOUT2 0 512 } } }
	JcoupLocal_3_4 { ap_memory {  { JcoupLocal_3_4_address0 mem_address 1 4 }  { JcoupLocal_3_4_ce0 mem_ce 1 1 }  { JcoupLocal_3_4_q0 mem_dout 0 512 }  { JcoupLocal_3_4_address1 MemPortADDR2 1 4 }  { JcoupLocal_3_4_ce1 MemPortCE2 1 1 }  { JcoupLocal_3_4_q1 MemPortDOUT2 0 512 } } }
	JcoupLocal_3_5 { ap_memory {  { JcoupLocal_3_5_address0 mem_address 1 4 }  { JcoupLocal_3_5_ce0 mem_ce 1 1 }  { JcoupLocal_3_5_q0 mem_dout 0 512 }  { JcoupLocal_3_5_address1 MemPortADDR2 1 4 }  { JcoupLocal_3_5_ce1 MemPortCE2 1 1 }  { JcoupLocal_3_5_q1 MemPortDOUT2 0 512 } } }
	JcoupLocal_3_6 { ap_memory {  { JcoupLocal_3_6_address0 mem_address 1 4 }  { JcoupLocal_3_6_ce0 mem_ce 1 1 }  { JcoupLocal_3_6_q0 mem_dout 0 512 }  { JcoupLocal_3_6_address1 MemPortADDR2 1 4 }  { JcoupLocal_3_6_ce1 MemPortCE2 1 1 }  { JcoupLocal_3_6_q1 MemPortDOUT2 0 512 } } }
	JcoupLocal_3_7 { ap_memory {  { JcoupLocal_3_7_address0 mem_address 1 4 }  { JcoupLocal_3_7_ce0 mem_ce 1 1 }  { JcoupLocal_3_7_q0 mem_dout 0 512 }  { JcoupLocal_3_7_address1 MemPortADDR2 1 4 }  { JcoupLocal_3_7_ce1 MemPortCE2 1 1 }  { JcoupLocal_3_7_q1 MemPortDOUT2 0 512 } } }
	JcoupLocal_3_8 { ap_memory {  { JcoupLocal_3_8_address0 mem_address 1 4 }  { JcoupLocal_3_8_ce0 mem_ce 1 1 }  { JcoupLocal_3_8_q0 mem_dout 0 512 }  { JcoupLocal_3_8_address1 MemPortADDR2 1 4 }  { JcoupLocal_3_8_ce1 MemPortCE2 1 1 }  { JcoupLocal_3_8_q1 MemPortDOUT2 0 512 } } }
	JcoupLocal_3_9 { ap_memory {  { JcoupLocal_3_9_address0 mem_address 1 4 }  { JcoupLocal_3_9_ce0 mem_ce 1 1 }  { JcoupLocal_3_9_q0 mem_dout 0 512 }  { JcoupLocal_3_9_address1 MemPortADDR2 1 4 }  { JcoupLocal_3_9_ce1 MemPortCE2 1 1 }  { JcoupLocal_3_9_q1 MemPortDOUT2 0 512 } } }
	JcoupLocal_3_10 { ap_memory {  { JcoupLocal_3_10_address0 mem_address 1 4 }  { JcoupLocal_3_10_ce0 mem_ce 1 1 }  { JcoupLocal_3_10_q0 mem_dout 0 512 }  { JcoupLocal_3_10_address1 MemPortADDR2 1 4 }  { JcoupLocal_3_10_ce1 MemPortCE2 1 1 }  { JcoupLocal_3_10_q1 MemPortDOUT2 0 512 } } }
	JcoupLocal_3_11 { ap_memory {  { JcoupLocal_3_11_address0 mem_address 1 4 }  { JcoupLocal_3_11_ce0 mem_ce 1 1 }  { JcoupLocal_3_11_q0 mem_dout 0 512 }  { JcoupLocal_3_11_address1 MemPortADDR2 1 4 }  { JcoupLocal_3_11_ce1 MemPortCE2 1 1 }  { JcoupLocal_3_11_q1 MemPortDOUT2 0 512 } } }
	JcoupLocal_3_12 { ap_memory {  { JcoupLocal_3_12_address0 mem_address 1 4 }  { JcoupLocal_3_12_ce0 mem_ce 1 1 }  { JcoupLocal_3_12_q0 mem_dout 0 512 }  { JcoupLocal_3_12_address1 MemPortADDR2 1 4 }  { JcoupLocal_3_12_ce1 MemPortCE2 1 1 }  { JcoupLocal_3_12_q1 MemPortDOUT2 0 512 } } }
	JcoupLocal_3_13 { ap_memory {  { JcoupLocal_3_13_address0 mem_address 1 4 }  { JcoupLocal_3_13_ce0 mem_ce 1 1 }  { JcoupLocal_3_13_q0 mem_dout 0 512 }  { JcoupLocal_3_13_address1 MemPortADDR2 1 4 }  { JcoupLocal_3_13_ce1 MemPortCE2 1 1 }  { JcoupLocal_3_13_q1 MemPortDOUT2 0 512 } } }
	JcoupLocal_3_14 { ap_memory {  { JcoupLocal_3_14_address0 mem_address 1 4 }  { JcoupLocal_3_14_ce0 mem_ce 1 1 }  { JcoupLocal_3_14_q0 mem_dout 0 512 }  { JcoupLocal_3_14_address1 MemPortADDR2 1 4 }  { JcoupLocal_3_14_ce1 MemPortCE2 1 1 }  { JcoupLocal_3_14_q1 MemPortDOUT2 0 512 } } }
	JcoupLocal_3_15 { ap_memory {  { JcoupLocal_3_15_address0 mem_address 1 4 }  { JcoupLocal_3_15_ce0 mem_ce 1 1 }  { JcoupLocal_3_15_q0 mem_dout 0 512 }  { JcoupLocal_3_15_address1 MemPortADDR2 1 4 }  { JcoupLocal_3_15_ce1 MemPortCE2 1 1 }  { JcoupLocal_3_15_q1 MemPortDOUT2 0 512 } } }
	dH_3_3_out { ap_vld {  { dH_3_3_out out_data 1 32 }  { dH_3_3_out_ap_vld out_vld 1 1 } } }
	dH_2_3_out { ap_vld {  { dH_2_3_out out_data 1 32 }  { dH_2_3_out_ap_vld out_vld 1 1 } } }
	dH_1_3_out { ap_vld {  { dH_1_3_out out_data 1 32 }  { dH_1_3_out_ap_vld out_vld 1 1 } } }
	dH_0_3_out { ap_vld {  { dH_0_3_out out_data 1 32 }  { dH_0_3_out_ap_vld out_vld 1 1 } } }
}
