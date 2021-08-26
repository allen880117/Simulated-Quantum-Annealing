set moduleName QuantumMonteCarloU50_Pipeline_UPDATE_INPUT_STATE
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
set C_modelName {QuantumMonteCarloU50_Pipeline_UPDATE_INPUT_STATE}
set C_modelType { void 0 }
set C_modelArgList {
	{ logRandLocal_3_012133 float 32 regular  }
	{ logRandLocal_2_012132 float 32 regular  }
	{ logRandLocal_1_012131 float 32 regular  }
	{ logRandLocal_0_012130 float 32 regular  }
	{ dH_3_0 float 32 regular  }
	{ dH_2_0 float 32 regular  }
	{ dH_1_0 float 32 regular  }
	{ dH_0_0 float 32 regular  }
	{ downSpin_V_3_012129 int 1 regular  }
	{ downSpin_V_2_012128 int 1 regular  }
	{ downSpin_V_1_012127 int 1 regular  }
	{ downSpin_V_0_012126 int 1 regular  }
	{ upSpin_V_3_012125 int 1 regular  }
	{ upSpin_V_2_012124 int 1 regular  }
	{ upSpin_V_1_012123 int 1 regular  }
	{ upSpin_V_0_012122 int 1 regular  }
	{ iSpin_3_012121 int 32 regular  }
	{ iSpin_2_012120 int 32 regular  }
	{ iSpin_1_012119 int 32 regular  }
	{ iSpin_0_012118 int 32 regular  }
	{ iPack_3_012117 int 32 regular  }
	{ iPack_2_012116 int 32 regular  }
	{ iPack_1_012115 int 32 regular  }
	{ iPack_0_012114 int 32 regular  }
	{ logRand int 64 regular  }
	{ gmem int 512 regular {axi_master 0}  }
	{ trunc_ln3 int 6 regular  }
	{ h int 64 regular  }
	{ trunc_ln2 int 6 regular  }
	{ trottersLocal_V_0_0 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ trottersLocal_V_0_1 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ trottersLocal_V_0_2 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ trottersLocal_V_0_3 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ trottersLocal_V_0_4 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ trottersLocal_V_0_5 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ trottersLocal_V_0_6 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ trottersLocal_V_0_7 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ trottersLocal_V_0_8 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ trottersLocal_V_0_9 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ trottersLocal_V_0_10 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ trottersLocal_V_0_11 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ trottersLocal_V_0_12 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ trottersLocal_V_0_13 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ trottersLocal_V_0_14 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ trottersLocal_V_0_15 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ trottersLocal_V_1_0 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ trottersLocal_V_1_1 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ trottersLocal_V_1_2 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ trottersLocal_V_1_3 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ trottersLocal_V_1_4 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ trottersLocal_V_1_5 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ trottersLocal_V_1_6 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ trottersLocal_V_1_7 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ trottersLocal_V_1_8 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ trottersLocal_V_1_9 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ trottersLocal_V_1_10 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ trottersLocal_V_1_11 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ trottersLocal_V_1_12 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ trottersLocal_V_1_13 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ trottersLocal_V_1_14 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ trottersLocal_V_1_15 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ trottersLocal_V_2_0 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ trottersLocal_V_2_1 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ trottersLocal_V_2_2 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ trottersLocal_V_2_3 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ trottersLocal_V_2_4 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ trottersLocal_V_2_5 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ trottersLocal_V_2_6 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ trottersLocal_V_2_7 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ trottersLocal_V_2_8 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ trottersLocal_V_2_9 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ trottersLocal_V_2_10 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ trottersLocal_V_2_11 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ trottersLocal_V_2_12 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ trottersLocal_V_2_13 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ trottersLocal_V_2_14 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ trottersLocal_V_2_15 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ trottersLocal_V_3_0 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ trottersLocal_V_3_1 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ trottersLocal_V_3_2 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ trottersLocal_V_3_3 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ trottersLocal_V_3_4 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ trottersLocal_V_3_5 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ trottersLocal_V_3_6 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ trottersLocal_V_3_7 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ trottersLocal_V_3_8 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ trottersLocal_V_3_9 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ trottersLocal_V_3_10 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ trottersLocal_V_3_11 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ trottersLocal_V_3_12 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ trottersLocal_V_3_13 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ trottersLocal_V_3_14 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ trottersLocal_V_3_15 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ trunc_ln6 int 12 regular  }
	{ logRandLocal_3_1_out float 32 regular {pointer 1}  }
	{ logRandLocal_2_1_out float 32 regular {pointer 1}  }
	{ logRandLocal_1_1_out float 32 regular {pointer 1}  }
	{ logRandLocal_0_1_out float 32 regular {pointer 1}  }
	{ dH_3_1_out float 32 regular {pointer 1}  }
	{ dH_2_1_out float 32 regular {pointer 1}  }
	{ dH_1_1_out float 32 regular {pointer 1}  }
	{ dH_0_1_out float 32 regular {pointer 1}  }
	{ downSpin_V_3_1_out int 1 regular {pointer 1}  }
	{ downSpin_V_2_1_out int 1 regular {pointer 1}  }
	{ downSpin_V_1_1_out int 1 regular {pointer 1}  }
	{ downSpin_V_0_1_out int 1 regular {pointer 1}  }
	{ upSpin_V_3_1_out int 1 regular {pointer 1}  }
	{ upSpin_V_2_1_out int 1 regular {pointer 1}  }
	{ upSpin_V_1_1_out int 1 regular {pointer 1}  }
	{ upSpin_V_0_1_out int 1 regular {pointer 1}  }
	{ iSpin_3_1_out int 32 regular {pointer 1}  }
	{ iSpin_2_1_out int 32 regular {pointer 1}  }
	{ iSpin_1_1_out int 32 regular {pointer 1}  }
	{ iSpin_0_1_out int 32 regular {pointer 1}  }
	{ iPack_3_1_out int 32 regular {pointer 1}  }
	{ iPack_2_1_out int 32 regular {pointer 1}  }
	{ iPack_1_1_out int 32 regular {pointer 1}  }
	{ iPack_0_1_out int 32 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "logRandLocal_3_012133", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "logRandLocal_2_012132", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "logRandLocal_1_012131", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "logRandLocal_0_012130", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "dH_3_0", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "dH_2_0", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "dH_1_0", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "dH_0_0", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "downSpin_V_3_012129", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "downSpin_V_2_012128", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "downSpin_V_1_012127", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "downSpin_V_0_012126", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "upSpin_V_3_012125", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "upSpin_V_2_012124", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "upSpin_V_1_012123", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "upSpin_V_0_012122", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "iSpin_3_012121", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "iSpin_2_012120", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "iSpin_1_012119", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "iSpin_0_012118", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "iPack_3_012117", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "iPack_2_012116", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "iPack_1_012115", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "iPack_0_012114", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "logRand", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "gmem", "interface" : "axi_master", "bitwidth" : 512, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "trotters","offset": { "type": "dynamic","port_name": "trotters","bundle": "control"},"direction": "READWRITE"},{"cName": "Jcoup","offset": { "type": "dynamic","port_name": "Jcoup","bundle": "control"},"direction": "READONLY"},{"cName": "h","offset": { "type": "dynamic","port_name": "h","bundle": "control"},"direction": "READONLY"},{"cName": "logRand","offset": { "type": "dynamic","port_name": "logRand","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "trunc_ln3", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "h", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "trunc_ln2", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
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
 	{ "Name" : "trunc_ln6", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "logRandLocal_3_1_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "logRandLocal_2_1_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "logRandLocal_1_1_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "logRandLocal_0_1_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dH_3_1_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dH_2_1_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dH_1_1_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dH_0_1_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "downSpin_V_3_1_out", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "downSpin_V_2_1_out", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "downSpin_V_1_1_out", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "downSpin_V_0_1_out", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "upSpin_V_3_1_out", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "upSpin_V_2_1_out", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "upSpin_V_1_1_out", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "upSpin_V_0_1_out", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "iSpin_3_1_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "iSpin_2_1_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "iSpin_1_1_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "iSpin_0_1_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "iPack_3_1_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "iPack_2_1_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "iPack_1_1_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "iPack_0_1_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 320
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_gmem_AWVALID sc_out sc_logic 1 signal 25 } 
	{ m_axi_gmem_AWREADY sc_in sc_logic 1 signal 25 } 
	{ m_axi_gmem_AWADDR sc_out sc_lv 64 signal 25 } 
	{ m_axi_gmem_AWID sc_out sc_lv 1 signal 25 } 
	{ m_axi_gmem_AWLEN sc_out sc_lv 32 signal 25 } 
	{ m_axi_gmem_AWSIZE sc_out sc_lv 3 signal 25 } 
	{ m_axi_gmem_AWBURST sc_out sc_lv 2 signal 25 } 
	{ m_axi_gmem_AWLOCK sc_out sc_lv 2 signal 25 } 
	{ m_axi_gmem_AWCACHE sc_out sc_lv 4 signal 25 } 
	{ m_axi_gmem_AWPROT sc_out sc_lv 3 signal 25 } 
	{ m_axi_gmem_AWQOS sc_out sc_lv 4 signal 25 } 
	{ m_axi_gmem_AWREGION sc_out sc_lv 4 signal 25 } 
	{ m_axi_gmem_AWUSER sc_out sc_lv 1 signal 25 } 
	{ m_axi_gmem_WVALID sc_out sc_logic 1 signal 25 } 
	{ m_axi_gmem_WREADY sc_in sc_logic 1 signal 25 } 
	{ m_axi_gmem_WDATA sc_out sc_lv 512 signal 25 } 
	{ m_axi_gmem_WSTRB sc_out sc_lv 64 signal 25 } 
	{ m_axi_gmem_WLAST sc_out sc_logic 1 signal 25 } 
	{ m_axi_gmem_WID sc_out sc_lv 1 signal 25 } 
	{ m_axi_gmem_WUSER sc_out sc_lv 1 signal 25 } 
	{ m_axi_gmem_ARVALID sc_out sc_logic 1 signal 25 } 
	{ m_axi_gmem_ARREADY sc_in sc_logic 1 signal 25 } 
	{ m_axi_gmem_ARADDR sc_out sc_lv 64 signal 25 } 
	{ m_axi_gmem_ARID sc_out sc_lv 1 signal 25 } 
	{ m_axi_gmem_ARLEN sc_out sc_lv 32 signal 25 } 
	{ m_axi_gmem_ARSIZE sc_out sc_lv 3 signal 25 } 
	{ m_axi_gmem_ARBURST sc_out sc_lv 2 signal 25 } 
	{ m_axi_gmem_ARLOCK sc_out sc_lv 2 signal 25 } 
	{ m_axi_gmem_ARCACHE sc_out sc_lv 4 signal 25 } 
	{ m_axi_gmem_ARPROT sc_out sc_lv 3 signal 25 } 
	{ m_axi_gmem_ARQOS sc_out sc_lv 4 signal 25 } 
	{ m_axi_gmem_ARREGION sc_out sc_lv 4 signal 25 } 
	{ m_axi_gmem_ARUSER sc_out sc_lv 1 signal 25 } 
	{ m_axi_gmem_RVALID sc_in sc_logic 1 signal 25 } 
	{ m_axi_gmem_RREADY sc_out sc_logic 1 signal 25 } 
	{ m_axi_gmem_RDATA sc_in sc_lv 512 signal 25 } 
	{ m_axi_gmem_RLAST sc_in sc_logic 1 signal 25 } 
	{ m_axi_gmem_RID sc_in sc_lv 1 signal 25 } 
	{ m_axi_gmem_RUSER sc_in sc_lv 1 signal 25 } 
	{ m_axi_gmem_RRESP sc_in sc_lv 2 signal 25 } 
	{ m_axi_gmem_BVALID sc_in sc_logic 1 signal 25 } 
	{ m_axi_gmem_BREADY sc_out sc_logic 1 signal 25 } 
	{ m_axi_gmem_BRESP sc_in sc_lv 2 signal 25 } 
	{ m_axi_gmem_BID sc_in sc_lv 1 signal 25 } 
	{ m_axi_gmem_BUSER sc_in sc_lv 1 signal 25 } 
	{ logRandLocal_3_012133 sc_in sc_lv 32 signal 0 } 
	{ logRandLocal_2_012132 sc_in sc_lv 32 signal 1 } 
	{ logRandLocal_1_012131 sc_in sc_lv 32 signal 2 } 
	{ logRandLocal_0_012130 sc_in sc_lv 32 signal 3 } 
	{ dH_3_0 sc_in sc_lv 32 signal 4 } 
	{ dH_2_0 sc_in sc_lv 32 signal 5 } 
	{ dH_1_0 sc_in sc_lv 32 signal 6 } 
	{ dH_0_0 sc_in sc_lv 32 signal 7 } 
	{ downSpin_V_3_012129 sc_in sc_lv 1 signal 8 } 
	{ downSpin_V_2_012128 sc_in sc_lv 1 signal 9 } 
	{ downSpin_V_1_012127 sc_in sc_lv 1 signal 10 } 
	{ downSpin_V_0_012126 sc_in sc_lv 1 signal 11 } 
	{ upSpin_V_3_012125 sc_in sc_lv 1 signal 12 } 
	{ upSpin_V_2_012124 sc_in sc_lv 1 signal 13 } 
	{ upSpin_V_1_012123 sc_in sc_lv 1 signal 14 } 
	{ upSpin_V_0_012122 sc_in sc_lv 1 signal 15 } 
	{ iSpin_3_012121 sc_in sc_lv 32 signal 16 } 
	{ iSpin_2_012120 sc_in sc_lv 32 signal 17 } 
	{ iSpin_1_012119 sc_in sc_lv 32 signal 18 } 
	{ iSpin_0_012118 sc_in sc_lv 32 signal 19 } 
	{ iPack_3_012117 sc_in sc_lv 32 signal 20 } 
	{ iPack_2_012116 sc_in sc_lv 32 signal 21 } 
	{ iPack_1_012115 sc_in sc_lv 32 signal 22 } 
	{ iPack_0_012114 sc_in sc_lv 32 signal 23 } 
	{ logRand sc_in sc_lv 64 signal 24 } 
	{ trunc_ln3 sc_in sc_lv 6 signal 26 } 
	{ h sc_in sc_lv 64 signal 27 } 
	{ trunc_ln2 sc_in sc_lv 6 signal 28 } 
	{ trottersLocal_V_0_0_address0 sc_out sc_lv 4 signal 29 } 
	{ trottersLocal_V_0_0_ce0 sc_out sc_logic 1 signal 29 } 
	{ trottersLocal_V_0_0_q0 sc_in sc_lv 16 signal 29 } 
	{ trottersLocal_V_0_1_address0 sc_out sc_lv 4 signal 30 } 
	{ trottersLocal_V_0_1_ce0 sc_out sc_logic 1 signal 30 } 
	{ trottersLocal_V_0_1_q0 sc_in sc_lv 16 signal 30 } 
	{ trottersLocal_V_0_2_address0 sc_out sc_lv 4 signal 31 } 
	{ trottersLocal_V_0_2_ce0 sc_out sc_logic 1 signal 31 } 
	{ trottersLocal_V_0_2_q0 sc_in sc_lv 16 signal 31 } 
	{ trottersLocal_V_0_3_address0 sc_out sc_lv 4 signal 32 } 
	{ trottersLocal_V_0_3_ce0 sc_out sc_logic 1 signal 32 } 
	{ trottersLocal_V_0_3_q0 sc_in sc_lv 16 signal 32 } 
	{ trottersLocal_V_0_4_address0 sc_out sc_lv 4 signal 33 } 
	{ trottersLocal_V_0_4_ce0 sc_out sc_logic 1 signal 33 } 
	{ trottersLocal_V_0_4_q0 sc_in sc_lv 16 signal 33 } 
	{ trottersLocal_V_0_5_address0 sc_out sc_lv 4 signal 34 } 
	{ trottersLocal_V_0_5_ce0 sc_out sc_logic 1 signal 34 } 
	{ trottersLocal_V_0_5_q0 sc_in sc_lv 16 signal 34 } 
	{ trottersLocal_V_0_6_address0 sc_out sc_lv 4 signal 35 } 
	{ trottersLocal_V_0_6_ce0 sc_out sc_logic 1 signal 35 } 
	{ trottersLocal_V_0_6_q0 sc_in sc_lv 16 signal 35 } 
	{ trottersLocal_V_0_7_address0 sc_out sc_lv 4 signal 36 } 
	{ trottersLocal_V_0_7_ce0 sc_out sc_logic 1 signal 36 } 
	{ trottersLocal_V_0_7_q0 sc_in sc_lv 16 signal 36 } 
	{ trottersLocal_V_0_8_address0 sc_out sc_lv 4 signal 37 } 
	{ trottersLocal_V_0_8_ce0 sc_out sc_logic 1 signal 37 } 
	{ trottersLocal_V_0_8_q0 sc_in sc_lv 16 signal 37 } 
	{ trottersLocal_V_0_9_address0 sc_out sc_lv 4 signal 38 } 
	{ trottersLocal_V_0_9_ce0 sc_out sc_logic 1 signal 38 } 
	{ trottersLocal_V_0_9_q0 sc_in sc_lv 16 signal 38 } 
	{ trottersLocal_V_0_10_address0 sc_out sc_lv 4 signal 39 } 
	{ trottersLocal_V_0_10_ce0 sc_out sc_logic 1 signal 39 } 
	{ trottersLocal_V_0_10_q0 sc_in sc_lv 16 signal 39 } 
	{ trottersLocal_V_0_11_address0 sc_out sc_lv 4 signal 40 } 
	{ trottersLocal_V_0_11_ce0 sc_out sc_logic 1 signal 40 } 
	{ trottersLocal_V_0_11_q0 sc_in sc_lv 16 signal 40 } 
	{ trottersLocal_V_0_12_address0 sc_out sc_lv 4 signal 41 } 
	{ trottersLocal_V_0_12_ce0 sc_out sc_logic 1 signal 41 } 
	{ trottersLocal_V_0_12_q0 sc_in sc_lv 16 signal 41 } 
	{ trottersLocal_V_0_13_address0 sc_out sc_lv 4 signal 42 } 
	{ trottersLocal_V_0_13_ce0 sc_out sc_logic 1 signal 42 } 
	{ trottersLocal_V_0_13_q0 sc_in sc_lv 16 signal 42 } 
	{ trottersLocal_V_0_14_address0 sc_out sc_lv 4 signal 43 } 
	{ trottersLocal_V_0_14_ce0 sc_out sc_logic 1 signal 43 } 
	{ trottersLocal_V_0_14_q0 sc_in sc_lv 16 signal 43 } 
	{ trottersLocal_V_0_15_address0 sc_out sc_lv 4 signal 44 } 
	{ trottersLocal_V_0_15_ce0 sc_out sc_logic 1 signal 44 } 
	{ trottersLocal_V_0_15_q0 sc_in sc_lv 16 signal 44 } 
	{ trottersLocal_V_1_0_address0 sc_out sc_lv 4 signal 45 } 
	{ trottersLocal_V_1_0_ce0 sc_out sc_logic 1 signal 45 } 
	{ trottersLocal_V_1_0_q0 sc_in sc_lv 16 signal 45 } 
	{ trottersLocal_V_1_1_address0 sc_out sc_lv 4 signal 46 } 
	{ trottersLocal_V_1_1_ce0 sc_out sc_logic 1 signal 46 } 
	{ trottersLocal_V_1_1_q0 sc_in sc_lv 16 signal 46 } 
	{ trottersLocal_V_1_2_address0 sc_out sc_lv 4 signal 47 } 
	{ trottersLocal_V_1_2_ce0 sc_out sc_logic 1 signal 47 } 
	{ trottersLocal_V_1_2_q0 sc_in sc_lv 16 signal 47 } 
	{ trottersLocal_V_1_3_address0 sc_out sc_lv 4 signal 48 } 
	{ trottersLocal_V_1_3_ce0 sc_out sc_logic 1 signal 48 } 
	{ trottersLocal_V_1_3_q0 sc_in sc_lv 16 signal 48 } 
	{ trottersLocal_V_1_4_address0 sc_out sc_lv 4 signal 49 } 
	{ trottersLocal_V_1_4_ce0 sc_out sc_logic 1 signal 49 } 
	{ trottersLocal_V_1_4_q0 sc_in sc_lv 16 signal 49 } 
	{ trottersLocal_V_1_5_address0 sc_out sc_lv 4 signal 50 } 
	{ trottersLocal_V_1_5_ce0 sc_out sc_logic 1 signal 50 } 
	{ trottersLocal_V_1_5_q0 sc_in sc_lv 16 signal 50 } 
	{ trottersLocal_V_1_6_address0 sc_out sc_lv 4 signal 51 } 
	{ trottersLocal_V_1_6_ce0 sc_out sc_logic 1 signal 51 } 
	{ trottersLocal_V_1_6_q0 sc_in sc_lv 16 signal 51 } 
	{ trottersLocal_V_1_7_address0 sc_out sc_lv 4 signal 52 } 
	{ trottersLocal_V_1_7_ce0 sc_out sc_logic 1 signal 52 } 
	{ trottersLocal_V_1_7_q0 sc_in sc_lv 16 signal 52 } 
	{ trottersLocal_V_1_8_address0 sc_out sc_lv 4 signal 53 } 
	{ trottersLocal_V_1_8_ce0 sc_out sc_logic 1 signal 53 } 
	{ trottersLocal_V_1_8_q0 sc_in sc_lv 16 signal 53 } 
	{ trottersLocal_V_1_9_address0 sc_out sc_lv 4 signal 54 } 
	{ trottersLocal_V_1_9_ce0 sc_out sc_logic 1 signal 54 } 
	{ trottersLocal_V_1_9_q0 sc_in sc_lv 16 signal 54 } 
	{ trottersLocal_V_1_10_address0 sc_out sc_lv 4 signal 55 } 
	{ trottersLocal_V_1_10_ce0 sc_out sc_logic 1 signal 55 } 
	{ trottersLocal_V_1_10_q0 sc_in sc_lv 16 signal 55 } 
	{ trottersLocal_V_1_11_address0 sc_out sc_lv 4 signal 56 } 
	{ trottersLocal_V_1_11_ce0 sc_out sc_logic 1 signal 56 } 
	{ trottersLocal_V_1_11_q0 sc_in sc_lv 16 signal 56 } 
	{ trottersLocal_V_1_12_address0 sc_out sc_lv 4 signal 57 } 
	{ trottersLocal_V_1_12_ce0 sc_out sc_logic 1 signal 57 } 
	{ trottersLocal_V_1_12_q0 sc_in sc_lv 16 signal 57 } 
	{ trottersLocal_V_1_13_address0 sc_out sc_lv 4 signal 58 } 
	{ trottersLocal_V_1_13_ce0 sc_out sc_logic 1 signal 58 } 
	{ trottersLocal_V_1_13_q0 sc_in sc_lv 16 signal 58 } 
	{ trottersLocal_V_1_14_address0 sc_out sc_lv 4 signal 59 } 
	{ trottersLocal_V_1_14_ce0 sc_out sc_logic 1 signal 59 } 
	{ trottersLocal_V_1_14_q0 sc_in sc_lv 16 signal 59 } 
	{ trottersLocal_V_1_15_address0 sc_out sc_lv 4 signal 60 } 
	{ trottersLocal_V_1_15_ce0 sc_out sc_logic 1 signal 60 } 
	{ trottersLocal_V_1_15_q0 sc_in sc_lv 16 signal 60 } 
	{ trottersLocal_V_2_0_address0 sc_out sc_lv 4 signal 61 } 
	{ trottersLocal_V_2_0_ce0 sc_out sc_logic 1 signal 61 } 
	{ trottersLocal_V_2_0_q0 sc_in sc_lv 16 signal 61 } 
	{ trottersLocal_V_2_1_address0 sc_out sc_lv 4 signal 62 } 
	{ trottersLocal_V_2_1_ce0 sc_out sc_logic 1 signal 62 } 
	{ trottersLocal_V_2_1_q0 sc_in sc_lv 16 signal 62 } 
	{ trottersLocal_V_2_2_address0 sc_out sc_lv 4 signal 63 } 
	{ trottersLocal_V_2_2_ce0 sc_out sc_logic 1 signal 63 } 
	{ trottersLocal_V_2_2_q0 sc_in sc_lv 16 signal 63 } 
	{ trottersLocal_V_2_3_address0 sc_out sc_lv 4 signal 64 } 
	{ trottersLocal_V_2_3_ce0 sc_out sc_logic 1 signal 64 } 
	{ trottersLocal_V_2_3_q0 sc_in sc_lv 16 signal 64 } 
	{ trottersLocal_V_2_4_address0 sc_out sc_lv 4 signal 65 } 
	{ trottersLocal_V_2_4_ce0 sc_out sc_logic 1 signal 65 } 
	{ trottersLocal_V_2_4_q0 sc_in sc_lv 16 signal 65 } 
	{ trottersLocal_V_2_5_address0 sc_out sc_lv 4 signal 66 } 
	{ trottersLocal_V_2_5_ce0 sc_out sc_logic 1 signal 66 } 
	{ trottersLocal_V_2_5_q0 sc_in sc_lv 16 signal 66 } 
	{ trottersLocal_V_2_6_address0 sc_out sc_lv 4 signal 67 } 
	{ trottersLocal_V_2_6_ce0 sc_out sc_logic 1 signal 67 } 
	{ trottersLocal_V_2_6_q0 sc_in sc_lv 16 signal 67 } 
	{ trottersLocal_V_2_7_address0 sc_out sc_lv 4 signal 68 } 
	{ trottersLocal_V_2_7_ce0 sc_out sc_logic 1 signal 68 } 
	{ trottersLocal_V_2_7_q0 sc_in sc_lv 16 signal 68 } 
	{ trottersLocal_V_2_8_address0 sc_out sc_lv 4 signal 69 } 
	{ trottersLocal_V_2_8_ce0 sc_out sc_logic 1 signal 69 } 
	{ trottersLocal_V_2_8_q0 sc_in sc_lv 16 signal 69 } 
	{ trottersLocal_V_2_9_address0 sc_out sc_lv 4 signal 70 } 
	{ trottersLocal_V_2_9_ce0 sc_out sc_logic 1 signal 70 } 
	{ trottersLocal_V_2_9_q0 sc_in sc_lv 16 signal 70 } 
	{ trottersLocal_V_2_10_address0 sc_out sc_lv 4 signal 71 } 
	{ trottersLocal_V_2_10_ce0 sc_out sc_logic 1 signal 71 } 
	{ trottersLocal_V_2_10_q0 sc_in sc_lv 16 signal 71 } 
	{ trottersLocal_V_2_11_address0 sc_out sc_lv 4 signal 72 } 
	{ trottersLocal_V_2_11_ce0 sc_out sc_logic 1 signal 72 } 
	{ trottersLocal_V_2_11_q0 sc_in sc_lv 16 signal 72 } 
	{ trottersLocal_V_2_12_address0 sc_out sc_lv 4 signal 73 } 
	{ trottersLocal_V_2_12_ce0 sc_out sc_logic 1 signal 73 } 
	{ trottersLocal_V_2_12_q0 sc_in sc_lv 16 signal 73 } 
	{ trottersLocal_V_2_13_address0 sc_out sc_lv 4 signal 74 } 
	{ trottersLocal_V_2_13_ce0 sc_out sc_logic 1 signal 74 } 
	{ trottersLocal_V_2_13_q0 sc_in sc_lv 16 signal 74 } 
	{ trottersLocal_V_2_14_address0 sc_out sc_lv 4 signal 75 } 
	{ trottersLocal_V_2_14_ce0 sc_out sc_logic 1 signal 75 } 
	{ trottersLocal_V_2_14_q0 sc_in sc_lv 16 signal 75 } 
	{ trottersLocal_V_2_15_address0 sc_out sc_lv 4 signal 76 } 
	{ trottersLocal_V_2_15_ce0 sc_out sc_logic 1 signal 76 } 
	{ trottersLocal_V_2_15_q0 sc_in sc_lv 16 signal 76 } 
	{ trottersLocal_V_3_0_address0 sc_out sc_lv 4 signal 77 } 
	{ trottersLocal_V_3_0_ce0 sc_out sc_logic 1 signal 77 } 
	{ trottersLocal_V_3_0_q0 sc_in sc_lv 16 signal 77 } 
	{ trottersLocal_V_3_1_address0 sc_out sc_lv 4 signal 78 } 
	{ trottersLocal_V_3_1_ce0 sc_out sc_logic 1 signal 78 } 
	{ trottersLocal_V_3_1_q0 sc_in sc_lv 16 signal 78 } 
	{ trottersLocal_V_3_2_address0 sc_out sc_lv 4 signal 79 } 
	{ trottersLocal_V_3_2_ce0 sc_out sc_logic 1 signal 79 } 
	{ trottersLocal_V_3_2_q0 sc_in sc_lv 16 signal 79 } 
	{ trottersLocal_V_3_3_address0 sc_out sc_lv 4 signal 80 } 
	{ trottersLocal_V_3_3_ce0 sc_out sc_logic 1 signal 80 } 
	{ trottersLocal_V_3_3_q0 sc_in sc_lv 16 signal 80 } 
	{ trottersLocal_V_3_4_address0 sc_out sc_lv 4 signal 81 } 
	{ trottersLocal_V_3_4_ce0 sc_out sc_logic 1 signal 81 } 
	{ trottersLocal_V_3_4_q0 sc_in sc_lv 16 signal 81 } 
	{ trottersLocal_V_3_5_address0 sc_out sc_lv 4 signal 82 } 
	{ trottersLocal_V_3_5_ce0 sc_out sc_logic 1 signal 82 } 
	{ trottersLocal_V_3_5_q0 sc_in sc_lv 16 signal 82 } 
	{ trottersLocal_V_3_6_address0 sc_out sc_lv 4 signal 83 } 
	{ trottersLocal_V_3_6_ce0 sc_out sc_logic 1 signal 83 } 
	{ trottersLocal_V_3_6_q0 sc_in sc_lv 16 signal 83 } 
	{ trottersLocal_V_3_7_address0 sc_out sc_lv 4 signal 84 } 
	{ trottersLocal_V_3_7_ce0 sc_out sc_logic 1 signal 84 } 
	{ trottersLocal_V_3_7_q0 sc_in sc_lv 16 signal 84 } 
	{ trottersLocal_V_3_8_address0 sc_out sc_lv 4 signal 85 } 
	{ trottersLocal_V_3_8_ce0 sc_out sc_logic 1 signal 85 } 
	{ trottersLocal_V_3_8_q0 sc_in sc_lv 16 signal 85 } 
	{ trottersLocal_V_3_9_address0 sc_out sc_lv 4 signal 86 } 
	{ trottersLocal_V_3_9_ce0 sc_out sc_logic 1 signal 86 } 
	{ trottersLocal_V_3_9_q0 sc_in sc_lv 16 signal 86 } 
	{ trottersLocal_V_3_10_address0 sc_out sc_lv 4 signal 87 } 
	{ trottersLocal_V_3_10_ce0 sc_out sc_logic 1 signal 87 } 
	{ trottersLocal_V_3_10_q0 sc_in sc_lv 16 signal 87 } 
	{ trottersLocal_V_3_11_address0 sc_out sc_lv 4 signal 88 } 
	{ trottersLocal_V_3_11_ce0 sc_out sc_logic 1 signal 88 } 
	{ trottersLocal_V_3_11_q0 sc_in sc_lv 16 signal 88 } 
	{ trottersLocal_V_3_12_address0 sc_out sc_lv 4 signal 89 } 
	{ trottersLocal_V_3_12_ce0 sc_out sc_logic 1 signal 89 } 
	{ trottersLocal_V_3_12_q0 sc_in sc_lv 16 signal 89 } 
	{ trottersLocal_V_3_13_address0 sc_out sc_lv 4 signal 90 } 
	{ trottersLocal_V_3_13_ce0 sc_out sc_logic 1 signal 90 } 
	{ trottersLocal_V_3_13_q0 sc_in sc_lv 16 signal 90 } 
	{ trottersLocal_V_3_14_address0 sc_out sc_lv 4 signal 91 } 
	{ trottersLocal_V_3_14_ce0 sc_out sc_logic 1 signal 91 } 
	{ trottersLocal_V_3_14_q0 sc_in sc_lv 16 signal 91 } 
	{ trottersLocal_V_3_15_address0 sc_out sc_lv 4 signal 92 } 
	{ trottersLocal_V_3_15_ce0 sc_out sc_logic 1 signal 92 } 
	{ trottersLocal_V_3_15_q0 sc_in sc_lv 16 signal 92 } 
	{ trunc_ln6 sc_in sc_lv 12 signal 93 } 
	{ logRandLocal_3_1_out sc_out sc_lv 32 signal 94 } 
	{ logRandLocal_3_1_out_ap_vld sc_out sc_logic 1 outvld 94 } 
	{ logRandLocal_2_1_out sc_out sc_lv 32 signal 95 } 
	{ logRandLocal_2_1_out_ap_vld sc_out sc_logic 1 outvld 95 } 
	{ logRandLocal_1_1_out sc_out sc_lv 32 signal 96 } 
	{ logRandLocal_1_1_out_ap_vld sc_out sc_logic 1 outvld 96 } 
	{ logRandLocal_0_1_out sc_out sc_lv 32 signal 97 } 
	{ logRandLocal_0_1_out_ap_vld sc_out sc_logic 1 outvld 97 } 
	{ dH_3_1_out sc_out sc_lv 32 signal 98 } 
	{ dH_3_1_out_ap_vld sc_out sc_logic 1 outvld 98 } 
	{ dH_2_1_out sc_out sc_lv 32 signal 99 } 
	{ dH_2_1_out_ap_vld sc_out sc_logic 1 outvld 99 } 
	{ dH_1_1_out sc_out sc_lv 32 signal 100 } 
	{ dH_1_1_out_ap_vld sc_out sc_logic 1 outvld 100 } 
	{ dH_0_1_out sc_out sc_lv 32 signal 101 } 
	{ dH_0_1_out_ap_vld sc_out sc_logic 1 outvld 101 } 
	{ downSpin_V_3_1_out sc_out sc_lv 1 signal 102 } 
	{ downSpin_V_3_1_out_ap_vld sc_out sc_logic 1 outvld 102 } 
	{ downSpin_V_2_1_out sc_out sc_lv 1 signal 103 } 
	{ downSpin_V_2_1_out_ap_vld sc_out sc_logic 1 outvld 103 } 
	{ downSpin_V_1_1_out sc_out sc_lv 1 signal 104 } 
	{ downSpin_V_1_1_out_ap_vld sc_out sc_logic 1 outvld 104 } 
	{ downSpin_V_0_1_out sc_out sc_lv 1 signal 105 } 
	{ downSpin_V_0_1_out_ap_vld sc_out sc_logic 1 outvld 105 } 
	{ upSpin_V_3_1_out sc_out sc_lv 1 signal 106 } 
	{ upSpin_V_3_1_out_ap_vld sc_out sc_logic 1 outvld 106 } 
	{ upSpin_V_2_1_out sc_out sc_lv 1 signal 107 } 
	{ upSpin_V_2_1_out_ap_vld sc_out sc_logic 1 outvld 107 } 
	{ upSpin_V_1_1_out sc_out sc_lv 1 signal 108 } 
	{ upSpin_V_1_1_out_ap_vld sc_out sc_logic 1 outvld 108 } 
	{ upSpin_V_0_1_out sc_out sc_lv 1 signal 109 } 
	{ upSpin_V_0_1_out_ap_vld sc_out sc_logic 1 outvld 109 } 
	{ iSpin_3_1_out sc_out sc_lv 32 signal 110 } 
	{ iSpin_3_1_out_ap_vld sc_out sc_logic 1 outvld 110 } 
	{ iSpin_2_1_out sc_out sc_lv 32 signal 111 } 
	{ iSpin_2_1_out_ap_vld sc_out sc_logic 1 outvld 111 } 
	{ iSpin_1_1_out sc_out sc_lv 32 signal 112 } 
	{ iSpin_1_1_out_ap_vld sc_out sc_logic 1 outvld 112 } 
	{ iSpin_0_1_out sc_out sc_lv 32 signal 113 } 
	{ iSpin_0_1_out_ap_vld sc_out sc_logic 1 outvld 113 } 
	{ iPack_3_1_out sc_out sc_lv 32 signal 114 } 
	{ iPack_3_1_out_ap_vld sc_out sc_logic 1 outvld 114 } 
	{ iPack_2_1_out sc_out sc_lv 32 signal 115 } 
	{ iPack_2_1_out_ap_vld sc_out sc_logic 1 outvld 115 } 
	{ iPack_1_1_out sc_out sc_lv 32 signal 116 } 
	{ iPack_1_1_out_ap_vld sc_out sc_logic 1 outvld 116 } 
	{ iPack_0_1_out sc_out sc_lv 32 signal 117 } 
	{ iPack_0_1_out_ap_vld sc_out sc_logic 1 outvld 117 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_gmem_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "gmem", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WID" }} , 
 	{ "name": "m_axi_gmem_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "gmem", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RID" }} , 
 	{ "name": "m_axi_gmem_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BID" }} , 
 	{ "name": "m_axi_gmem_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BUSER" }} , 
 	{ "name": "logRandLocal_3_012133", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "logRandLocal_3_012133", "role": "default" }} , 
 	{ "name": "logRandLocal_2_012132", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "logRandLocal_2_012132", "role": "default" }} , 
 	{ "name": "logRandLocal_1_012131", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "logRandLocal_1_012131", "role": "default" }} , 
 	{ "name": "logRandLocal_0_012130", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "logRandLocal_0_012130", "role": "default" }} , 
 	{ "name": "dH_3_0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dH_3_0", "role": "default" }} , 
 	{ "name": "dH_2_0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dH_2_0", "role": "default" }} , 
 	{ "name": "dH_1_0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dH_1_0", "role": "default" }} , 
 	{ "name": "dH_0_0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dH_0_0", "role": "default" }} , 
 	{ "name": "downSpin_V_3_012129", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "downSpin_V_3_012129", "role": "default" }} , 
 	{ "name": "downSpin_V_2_012128", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "downSpin_V_2_012128", "role": "default" }} , 
 	{ "name": "downSpin_V_1_012127", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "downSpin_V_1_012127", "role": "default" }} , 
 	{ "name": "downSpin_V_0_012126", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "downSpin_V_0_012126", "role": "default" }} , 
 	{ "name": "upSpin_V_3_012125", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "upSpin_V_3_012125", "role": "default" }} , 
 	{ "name": "upSpin_V_2_012124", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "upSpin_V_2_012124", "role": "default" }} , 
 	{ "name": "upSpin_V_1_012123", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "upSpin_V_1_012123", "role": "default" }} , 
 	{ "name": "upSpin_V_0_012122", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "upSpin_V_0_012122", "role": "default" }} , 
 	{ "name": "iSpin_3_012121", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "iSpin_3_012121", "role": "default" }} , 
 	{ "name": "iSpin_2_012120", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "iSpin_2_012120", "role": "default" }} , 
 	{ "name": "iSpin_1_012119", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "iSpin_1_012119", "role": "default" }} , 
 	{ "name": "iSpin_0_012118", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "iSpin_0_012118", "role": "default" }} , 
 	{ "name": "iPack_3_012117", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "iPack_3_012117", "role": "default" }} , 
 	{ "name": "iPack_2_012116", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "iPack_2_012116", "role": "default" }} , 
 	{ "name": "iPack_1_012115", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "iPack_1_012115", "role": "default" }} , 
 	{ "name": "iPack_0_012114", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "iPack_0_012114", "role": "default" }} , 
 	{ "name": "logRand", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "logRand", "role": "default" }} , 
 	{ "name": "trunc_ln3", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "trunc_ln3", "role": "default" }} , 
 	{ "name": "h", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "h", "role": "default" }} , 
 	{ "name": "trunc_ln2", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "trunc_ln2", "role": "default" }} , 
 	{ "name": "trottersLocal_V_0_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_0_0", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_0_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_0_0", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_0_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_0_0", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_0_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_0_1", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_0_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_0_1", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_0_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_0_1", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_0_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_0_2", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_0_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_0_2", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_0_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_0_2", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_0_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_0_3", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_0_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_0_3", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_0_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_0_3", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_0_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_0_4", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_0_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_0_4", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_0_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_0_4", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_0_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_0_5", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_0_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_0_5", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_0_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_0_5", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_0_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_0_6", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_0_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_0_6", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_0_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_0_6", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_0_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_0_7", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_0_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_0_7", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_0_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_0_7", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_0_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_0_8", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_0_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_0_8", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_0_8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_0_8", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_0_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_0_9", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_0_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_0_9", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_0_9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_0_9", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_0_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_0_10", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_0_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_0_10", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_0_10_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_0_10", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_0_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_0_11", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_0_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_0_11", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_0_11_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_0_11", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_0_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_0_12", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_0_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_0_12", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_0_12_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_0_12", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_0_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_0_13", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_0_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_0_13", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_0_13_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_0_13", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_0_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_0_14", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_0_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_0_14", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_0_14_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_0_14", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_0_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_0_15", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_0_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_0_15", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_0_15_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_0_15", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_1_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_1_0", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_1_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_1_0", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_1_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_1_0", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_1_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_1_1", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_1_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_1_1", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_1_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_1_1", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_1_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_1_2", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_1_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_1_2", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_1_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_1_2", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_1_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_1_3", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_1_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_1_3", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_1_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_1_3", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_1_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_1_4", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_1_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_1_4", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_1_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_1_4", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_1_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_1_5", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_1_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_1_5", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_1_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_1_5", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_1_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_1_6", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_1_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_1_6", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_1_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_1_6", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_1_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_1_7", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_1_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_1_7", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_1_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_1_7", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_1_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_1_8", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_1_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_1_8", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_1_8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_1_8", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_1_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_1_9", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_1_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_1_9", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_1_9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_1_9", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_1_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_1_10", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_1_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_1_10", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_1_10_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_1_10", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_1_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_1_11", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_1_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_1_11", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_1_11_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_1_11", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_1_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_1_12", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_1_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_1_12", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_1_12_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_1_12", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_1_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_1_13", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_1_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_1_13", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_1_13_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_1_13", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_1_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_1_14", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_1_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_1_14", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_1_14_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_1_14", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_1_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_1_15", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_1_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_1_15", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_1_15_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_1_15", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_2_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_2_0", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_2_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_2_0", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_2_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_2_0", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_2_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_2_1", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_2_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_2_1", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_2_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_2_1", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_2_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_2_2", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_2_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_2_2", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_2_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_2_2", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_2_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_2_3", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_2_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_2_3", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_2_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_2_3", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_2_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_2_4", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_2_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_2_4", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_2_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_2_4", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_2_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_2_5", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_2_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_2_5", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_2_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_2_5", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_2_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_2_6", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_2_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_2_6", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_2_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_2_6", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_2_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_2_7", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_2_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_2_7", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_2_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_2_7", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_2_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_2_8", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_2_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_2_8", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_2_8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_2_8", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_2_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_2_9", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_2_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_2_9", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_2_9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_2_9", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_2_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_2_10", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_2_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_2_10", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_2_10_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_2_10", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_2_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_2_11", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_2_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_2_11", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_2_11_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_2_11", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_2_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_2_12", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_2_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_2_12", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_2_12_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_2_12", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_2_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_2_13", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_2_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_2_13", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_2_13_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_2_13", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_2_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_2_14", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_2_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_2_14", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_2_14_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_2_14", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_2_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_2_15", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_2_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_2_15", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_2_15_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_2_15", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_3_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_3_0", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_3_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_3_0", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_3_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_3_0", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_3_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_3_1", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_3_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_3_1", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_3_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_3_1", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_3_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_3_2", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_3_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_3_2", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_3_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_3_2", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_3_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_3_3", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_3_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_3_3", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_3_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_3_3", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_3_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_3_4", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_3_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_3_4", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_3_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_3_4", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_3_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_3_5", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_3_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_3_5", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_3_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_3_5", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_3_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_3_6", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_3_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_3_6", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_3_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_3_6", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_3_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_3_7", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_3_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_3_7", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_3_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_3_7", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_3_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_3_8", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_3_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_3_8", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_3_8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_3_8", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_3_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_3_9", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_3_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_3_9", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_3_9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_3_9", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_3_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_3_10", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_3_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_3_10", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_3_10_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_3_10", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_3_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_3_11", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_3_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_3_11", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_3_11_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_3_11", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_3_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_3_12", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_3_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_3_12", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_3_12_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_3_12", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_3_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_3_13", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_3_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_3_13", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_3_13_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_3_13", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_3_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_3_14", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_3_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_3_14", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_3_14_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_3_14", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_3_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_3_15", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_3_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_3_15", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_3_15_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_3_15", "role": "q0" }} , 
 	{ "name": "trunc_ln6", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "trunc_ln6", "role": "default" }} , 
 	{ "name": "logRandLocal_3_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "logRandLocal_3_1_out", "role": "default" }} , 
 	{ "name": "logRandLocal_3_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "logRandLocal_3_1_out", "role": "ap_vld" }} , 
 	{ "name": "logRandLocal_2_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "logRandLocal_2_1_out", "role": "default" }} , 
 	{ "name": "logRandLocal_2_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "logRandLocal_2_1_out", "role": "ap_vld" }} , 
 	{ "name": "logRandLocal_1_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "logRandLocal_1_1_out", "role": "default" }} , 
 	{ "name": "logRandLocal_1_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "logRandLocal_1_1_out", "role": "ap_vld" }} , 
 	{ "name": "logRandLocal_0_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "logRandLocal_0_1_out", "role": "default" }} , 
 	{ "name": "logRandLocal_0_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "logRandLocal_0_1_out", "role": "ap_vld" }} , 
 	{ "name": "dH_3_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dH_3_1_out", "role": "default" }} , 
 	{ "name": "dH_3_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "dH_3_1_out", "role": "ap_vld" }} , 
 	{ "name": "dH_2_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dH_2_1_out", "role": "default" }} , 
 	{ "name": "dH_2_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "dH_2_1_out", "role": "ap_vld" }} , 
 	{ "name": "dH_1_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dH_1_1_out", "role": "default" }} , 
 	{ "name": "dH_1_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "dH_1_1_out", "role": "ap_vld" }} , 
 	{ "name": "dH_0_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dH_0_1_out", "role": "default" }} , 
 	{ "name": "dH_0_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "dH_0_1_out", "role": "ap_vld" }} , 
 	{ "name": "downSpin_V_3_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "downSpin_V_3_1_out", "role": "default" }} , 
 	{ "name": "downSpin_V_3_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "downSpin_V_3_1_out", "role": "ap_vld" }} , 
 	{ "name": "downSpin_V_2_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "downSpin_V_2_1_out", "role": "default" }} , 
 	{ "name": "downSpin_V_2_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "downSpin_V_2_1_out", "role": "ap_vld" }} , 
 	{ "name": "downSpin_V_1_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "downSpin_V_1_1_out", "role": "default" }} , 
 	{ "name": "downSpin_V_1_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "downSpin_V_1_1_out", "role": "ap_vld" }} , 
 	{ "name": "downSpin_V_0_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "downSpin_V_0_1_out", "role": "default" }} , 
 	{ "name": "downSpin_V_0_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "downSpin_V_0_1_out", "role": "ap_vld" }} , 
 	{ "name": "upSpin_V_3_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "upSpin_V_3_1_out", "role": "default" }} , 
 	{ "name": "upSpin_V_3_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "upSpin_V_3_1_out", "role": "ap_vld" }} , 
 	{ "name": "upSpin_V_2_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "upSpin_V_2_1_out", "role": "default" }} , 
 	{ "name": "upSpin_V_2_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "upSpin_V_2_1_out", "role": "ap_vld" }} , 
 	{ "name": "upSpin_V_1_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "upSpin_V_1_1_out", "role": "default" }} , 
 	{ "name": "upSpin_V_1_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "upSpin_V_1_1_out", "role": "ap_vld" }} , 
 	{ "name": "upSpin_V_0_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "upSpin_V_0_1_out", "role": "default" }} , 
 	{ "name": "upSpin_V_0_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "upSpin_V_0_1_out", "role": "ap_vld" }} , 
 	{ "name": "iSpin_3_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "iSpin_3_1_out", "role": "default" }} , 
 	{ "name": "iSpin_3_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "iSpin_3_1_out", "role": "ap_vld" }} , 
 	{ "name": "iSpin_2_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "iSpin_2_1_out", "role": "default" }} , 
 	{ "name": "iSpin_2_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "iSpin_2_1_out", "role": "ap_vld" }} , 
 	{ "name": "iSpin_1_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "iSpin_1_1_out", "role": "default" }} , 
 	{ "name": "iSpin_1_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "iSpin_1_1_out", "role": "ap_vld" }} , 
 	{ "name": "iSpin_0_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "iSpin_0_1_out", "role": "default" }} , 
 	{ "name": "iSpin_0_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "iSpin_0_1_out", "role": "ap_vld" }} , 
 	{ "name": "iPack_3_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "iPack_3_1_out", "role": "default" }} , 
 	{ "name": "iPack_3_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "iPack_3_1_out", "role": "ap_vld" }} , 
 	{ "name": "iPack_2_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "iPack_2_1_out", "role": "default" }} , 
 	{ "name": "iPack_2_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "iPack_2_1_out", "role": "ap_vld" }} , 
 	{ "name": "iPack_1_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "iPack_1_1_out", "role": "default" }} , 
 	{ "name": "iPack_1_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "iPack_1_1_out", "role": "ap_vld" }} , 
 	{ "name": "iPack_0_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "iPack_0_1_out", "role": "default" }} , 
 	{ "name": "iPack_0_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "iPack_0_1_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9"],
		"CDFG" : "QuantumMonteCarloU50_Pipeline_UPDATE_INPUT_STATE",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "81", "EstimateLatencyMax" : "81",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "logRandLocal_3_012133", "Type" : "None", "Direction" : "I"},
			{"Name" : "logRandLocal_2_012132", "Type" : "None", "Direction" : "I"},
			{"Name" : "logRandLocal_1_012131", "Type" : "None", "Direction" : "I"},
			{"Name" : "logRandLocal_0_012130", "Type" : "None", "Direction" : "I"},
			{"Name" : "dH_3_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "dH_2_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "dH_1_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "dH_0_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "downSpin_V_3_012129", "Type" : "None", "Direction" : "I"},
			{"Name" : "downSpin_V_2_012128", "Type" : "None", "Direction" : "I"},
			{"Name" : "downSpin_V_1_012127", "Type" : "None", "Direction" : "I"},
			{"Name" : "downSpin_V_0_012126", "Type" : "None", "Direction" : "I"},
			{"Name" : "upSpin_V_3_012125", "Type" : "None", "Direction" : "I"},
			{"Name" : "upSpin_V_2_012124", "Type" : "None", "Direction" : "I"},
			{"Name" : "upSpin_V_1_012123", "Type" : "None", "Direction" : "I"},
			{"Name" : "upSpin_V_0_012122", "Type" : "None", "Direction" : "I"},
			{"Name" : "iSpin_3_012121", "Type" : "None", "Direction" : "I"},
			{"Name" : "iSpin_2_012120", "Type" : "None", "Direction" : "I"},
			{"Name" : "iSpin_1_012119", "Type" : "None", "Direction" : "I"},
			{"Name" : "iSpin_0_012118", "Type" : "None", "Direction" : "I"},
			{"Name" : "iPack_3_012117", "Type" : "None", "Direction" : "I"},
			{"Name" : "iPack_2_012116", "Type" : "None", "Direction" : "I"},
			{"Name" : "iPack_1_012115", "Type" : "None", "Direction" : "I"},
			{"Name" : "iPack_0_012114", "Type" : "None", "Direction" : "I"},
			{"Name" : "logRand", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "trunc_ln3", "Type" : "None", "Direction" : "I"},
			{"Name" : "h", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln2", "Type" : "None", "Direction" : "I"},
			{"Name" : "trottersLocal_V_0_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_0_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_0_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_0_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_0_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_0_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_0_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_0_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_0_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_0_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_0_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_0_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_0_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_0_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_0_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_0_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_1_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_1_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_1_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_1_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_1_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_1_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_1_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_1_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_1_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_1_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_1_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_1_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_1_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_1_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_1_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_1_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_2_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_2_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_2_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_2_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_2_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_2_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_2_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_2_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_2_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_2_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_2_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_2_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_2_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_2_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_2_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_2_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_3_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_3_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_3_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_3_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_3_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_3_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_3_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_3_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_3_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_3_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_3_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_3_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_3_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_3_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_3_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_3_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trunc_ln6", "Type" : "None", "Direction" : "I"},
			{"Name" : "logRandLocal_3_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "logRandLocal_2_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "logRandLocal_1_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "logRandLocal_0_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dH_3_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dH_2_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dH_1_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dH_0_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "downSpin_V_3_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "downSpin_V_2_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "downSpin_V_1_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "downSpin_V_0_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "upSpin_V_3_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "upSpin_V_2_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "upSpin_V_1_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "upSpin_V_0_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "iSpin_3_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "iSpin_2_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "iSpin_1_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "iSpin_0_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "iPack_3_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "iPack_2_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "iPack_1_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "iPack_0_1_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "UPDATE_INPUT_STATE", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage1", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage1_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter37", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter37", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U67", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U68", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U69", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U70", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U71", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_647_16_1_1_U72", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U73", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_647_16_1_1_U74", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	QuantumMonteCarloU50_Pipeline_UPDATE_INPUT_STATE {
		logRandLocal_3_012133 {Type I LastRead 0 FirstWrite -1}
		logRandLocal_2_012132 {Type I LastRead 0 FirstWrite -1}
		logRandLocal_1_012131 {Type I LastRead 0 FirstWrite -1}
		logRandLocal_0_012130 {Type I LastRead 0 FirstWrite -1}
		dH_3_0 {Type I LastRead 0 FirstWrite -1}
		dH_2_0 {Type I LastRead 0 FirstWrite -1}
		dH_1_0 {Type I LastRead 0 FirstWrite -1}
		dH_0_0 {Type I LastRead 0 FirstWrite -1}
		downSpin_V_3_012129 {Type I LastRead 0 FirstWrite -1}
		downSpin_V_2_012128 {Type I LastRead 0 FirstWrite -1}
		downSpin_V_1_012127 {Type I LastRead 0 FirstWrite -1}
		downSpin_V_0_012126 {Type I LastRead 0 FirstWrite -1}
		upSpin_V_3_012125 {Type I LastRead 0 FirstWrite -1}
		upSpin_V_2_012124 {Type I LastRead 0 FirstWrite -1}
		upSpin_V_1_012123 {Type I LastRead 0 FirstWrite -1}
		upSpin_V_0_012122 {Type I LastRead 0 FirstWrite -1}
		iSpin_3_012121 {Type I LastRead 0 FirstWrite -1}
		iSpin_2_012120 {Type I LastRead 0 FirstWrite -1}
		iSpin_1_012119 {Type I LastRead 0 FirstWrite -1}
		iSpin_0_012118 {Type I LastRead 0 FirstWrite -1}
		iPack_3_012117 {Type I LastRead 0 FirstWrite -1}
		iPack_2_012116 {Type I LastRead 0 FirstWrite -1}
		iPack_1_012115 {Type I LastRead 0 FirstWrite -1}
		iPack_0_012114 {Type I LastRead 0 FirstWrite -1}
		logRand {Type I LastRead 0 FirstWrite -1}
		gmem {Type I LastRead 73 FirstWrite -1}
		trunc_ln3 {Type I LastRead 0 FirstWrite -1}
		h {Type I LastRead 0 FirstWrite -1}
		trunc_ln2 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_0_0 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_0_1 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_0_2 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_0_3 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_0_4 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_0_5 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_0_6 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_0_7 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_0_8 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_0_9 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_0_10 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_0_11 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_0_12 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_0_13 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_0_14 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_0_15 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_1_0 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_1_1 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_1_2 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_1_3 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_1_4 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_1_5 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_1_6 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_1_7 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_1_8 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_1_9 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_1_10 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_1_11 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_1_12 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_1_13 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_1_14 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_1_15 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_2_0 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_2_1 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_2_2 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_2_3 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_2_4 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_2_5 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_2_6 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_2_7 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_2_8 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_2_9 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_2_10 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_2_11 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_2_12 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_2_13 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_2_14 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_2_15 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_3_0 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_3_1 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_3_2 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_3_3 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_3_4 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_3_5 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_3_6 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_3_7 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_3_8 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_3_9 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_3_10 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_3_11 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_3_12 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_3_13 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_3_14 {Type I LastRead 73 FirstWrite -1}
		trottersLocal_V_3_15 {Type I LastRead 73 FirstWrite -1}
		trunc_ln6 {Type I LastRead 0 FirstWrite -1}
		logRandLocal_3_1_out {Type O LastRead -1 FirstWrite 72}
		logRandLocal_2_1_out {Type O LastRead -1 FirstWrite 72}
		logRandLocal_1_1_out {Type O LastRead -1 FirstWrite 72}
		logRandLocal_0_1_out {Type O LastRead -1 FirstWrite 72}
		dH_3_1_out {Type O LastRead -1 FirstWrite 72}
		dH_2_1_out {Type O LastRead -1 FirstWrite 72}
		dH_1_1_out {Type O LastRead -1 FirstWrite 72}
		dH_0_1_out {Type O LastRead -1 FirstWrite 72}
		downSpin_V_3_1_out {Type O LastRead -1 FirstWrite 72}
		downSpin_V_2_1_out {Type O LastRead -1 FirstWrite 72}
		downSpin_V_1_1_out {Type O LastRead -1 FirstWrite 72}
		downSpin_V_0_1_out {Type O LastRead -1 FirstWrite 72}
		upSpin_V_3_1_out {Type O LastRead -1 FirstWrite 72}
		upSpin_V_2_1_out {Type O LastRead -1 FirstWrite 72}
		upSpin_V_1_1_out {Type O LastRead -1 FirstWrite 72}
		upSpin_V_0_1_out {Type O LastRead -1 FirstWrite 72}
		iSpin_3_1_out {Type O LastRead -1 FirstWrite 72}
		iSpin_2_1_out {Type O LastRead -1 FirstWrite 72}
		iSpin_1_1_out {Type O LastRead -1 FirstWrite 72}
		iSpin_0_1_out {Type O LastRead -1 FirstWrite 72}
		iPack_3_1_out {Type O LastRead -1 FirstWrite 72}
		iPack_2_1_out {Type O LastRead -1 FirstWrite 72}
		iPack_1_1_out {Type O LastRead -1 FirstWrite 72}
		iPack_0_1_out {Type O LastRead -1 FirstWrite 72}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "81", "Max" : "81"}
	, {"Name" : "Interval", "Min" : "81", "Max" : "81"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	logRandLocal_3_012133 { ap_none {  { logRandLocal_3_012133 in_data 0 32 } } }
	logRandLocal_2_012132 { ap_none {  { logRandLocal_2_012132 in_data 0 32 } } }
	logRandLocal_1_012131 { ap_none {  { logRandLocal_1_012131 in_data 0 32 } } }
	logRandLocal_0_012130 { ap_none {  { logRandLocal_0_012130 in_data 0 32 } } }
	dH_3_0 { ap_none {  { dH_3_0 in_data 0 32 } } }
	dH_2_0 { ap_none {  { dH_2_0 in_data 0 32 } } }
	dH_1_0 { ap_none {  { dH_1_0 in_data 0 32 } } }
	dH_0_0 { ap_none {  { dH_0_0 in_data 0 32 } } }
	downSpin_V_3_012129 { ap_none {  { downSpin_V_3_012129 in_data 0 1 } } }
	downSpin_V_2_012128 { ap_none {  { downSpin_V_2_012128 in_data 0 1 } } }
	downSpin_V_1_012127 { ap_none {  { downSpin_V_1_012127 in_data 0 1 } } }
	downSpin_V_0_012126 { ap_none {  { downSpin_V_0_012126 in_data 0 1 } } }
	upSpin_V_3_012125 { ap_none {  { upSpin_V_3_012125 in_data 0 1 } } }
	upSpin_V_2_012124 { ap_none {  { upSpin_V_2_012124 in_data 0 1 } } }
	upSpin_V_1_012123 { ap_none {  { upSpin_V_1_012123 in_data 0 1 } } }
	upSpin_V_0_012122 { ap_none {  { upSpin_V_0_012122 in_data 0 1 } } }
	iSpin_3_012121 { ap_none {  { iSpin_3_012121 in_data 0 32 } } }
	iSpin_2_012120 { ap_none {  { iSpin_2_012120 in_data 0 32 } } }
	iSpin_1_012119 { ap_none {  { iSpin_1_012119 in_data 0 32 } } }
	iSpin_0_012118 { ap_none {  { iSpin_0_012118 in_data 0 32 } } }
	iPack_3_012117 { ap_none {  { iPack_3_012117 in_data 0 32 } } }
	iPack_2_012116 { ap_none {  { iPack_2_012116 in_data 0 32 } } }
	iPack_1_012115 { ap_none {  { iPack_1_012115 in_data 0 32 } } }
	iPack_0_012114 { ap_none {  { iPack_0_012114 in_data 0 32 } } }
	logRand { ap_none {  { logRand in_data 0 64 } } }
	gmem { m_axi {  { m_axi_gmem_AWVALID VALID 1 1 }  { m_axi_gmem_AWREADY READY 0 1 }  { m_axi_gmem_AWADDR ADDR 1 64 }  { m_axi_gmem_AWID ID 1 1 }  { m_axi_gmem_AWLEN LEN 1 32 }  { m_axi_gmem_AWSIZE SIZE 1 3 }  { m_axi_gmem_AWBURST BURST 1 2 }  { m_axi_gmem_AWLOCK LOCK 1 2 }  { m_axi_gmem_AWCACHE CACHE 1 4 }  { m_axi_gmem_AWPROT PROT 1 3 }  { m_axi_gmem_AWQOS QOS 1 4 }  { m_axi_gmem_AWREGION REGION 1 4 }  { m_axi_gmem_AWUSER USER 1 1 }  { m_axi_gmem_WVALID VALID 1 1 }  { m_axi_gmem_WREADY READY 0 1 }  { m_axi_gmem_WDATA DATA 1 512 }  { m_axi_gmem_WSTRB STRB 1 64 }  { m_axi_gmem_WLAST LAST 1 1 }  { m_axi_gmem_WID ID 1 1 }  { m_axi_gmem_WUSER USER 1 1 }  { m_axi_gmem_ARVALID VALID 1 1 }  { m_axi_gmem_ARREADY READY 0 1 }  { m_axi_gmem_ARADDR ADDR 1 64 }  { m_axi_gmem_ARID ID 1 1 }  { m_axi_gmem_ARLEN LEN 1 32 }  { m_axi_gmem_ARSIZE SIZE 1 3 }  { m_axi_gmem_ARBURST BURST 1 2 }  { m_axi_gmem_ARLOCK LOCK 1 2 }  { m_axi_gmem_ARCACHE CACHE 1 4 }  { m_axi_gmem_ARPROT PROT 1 3 }  { m_axi_gmem_ARQOS QOS 1 4 }  { m_axi_gmem_ARREGION REGION 1 4 }  { m_axi_gmem_ARUSER USER 1 1 }  { m_axi_gmem_RVALID VALID 0 1 }  { m_axi_gmem_RREADY READY 1 1 }  { m_axi_gmem_RDATA DATA 0 512 }  { m_axi_gmem_RLAST LAST 0 1 }  { m_axi_gmem_RID ID 0 1 }  { m_axi_gmem_RUSER USER 0 1 }  { m_axi_gmem_RRESP RESP 0 2 }  { m_axi_gmem_BVALID VALID 0 1 }  { m_axi_gmem_BREADY READY 1 1 }  { m_axi_gmem_BRESP RESP 0 2 }  { m_axi_gmem_BID ID 0 1 }  { m_axi_gmem_BUSER USER 0 1 } } }
	trunc_ln3 { ap_none {  { trunc_ln3 in_data 0 6 } } }
	h { ap_none {  { h in_data 0 64 } } }
	trunc_ln2 { ap_none {  { trunc_ln2 in_data 0 6 } } }
	trottersLocal_V_0_0 { ap_memory {  { trottersLocal_V_0_0_address0 mem_address 1 4 }  { trottersLocal_V_0_0_ce0 mem_ce 1 1 }  { trottersLocal_V_0_0_q0 mem_dout 0 16 } } }
	trottersLocal_V_0_1 { ap_memory {  { trottersLocal_V_0_1_address0 mem_address 1 4 }  { trottersLocal_V_0_1_ce0 mem_ce 1 1 }  { trottersLocal_V_0_1_q0 mem_dout 0 16 } } }
	trottersLocal_V_0_2 { ap_memory {  { trottersLocal_V_0_2_address0 mem_address 1 4 }  { trottersLocal_V_0_2_ce0 mem_ce 1 1 }  { trottersLocal_V_0_2_q0 mem_dout 0 16 } } }
	trottersLocal_V_0_3 { ap_memory {  { trottersLocal_V_0_3_address0 mem_address 1 4 }  { trottersLocal_V_0_3_ce0 mem_ce 1 1 }  { trottersLocal_V_0_3_q0 mem_dout 0 16 } } }
	trottersLocal_V_0_4 { ap_memory {  { trottersLocal_V_0_4_address0 mem_address 1 4 }  { trottersLocal_V_0_4_ce0 mem_ce 1 1 }  { trottersLocal_V_0_4_q0 mem_dout 0 16 } } }
	trottersLocal_V_0_5 { ap_memory {  { trottersLocal_V_0_5_address0 mem_address 1 4 }  { trottersLocal_V_0_5_ce0 mem_ce 1 1 }  { trottersLocal_V_0_5_q0 mem_dout 0 16 } } }
	trottersLocal_V_0_6 { ap_memory {  { trottersLocal_V_0_6_address0 mem_address 1 4 }  { trottersLocal_V_0_6_ce0 mem_ce 1 1 }  { trottersLocal_V_0_6_q0 mem_dout 0 16 } } }
	trottersLocal_V_0_7 { ap_memory {  { trottersLocal_V_0_7_address0 mem_address 1 4 }  { trottersLocal_V_0_7_ce0 mem_ce 1 1 }  { trottersLocal_V_0_7_q0 mem_dout 0 16 } } }
	trottersLocal_V_0_8 { ap_memory {  { trottersLocal_V_0_8_address0 mem_address 1 4 }  { trottersLocal_V_0_8_ce0 mem_ce 1 1 }  { trottersLocal_V_0_8_q0 mem_dout 0 16 } } }
	trottersLocal_V_0_9 { ap_memory {  { trottersLocal_V_0_9_address0 mem_address 1 4 }  { trottersLocal_V_0_9_ce0 mem_ce 1 1 }  { trottersLocal_V_0_9_q0 mem_dout 0 16 } } }
	trottersLocal_V_0_10 { ap_memory {  { trottersLocal_V_0_10_address0 mem_address 1 4 }  { trottersLocal_V_0_10_ce0 mem_ce 1 1 }  { trottersLocal_V_0_10_q0 mem_dout 0 16 } } }
	trottersLocal_V_0_11 { ap_memory {  { trottersLocal_V_0_11_address0 mem_address 1 4 }  { trottersLocal_V_0_11_ce0 mem_ce 1 1 }  { trottersLocal_V_0_11_q0 mem_dout 0 16 } } }
	trottersLocal_V_0_12 { ap_memory {  { trottersLocal_V_0_12_address0 mem_address 1 4 }  { trottersLocal_V_0_12_ce0 mem_ce 1 1 }  { trottersLocal_V_0_12_q0 mem_dout 0 16 } } }
	trottersLocal_V_0_13 { ap_memory {  { trottersLocal_V_0_13_address0 mem_address 1 4 }  { trottersLocal_V_0_13_ce0 mem_ce 1 1 }  { trottersLocal_V_0_13_q0 mem_dout 0 16 } } }
	trottersLocal_V_0_14 { ap_memory {  { trottersLocal_V_0_14_address0 mem_address 1 4 }  { trottersLocal_V_0_14_ce0 mem_ce 1 1 }  { trottersLocal_V_0_14_q0 mem_dout 0 16 } } }
	trottersLocal_V_0_15 { ap_memory {  { trottersLocal_V_0_15_address0 mem_address 1 4 }  { trottersLocal_V_0_15_ce0 mem_ce 1 1 }  { trottersLocal_V_0_15_q0 mem_dout 0 16 } } }
	trottersLocal_V_1_0 { ap_memory {  { trottersLocal_V_1_0_address0 mem_address 1 4 }  { trottersLocal_V_1_0_ce0 mem_ce 1 1 }  { trottersLocal_V_1_0_q0 mem_dout 0 16 } } }
	trottersLocal_V_1_1 { ap_memory {  { trottersLocal_V_1_1_address0 mem_address 1 4 }  { trottersLocal_V_1_1_ce0 mem_ce 1 1 }  { trottersLocal_V_1_1_q0 mem_dout 0 16 } } }
	trottersLocal_V_1_2 { ap_memory {  { trottersLocal_V_1_2_address0 mem_address 1 4 }  { trottersLocal_V_1_2_ce0 mem_ce 1 1 }  { trottersLocal_V_1_2_q0 mem_dout 0 16 } } }
	trottersLocal_V_1_3 { ap_memory {  { trottersLocal_V_1_3_address0 mem_address 1 4 }  { trottersLocal_V_1_3_ce0 mem_ce 1 1 }  { trottersLocal_V_1_3_q0 mem_dout 0 16 } } }
	trottersLocal_V_1_4 { ap_memory {  { trottersLocal_V_1_4_address0 mem_address 1 4 }  { trottersLocal_V_1_4_ce0 mem_ce 1 1 }  { trottersLocal_V_1_4_q0 mem_dout 0 16 } } }
	trottersLocal_V_1_5 { ap_memory {  { trottersLocal_V_1_5_address0 mem_address 1 4 }  { trottersLocal_V_1_5_ce0 mem_ce 1 1 }  { trottersLocal_V_1_5_q0 mem_dout 0 16 } } }
	trottersLocal_V_1_6 { ap_memory {  { trottersLocal_V_1_6_address0 mem_address 1 4 }  { trottersLocal_V_1_6_ce0 mem_ce 1 1 }  { trottersLocal_V_1_6_q0 mem_dout 0 16 } } }
	trottersLocal_V_1_7 { ap_memory {  { trottersLocal_V_1_7_address0 mem_address 1 4 }  { trottersLocal_V_1_7_ce0 mem_ce 1 1 }  { trottersLocal_V_1_7_q0 mem_dout 0 16 } } }
	trottersLocal_V_1_8 { ap_memory {  { trottersLocal_V_1_8_address0 mem_address 1 4 }  { trottersLocal_V_1_8_ce0 mem_ce 1 1 }  { trottersLocal_V_1_8_q0 mem_dout 0 16 } } }
	trottersLocal_V_1_9 { ap_memory {  { trottersLocal_V_1_9_address0 mem_address 1 4 }  { trottersLocal_V_1_9_ce0 mem_ce 1 1 }  { trottersLocal_V_1_9_q0 mem_dout 0 16 } } }
	trottersLocal_V_1_10 { ap_memory {  { trottersLocal_V_1_10_address0 mem_address 1 4 }  { trottersLocal_V_1_10_ce0 mem_ce 1 1 }  { trottersLocal_V_1_10_q0 mem_dout 0 16 } } }
	trottersLocal_V_1_11 { ap_memory {  { trottersLocal_V_1_11_address0 mem_address 1 4 }  { trottersLocal_V_1_11_ce0 mem_ce 1 1 }  { trottersLocal_V_1_11_q0 mem_dout 0 16 } } }
	trottersLocal_V_1_12 { ap_memory {  { trottersLocal_V_1_12_address0 mem_address 1 4 }  { trottersLocal_V_1_12_ce0 mem_ce 1 1 }  { trottersLocal_V_1_12_q0 mem_dout 0 16 } } }
	trottersLocal_V_1_13 { ap_memory {  { trottersLocal_V_1_13_address0 mem_address 1 4 }  { trottersLocal_V_1_13_ce0 mem_ce 1 1 }  { trottersLocal_V_1_13_q0 mem_dout 0 16 } } }
	trottersLocal_V_1_14 { ap_memory {  { trottersLocal_V_1_14_address0 mem_address 1 4 }  { trottersLocal_V_1_14_ce0 mem_ce 1 1 }  { trottersLocal_V_1_14_q0 mem_dout 0 16 } } }
	trottersLocal_V_1_15 { ap_memory {  { trottersLocal_V_1_15_address0 mem_address 1 4 }  { trottersLocal_V_1_15_ce0 mem_ce 1 1 }  { trottersLocal_V_1_15_q0 mem_dout 0 16 } } }
	trottersLocal_V_2_0 { ap_memory {  { trottersLocal_V_2_0_address0 mem_address 1 4 }  { trottersLocal_V_2_0_ce0 mem_ce 1 1 }  { trottersLocal_V_2_0_q0 mem_dout 0 16 } } }
	trottersLocal_V_2_1 { ap_memory {  { trottersLocal_V_2_1_address0 mem_address 1 4 }  { trottersLocal_V_2_1_ce0 mem_ce 1 1 }  { trottersLocal_V_2_1_q0 mem_dout 0 16 } } }
	trottersLocal_V_2_2 { ap_memory {  { trottersLocal_V_2_2_address0 mem_address 1 4 }  { trottersLocal_V_2_2_ce0 mem_ce 1 1 }  { trottersLocal_V_2_2_q0 mem_dout 0 16 } } }
	trottersLocal_V_2_3 { ap_memory {  { trottersLocal_V_2_3_address0 mem_address 1 4 }  { trottersLocal_V_2_3_ce0 mem_ce 1 1 }  { trottersLocal_V_2_3_q0 mem_dout 0 16 } } }
	trottersLocal_V_2_4 { ap_memory {  { trottersLocal_V_2_4_address0 mem_address 1 4 }  { trottersLocal_V_2_4_ce0 mem_ce 1 1 }  { trottersLocal_V_2_4_q0 mem_dout 0 16 } } }
	trottersLocal_V_2_5 { ap_memory {  { trottersLocal_V_2_5_address0 mem_address 1 4 }  { trottersLocal_V_2_5_ce0 mem_ce 1 1 }  { trottersLocal_V_2_5_q0 mem_dout 0 16 } } }
	trottersLocal_V_2_6 { ap_memory {  { trottersLocal_V_2_6_address0 mem_address 1 4 }  { trottersLocal_V_2_6_ce0 mem_ce 1 1 }  { trottersLocal_V_2_6_q0 mem_dout 0 16 } } }
	trottersLocal_V_2_7 { ap_memory {  { trottersLocal_V_2_7_address0 mem_address 1 4 }  { trottersLocal_V_2_7_ce0 mem_ce 1 1 }  { trottersLocal_V_2_7_q0 mem_dout 0 16 } } }
	trottersLocal_V_2_8 { ap_memory {  { trottersLocal_V_2_8_address0 mem_address 1 4 }  { trottersLocal_V_2_8_ce0 mem_ce 1 1 }  { trottersLocal_V_2_8_q0 mem_dout 0 16 } } }
	trottersLocal_V_2_9 { ap_memory {  { trottersLocal_V_2_9_address0 mem_address 1 4 }  { trottersLocal_V_2_9_ce0 mem_ce 1 1 }  { trottersLocal_V_2_9_q0 mem_dout 0 16 } } }
	trottersLocal_V_2_10 { ap_memory {  { trottersLocal_V_2_10_address0 mem_address 1 4 }  { trottersLocal_V_2_10_ce0 mem_ce 1 1 }  { trottersLocal_V_2_10_q0 mem_dout 0 16 } } }
	trottersLocal_V_2_11 { ap_memory {  { trottersLocal_V_2_11_address0 mem_address 1 4 }  { trottersLocal_V_2_11_ce0 mem_ce 1 1 }  { trottersLocal_V_2_11_q0 mem_dout 0 16 } } }
	trottersLocal_V_2_12 { ap_memory {  { trottersLocal_V_2_12_address0 mem_address 1 4 }  { trottersLocal_V_2_12_ce0 mem_ce 1 1 }  { trottersLocal_V_2_12_q0 mem_dout 0 16 } } }
	trottersLocal_V_2_13 { ap_memory {  { trottersLocal_V_2_13_address0 mem_address 1 4 }  { trottersLocal_V_2_13_ce0 mem_ce 1 1 }  { trottersLocal_V_2_13_q0 mem_dout 0 16 } } }
	trottersLocal_V_2_14 { ap_memory {  { trottersLocal_V_2_14_address0 mem_address 1 4 }  { trottersLocal_V_2_14_ce0 mem_ce 1 1 }  { trottersLocal_V_2_14_q0 mem_dout 0 16 } } }
	trottersLocal_V_2_15 { ap_memory {  { trottersLocal_V_2_15_address0 mem_address 1 4 }  { trottersLocal_V_2_15_ce0 mem_ce 1 1 }  { trottersLocal_V_2_15_q0 mem_dout 0 16 } } }
	trottersLocal_V_3_0 { ap_memory {  { trottersLocal_V_3_0_address0 mem_address 1 4 }  { trottersLocal_V_3_0_ce0 mem_ce 1 1 }  { trottersLocal_V_3_0_q0 mem_dout 0 16 } } }
	trottersLocal_V_3_1 { ap_memory {  { trottersLocal_V_3_1_address0 mem_address 1 4 }  { trottersLocal_V_3_1_ce0 mem_ce 1 1 }  { trottersLocal_V_3_1_q0 mem_dout 0 16 } } }
	trottersLocal_V_3_2 { ap_memory {  { trottersLocal_V_3_2_address0 mem_address 1 4 }  { trottersLocal_V_3_2_ce0 mem_ce 1 1 }  { trottersLocal_V_3_2_q0 mem_dout 0 16 } } }
	trottersLocal_V_3_3 { ap_memory {  { trottersLocal_V_3_3_address0 mem_address 1 4 }  { trottersLocal_V_3_3_ce0 mem_ce 1 1 }  { trottersLocal_V_3_3_q0 mem_dout 0 16 } } }
	trottersLocal_V_3_4 { ap_memory {  { trottersLocal_V_3_4_address0 mem_address 1 4 }  { trottersLocal_V_3_4_ce0 mem_ce 1 1 }  { trottersLocal_V_3_4_q0 mem_dout 0 16 } } }
	trottersLocal_V_3_5 { ap_memory {  { trottersLocal_V_3_5_address0 mem_address 1 4 }  { trottersLocal_V_3_5_ce0 mem_ce 1 1 }  { trottersLocal_V_3_5_q0 mem_dout 0 16 } } }
	trottersLocal_V_3_6 { ap_memory {  { trottersLocal_V_3_6_address0 mem_address 1 4 }  { trottersLocal_V_3_6_ce0 mem_ce 1 1 }  { trottersLocal_V_3_6_q0 mem_dout 0 16 } } }
	trottersLocal_V_3_7 { ap_memory {  { trottersLocal_V_3_7_address0 mem_address 1 4 }  { trottersLocal_V_3_7_ce0 mem_ce 1 1 }  { trottersLocal_V_3_7_q0 mem_dout 0 16 } } }
	trottersLocal_V_3_8 { ap_memory {  { trottersLocal_V_3_8_address0 mem_address 1 4 }  { trottersLocal_V_3_8_ce0 mem_ce 1 1 }  { trottersLocal_V_3_8_q0 mem_dout 0 16 } } }
	trottersLocal_V_3_9 { ap_memory {  { trottersLocal_V_3_9_address0 mem_address 1 4 }  { trottersLocal_V_3_9_ce0 mem_ce 1 1 }  { trottersLocal_V_3_9_q0 mem_dout 0 16 } } }
	trottersLocal_V_3_10 { ap_memory {  { trottersLocal_V_3_10_address0 mem_address 1 4 }  { trottersLocal_V_3_10_ce0 mem_ce 1 1 }  { trottersLocal_V_3_10_q0 mem_dout 0 16 } } }
	trottersLocal_V_3_11 { ap_memory {  { trottersLocal_V_3_11_address0 mem_address 1 4 }  { trottersLocal_V_3_11_ce0 mem_ce 1 1 }  { trottersLocal_V_3_11_q0 mem_dout 0 16 } } }
	trottersLocal_V_3_12 { ap_memory {  { trottersLocal_V_3_12_address0 mem_address 1 4 }  { trottersLocal_V_3_12_ce0 mem_ce 1 1 }  { trottersLocal_V_3_12_q0 mem_dout 0 16 } } }
	trottersLocal_V_3_13 { ap_memory {  { trottersLocal_V_3_13_address0 mem_address 1 4 }  { trottersLocal_V_3_13_ce0 mem_ce 1 1 }  { trottersLocal_V_3_13_q0 mem_dout 0 16 } } }
	trottersLocal_V_3_14 { ap_memory {  { trottersLocal_V_3_14_address0 mem_address 1 4 }  { trottersLocal_V_3_14_ce0 mem_ce 1 1 }  { trottersLocal_V_3_14_q0 mem_dout 0 16 } } }
	trottersLocal_V_3_15 { ap_memory {  { trottersLocal_V_3_15_address0 mem_address 1 4 }  { trottersLocal_V_3_15_ce0 mem_ce 1 1 }  { trottersLocal_V_3_15_q0 mem_dout 0 16 } } }
	trunc_ln6 { ap_none {  { trunc_ln6 in_data 0 12 } } }
	logRandLocal_3_1_out { ap_vld {  { logRandLocal_3_1_out out_data 1 32 }  { logRandLocal_3_1_out_ap_vld out_vld 1 1 } } }
	logRandLocal_2_1_out { ap_vld {  { logRandLocal_2_1_out out_data 1 32 }  { logRandLocal_2_1_out_ap_vld out_vld 1 1 } } }
	logRandLocal_1_1_out { ap_vld {  { logRandLocal_1_1_out out_data 1 32 }  { logRandLocal_1_1_out_ap_vld out_vld 1 1 } } }
	logRandLocal_0_1_out { ap_vld {  { logRandLocal_0_1_out out_data 1 32 }  { logRandLocal_0_1_out_ap_vld out_vld 1 1 } } }
	dH_3_1_out { ap_vld {  { dH_3_1_out out_data 1 32 }  { dH_3_1_out_ap_vld out_vld 1 1 } } }
	dH_2_1_out { ap_vld {  { dH_2_1_out out_data 1 32 }  { dH_2_1_out_ap_vld out_vld 1 1 } } }
	dH_1_1_out { ap_vld {  { dH_1_1_out out_data 1 32 }  { dH_1_1_out_ap_vld out_vld 1 1 } } }
	dH_0_1_out { ap_vld {  { dH_0_1_out out_data 1 32 }  { dH_0_1_out_ap_vld out_vld 1 1 } } }
	downSpin_V_3_1_out { ap_vld {  { downSpin_V_3_1_out out_data 1 1 }  { downSpin_V_3_1_out_ap_vld out_vld 1 1 } } }
	downSpin_V_2_1_out { ap_vld {  { downSpin_V_2_1_out out_data 1 1 }  { downSpin_V_2_1_out_ap_vld out_vld 1 1 } } }
	downSpin_V_1_1_out { ap_vld {  { downSpin_V_1_1_out out_data 1 1 }  { downSpin_V_1_1_out_ap_vld out_vld 1 1 } } }
	downSpin_V_0_1_out { ap_vld {  { downSpin_V_0_1_out out_data 1 1 }  { downSpin_V_0_1_out_ap_vld out_vld 1 1 } } }
	upSpin_V_3_1_out { ap_vld {  { upSpin_V_3_1_out out_data 1 1 }  { upSpin_V_3_1_out_ap_vld out_vld 1 1 } } }
	upSpin_V_2_1_out { ap_vld {  { upSpin_V_2_1_out out_data 1 1 }  { upSpin_V_2_1_out_ap_vld out_vld 1 1 } } }
	upSpin_V_1_1_out { ap_vld {  { upSpin_V_1_1_out out_data 1 1 }  { upSpin_V_1_1_out_ap_vld out_vld 1 1 } } }
	upSpin_V_0_1_out { ap_vld {  { upSpin_V_0_1_out out_data 1 1 }  { upSpin_V_0_1_out_ap_vld out_vld 1 1 } } }
	iSpin_3_1_out { ap_vld {  { iSpin_3_1_out out_data 1 32 }  { iSpin_3_1_out_ap_vld out_vld 1 1 } } }
	iSpin_2_1_out { ap_vld {  { iSpin_2_1_out out_data 1 32 }  { iSpin_2_1_out_ap_vld out_vld 1 1 } } }
	iSpin_1_1_out { ap_vld {  { iSpin_1_1_out out_data 1 32 }  { iSpin_1_1_out_ap_vld out_vld 1 1 } } }
	iSpin_0_1_out { ap_vld {  { iSpin_0_1_out out_data 1 32 }  { iSpin_0_1_out_ap_vld out_vld 1 1 } } }
	iPack_3_1_out { ap_vld {  { iPack_3_1_out out_data 1 32 }  { iPack_3_1_out_ap_vld out_vld 1 1 } } }
	iPack_2_1_out { ap_vld {  { iPack_2_1_out out_data 1 32 }  { iPack_2_1_out_ap_vld out_vld 1 1 } } }
	iPack_1_1_out { ap_vld {  { iPack_1_1_out out_data 1 32 }  { iPack_1_1_out_ap_vld out_vld 1 1 } } }
	iPack_0_1_out { ap_vld {  { iPack_0_1_out out_data 1 32 }  { iPack_0_1_out_ap_vld out_vld 1 1 } } }
}
