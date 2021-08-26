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
	{ trottersLocal_V_0_0 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ JcoupLocal_0_0 int 512 regular {array 16 { 1 3 } 1 1 }  }
	{ trottersLocal_V_0_1 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ JcoupLocal_0_1 int 512 regular {array 16 { 1 3 } 1 1 }  }
	{ trottersLocal_V_0_2 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ JcoupLocal_0_2 int 512 regular {array 16 { 1 3 } 1 1 }  }
	{ trottersLocal_V_0_3 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ JcoupLocal_0_3 int 512 regular {array 16 { 1 3 } 1 1 }  }
	{ trottersLocal_V_0_4 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ JcoupLocal_0_4 int 512 regular {array 16 { 1 3 } 1 1 }  }
	{ trottersLocal_V_0_5 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ JcoupLocal_0_5 int 512 regular {array 16 { 1 3 } 1 1 }  }
	{ trottersLocal_V_0_6 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ JcoupLocal_0_6 int 512 regular {array 16 { 1 3 } 1 1 }  }
	{ trottersLocal_V_0_7 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ JcoupLocal_0_7 int 512 regular {array 16 { 1 3 } 1 1 }  }
	{ trottersLocal_V_0_8 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ JcoupLocal_0_8 int 512 regular {array 16 { 1 3 } 1 1 }  }
	{ trottersLocal_V_0_9 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ JcoupLocal_0_9 int 512 regular {array 16 { 1 3 } 1 1 }  }
	{ trottersLocal_V_0_10 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ JcoupLocal_0_10 int 512 regular {array 16 { 1 3 } 1 1 }  }
	{ trottersLocal_V_0_11 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ JcoupLocal_0_11 int 512 regular {array 16 { 1 3 } 1 1 }  }
	{ trottersLocal_V_0_12 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ JcoupLocal_0_12 int 512 regular {array 16 { 1 3 } 1 1 }  }
	{ trottersLocal_V_0_13 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ JcoupLocal_0_13 int 512 regular {array 16 { 1 3 } 1 1 }  }
	{ trottersLocal_V_0_14 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ JcoupLocal_0_14 int 512 regular {array 16 { 1 3 } 1 1 }  }
	{ trottersLocal_V_0_15 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ JcoupLocal_0_15 int 512 regular {array 16 { 1 3 } 1 1 }  }
	{ inside int 1 regular  }
	{ trottersLocal_V_1_0 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ JcoupLocal_1_0 int 512 regular {array 16 { 1 3 } 1 1 }  }
	{ trottersLocal_V_1_1 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ JcoupLocal_1_1 int 512 regular {array 16 { 1 3 } 1 1 }  }
	{ trottersLocal_V_1_2 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ JcoupLocal_1_2 int 512 regular {array 16 { 1 3 } 1 1 }  }
	{ trottersLocal_V_1_3 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ JcoupLocal_1_3 int 512 regular {array 16 { 1 3 } 1 1 }  }
	{ trottersLocal_V_1_4 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ JcoupLocal_1_4 int 512 regular {array 16 { 1 3 } 1 1 }  }
	{ trottersLocal_V_1_5 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ JcoupLocal_1_5 int 512 regular {array 16 { 1 3 } 1 1 }  }
	{ trottersLocal_V_1_6 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ JcoupLocal_1_6 int 512 regular {array 16 { 1 3 } 1 1 }  }
	{ trottersLocal_V_1_7 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ JcoupLocal_1_7 int 512 regular {array 16 { 1 3 } 1 1 }  }
	{ trottersLocal_V_1_8 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ JcoupLocal_1_8 int 512 regular {array 16 { 1 3 } 1 1 }  }
	{ trottersLocal_V_1_9 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ JcoupLocal_1_9 int 512 regular {array 16 { 1 3 } 1 1 }  }
	{ trottersLocal_V_1_10 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ JcoupLocal_1_10 int 512 regular {array 16 { 1 3 } 1 1 }  }
	{ trottersLocal_V_1_11 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ JcoupLocal_1_11 int 512 regular {array 16 { 1 3 } 1 1 }  }
	{ trottersLocal_V_1_12 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ JcoupLocal_1_12 int 512 regular {array 16 { 1 3 } 1 1 }  }
	{ trottersLocal_V_1_13 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ JcoupLocal_1_13 int 512 regular {array 16 { 1 3 } 1 1 }  }
	{ trottersLocal_V_1_14 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ JcoupLocal_1_14 int 512 regular {array 16 { 1 3 } 1 1 }  }
	{ trottersLocal_V_1_15 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ JcoupLocal_1_15 int 512 regular {array 16 { 1 3 } 1 1 }  }
	{ inside_1 int 1 regular  }
	{ trottersLocal_V_2_0 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ JcoupLocal_2_0 int 512 regular {array 16 { 1 3 } 1 1 }  }
	{ trottersLocal_V_2_1 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ JcoupLocal_2_1 int 512 regular {array 16 { 1 3 } 1 1 }  }
	{ trottersLocal_V_2_2 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ JcoupLocal_2_2 int 512 regular {array 16 { 1 3 } 1 1 }  }
	{ trottersLocal_V_2_3 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ JcoupLocal_2_3 int 512 regular {array 16 { 1 3 } 1 1 }  }
	{ trottersLocal_V_2_4 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ JcoupLocal_2_4 int 512 regular {array 16 { 1 3 } 1 1 }  }
	{ trottersLocal_V_2_5 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ JcoupLocal_2_5 int 512 regular {array 16 { 1 3 } 1 1 }  }
	{ trottersLocal_V_2_6 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ JcoupLocal_2_6 int 512 regular {array 16 { 1 3 } 1 1 }  }
	{ trottersLocal_V_2_7 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ JcoupLocal_2_7 int 512 regular {array 16 { 1 3 } 1 1 }  }
	{ trottersLocal_V_2_8 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ JcoupLocal_2_8 int 512 regular {array 16 { 1 3 } 1 1 }  }
	{ trottersLocal_V_2_9 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ JcoupLocal_2_9 int 512 regular {array 16 { 1 3 } 1 1 }  }
	{ trottersLocal_V_2_10 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ JcoupLocal_2_10 int 512 regular {array 16 { 1 3 } 1 1 }  }
	{ trottersLocal_V_2_11 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ JcoupLocal_2_11 int 512 regular {array 16 { 1 3 } 1 1 }  }
	{ trottersLocal_V_2_12 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ JcoupLocal_2_12 int 512 regular {array 16 { 1 3 } 1 1 }  }
	{ trottersLocal_V_2_13 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ JcoupLocal_2_13 int 512 regular {array 16 { 1 3 } 1 1 }  }
	{ trottersLocal_V_2_14 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ JcoupLocal_2_14 int 512 regular {array 16 { 1 3 } 1 1 }  }
	{ trottersLocal_V_2_15 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ JcoupLocal_2_15 int 512 regular {array 16 { 1 3 } 1 1 }  }
	{ inside_2 int 1 regular  }
	{ trottersLocal_V_3_0 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ JcoupLocal_3_0 int 512 regular {array 16 { 1 3 } 1 1 }  }
	{ trottersLocal_V_3_1 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ JcoupLocal_3_1 int 512 regular {array 16 { 1 3 } 1 1 }  }
	{ trottersLocal_V_3_2 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ JcoupLocal_3_2 int 512 regular {array 16 { 1 3 } 1 1 }  }
	{ trottersLocal_V_3_3 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ JcoupLocal_3_3 int 512 regular {array 16 { 1 3 } 1 1 }  }
	{ trottersLocal_V_3_4 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ JcoupLocal_3_4 int 512 regular {array 16 { 1 3 } 1 1 }  }
	{ trottersLocal_V_3_5 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ JcoupLocal_3_5 int 512 regular {array 16 { 1 3 } 1 1 }  }
	{ trottersLocal_V_3_6 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ JcoupLocal_3_6 int 512 regular {array 16 { 1 3 } 1 1 }  }
	{ trottersLocal_V_3_7 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ JcoupLocal_3_7 int 512 regular {array 16 { 1 3 } 1 1 }  }
	{ trottersLocal_V_3_8 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ JcoupLocal_3_8 int 512 regular {array 16 { 1 3 } 1 1 }  }
	{ trottersLocal_V_3_9 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ JcoupLocal_3_9 int 512 regular {array 16 { 1 3 } 1 1 }  }
	{ trottersLocal_V_3_10 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ JcoupLocal_3_10 int 512 regular {array 16 { 1 3 } 1 1 }  }
	{ trottersLocal_V_3_11 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ JcoupLocal_3_11 int 512 regular {array 16 { 1 3 } 1 1 }  }
	{ trottersLocal_V_3_12 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ JcoupLocal_3_12 int 512 regular {array 16 { 1 3 } 1 1 }  }
	{ trottersLocal_V_3_13 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ JcoupLocal_3_13 int 512 regular {array 16 { 1 3 } 1 1 }  }
	{ trottersLocal_V_3_14 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ JcoupLocal_3_14 int 512 regular {array 16 { 1 3 } 1 1 }  }
	{ trottersLocal_V_3_15 int 16 regular {array 16 { 1 3 } 1 1 }  }
	{ JcoupLocal_3_15 int 512 regular {array 16 { 1 3 } 1 1 }  }
	{ inside_3 int 1 regular  }
	{ dH_3_out float 32 regular {pointer 1}  }
	{ dH_2_out float 32 regular {pointer 1}  }
	{ dH_1_out float 32 regular {pointer 1}  }
	{ dH_0_out float 32 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "dH_3_1_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "dH_2_1_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "dH_1_1_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "dH_0_1_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_0_0", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_0_0", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_0_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_0_1", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_0_2", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_0_2", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_0_3", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_0_3", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_0_4", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_0_4", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_0_5", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_0_5", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_0_6", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_0_6", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_0_7", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_0_7", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_0_8", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_0_8", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_0_9", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_0_9", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_0_10", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_0_10", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_0_11", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_0_11", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_0_12", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_0_12", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_0_13", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_0_13", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_0_14", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_0_14", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_0_15", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_0_15", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "inside", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_1_0", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_1_0", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_1_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_1_1", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_1_2", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_1_2", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_1_3", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_1_3", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_1_4", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_1_4", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_1_5", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_1_5", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_1_6", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_1_6", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_1_7", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_1_7", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_1_8", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_1_8", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_1_9", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_1_9", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_1_10", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_1_10", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_1_11", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_1_11", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_1_12", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_1_12", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_1_13", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_1_13", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_1_14", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_1_14", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_1_15", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_1_15", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "inside_1", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_2_0", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_2_0", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_2_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_2_1", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_2_2", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_2_2", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_2_3", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_2_3", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_2_4", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_2_4", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_2_5", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_2_5", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_2_6", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_2_6", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_2_7", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_2_7", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_2_8", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_2_8", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_2_9", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_2_9", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_2_10", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_2_10", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_2_11", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_2_11", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_2_12", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_2_12", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_2_13", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_2_13", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_2_14", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_2_14", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_2_15", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_2_15", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "inside_2", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_3_0", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_3_0", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_3_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_3_1", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_3_2", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_3_2", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_3_3", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_3_3", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_3_4", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_3_4", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_3_5", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_3_5", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_3_6", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_3_6", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_3_7", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_3_7", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_3_8", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_3_8", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_3_9", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_3_9", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_3_10", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_3_10", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_3_11", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_3_11", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_3_12", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_3_12", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_3_13", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_3_13", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_3_14", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_3_14", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "trottersLocal_V_3_15", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "JcoupLocal_3_15", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "inside_3", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "dH_3_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dH_2_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dH_1_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dH_0_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 1141
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
	{ trottersLocal_V_0_0_address0 sc_out sc_lv 4 signal 4 } 
	{ trottersLocal_V_0_0_ce0 sc_out sc_logic 1 signal 4 } 
	{ trottersLocal_V_0_0_q0 sc_in sc_lv 16 signal 4 } 
	{ JcoupLocal_0_0_address0 sc_out sc_lv 4 signal 5 } 
	{ JcoupLocal_0_0_ce0 sc_out sc_logic 1 signal 5 } 
	{ JcoupLocal_0_0_q0 sc_in sc_lv 512 signal 5 } 
	{ trottersLocal_V_0_1_address0 sc_out sc_lv 4 signal 6 } 
	{ trottersLocal_V_0_1_ce0 sc_out sc_logic 1 signal 6 } 
	{ trottersLocal_V_0_1_q0 sc_in sc_lv 16 signal 6 } 
	{ JcoupLocal_0_1_address0 sc_out sc_lv 4 signal 7 } 
	{ JcoupLocal_0_1_ce0 sc_out sc_logic 1 signal 7 } 
	{ JcoupLocal_0_1_q0 sc_in sc_lv 512 signal 7 } 
	{ trottersLocal_V_0_2_address0 sc_out sc_lv 4 signal 8 } 
	{ trottersLocal_V_0_2_ce0 sc_out sc_logic 1 signal 8 } 
	{ trottersLocal_V_0_2_q0 sc_in sc_lv 16 signal 8 } 
	{ JcoupLocal_0_2_address0 sc_out sc_lv 4 signal 9 } 
	{ JcoupLocal_0_2_ce0 sc_out sc_logic 1 signal 9 } 
	{ JcoupLocal_0_2_q0 sc_in sc_lv 512 signal 9 } 
	{ trottersLocal_V_0_3_address0 sc_out sc_lv 4 signal 10 } 
	{ trottersLocal_V_0_3_ce0 sc_out sc_logic 1 signal 10 } 
	{ trottersLocal_V_0_3_q0 sc_in sc_lv 16 signal 10 } 
	{ JcoupLocal_0_3_address0 sc_out sc_lv 4 signal 11 } 
	{ JcoupLocal_0_3_ce0 sc_out sc_logic 1 signal 11 } 
	{ JcoupLocal_0_3_q0 sc_in sc_lv 512 signal 11 } 
	{ trottersLocal_V_0_4_address0 sc_out sc_lv 4 signal 12 } 
	{ trottersLocal_V_0_4_ce0 sc_out sc_logic 1 signal 12 } 
	{ trottersLocal_V_0_4_q0 sc_in sc_lv 16 signal 12 } 
	{ JcoupLocal_0_4_address0 sc_out sc_lv 4 signal 13 } 
	{ JcoupLocal_0_4_ce0 sc_out sc_logic 1 signal 13 } 
	{ JcoupLocal_0_4_q0 sc_in sc_lv 512 signal 13 } 
	{ trottersLocal_V_0_5_address0 sc_out sc_lv 4 signal 14 } 
	{ trottersLocal_V_0_5_ce0 sc_out sc_logic 1 signal 14 } 
	{ trottersLocal_V_0_5_q0 sc_in sc_lv 16 signal 14 } 
	{ JcoupLocal_0_5_address0 sc_out sc_lv 4 signal 15 } 
	{ JcoupLocal_0_5_ce0 sc_out sc_logic 1 signal 15 } 
	{ JcoupLocal_0_5_q0 sc_in sc_lv 512 signal 15 } 
	{ trottersLocal_V_0_6_address0 sc_out sc_lv 4 signal 16 } 
	{ trottersLocal_V_0_6_ce0 sc_out sc_logic 1 signal 16 } 
	{ trottersLocal_V_0_6_q0 sc_in sc_lv 16 signal 16 } 
	{ JcoupLocal_0_6_address0 sc_out sc_lv 4 signal 17 } 
	{ JcoupLocal_0_6_ce0 sc_out sc_logic 1 signal 17 } 
	{ JcoupLocal_0_6_q0 sc_in sc_lv 512 signal 17 } 
	{ trottersLocal_V_0_7_address0 sc_out sc_lv 4 signal 18 } 
	{ trottersLocal_V_0_7_ce0 sc_out sc_logic 1 signal 18 } 
	{ trottersLocal_V_0_7_q0 sc_in sc_lv 16 signal 18 } 
	{ JcoupLocal_0_7_address0 sc_out sc_lv 4 signal 19 } 
	{ JcoupLocal_0_7_ce0 sc_out sc_logic 1 signal 19 } 
	{ JcoupLocal_0_7_q0 sc_in sc_lv 512 signal 19 } 
	{ trottersLocal_V_0_8_address0 sc_out sc_lv 4 signal 20 } 
	{ trottersLocal_V_0_8_ce0 sc_out sc_logic 1 signal 20 } 
	{ trottersLocal_V_0_8_q0 sc_in sc_lv 16 signal 20 } 
	{ JcoupLocal_0_8_address0 sc_out sc_lv 4 signal 21 } 
	{ JcoupLocal_0_8_ce0 sc_out sc_logic 1 signal 21 } 
	{ JcoupLocal_0_8_q0 sc_in sc_lv 512 signal 21 } 
	{ trottersLocal_V_0_9_address0 sc_out sc_lv 4 signal 22 } 
	{ trottersLocal_V_0_9_ce0 sc_out sc_logic 1 signal 22 } 
	{ trottersLocal_V_0_9_q0 sc_in sc_lv 16 signal 22 } 
	{ JcoupLocal_0_9_address0 sc_out sc_lv 4 signal 23 } 
	{ JcoupLocal_0_9_ce0 sc_out sc_logic 1 signal 23 } 
	{ JcoupLocal_0_9_q0 sc_in sc_lv 512 signal 23 } 
	{ trottersLocal_V_0_10_address0 sc_out sc_lv 4 signal 24 } 
	{ trottersLocal_V_0_10_ce0 sc_out sc_logic 1 signal 24 } 
	{ trottersLocal_V_0_10_q0 sc_in sc_lv 16 signal 24 } 
	{ JcoupLocal_0_10_address0 sc_out sc_lv 4 signal 25 } 
	{ JcoupLocal_0_10_ce0 sc_out sc_logic 1 signal 25 } 
	{ JcoupLocal_0_10_q0 sc_in sc_lv 512 signal 25 } 
	{ trottersLocal_V_0_11_address0 sc_out sc_lv 4 signal 26 } 
	{ trottersLocal_V_0_11_ce0 sc_out sc_logic 1 signal 26 } 
	{ trottersLocal_V_0_11_q0 sc_in sc_lv 16 signal 26 } 
	{ JcoupLocal_0_11_address0 sc_out sc_lv 4 signal 27 } 
	{ JcoupLocal_0_11_ce0 sc_out sc_logic 1 signal 27 } 
	{ JcoupLocal_0_11_q0 sc_in sc_lv 512 signal 27 } 
	{ trottersLocal_V_0_12_address0 sc_out sc_lv 4 signal 28 } 
	{ trottersLocal_V_0_12_ce0 sc_out sc_logic 1 signal 28 } 
	{ trottersLocal_V_0_12_q0 sc_in sc_lv 16 signal 28 } 
	{ JcoupLocal_0_12_address0 sc_out sc_lv 4 signal 29 } 
	{ JcoupLocal_0_12_ce0 sc_out sc_logic 1 signal 29 } 
	{ JcoupLocal_0_12_q0 sc_in sc_lv 512 signal 29 } 
	{ trottersLocal_V_0_13_address0 sc_out sc_lv 4 signal 30 } 
	{ trottersLocal_V_0_13_ce0 sc_out sc_logic 1 signal 30 } 
	{ trottersLocal_V_0_13_q0 sc_in sc_lv 16 signal 30 } 
	{ JcoupLocal_0_13_address0 sc_out sc_lv 4 signal 31 } 
	{ JcoupLocal_0_13_ce0 sc_out sc_logic 1 signal 31 } 
	{ JcoupLocal_0_13_q0 sc_in sc_lv 512 signal 31 } 
	{ trottersLocal_V_0_14_address0 sc_out sc_lv 4 signal 32 } 
	{ trottersLocal_V_0_14_ce0 sc_out sc_logic 1 signal 32 } 
	{ trottersLocal_V_0_14_q0 sc_in sc_lv 16 signal 32 } 
	{ JcoupLocal_0_14_address0 sc_out sc_lv 4 signal 33 } 
	{ JcoupLocal_0_14_ce0 sc_out sc_logic 1 signal 33 } 
	{ JcoupLocal_0_14_q0 sc_in sc_lv 512 signal 33 } 
	{ trottersLocal_V_0_15_address0 sc_out sc_lv 4 signal 34 } 
	{ trottersLocal_V_0_15_ce0 sc_out sc_logic 1 signal 34 } 
	{ trottersLocal_V_0_15_q0 sc_in sc_lv 16 signal 34 } 
	{ JcoupLocal_0_15_address0 sc_out sc_lv 4 signal 35 } 
	{ JcoupLocal_0_15_ce0 sc_out sc_logic 1 signal 35 } 
	{ JcoupLocal_0_15_q0 sc_in sc_lv 512 signal 35 } 
	{ inside sc_in sc_logic 1 signal 36 } 
	{ trottersLocal_V_1_0_address0 sc_out sc_lv 4 signal 37 } 
	{ trottersLocal_V_1_0_ce0 sc_out sc_logic 1 signal 37 } 
	{ trottersLocal_V_1_0_q0 sc_in sc_lv 16 signal 37 } 
	{ JcoupLocal_1_0_address0 sc_out sc_lv 4 signal 38 } 
	{ JcoupLocal_1_0_ce0 sc_out sc_logic 1 signal 38 } 
	{ JcoupLocal_1_0_q0 sc_in sc_lv 512 signal 38 } 
	{ trottersLocal_V_1_1_address0 sc_out sc_lv 4 signal 39 } 
	{ trottersLocal_V_1_1_ce0 sc_out sc_logic 1 signal 39 } 
	{ trottersLocal_V_1_1_q0 sc_in sc_lv 16 signal 39 } 
	{ JcoupLocal_1_1_address0 sc_out sc_lv 4 signal 40 } 
	{ JcoupLocal_1_1_ce0 sc_out sc_logic 1 signal 40 } 
	{ JcoupLocal_1_1_q0 sc_in sc_lv 512 signal 40 } 
	{ trottersLocal_V_1_2_address0 sc_out sc_lv 4 signal 41 } 
	{ trottersLocal_V_1_2_ce0 sc_out sc_logic 1 signal 41 } 
	{ trottersLocal_V_1_2_q0 sc_in sc_lv 16 signal 41 } 
	{ JcoupLocal_1_2_address0 sc_out sc_lv 4 signal 42 } 
	{ JcoupLocal_1_2_ce0 sc_out sc_logic 1 signal 42 } 
	{ JcoupLocal_1_2_q0 sc_in sc_lv 512 signal 42 } 
	{ trottersLocal_V_1_3_address0 sc_out sc_lv 4 signal 43 } 
	{ trottersLocal_V_1_3_ce0 sc_out sc_logic 1 signal 43 } 
	{ trottersLocal_V_1_3_q0 sc_in sc_lv 16 signal 43 } 
	{ JcoupLocal_1_3_address0 sc_out sc_lv 4 signal 44 } 
	{ JcoupLocal_1_3_ce0 sc_out sc_logic 1 signal 44 } 
	{ JcoupLocal_1_3_q0 sc_in sc_lv 512 signal 44 } 
	{ trottersLocal_V_1_4_address0 sc_out sc_lv 4 signal 45 } 
	{ trottersLocal_V_1_4_ce0 sc_out sc_logic 1 signal 45 } 
	{ trottersLocal_V_1_4_q0 sc_in sc_lv 16 signal 45 } 
	{ JcoupLocal_1_4_address0 sc_out sc_lv 4 signal 46 } 
	{ JcoupLocal_1_4_ce0 sc_out sc_logic 1 signal 46 } 
	{ JcoupLocal_1_4_q0 sc_in sc_lv 512 signal 46 } 
	{ trottersLocal_V_1_5_address0 sc_out sc_lv 4 signal 47 } 
	{ trottersLocal_V_1_5_ce0 sc_out sc_logic 1 signal 47 } 
	{ trottersLocal_V_1_5_q0 sc_in sc_lv 16 signal 47 } 
	{ JcoupLocal_1_5_address0 sc_out sc_lv 4 signal 48 } 
	{ JcoupLocal_1_5_ce0 sc_out sc_logic 1 signal 48 } 
	{ JcoupLocal_1_5_q0 sc_in sc_lv 512 signal 48 } 
	{ trottersLocal_V_1_6_address0 sc_out sc_lv 4 signal 49 } 
	{ trottersLocal_V_1_6_ce0 sc_out sc_logic 1 signal 49 } 
	{ trottersLocal_V_1_6_q0 sc_in sc_lv 16 signal 49 } 
	{ JcoupLocal_1_6_address0 sc_out sc_lv 4 signal 50 } 
	{ JcoupLocal_1_6_ce0 sc_out sc_logic 1 signal 50 } 
	{ JcoupLocal_1_6_q0 sc_in sc_lv 512 signal 50 } 
	{ trottersLocal_V_1_7_address0 sc_out sc_lv 4 signal 51 } 
	{ trottersLocal_V_1_7_ce0 sc_out sc_logic 1 signal 51 } 
	{ trottersLocal_V_1_7_q0 sc_in sc_lv 16 signal 51 } 
	{ JcoupLocal_1_7_address0 sc_out sc_lv 4 signal 52 } 
	{ JcoupLocal_1_7_ce0 sc_out sc_logic 1 signal 52 } 
	{ JcoupLocal_1_7_q0 sc_in sc_lv 512 signal 52 } 
	{ trottersLocal_V_1_8_address0 sc_out sc_lv 4 signal 53 } 
	{ trottersLocal_V_1_8_ce0 sc_out sc_logic 1 signal 53 } 
	{ trottersLocal_V_1_8_q0 sc_in sc_lv 16 signal 53 } 
	{ JcoupLocal_1_8_address0 sc_out sc_lv 4 signal 54 } 
	{ JcoupLocal_1_8_ce0 sc_out sc_logic 1 signal 54 } 
	{ JcoupLocal_1_8_q0 sc_in sc_lv 512 signal 54 } 
	{ trottersLocal_V_1_9_address0 sc_out sc_lv 4 signal 55 } 
	{ trottersLocal_V_1_9_ce0 sc_out sc_logic 1 signal 55 } 
	{ trottersLocal_V_1_9_q0 sc_in sc_lv 16 signal 55 } 
	{ JcoupLocal_1_9_address0 sc_out sc_lv 4 signal 56 } 
	{ JcoupLocal_1_9_ce0 sc_out sc_logic 1 signal 56 } 
	{ JcoupLocal_1_9_q0 sc_in sc_lv 512 signal 56 } 
	{ trottersLocal_V_1_10_address0 sc_out sc_lv 4 signal 57 } 
	{ trottersLocal_V_1_10_ce0 sc_out sc_logic 1 signal 57 } 
	{ trottersLocal_V_1_10_q0 sc_in sc_lv 16 signal 57 } 
	{ JcoupLocal_1_10_address0 sc_out sc_lv 4 signal 58 } 
	{ JcoupLocal_1_10_ce0 sc_out sc_logic 1 signal 58 } 
	{ JcoupLocal_1_10_q0 sc_in sc_lv 512 signal 58 } 
	{ trottersLocal_V_1_11_address0 sc_out sc_lv 4 signal 59 } 
	{ trottersLocal_V_1_11_ce0 sc_out sc_logic 1 signal 59 } 
	{ trottersLocal_V_1_11_q0 sc_in sc_lv 16 signal 59 } 
	{ JcoupLocal_1_11_address0 sc_out sc_lv 4 signal 60 } 
	{ JcoupLocal_1_11_ce0 sc_out sc_logic 1 signal 60 } 
	{ JcoupLocal_1_11_q0 sc_in sc_lv 512 signal 60 } 
	{ trottersLocal_V_1_12_address0 sc_out sc_lv 4 signal 61 } 
	{ trottersLocal_V_1_12_ce0 sc_out sc_logic 1 signal 61 } 
	{ trottersLocal_V_1_12_q0 sc_in sc_lv 16 signal 61 } 
	{ JcoupLocal_1_12_address0 sc_out sc_lv 4 signal 62 } 
	{ JcoupLocal_1_12_ce0 sc_out sc_logic 1 signal 62 } 
	{ JcoupLocal_1_12_q0 sc_in sc_lv 512 signal 62 } 
	{ trottersLocal_V_1_13_address0 sc_out sc_lv 4 signal 63 } 
	{ trottersLocal_V_1_13_ce0 sc_out sc_logic 1 signal 63 } 
	{ trottersLocal_V_1_13_q0 sc_in sc_lv 16 signal 63 } 
	{ JcoupLocal_1_13_address0 sc_out sc_lv 4 signal 64 } 
	{ JcoupLocal_1_13_ce0 sc_out sc_logic 1 signal 64 } 
	{ JcoupLocal_1_13_q0 sc_in sc_lv 512 signal 64 } 
	{ trottersLocal_V_1_14_address0 sc_out sc_lv 4 signal 65 } 
	{ trottersLocal_V_1_14_ce0 sc_out sc_logic 1 signal 65 } 
	{ trottersLocal_V_1_14_q0 sc_in sc_lv 16 signal 65 } 
	{ JcoupLocal_1_14_address0 sc_out sc_lv 4 signal 66 } 
	{ JcoupLocal_1_14_ce0 sc_out sc_logic 1 signal 66 } 
	{ JcoupLocal_1_14_q0 sc_in sc_lv 512 signal 66 } 
	{ trottersLocal_V_1_15_address0 sc_out sc_lv 4 signal 67 } 
	{ trottersLocal_V_1_15_ce0 sc_out sc_logic 1 signal 67 } 
	{ trottersLocal_V_1_15_q0 sc_in sc_lv 16 signal 67 } 
	{ JcoupLocal_1_15_address0 sc_out sc_lv 4 signal 68 } 
	{ JcoupLocal_1_15_ce0 sc_out sc_logic 1 signal 68 } 
	{ JcoupLocal_1_15_q0 sc_in sc_lv 512 signal 68 } 
	{ inside_1 sc_in sc_logic 1 signal 69 } 
	{ trottersLocal_V_2_0_address0 sc_out sc_lv 4 signal 70 } 
	{ trottersLocal_V_2_0_ce0 sc_out sc_logic 1 signal 70 } 
	{ trottersLocal_V_2_0_q0 sc_in sc_lv 16 signal 70 } 
	{ JcoupLocal_2_0_address0 sc_out sc_lv 4 signal 71 } 
	{ JcoupLocal_2_0_ce0 sc_out sc_logic 1 signal 71 } 
	{ JcoupLocal_2_0_q0 sc_in sc_lv 512 signal 71 } 
	{ trottersLocal_V_2_1_address0 sc_out sc_lv 4 signal 72 } 
	{ trottersLocal_V_2_1_ce0 sc_out sc_logic 1 signal 72 } 
	{ trottersLocal_V_2_1_q0 sc_in sc_lv 16 signal 72 } 
	{ JcoupLocal_2_1_address0 sc_out sc_lv 4 signal 73 } 
	{ JcoupLocal_2_1_ce0 sc_out sc_logic 1 signal 73 } 
	{ JcoupLocal_2_1_q0 sc_in sc_lv 512 signal 73 } 
	{ trottersLocal_V_2_2_address0 sc_out sc_lv 4 signal 74 } 
	{ trottersLocal_V_2_2_ce0 sc_out sc_logic 1 signal 74 } 
	{ trottersLocal_V_2_2_q0 sc_in sc_lv 16 signal 74 } 
	{ JcoupLocal_2_2_address0 sc_out sc_lv 4 signal 75 } 
	{ JcoupLocal_2_2_ce0 sc_out sc_logic 1 signal 75 } 
	{ JcoupLocal_2_2_q0 sc_in sc_lv 512 signal 75 } 
	{ trottersLocal_V_2_3_address0 sc_out sc_lv 4 signal 76 } 
	{ trottersLocal_V_2_3_ce0 sc_out sc_logic 1 signal 76 } 
	{ trottersLocal_V_2_3_q0 sc_in sc_lv 16 signal 76 } 
	{ JcoupLocal_2_3_address0 sc_out sc_lv 4 signal 77 } 
	{ JcoupLocal_2_3_ce0 sc_out sc_logic 1 signal 77 } 
	{ JcoupLocal_2_3_q0 sc_in sc_lv 512 signal 77 } 
	{ trottersLocal_V_2_4_address0 sc_out sc_lv 4 signal 78 } 
	{ trottersLocal_V_2_4_ce0 sc_out sc_logic 1 signal 78 } 
	{ trottersLocal_V_2_4_q0 sc_in sc_lv 16 signal 78 } 
	{ JcoupLocal_2_4_address0 sc_out sc_lv 4 signal 79 } 
	{ JcoupLocal_2_4_ce0 sc_out sc_logic 1 signal 79 } 
	{ JcoupLocal_2_4_q0 sc_in sc_lv 512 signal 79 } 
	{ trottersLocal_V_2_5_address0 sc_out sc_lv 4 signal 80 } 
	{ trottersLocal_V_2_5_ce0 sc_out sc_logic 1 signal 80 } 
	{ trottersLocal_V_2_5_q0 sc_in sc_lv 16 signal 80 } 
	{ JcoupLocal_2_5_address0 sc_out sc_lv 4 signal 81 } 
	{ JcoupLocal_2_5_ce0 sc_out sc_logic 1 signal 81 } 
	{ JcoupLocal_2_5_q0 sc_in sc_lv 512 signal 81 } 
	{ trottersLocal_V_2_6_address0 sc_out sc_lv 4 signal 82 } 
	{ trottersLocal_V_2_6_ce0 sc_out sc_logic 1 signal 82 } 
	{ trottersLocal_V_2_6_q0 sc_in sc_lv 16 signal 82 } 
	{ JcoupLocal_2_6_address0 sc_out sc_lv 4 signal 83 } 
	{ JcoupLocal_2_6_ce0 sc_out sc_logic 1 signal 83 } 
	{ JcoupLocal_2_6_q0 sc_in sc_lv 512 signal 83 } 
	{ trottersLocal_V_2_7_address0 sc_out sc_lv 4 signal 84 } 
	{ trottersLocal_V_2_7_ce0 sc_out sc_logic 1 signal 84 } 
	{ trottersLocal_V_2_7_q0 sc_in sc_lv 16 signal 84 } 
	{ JcoupLocal_2_7_address0 sc_out sc_lv 4 signal 85 } 
	{ JcoupLocal_2_7_ce0 sc_out sc_logic 1 signal 85 } 
	{ JcoupLocal_2_7_q0 sc_in sc_lv 512 signal 85 } 
	{ trottersLocal_V_2_8_address0 sc_out sc_lv 4 signal 86 } 
	{ trottersLocal_V_2_8_ce0 sc_out sc_logic 1 signal 86 } 
	{ trottersLocal_V_2_8_q0 sc_in sc_lv 16 signal 86 } 
	{ JcoupLocal_2_8_address0 sc_out sc_lv 4 signal 87 } 
	{ JcoupLocal_2_8_ce0 sc_out sc_logic 1 signal 87 } 
	{ JcoupLocal_2_8_q0 sc_in sc_lv 512 signal 87 } 
	{ trottersLocal_V_2_9_address0 sc_out sc_lv 4 signal 88 } 
	{ trottersLocal_V_2_9_ce0 sc_out sc_logic 1 signal 88 } 
	{ trottersLocal_V_2_9_q0 sc_in sc_lv 16 signal 88 } 
	{ JcoupLocal_2_9_address0 sc_out sc_lv 4 signal 89 } 
	{ JcoupLocal_2_9_ce0 sc_out sc_logic 1 signal 89 } 
	{ JcoupLocal_2_9_q0 sc_in sc_lv 512 signal 89 } 
	{ trottersLocal_V_2_10_address0 sc_out sc_lv 4 signal 90 } 
	{ trottersLocal_V_2_10_ce0 sc_out sc_logic 1 signal 90 } 
	{ trottersLocal_V_2_10_q0 sc_in sc_lv 16 signal 90 } 
	{ JcoupLocal_2_10_address0 sc_out sc_lv 4 signal 91 } 
	{ JcoupLocal_2_10_ce0 sc_out sc_logic 1 signal 91 } 
	{ JcoupLocal_2_10_q0 sc_in sc_lv 512 signal 91 } 
	{ trottersLocal_V_2_11_address0 sc_out sc_lv 4 signal 92 } 
	{ trottersLocal_V_2_11_ce0 sc_out sc_logic 1 signal 92 } 
	{ trottersLocal_V_2_11_q0 sc_in sc_lv 16 signal 92 } 
	{ JcoupLocal_2_11_address0 sc_out sc_lv 4 signal 93 } 
	{ JcoupLocal_2_11_ce0 sc_out sc_logic 1 signal 93 } 
	{ JcoupLocal_2_11_q0 sc_in sc_lv 512 signal 93 } 
	{ trottersLocal_V_2_12_address0 sc_out sc_lv 4 signal 94 } 
	{ trottersLocal_V_2_12_ce0 sc_out sc_logic 1 signal 94 } 
	{ trottersLocal_V_2_12_q0 sc_in sc_lv 16 signal 94 } 
	{ JcoupLocal_2_12_address0 sc_out sc_lv 4 signal 95 } 
	{ JcoupLocal_2_12_ce0 sc_out sc_logic 1 signal 95 } 
	{ JcoupLocal_2_12_q0 sc_in sc_lv 512 signal 95 } 
	{ trottersLocal_V_2_13_address0 sc_out sc_lv 4 signal 96 } 
	{ trottersLocal_V_2_13_ce0 sc_out sc_logic 1 signal 96 } 
	{ trottersLocal_V_2_13_q0 sc_in sc_lv 16 signal 96 } 
	{ JcoupLocal_2_13_address0 sc_out sc_lv 4 signal 97 } 
	{ JcoupLocal_2_13_ce0 sc_out sc_logic 1 signal 97 } 
	{ JcoupLocal_2_13_q0 sc_in sc_lv 512 signal 97 } 
	{ trottersLocal_V_2_14_address0 sc_out sc_lv 4 signal 98 } 
	{ trottersLocal_V_2_14_ce0 sc_out sc_logic 1 signal 98 } 
	{ trottersLocal_V_2_14_q0 sc_in sc_lv 16 signal 98 } 
	{ JcoupLocal_2_14_address0 sc_out sc_lv 4 signal 99 } 
	{ JcoupLocal_2_14_ce0 sc_out sc_logic 1 signal 99 } 
	{ JcoupLocal_2_14_q0 sc_in sc_lv 512 signal 99 } 
	{ trottersLocal_V_2_15_address0 sc_out sc_lv 4 signal 100 } 
	{ trottersLocal_V_2_15_ce0 sc_out sc_logic 1 signal 100 } 
	{ trottersLocal_V_2_15_q0 sc_in sc_lv 16 signal 100 } 
	{ JcoupLocal_2_15_address0 sc_out sc_lv 4 signal 101 } 
	{ JcoupLocal_2_15_ce0 sc_out sc_logic 1 signal 101 } 
	{ JcoupLocal_2_15_q0 sc_in sc_lv 512 signal 101 } 
	{ inside_2 sc_in sc_logic 1 signal 102 } 
	{ trottersLocal_V_3_0_address0 sc_out sc_lv 4 signal 103 } 
	{ trottersLocal_V_3_0_ce0 sc_out sc_logic 1 signal 103 } 
	{ trottersLocal_V_3_0_q0 sc_in sc_lv 16 signal 103 } 
	{ JcoupLocal_3_0_address0 sc_out sc_lv 4 signal 104 } 
	{ JcoupLocal_3_0_ce0 sc_out sc_logic 1 signal 104 } 
	{ JcoupLocal_3_0_q0 sc_in sc_lv 512 signal 104 } 
	{ trottersLocal_V_3_1_address0 sc_out sc_lv 4 signal 105 } 
	{ trottersLocal_V_3_1_ce0 sc_out sc_logic 1 signal 105 } 
	{ trottersLocal_V_3_1_q0 sc_in sc_lv 16 signal 105 } 
	{ JcoupLocal_3_1_address0 sc_out sc_lv 4 signal 106 } 
	{ JcoupLocal_3_1_ce0 sc_out sc_logic 1 signal 106 } 
	{ JcoupLocal_3_1_q0 sc_in sc_lv 512 signal 106 } 
	{ trottersLocal_V_3_2_address0 sc_out sc_lv 4 signal 107 } 
	{ trottersLocal_V_3_2_ce0 sc_out sc_logic 1 signal 107 } 
	{ trottersLocal_V_3_2_q0 sc_in sc_lv 16 signal 107 } 
	{ JcoupLocal_3_2_address0 sc_out sc_lv 4 signal 108 } 
	{ JcoupLocal_3_2_ce0 sc_out sc_logic 1 signal 108 } 
	{ JcoupLocal_3_2_q0 sc_in sc_lv 512 signal 108 } 
	{ trottersLocal_V_3_3_address0 sc_out sc_lv 4 signal 109 } 
	{ trottersLocal_V_3_3_ce0 sc_out sc_logic 1 signal 109 } 
	{ trottersLocal_V_3_3_q0 sc_in sc_lv 16 signal 109 } 
	{ JcoupLocal_3_3_address0 sc_out sc_lv 4 signal 110 } 
	{ JcoupLocal_3_3_ce0 sc_out sc_logic 1 signal 110 } 
	{ JcoupLocal_3_3_q0 sc_in sc_lv 512 signal 110 } 
	{ trottersLocal_V_3_4_address0 sc_out sc_lv 4 signal 111 } 
	{ trottersLocal_V_3_4_ce0 sc_out sc_logic 1 signal 111 } 
	{ trottersLocal_V_3_4_q0 sc_in sc_lv 16 signal 111 } 
	{ JcoupLocal_3_4_address0 sc_out sc_lv 4 signal 112 } 
	{ JcoupLocal_3_4_ce0 sc_out sc_logic 1 signal 112 } 
	{ JcoupLocal_3_4_q0 sc_in sc_lv 512 signal 112 } 
	{ trottersLocal_V_3_5_address0 sc_out sc_lv 4 signal 113 } 
	{ trottersLocal_V_3_5_ce0 sc_out sc_logic 1 signal 113 } 
	{ trottersLocal_V_3_5_q0 sc_in sc_lv 16 signal 113 } 
	{ JcoupLocal_3_5_address0 sc_out sc_lv 4 signal 114 } 
	{ JcoupLocal_3_5_ce0 sc_out sc_logic 1 signal 114 } 
	{ JcoupLocal_3_5_q0 sc_in sc_lv 512 signal 114 } 
	{ trottersLocal_V_3_6_address0 sc_out sc_lv 4 signal 115 } 
	{ trottersLocal_V_3_6_ce0 sc_out sc_logic 1 signal 115 } 
	{ trottersLocal_V_3_6_q0 sc_in sc_lv 16 signal 115 } 
	{ JcoupLocal_3_6_address0 sc_out sc_lv 4 signal 116 } 
	{ JcoupLocal_3_6_ce0 sc_out sc_logic 1 signal 116 } 
	{ JcoupLocal_3_6_q0 sc_in sc_lv 512 signal 116 } 
	{ trottersLocal_V_3_7_address0 sc_out sc_lv 4 signal 117 } 
	{ trottersLocal_V_3_7_ce0 sc_out sc_logic 1 signal 117 } 
	{ trottersLocal_V_3_7_q0 sc_in sc_lv 16 signal 117 } 
	{ JcoupLocal_3_7_address0 sc_out sc_lv 4 signal 118 } 
	{ JcoupLocal_3_7_ce0 sc_out sc_logic 1 signal 118 } 
	{ JcoupLocal_3_7_q0 sc_in sc_lv 512 signal 118 } 
	{ trottersLocal_V_3_8_address0 sc_out sc_lv 4 signal 119 } 
	{ trottersLocal_V_3_8_ce0 sc_out sc_logic 1 signal 119 } 
	{ trottersLocal_V_3_8_q0 sc_in sc_lv 16 signal 119 } 
	{ JcoupLocal_3_8_address0 sc_out sc_lv 4 signal 120 } 
	{ JcoupLocal_3_8_ce0 sc_out sc_logic 1 signal 120 } 
	{ JcoupLocal_3_8_q0 sc_in sc_lv 512 signal 120 } 
	{ trottersLocal_V_3_9_address0 sc_out sc_lv 4 signal 121 } 
	{ trottersLocal_V_3_9_ce0 sc_out sc_logic 1 signal 121 } 
	{ trottersLocal_V_3_9_q0 sc_in sc_lv 16 signal 121 } 
	{ JcoupLocal_3_9_address0 sc_out sc_lv 4 signal 122 } 
	{ JcoupLocal_3_9_ce0 sc_out sc_logic 1 signal 122 } 
	{ JcoupLocal_3_9_q0 sc_in sc_lv 512 signal 122 } 
	{ trottersLocal_V_3_10_address0 sc_out sc_lv 4 signal 123 } 
	{ trottersLocal_V_3_10_ce0 sc_out sc_logic 1 signal 123 } 
	{ trottersLocal_V_3_10_q0 sc_in sc_lv 16 signal 123 } 
	{ JcoupLocal_3_10_address0 sc_out sc_lv 4 signal 124 } 
	{ JcoupLocal_3_10_ce0 sc_out sc_logic 1 signal 124 } 
	{ JcoupLocal_3_10_q0 sc_in sc_lv 512 signal 124 } 
	{ trottersLocal_V_3_11_address0 sc_out sc_lv 4 signal 125 } 
	{ trottersLocal_V_3_11_ce0 sc_out sc_logic 1 signal 125 } 
	{ trottersLocal_V_3_11_q0 sc_in sc_lv 16 signal 125 } 
	{ JcoupLocal_3_11_address0 sc_out sc_lv 4 signal 126 } 
	{ JcoupLocal_3_11_ce0 sc_out sc_logic 1 signal 126 } 
	{ JcoupLocal_3_11_q0 sc_in sc_lv 512 signal 126 } 
	{ trottersLocal_V_3_12_address0 sc_out sc_lv 4 signal 127 } 
	{ trottersLocal_V_3_12_ce0 sc_out sc_logic 1 signal 127 } 
	{ trottersLocal_V_3_12_q0 sc_in sc_lv 16 signal 127 } 
	{ JcoupLocal_3_12_address0 sc_out sc_lv 4 signal 128 } 
	{ JcoupLocal_3_12_ce0 sc_out sc_logic 1 signal 128 } 
	{ JcoupLocal_3_12_q0 sc_in sc_lv 512 signal 128 } 
	{ trottersLocal_V_3_13_address0 sc_out sc_lv 4 signal 129 } 
	{ trottersLocal_V_3_13_ce0 sc_out sc_logic 1 signal 129 } 
	{ trottersLocal_V_3_13_q0 sc_in sc_lv 16 signal 129 } 
	{ JcoupLocal_3_13_address0 sc_out sc_lv 4 signal 130 } 
	{ JcoupLocal_3_13_ce0 sc_out sc_logic 1 signal 130 } 
	{ JcoupLocal_3_13_q0 sc_in sc_lv 512 signal 130 } 
	{ trottersLocal_V_3_14_address0 sc_out sc_lv 4 signal 131 } 
	{ trottersLocal_V_3_14_ce0 sc_out sc_logic 1 signal 131 } 
	{ trottersLocal_V_3_14_q0 sc_in sc_lv 16 signal 131 } 
	{ JcoupLocal_3_14_address0 sc_out sc_lv 4 signal 132 } 
	{ JcoupLocal_3_14_ce0 sc_out sc_logic 1 signal 132 } 
	{ JcoupLocal_3_14_q0 sc_in sc_lv 512 signal 132 } 
	{ trottersLocal_V_3_15_address0 sc_out sc_lv 4 signal 133 } 
	{ trottersLocal_V_3_15_ce0 sc_out sc_logic 1 signal 133 } 
	{ trottersLocal_V_3_15_q0 sc_in sc_lv 16 signal 133 } 
	{ JcoupLocal_3_15_address0 sc_out sc_lv 4 signal 134 } 
	{ JcoupLocal_3_15_ce0 sc_out sc_logic 1 signal 134 } 
	{ JcoupLocal_3_15_q0 sc_in sc_lv 512 signal 134 } 
	{ inside_3 sc_in sc_logic 1 signal 135 } 
	{ dH_3_out sc_out sc_lv 32 signal 136 } 
	{ dH_3_out_ap_vld sc_out sc_logic 1 outvld 136 } 
	{ dH_2_out sc_out sc_lv 32 signal 137 } 
	{ dH_2_out_ap_vld sc_out sc_logic 1 outvld 137 } 
	{ dH_1_out sc_out sc_lv 32 signal 138 } 
	{ dH_1_out_ap_vld sc_out sc_logic 1 outvld 138 } 
	{ dH_0_out sc_out sc_lv 32 signal 139 } 
	{ dH_0_out_ap_vld sc_out sc_logic 1 outvld 139 } 
	{ grp_fu_2627_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2627_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2627_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2627_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2627_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2631_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2631_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2631_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2631_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2631_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2635_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2635_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2635_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2635_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2635_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2639_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2639_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2639_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2639_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2639_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2643_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2643_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2643_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2643_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2643_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2647_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2647_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2647_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2647_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2647_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2651_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2651_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2651_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2651_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2651_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2655_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2655_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2655_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2655_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2655_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2659_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2659_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2659_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2659_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2659_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2663_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2663_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2663_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2663_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2663_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2667_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2667_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2667_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2667_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2667_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2671_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2671_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2671_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2671_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2671_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2675_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2675_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2675_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2675_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2675_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2679_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2679_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2679_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2679_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2679_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2683_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2683_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2683_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2683_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2683_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2687_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2687_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2687_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2687_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2687_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2691_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2691_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2691_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2691_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2691_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2695_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2695_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2695_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2695_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2695_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2699_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2699_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2699_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2699_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2699_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2703_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2703_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2703_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2703_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2703_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2707_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2707_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2707_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2707_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2707_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2711_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2711_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2711_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2711_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2711_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2715_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2715_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2715_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2715_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2715_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2719_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2719_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2719_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2719_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2719_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2723_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2723_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2723_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2723_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2723_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2727_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2727_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2727_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2727_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2727_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2731_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2731_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2731_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2731_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2731_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2735_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2735_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2735_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2735_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2735_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2739_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2739_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2739_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2739_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2739_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2743_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2743_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2743_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2743_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2743_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2747_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2747_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2747_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2747_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2747_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2751_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2751_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2751_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2751_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2751_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2755_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2755_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2755_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2755_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2755_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2759_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2759_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2759_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2759_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2759_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2763_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2763_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2763_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2763_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2763_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2767_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2767_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2767_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2767_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2767_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2771_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2771_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2771_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2771_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2771_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2775_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2775_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2775_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2775_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2775_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2779_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2779_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2779_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2779_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2779_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2783_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2783_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2783_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2783_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2783_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2787_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2787_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2787_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2787_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2787_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2791_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2791_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2791_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2791_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2791_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2795_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2795_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2795_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2795_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2795_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2799_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2799_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2799_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2799_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2799_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2803_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2803_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2803_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2803_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2803_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2807_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2807_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2807_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2807_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2807_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2811_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2811_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2811_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2811_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2811_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2815_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2815_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2815_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2815_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2815_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2819_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2819_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2819_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2819_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2819_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2823_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2823_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2823_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2823_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2823_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2827_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2827_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2827_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2827_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2827_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2831_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2831_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2831_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2831_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2831_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2835_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2835_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2835_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2835_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2835_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2839_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2839_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2839_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2839_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2839_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2843_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2843_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2843_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2843_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2843_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2847_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2847_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2847_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2847_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2847_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2851_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2851_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2851_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2851_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2851_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2855_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2855_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2855_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2855_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2855_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2859_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2859_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2859_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2859_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2859_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2863_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2863_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2863_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2863_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2863_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2867_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2867_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2867_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2867_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2867_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2871_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2871_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2871_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2871_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2871_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2875_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2875_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2875_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2875_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2875_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2879_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2879_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2879_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2879_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2879_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2883_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2883_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2883_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2883_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2883_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2887_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2887_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2887_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2887_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2887_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2891_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2891_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2891_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2891_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2891_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2895_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2895_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2895_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2895_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2895_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2899_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2899_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2899_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2899_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2899_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2903_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2903_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2903_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2903_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2903_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2907_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2907_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2907_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2907_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2907_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2911_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2911_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2911_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2911_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2911_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2915_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2915_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2915_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2915_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2915_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2919_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2919_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2919_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2919_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2919_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2923_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2923_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2923_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2923_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2923_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2927_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2927_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2927_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2927_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2927_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2931_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2931_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2931_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2931_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2931_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2935_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2935_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2935_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2935_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2935_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2939_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2939_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2939_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2939_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2939_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2943_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2943_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2943_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2943_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2943_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2947_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2947_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2947_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2947_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2947_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2951_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2951_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2951_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2951_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2951_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2955_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2955_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2955_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2955_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2955_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2959_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2959_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2959_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2959_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2959_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2963_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2963_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2963_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2963_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2963_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2967_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2967_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2967_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2967_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2967_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2971_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2971_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2971_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2971_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2971_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2975_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2975_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2975_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2975_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2975_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2979_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2979_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2979_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2979_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2979_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2983_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2983_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2983_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2983_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2983_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2987_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2987_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2987_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2987_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2987_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2991_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2991_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2991_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2991_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2991_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2995_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2995_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2995_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2995_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2995_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2999_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2999_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2999_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2999_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2999_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_3003_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_3003_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_3003_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_3003_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_3003_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_3007_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_3007_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_3007_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_3007_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_3007_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_3011_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_3011_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_3011_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_3011_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_3011_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_3015_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_3015_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_3015_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_3015_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_3015_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_3019_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_3019_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_3019_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_3019_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_3019_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_3023_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_3023_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_3023_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_3023_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_3023_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_3027_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_3027_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_3027_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_3027_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_3027_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_3031_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_3031_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_3031_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_3031_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_3031_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_3035_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_3035_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_3035_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_3035_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_3035_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_3039_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_3039_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_3039_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_3039_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_3039_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_3043_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_3043_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_3043_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_3043_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_3043_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_3047_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_3047_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_3047_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_3047_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_3047_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_3051_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_3051_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_3051_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_3051_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_3051_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_3055_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_3055_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_3055_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_3055_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_3055_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_3059_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_3059_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_3059_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_3059_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_3059_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_3063_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_3063_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_3063_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_3063_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_3063_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_3067_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_3067_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_3067_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_3067_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_3067_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_3071_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_3071_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_3071_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_3071_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_3071_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_3075_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_3075_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_3075_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_3075_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_3075_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_3079_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_3079_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_3079_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_3079_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_3079_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_3083_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_3083_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_3083_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_3083_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_3083_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_3087_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_3087_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_3087_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_3087_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_3087_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_3091_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_3091_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_3091_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_3091_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_3091_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_3095_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_3095_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_3095_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_3095_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_3095_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_3099_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_3099_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_3099_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_3099_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_3099_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_3103_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_3103_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_3103_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_3103_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_3103_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_3107_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_3107_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_3107_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_3107_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_3107_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_3111_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_3111_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_3111_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_3111_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_3111_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_3115_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_3115_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_3115_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_3115_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_3115_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_3119_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_3119_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_3119_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_3119_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_3119_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_3123_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_3123_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_3123_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_3123_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_3123_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_3127_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_3127_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_3127_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_3127_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_3127_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_3131_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_3131_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_3131_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_3131_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_3131_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_3135_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_3135_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_3135_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_3135_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_3135_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_3139_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_3139_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_3139_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_3139_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_3139_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_3143_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_3143_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_3143_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_3143_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_3143_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_3147_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_3147_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_3147_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_3147_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_3147_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_3151_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_3151_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_3151_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_3151_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_3151_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_3155_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_3155_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_3155_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_3155_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_3155_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_3159_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_3159_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_3159_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_3159_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_3159_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_3163_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_3163_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_3163_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_3163_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_3163_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_3167_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_3167_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_3167_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_3167_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_3167_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_3171_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_3171_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_3171_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_3171_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_3171_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_3175_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_3175_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_3175_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_3175_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_3175_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_3179_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_3179_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_3179_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_3179_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_3179_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_3183_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_3183_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_3183_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_3183_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_3183_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_3187_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_3187_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_3187_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_3187_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_3187_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_3191_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_3191_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_3191_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_3191_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_3191_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_3195_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_3195_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_3195_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_3195_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_3195_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_3199_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_3199_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_3199_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_3199_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_3199_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_3203_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_3203_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_3203_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_3203_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_3203_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_3207_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_3207_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_3207_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_3207_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_3207_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_3211_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_3211_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_3211_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_3211_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_3211_p_ce sc_out sc_logic 1 signal -1 } 
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
 	{ "name": "trottersLocal_V_0_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_0_0", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_0_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_0_0", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_0_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_0_0", "role": "q0" }} , 
 	{ "name": "JcoupLocal_0_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_0_0", "role": "address0" }} , 
 	{ "name": "JcoupLocal_0_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_0_0", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_0_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_0_0", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_0_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_0_1", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_0_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_0_1", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_0_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_0_1", "role": "q0" }} , 
 	{ "name": "JcoupLocal_0_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_0_1", "role": "address0" }} , 
 	{ "name": "JcoupLocal_0_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_0_1", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_0_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_0_1", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_0_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_0_2", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_0_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_0_2", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_0_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_0_2", "role": "q0" }} , 
 	{ "name": "JcoupLocal_0_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_0_2", "role": "address0" }} , 
 	{ "name": "JcoupLocal_0_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_0_2", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_0_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_0_2", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_0_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_0_3", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_0_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_0_3", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_0_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_0_3", "role": "q0" }} , 
 	{ "name": "JcoupLocal_0_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_0_3", "role": "address0" }} , 
 	{ "name": "JcoupLocal_0_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_0_3", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_0_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_0_3", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_0_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_0_4", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_0_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_0_4", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_0_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_0_4", "role": "q0" }} , 
 	{ "name": "JcoupLocal_0_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_0_4", "role": "address0" }} , 
 	{ "name": "JcoupLocal_0_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_0_4", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_0_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_0_4", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_0_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_0_5", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_0_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_0_5", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_0_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_0_5", "role": "q0" }} , 
 	{ "name": "JcoupLocal_0_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_0_5", "role": "address0" }} , 
 	{ "name": "JcoupLocal_0_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_0_5", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_0_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_0_5", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_0_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_0_6", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_0_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_0_6", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_0_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_0_6", "role": "q0" }} , 
 	{ "name": "JcoupLocal_0_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_0_6", "role": "address0" }} , 
 	{ "name": "JcoupLocal_0_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_0_6", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_0_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_0_6", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_0_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_0_7", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_0_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_0_7", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_0_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_0_7", "role": "q0" }} , 
 	{ "name": "JcoupLocal_0_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_0_7", "role": "address0" }} , 
 	{ "name": "JcoupLocal_0_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_0_7", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_0_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_0_7", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_0_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_0_8", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_0_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_0_8", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_0_8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_0_8", "role": "q0" }} , 
 	{ "name": "JcoupLocal_0_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_0_8", "role": "address0" }} , 
 	{ "name": "JcoupLocal_0_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_0_8", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_0_8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_0_8", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_0_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_0_9", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_0_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_0_9", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_0_9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_0_9", "role": "q0" }} , 
 	{ "name": "JcoupLocal_0_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_0_9", "role": "address0" }} , 
 	{ "name": "JcoupLocal_0_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_0_9", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_0_9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_0_9", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_0_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_0_10", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_0_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_0_10", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_0_10_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_0_10", "role": "q0" }} , 
 	{ "name": "JcoupLocal_0_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_0_10", "role": "address0" }} , 
 	{ "name": "JcoupLocal_0_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_0_10", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_0_10_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_0_10", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_0_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_0_11", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_0_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_0_11", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_0_11_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_0_11", "role": "q0" }} , 
 	{ "name": "JcoupLocal_0_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_0_11", "role": "address0" }} , 
 	{ "name": "JcoupLocal_0_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_0_11", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_0_11_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_0_11", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_0_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_0_12", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_0_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_0_12", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_0_12_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_0_12", "role": "q0" }} , 
 	{ "name": "JcoupLocal_0_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_0_12", "role": "address0" }} , 
 	{ "name": "JcoupLocal_0_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_0_12", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_0_12_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_0_12", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_0_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_0_13", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_0_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_0_13", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_0_13_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_0_13", "role": "q0" }} , 
 	{ "name": "JcoupLocal_0_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_0_13", "role": "address0" }} , 
 	{ "name": "JcoupLocal_0_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_0_13", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_0_13_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_0_13", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_0_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_0_14", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_0_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_0_14", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_0_14_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_0_14", "role": "q0" }} , 
 	{ "name": "JcoupLocal_0_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_0_14", "role": "address0" }} , 
 	{ "name": "JcoupLocal_0_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_0_14", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_0_14_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_0_14", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_0_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_0_15", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_0_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_0_15", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_0_15_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_0_15", "role": "q0" }} , 
 	{ "name": "JcoupLocal_0_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_0_15", "role": "address0" }} , 
 	{ "name": "JcoupLocal_0_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_0_15", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_0_15_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_0_15", "role": "q0" }} , 
 	{ "name": "inside", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inside", "role": "default" }} , 
 	{ "name": "trottersLocal_V_1_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_1_0", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_1_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_1_0", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_1_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_1_0", "role": "q0" }} , 
 	{ "name": "JcoupLocal_1_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_1_0", "role": "address0" }} , 
 	{ "name": "JcoupLocal_1_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_1_0", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_1_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_1_0", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_1_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_1_1", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_1_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_1_1", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_1_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_1_1", "role": "q0" }} , 
 	{ "name": "JcoupLocal_1_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_1_1", "role": "address0" }} , 
 	{ "name": "JcoupLocal_1_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_1_1", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_1_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_1_1", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_1_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_1_2", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_1_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_1_2", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_1_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_1_2", "role": "q0" }} , 
 	{ "name": "JcoupLocal_1_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_1_2", "role": "address0" }} , 
 	{ "name": "JcoupLocal_1_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_1_2", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_1_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_1_2", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_1_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_1_3", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_1_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_1_3", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_1_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_1_3", "role": "q0" }} , 
 	{ "name": "JcoupLocal_1_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_1_3", "role": "address0" }} , 
 	{ "name": "JcoupLocal_1_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_1_3", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_1_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_1_3", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_1_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_1_4", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_1_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_1_4", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_1_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_1_4", "role": "q0" }} , 
 	{ "name": "JcoupLocal_1_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_1_4", "role": "address0" }} , 
 	{ "name": "JcoupLocal_1_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_1_4", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_1_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_1_4", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_1_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_1_5", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_1_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_1_5", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_1_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_1_5", "role": "q0" }} , 
 	{ "name": "JcoupLocal_1_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_1_5", "role": "address0" }} , 
 	{ "name": "JcoupLocal_1_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_1_5", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_1_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_1_5", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_1_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_1_6", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_1_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_1_6", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_1_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_1_6", "role": "q0" }} , 
 	{ "name": "JcoupLocal_1_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_1_6", "role": "address0" }} , 
 	{ "name": "JcoupLocal_1_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_1_6", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_1_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_1_6", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_1_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_1_7", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_1_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_1_7", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_1_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_1_7", "role": "q0" }} , 
 	{ "name": "JcoupLocal_1_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_1_7", "role": "address0" }} , 
 	{ "name": "JcoupLocal_1_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_1_7", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_1_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_1_7", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_1_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_1_8", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_1_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_1_8", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_1_8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_1_8", "role": "q0" }} , 
 	{ "name": "JcoupLocal_1_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_1_8", "role": "address0" }} , 
 	{ "name": "JcoupLocal_1_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_1_8", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_1_8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_1_8", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_1_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_1_9", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_1_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_1_9", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_1_9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_1_9", "role": "q0" }} , 
 	{ "name": "JcoupLocal_1_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_1_9", "role": "address0" }} , 
 	{ "name": "JcoupLocal_1_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_1_9", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_1_9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_1_9", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_1_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_1_10", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_1_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_1_10", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_1_10_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_1_10", "role": "q0" }} , 
 	{ "name": "JcoupLocal_1_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_1_10", "role": "address0" }} , 
 	{ "name": "JcoupLocal_1_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_1_10", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_1_10_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_1_10", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_1_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_1_11", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_1_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_1_11", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_1_11_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_1_11", "role": "q0" }} , 
 	{ "name": "JcoupLocal_1_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_1_11", "role": "address0" }} , 
 	{ "name": "JcoupLocal_1_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_1_11", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_1_11_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_1_11", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_1_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_1_12", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_1_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_1_12", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_1_12_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_1_12", "role": "q0" }} , 
 	{ "name": "JcoupLocal_1_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_1_12", "role": "address0" }} , 
 	{ "name": "JcoupLocal_1_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_1_12", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_1_12_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_1_12", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_1_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_1_13", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_1_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_1_13", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_1_13_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_1_13", "role": "q0" }} , 
 	{ "name": "JcoupLocal_1_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_1_13", "role": "address0" }} , 
 	{ "name": "JcoupLocal_1_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_1_13", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_1_13_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_1_13", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_1_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_1_14", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_1_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_1_14", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_1_14_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_1_14", "role": "q0" }} , 
 	{ "name": "JcoupLocal_1_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_1_14", "role": "address0" }} , 
 	{ "name": "JcoupLocal_1_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_1_14", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_1_14_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_1_14", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_1_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_1_15", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_1_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_1_15", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_1_15_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_1_15", "role": "q0" }} , 
 	{ "name": "JcoupLocal_1_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_1_15", "role": "address0" }} , 
 	{ "name": "JcoupLocal_1_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_1_15", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_1_15_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_1_15", "role": "q0" }} , 
 	{ "name": "inside_1", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inside_1", "role": "default" }} , 
 	{ "name": "trottersLocal_V_2_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_2_0", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_2_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_2_0", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_2_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_2_0", "role": "q0" }} , 
 	{ "name": "JcoupLocal_2_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_2_0", "role": "address0" }} , 
 	{ "name": "JcoupLocal_2_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_2_0", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_2_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_2_0", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_2_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_2_1", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_2_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_2_1", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_2_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_2_1", "role": "q0" }} , 
 	{ "name": "JcoupLocal_2_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_2_1", "role": "address0" }} , 
 	{ "name": "JcoupLocal_2_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_2_1", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_2_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_2_1", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_2_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_2_2", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_2_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_2_2", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_2_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_2_2", "role": "q0" }} , 
 	{ "name": "JcoupLocal_2_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_2_2", "role": "address0" }} , 
 	{ "name": "JcoupLocal_2_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_2_2", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_2_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_2_2", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_2_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_2_3", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_2_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_2_3", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_2_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_2_3", "role": "q0" }} , 
 	{ "name": "JcoupLocal_2_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_2_3", "role": "address0" }} , 
 	{ "name": "JcoupLocal_2_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_2_3", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_2_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_2_3", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_2_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_2_4", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_2_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_2_4", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_2_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_2_4", "role": "q0" }} , 
 	{ "name": "JcoupLocal_2_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_2_4", "role": "address0" }} , 
 	{ "name": "JcoupLocal_2_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_2_4", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_2_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_2_4", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_2_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_2_5", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_2_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_2_5", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_2_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_2_5", "role": "q0" }} , 
 	{ "name": "JcoupLocal_2_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_2_5", "role": "address0" }} , 
 	{ "name": "JcoupLocal_2_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_2_5", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_2_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_2_5", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_2_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_2_6", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_2_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_2_6", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_2_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_2_6", "role": "q0" }} , 
 	{ "name": "JcoupLocal_2_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_2_6", "role": "address0" }} , 
 	{ "name": "JcoupLocal_2_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_2_6", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_2_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_2_6", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_2_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_2_7", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_2_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_2_7", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_2_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_2_7", "role": "q0" }} , 
 	{ "name": "JcoupLocal_2_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_2_7", "role": "address0" }} , 
 	{ "name": "JcoupLocal_2_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_2_7", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_2_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_2_7", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_2_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_2_8", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_2_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_2_8", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_2_8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_2_8", "role": "q0" }} , 
 	{ "name": "JcoupLocal_2_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_2_8", "role": "address0" }} , 
 	{ "name": "JcoupLocal_2_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_2_8", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_2_8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_2_8", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_2_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_2_9", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_2_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_2_9", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_2_9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_2_9", "role": "q0" }} , 
 	{ "name": "JcoupLocal_2_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_2_9", "role": "address0" }} , 
 	{ "name": "JcoupLocal_2_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_2_9", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_2_9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_2_9", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_2_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_2_10", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_2_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_2_10", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_2_10_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_2_10", "role": "q0" }} , 
 	{ "name": "JcoupLocal_2_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_2_10", "role": "address0" }} , 
 	{ "name": "JcoupLocal_2_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_2_10", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_2_10_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_2_10", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_2_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_2_11", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_2_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_2_11", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_2_11_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_2_11", "role": "q0" }} , 
 	{ "name": "JcoupLocal_2_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_2_11", "role": "address0" }} , 
 	{ "name": "JcoupLocal_2_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_2_11", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_2_11_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_2_11", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_2_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_2_12", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_2_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_2_12", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_2_12_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_2_12", "role": "q0" }} , 
 	{ "name": "JcoupLocal_2_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_2_12", "role": "address0" }} , 
 	{ "name": "JcoupLocal_2_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_2_12", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_2_12_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_2_12", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_2_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_2_13", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_2_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_2_13", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_2_13_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_2_13", "role": "q0" }} , 
 	{ "name": "JcoupLocal_2_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_2_13", "role": "address0" }} , 
 	{ "name": "JcoupLocal_2_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_2_13", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_2_13_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_2_13", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_2_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_2_14", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_2_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_2_14", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_2_14_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_2_14", "role": "q0" }} , 
 	{ "name": "JcoupLocal_2_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_2_14", "role": "address0" }} , 
 	{ "name": "JcoupLocal_2_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_2_14", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_2_14_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_2_14", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_2_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_2_15", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_2_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_2_15", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_2_15_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_2_15", "role": "q0" }} , 
 	{ "name": "JcoupLocal_2_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_2_15", "role": "address0" }} , 
 	{ "name": "JcoupLocal_2_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_2_15", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_2_15_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_2_15", "role": "q0" }} , 
 	{ "name": "inside_2", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inside_2", "role": "default" }} , 
 	{ "name": "trottersLocal_V_3_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_3_0", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_3_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_3_0", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_3_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_3_0", "role": "q0" }} , 
 	{ "name": "JcoupLocal_3_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_3_0", "role": "address0" }} , 
 	{ "name": "JcoupLocal_3_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_3_0", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_3_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_3_0", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_3_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_3_1", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_3_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_3_1", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_3_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_3_1", "role": "q0" }} , 
 	{ "name": "JcoupLocal_3_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_3_1", "role": "address0" }} , 
 	{ "name": "JcoupLocal_3_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_3_1", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_3_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_3_1", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_3_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_3_2", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_3_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_3_2", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_3_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_3_2", "role": "q0" }} , 
 	{ "name": "JcoupLocal_3_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_3_2", "role": "address0" }} , 
 	{ "name": "JcoupLocal_3_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_3_2", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_3_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_3_2", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_3_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_3_3", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_3_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_3_3", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_3_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_3_3", "role": "q0" }} , 
 	{ "name": "JcoupLocal_3_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_3_3", "role": "address0" }} , 
 	{ "name": "JcoupLocal_3_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_3_3", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_3_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_3_3", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_3_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_3_4", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_3_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_3_4", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_3_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_3_4", "role": "q0" }} , 
 	{ "name": "JcoupLocal_3_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_3_4", "role": "address0" }} , 
 	{ "name": "JcoupLocal_3_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_3_4", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_3_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_3_4", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_3_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_3_5", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_3_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_3_5", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_3_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_3_5", "role": "q0" }} , 
 	{ "name": "JcoupLocal_3_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_3_5", "role": "address0" }} , 
 	{ "name": "JcoupLocal_3_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_3_5", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_3_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_3_5", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_3_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_3_6", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_3_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_3_6", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_3_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_3_6", "role": "q0" }} , 
 	{ "name": "JcoupLocal_3_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_3_6", "role": "address0" }} , 
 	{ "name": "JcoupLocal_3_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_3_6", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_3_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_3_6", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_3_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_3_7", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_3_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_3_7", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_3_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_3_7", "role": "q0" }} , 
 	{ "name": "JcoupLocal_3_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_3_7", "role": "address0" }} , 
 	{ "name": "JcoupLocal_3_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_3_7", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_3_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_3_7", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_3_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_3_8", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_3_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_3_8", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_3_8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_3_8", "role": "q0" }} , 
 	{ "name": "JcoupLocal_3_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_3_8", "role": "address0" }} , 
 	{ "name": "JcoupLocal_3_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_3_8", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_3_8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_3_8", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_3_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_3_9", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_3_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_3_9", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_3_9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_3_9", "role": "q0" }} , 
 	{ "name": "JcoupLocal_3_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_3_9", "role": "address0" }} , 
 	{ "name": "JcoupLocal_3_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_3_9", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_3_9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_3_9", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_3_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_3_10", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_3_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_3_10", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_3_10_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_3_10", "role": "q0" }} , 
 	{ "name": "JcoupLocal_3_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_3_10", "role": "address0" }} , 
 	{ "name": "JcoupLocal_3_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_3_10", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_3_10_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_3_10", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_3_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_3_11", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_3_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_3_11", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_3_11_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_3_11", "role": "q0" }} , 
 	{ "name": "JcoupLocal_3_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_3_11", "role": "address0" }} , 
 	{ "name": "JcoupLocal_3_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_3_11", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_3_11_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_3_11", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_3_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_3_12", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_3_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_3_12", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_3_12_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_3_12", "role": "q0" }} , 
 	{ "name": "JcoupLocal_3_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_3_12", "role": "address0" }} , 
 	{ "name": "JcoupLocal_3_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_3_12", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_3_12_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_3_12", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_3_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_3_13", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_3_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_3_13", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_3_13_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_3_13", "role": "q0" }} , 
 	{ "name": "JcoupLocal_3_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_3_13", "role": "address0" }} , 
 	{ "name": "JcoupLocal_3_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_3_13", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_3_13_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_3_13", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_3_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_3_14", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_3_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_3_14", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_3_14_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_3_14", "role": "q0" }} , 
 	{ "name": "JcoupLocal_3_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_3_14", "role": "address0" }} , 
 	{ "name": "JcoupLocal_3_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_3_14", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_3_14_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_3_14", "role": "q0" }} , 
 	{ "name": "trottersLocal_V_3_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trottersLocal_V_3_15", "role": "address0" }} , 
 	{ "name": "trottersLocal_V_3_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trottersLocal_V_3_15", "role": "ce0" }} , 
 	{ "name": "trottersLocal_V_3_15_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trottersLocal_V_3_15", "role": "q0" }} , 
 	{ "name": "JcoupLocal_3_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JcoupLocal_3_15", "role": "address0" }} , 
 	{ "name": "JcoupLocal_3_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_3_15", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_3_15_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_3_15", "role": "q0" }} , 
 	{ "name": "inside_3", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inside_3", "role": "default" }} , 
 	{ "name": "dH_3_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dH_3_out", "role": "default" }} , 
 	{ "name": "dH_3_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "dH_3_out", "role": "ap_vld" }} , 
 	{ "name": "dH_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dH_2_out", "role": "default" }} , 
 	{ "name": "dH_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "dH_2_out", "role": "ap_vld" }} , 
 	{ "name": "dH_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dH_1_out", "role": "default" }} , 
 	{ "name": "dH_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "dH_1_out", "role": "ap_vld" }} , 
 	{ "name": "dH_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dH_0_out", "role": "default" }} , 
 	{ "name": "dH_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "dH_0_out", "role": "ap_vld" }} , 
 	{ "name": "grp_fu_2627_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2627_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2627_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2627_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2627_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2627_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2627_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2627_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2627_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2627_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2631_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2631_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2631_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2631_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2631_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2631_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2631_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2631_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2631_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2631_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2635_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2635_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2635_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2635_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2635_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2635_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2635_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2635_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2635_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2635_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2639_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2639_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2639_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2639_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2639_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2639_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2639_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2639_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2639_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2639_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2643_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2643_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2643_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2643_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2643_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2643_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2643_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2643_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2643_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2643_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2647_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2647_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2647_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2647_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2647_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2647_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2647_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2647_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2647_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2647_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2651_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2651_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2651_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2651_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2651_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2651_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2651_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2651_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2651_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2651_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2655_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2655_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2655_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2655_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2655_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2655_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2655_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2655_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2655_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2655_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2659_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2659_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2659_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2659_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2659_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2659_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2659_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2659_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2659_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2659_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2663_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2663_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2663_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2663_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2663_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2663_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2663_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2663_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2663_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2663_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2667_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2667_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2667_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2667_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2667_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2667_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2667_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2667_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2667_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2667_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2671_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2671_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2671_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2671_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2671_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2671_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2671_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2671_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2671_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2671_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2675_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2675_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2675_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2675_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2675_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2675_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2675_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2675_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2675_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2675_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2679_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2679_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2679_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2679_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2679_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2679_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2679_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2679_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2679_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2679_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2683_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2683_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2683_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2683_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2683_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2683_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2683_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2683_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2683_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2683_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2687_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2687_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2687_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2687_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2687_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2687_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2687_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2687_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2687_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2687_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2691_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2691_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2691_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2691_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2691_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2691_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2691_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2691_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2691_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2691_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2695_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2695_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2695_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2695_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2695_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2695_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2695_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2695_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2695_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2695_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2699_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2699_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2699_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2699_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2699_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2699_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2699_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2699_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2699_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2699_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2703_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2703_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2703_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2703_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2703_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2703_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2703_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2703_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2703_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2703_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2707_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2707_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2707_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2707_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2707_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2707_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2707_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2707_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2707_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2707_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2711_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2711_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2711_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2711_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2711_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2711_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2711_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2711_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2711_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2711_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2715_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2715_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2715_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2715_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2715_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2715_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2715_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2715_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2715_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2715_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2719_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2719_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2719_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2719_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2719_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2719_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2719_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2719_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2719_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2719_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2723_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2723_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2723_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2723_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2723_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2723_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2723_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2723_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2723_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2723_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2727_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2727_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2727_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2727_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2727_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2727_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2727_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2727_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2727_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2727_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2731_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2731_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2731_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2731_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2731_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2731_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2731_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2731_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2731_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2731_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2735_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2735_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2735_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2735_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2735_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2735_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2735_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2735_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2735_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2735_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2739_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2739_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2739_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2739_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2739_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2739_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2739_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2739_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2739_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2739_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2743_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2743_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2743_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2743_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2743_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2743_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2743_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2743_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2743_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2743_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2747_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2747_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2747_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2747_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2747_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2747_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2747_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2747_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2747_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2747_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2751_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2751_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2751_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2751_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2751_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2751_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2751_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2751_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2751_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2751_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2755_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2755_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2755_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2755_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2755_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2755_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2755_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2755_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2755_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2755_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2759_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2759_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2759_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2759_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2759_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2759_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2759_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2759_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2759_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2759_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2763_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2763_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2763_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2763_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2763_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2763_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2763_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2763_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2763_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2763_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2767_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2767_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2767_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2767_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2767_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2767_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2767_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2767_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2767_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2767_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2771_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2771_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2771_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2771_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2771_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2771_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2771_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2771_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2771_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2771_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2775_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2775_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2775_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2775_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2775_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2775_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2775_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2775_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2775_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2775_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2779_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2779_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2779_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2779_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2779_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2779_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2779_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2779_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2779_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2779_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2783_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2783_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2783_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2783_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2783_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2783_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2783_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2783_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2783_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2783_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2787_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2787_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2787_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2787_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2787_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2787_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2787_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2787_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2787_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2787_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2791_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2791_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2791_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2791_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2791_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2791_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2791_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2791_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2791_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2791_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2795_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2795_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2795_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2795_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2795_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2795_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2795_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2795_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2795_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2795_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2799_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2799_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2799_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2799_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2799_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2799_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2799_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2799_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2799_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2799_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2803_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2803_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2803_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2803_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2803_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2803_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2803_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2803_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2803_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2803_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2807_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2807_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2807_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2807_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2807_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2807_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2807_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2807_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2807_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2807_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2811_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2811_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2811_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2811_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2811_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2811_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2811_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2811_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2811_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2811_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2815_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2815_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2815_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2815_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2815_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2815_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2815_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2815_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2815_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2815_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2819_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2819_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2819_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2819_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2819_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2819_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2819_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2819_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2819_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2819_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2823_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2823_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2823_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2823_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2823_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2823_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2823_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2823_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2823_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2823_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2827_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2827_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2827_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2827_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2827_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2827_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2827_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2827_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2827_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2827_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2831_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2831_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2831_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2831_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2831_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2831_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2831_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2831_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2831_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2831_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2835_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2835_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2835_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2835_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2835_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2835_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2835_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2835_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2835_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2835_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2839_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2839_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2839_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2839_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2839_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2839_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2839_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2839_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2839_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2839_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2843_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2843_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2843_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2843_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2843_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2843_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2843_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2843_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2843_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2843_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2847_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2847_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2847_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2847_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2847_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2847_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2847_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2847_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2847_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2847_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2851_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2851_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2851_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2851_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2851_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2851_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2851_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2851_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2851_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2851_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2855_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2855_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2855_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2855_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2855_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2855_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2855_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2855_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2855_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2855_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2859_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2859_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2859_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2859_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2859_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2859_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2859_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2859_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2859_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2859_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2863_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2863_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2863_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2863_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2863_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2863_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2863_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2863_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2863_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2863_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2867_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2867_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2867_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2867_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2867_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2867_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2867_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2867_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2867_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2867_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2871_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2871_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2871_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2871_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2871_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2871_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2871_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2871_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2871_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2871_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2875_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2875_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2875_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2875_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2875_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2875_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2875_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2875_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2875_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2875_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2879_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2879_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2879_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2879_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2879_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2879_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2879_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2879_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2879_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2879_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2883_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2883_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2883_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2883_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2883_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2883_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2883_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2883_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2883_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2883_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2887_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2887_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2887_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2887_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2887_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2887_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2887_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2887_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2887_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2887_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2891_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2891_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2891_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2891_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2891_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2891_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2891_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2891_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2891_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2891_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2895_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2895_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2895_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2895_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2895_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2895_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2895_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2895_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2895_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2895_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2899_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2899_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2899_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2899_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2899_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2899_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2899_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2899_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2899_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2899_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2903_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2903_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2903_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2903_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2903_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2903_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2903_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2903_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2903_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2903_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2907_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2907_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2907_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2907_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2907_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2907_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2907_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2907_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2907_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2907_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2911_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2911_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2911_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2911_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2911_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2911_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2911_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2911_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2911_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2911_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2915_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2915_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2915_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2915_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2915_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2915_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2915_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2915_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2915_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2915_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2919_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2919_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2919_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2919_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2919_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2919_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2919_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2919_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2919_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2919_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2923_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2923_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2923_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2923_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2923_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2923_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2923_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2923_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2923_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2923_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2927_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2927_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2927_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2927_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2927_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2927_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2927_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2927_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2927_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2927_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2931_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2931_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2931_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2931_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2931_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2931_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2931_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2931_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2931_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2931_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2935_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2935_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2935_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2935_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2935_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2935_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2935_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2935_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2935_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2935_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2939_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2939_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2939_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2939_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2939_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2939_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2939_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2939_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2939_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2939_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2943_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2943_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2943_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2943_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2943_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2943_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2943_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2943_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2943_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2943_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2947_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2947_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2947_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2947_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2947_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2947_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2947_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2947_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2947_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2947_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2951_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2951_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2951_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2951_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2951_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2951_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2951_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2951_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2951_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2951_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2955_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2955_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2955_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2955_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2955_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2955_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2955_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2955_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2955_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2955_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2959_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2959_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2959_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2959_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2959_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2959_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2959_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2959_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2959_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2959_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2963_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2963_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2963_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2963_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2963_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2963_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2963_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2963_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2963_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2963_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2967_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2967_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2967_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2967_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2967_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2967_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2967_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2967_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2967_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2967_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2971_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2971_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2971_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2971_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2971_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2971_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2971_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2971_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2971_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2971_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2975_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2975_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2975_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2975_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2975_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2975_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2975_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2975_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2975_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2975_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2979_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2979_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2979_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2979_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2979_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2979_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2979_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2979_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2979_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2979_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2983_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2983_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2983_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2983_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2983_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2983_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2983_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2983_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2983_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2983_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2987_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2987_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2987_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2987_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2987_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2987_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2987_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2987_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2987_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2987_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2991_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2991_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2991_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2991_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2991_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2991_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2991_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2991_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2991_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2991_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2995_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2995_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2995_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2995_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2995_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2995_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2995_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2995_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2995_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2995_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2999_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2999_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2999_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2999_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2999_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2999_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2999_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2999_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2999_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2999_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_3003_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3003_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_3003_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3003_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_3003_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_3003_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_3003_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3003_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_3003_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_3003_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_3007_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3007_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_3007_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3007_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_3007_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_3007_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_3007_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3007_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_3007_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_3007_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_3011_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3011_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_3011_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3011_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_3011_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_3011_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_3011_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3011_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_3011_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_3011_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_3015_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3015_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_3015_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3015_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_3015_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_3015_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_3015_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3015_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_3015_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_3015_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_3019_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3019_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_3019_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3019_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_3019_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_3019_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_3019_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3019_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_3019_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_3019_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_3023_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3023_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_3023_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3023_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_3023_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_3023_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_3023_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3023_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_3023_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_3023_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_3027_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3027_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_3027_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3027_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_3027_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_3027_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_3027_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3027_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_3027_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_3027_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_3031_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3031_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_3031_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3031_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_3031_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_3031_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_3031_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3031_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_3031_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_3031_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_3035_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3035_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_3035_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3035_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_3035_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_3035_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_3035_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3035_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_3035_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_3035_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_3039_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3039_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_3039_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3039_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_3039_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_3039_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_3039_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3039_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_3039_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_3039_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_3043_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3043_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_3043_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3043_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_3043_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_3043_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_3043_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3043_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_3043_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_3043_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_3047_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3047_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_3047_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3047_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_3047_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_3047_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_3047_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3047_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_3047_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_3047_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_3051_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3051_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_3051_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3051_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_3051_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_3051_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_3051_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3051_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_3051_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_3051_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_3055_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3055_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_3055_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3055_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_3055_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_3055_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_3055_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3055_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_3055_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_3055_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_3059_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3059_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_3059_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3059_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_3059_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_3059_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_3059_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3059_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_3059_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_3059_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_3063_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3063_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_3063_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3063_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_3063_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_3063_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_3063_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3063_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_3063_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_3063_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_3067_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3067_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_3067_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3067_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_3067_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_3067_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_3067_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3067_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_3067_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_3067_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_3071_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3071_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_3071_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3071_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_3071_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_3071_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_3071_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3071_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_3071_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_3071_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_3075_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3075_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_3075_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3075_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_3075_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_3075_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_3075_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3075_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_3075_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_3075_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_3079_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3079_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_3079_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3079_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_3079_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_3079_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_3079_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3079_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_3079_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_3079_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_3083_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3083_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_3083_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3083_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_3083_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_3083_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_3083_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3083_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_3083_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_3083_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_3087_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3087_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_3087_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3087_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_3087_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_3087_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_3087_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3087_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_3087_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_3087_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_3091_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3091_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_3091_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3091_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_3091_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_3091_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_3091_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3091_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_3091_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_3091_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_3095_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3095_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_3095_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3095_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_3095_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_3095_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_3095_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3095_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_3095_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_3095_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_3099_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3099_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_3099_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3099_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_3099_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_3099_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_3099_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3099_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_3099_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_3099_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_3103_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3103_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_3103_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3103_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_3103_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_3103_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_3103_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3103_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_3103_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_3103_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_3107_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3107_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_3107_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3107_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_3107_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_3107_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_3107_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3107_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_3107_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_3107_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_3111_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3111_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_3111_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3111_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_3111_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_3111_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_3111_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3111_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_3111_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_3111_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_3115_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3115_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_3115_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3115_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_3115_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_3115_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_3115_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3115_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_3115_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_3115_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_3119_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3119_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_3119_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3119_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_3119_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_3119_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_3119_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3119_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_3119_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_3119_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_3123_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3123_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_3123_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3123_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_3123_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_3123_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_3123_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3123_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_3123_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_3123_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_3127_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3127_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_3127_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3127_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_3127_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_3127_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_3127_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3127_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_3127_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_3127_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_3131_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3131_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_3131_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3131_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_3131_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_3131_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_3131_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3131_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_3131_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_3131_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_3135_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3135_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_3135_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3135_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_3135_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_3135_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_3135_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3135_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_3135_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_3135_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_3139_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3139_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_3139_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3139_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_3139_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_3139_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_3139_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3139_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_3139_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_3139_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_3143_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3143_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_3143_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3143_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_3143_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_3143_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_3143_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3143_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_3143_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_3143_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_3147_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3147_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_3147_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3147_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_3147_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_3147_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_3147_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3147_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_3147_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_3147_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_3151_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3151_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_3151_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3151_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_3151_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_3151_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_3151_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3151_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_3151_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_3151_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_3155_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3155_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_3155_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3155_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_3155_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_3155_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_3155_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3155_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_3155_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_3155_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_3159_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3159_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_3159_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3159_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_3159_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_3159_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_3159_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3159_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_3159_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_3159_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_3163_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3163_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_3163_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3163_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_3163_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_3163_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_3163_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3163_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_3163_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_3163_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_3167_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3167_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_3167_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3167_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_3167_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_3167_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_3167_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3167_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_3167_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_3167_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_3171_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3171_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_3171_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3171_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_3171_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_3171_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_3171_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3171_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_3171_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_3171_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_3175_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3175_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_3175_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3175_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_3175_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_3175_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_3175_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3175_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_3175_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_3175_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_3179_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3179_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_3179_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3179_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_3179_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_3179_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_3179_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3179_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_3179_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_3179_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_3183_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3183_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_3183_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3183_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_3183_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_3183_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_3183_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3183_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_3183_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_3183_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_3187_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3187_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_3187_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3187_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_3187_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_3187_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_3187_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3187_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_3187_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_3187_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_3191_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3191_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_3191_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3191_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_3191_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_3191_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_3191_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3191_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_3191_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_3191_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_3195_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3195_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_3195_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3195_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_3195_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_3195_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_3195_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3195_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_3195_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_3195_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_3199_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3199_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_3199_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3199_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_3199_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_3199_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_3199_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3199_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_3199_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_3199_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_3203_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3203_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_3203_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3203_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_3203_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_3203_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_3203_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3203_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_3203_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_3203_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_3207_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3207_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_3207_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3207_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_3207_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_3207_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_3207_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3207_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_3207_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_3207_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_3211_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3211_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_3211_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3211_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_3211_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_3211_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_3211_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3211_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_3211_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_3211_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "QuantumMonteCarloU50_Pipeline_LOOP_STEP",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "178", "EstimateLatencyMax" : "178",
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
			{"Name" : "trottersLocal_V_0_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_0_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_0_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_0_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_0_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_0_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_0_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_0_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_0_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_0_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_0_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_0_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_0_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_0_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_0_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_0_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_0_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_0_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_0_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_0_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_0_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_0_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_0_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_0_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_0_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_0_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_0_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_0_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_0_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_0_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_0_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_0_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "inside", "Type" : "None", "Direction" : "I"},
			{"Name" : "trottersLocal_V_1_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_1_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_1_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_1_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_1_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_1_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_1_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_1_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_1_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_1_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_1_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_1_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_1_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_1_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_1_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_1_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_1_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_1_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_1_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_1_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_1_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_1_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_1_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_1_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_1_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_1_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_1_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_1_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_1_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_1_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_1_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_1_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "inside_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "trottersLocal_V_2_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_2_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_2_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_2_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_2_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_2_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_2_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_2_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_2_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_2_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_2_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_2_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_2_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_2_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_2_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_2_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_2_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_2_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_2_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_2_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_2_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_2_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_2_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_2_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_2_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_2_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_2_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_2_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_2_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_2_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_2_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_2_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "inside_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "trottersLocal_V_3_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_3_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_3_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_3_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_3_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_3_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_3_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_3_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_3_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_3_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_3_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_3_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_3_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_3_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_3_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_3_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_3_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_3_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_3_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_3_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_3_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_3_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_3_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_3_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_3_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_3_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_3_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_3_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_3_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_3_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_3_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "JcoupLocal_3_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "inside_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "dH_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dH_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dH_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dH_0_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "LOOP_STEP", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "7", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter10", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter10", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	QuantumMonteCarloU50_Pipeline_LOOP_STEP {
		dH_3_1_reload {Type I LastRead 0 FirstWrite -1}
		dH_2_1_reload {Type I LastRead 0 FirstWrite -1}
		dH_1_1_reload {Type I LastRead 0 FirstWrite -1}
		dH_0_1_reload {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_0_0 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_0_0 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_0_1 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_0_1 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_0_2 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_0_2 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_0_3 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_0_3 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_0_4 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_0_4 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_0_5 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_0_5 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_0_6 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_0_6 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_0_7 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_0_7 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_0_8 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_0_8 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_0_9 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_0_9 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_0_10 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_0_10 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_0_11 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_0_11 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_0_12 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_0_12 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_0_13 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_0_13 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_0_14 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_0_14 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_0_15 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_0_15 {Type I LastRead 0 FirstWrite -1}
		inside {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_1_0 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_1_0 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_1_1 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_1_1 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_1_2 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_1_2 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_1_3 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_1_3 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_1_4 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_1_4 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_1_5 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_1_5 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_1_6 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_1_6 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_1_7 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_1_7 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_1_8 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_1_8 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_1_9 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_1_9 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_1_10 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_1_10 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_1_11 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_1_11 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_1_12 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_1_12 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_1_13 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_1_13 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_1_14 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_1_14 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_1_15 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_1_15 {Type I LastRead 0 FirstWrite -1}
		inside_1 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_2_0 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_2_0 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_2_1 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_2_1 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_2_2 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_2_2 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_2_3 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_2_3 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_2_4 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_2_4 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_2_5 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_2_5 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_2_6 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_2_6 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_2_7 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_2_7 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_2_8 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_2_8 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_2_9 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_2_9 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_2_10 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_2_10 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_2_11 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_2_11 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_2_12 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_2_12 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_2_13 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_2_13 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_2_14 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_2_14 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_2_15 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_2_15 {Type I LastRead 0 FirstWrite -1}
		inside_2 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_3_0 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_3_0 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_3_1 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_3_1 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_3_2 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_3_2 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_3_3 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_3_3 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_3_4 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_3_4 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_3_5 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_3_5 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_3_6 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_3_6 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_3_7 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_3_7 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_3_8 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_3_8 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_3_9 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_3_9 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_3_10 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_3_10 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_3_11 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_3_11 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_3_12 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_3_12 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_3_13 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_3_13 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_3_14 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_3_14 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_3_15 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_3_15 {Type I LastRead 0 FirstWrite -1}
		inside_3 {Type I LastRead 0 FirstWrite -1}
		dH_3_out {Type O LastRead -1 FirstWrite 64}
		dH_2_out {Type O LastRead -1 FirstWrite 64}
		dH_1_out {Type O LastRead -1 FirstWrite 64}
		dH_0_out {Type O LastRead -1 FirstWrite 64}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "178", "Max" : "178"}
	, {"Name" : "Interval", "Min" : "178", "Max" : "178"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	dH_3_1_reload { ap_none {  { dH_3_1_reload in_data 0 32 } } }
	dH_2_1_reload { ap_none {  { dH_2_1_reload in_data 0 32 } } }
	dH_1_1_reload { ap_none {  { dH_1_1_reload in_data 0 32 } } }
	dH_0_1_reload { ap_none {  { dH_0_1_reload in_data 0 32 } } }
	trottersLocal_V_0_0 { ap_memory {  { trottersLocal_V_0_0_address0 mem_address 1 4 }  { trottersLocal_V_0_0_ce0 mem_ce 1 1 }  { trottersLocal_V_0_0_q0 mem_dout 0 16 } } }
	JcoupLocal_0_0 { ap_memory {  { JcoupLocal_0_0_address0 mem_address 1 4 }  { JcoupLocal_0_0_ce0 mem_ce 1 1 }  { JcoupLocal_0_0_q0 mem_dout 0 512 } } }
	trottersLocal_V_0_1 { ap_memory {  { trottersLocal_V_0_1_address0 mem_address 1 4 }  { trottersLocal_V_0_1_ce0 mem_ce 1 1 }  { trottersLocal_V_0_1_q0 mem_dout 0 16 } } }
	JcoupLocal_0_1 { ap_memory {  { JcoupLocal_0_1_address0 mem_address 1 4 }  { JcoupLocal_0_1_ce0 mem_ce 1 1 }  { JcoupLocal_0_1_q0 mem_dout 0 512 } } }
	trottersLocal_V_0_2 { ap_memory {  { trottersLocal_V_0_2_address0 mem_address 1 4 }  { trottersLocal_V_0_2_ce0 mem_ce 1 1 }  { trottersLocal_V_0_2_q0 mem_dout 0 16 } } }
	JcoupLocal_0_2 { ap_memory {  { JcoupLocal_0_2_address0 mem_address 1 4 }  { JcoupLocal_0_2_ce0 mem_ce 1 1 }  { JcoupLocal_0_2_q0 mem_dout 0 512 } } }
	trottersLocal_V_0_3 { ap_memory {  { trottersLocal_V_0_3_address0 mem_address 1 4 }  { trottersLocal_V_0_3_ce0 mem_ce 1 1 }  { trottersLocal_V_0_3_q0 mem_dout 0 16 } } }
	JcoupLocal_0_3 { ap_memory {  { JcoupLocal_0_3_address0 mem_address 1 4 }  { JcoupLocal_0_3_ce0 mem_ce 1 1 }  { JcoupLocal_0_3_q0 mem_dout 0 512 } } }
	trottersLocal_V_0_4 { ap_memory {  { trottersLocal_V_0_4_address0 mem_address 1 4 }  { trottersLocal_V_0_4_ce0 mem_ce 1 1 }  { trottersLocal_V_0_4_q0 mem_dout 0 16 } } }
	JcoupLocal_0_4 { ap_memory {  { JcoupLocal_0_4_address0 mem_address 1 4 }  { JcoupLocal_0_4_ce0 mem_ce 1 1 }  { JcoupLocal_0_4_q0 mem_dout 0 512 } } }
	trottersLocal_V_0_5 { ap_memory {  { trottersLocal_V_0_5_address0 mem_address 1 4 }  { trottersLocal_V_0_5_ce0 mem_ce 1 1 }  { trottersLocal_V_0_5_q0 mem_dout 0 16 } } }
	JcoupLocal_0_5 { ap_memory {  { JcoupLocal_0_5_address0 mem_address 1 4 }  { JcoupLocal_0_5_ce0 mem_ce 1 1 }  { JcoupLocal_0_5_q0 mem_dout 0 512 } } }
	trottersLocal_V_0_6 { ap_memory {  { trottersLocal_V_0_6_address0 mem_address 1 4 }  { trottersLocal_V_0_6_ce0 mem_ce 1 1 }  { trottersLocal_V_0_6_q0 mem_dout 0 16 } } }
	JcoupLocal_0_6 { ap_memory {  { JcoupLocal_0_6_address0 mem_address 1 4 }  { JcoupLocal_0_6_ce0 mem_ce 1 1 }  { JcoupLocal_0_6_q0 mem_dout 0 512 } } }
	trottersLocal_V_0_7 { ap_memory {  { trottersLocal_V_0_7_address0 mem_address 1 4 }  { trottersLocal_V_0_7_ce0 mem_ce 1 1 }  { trottersLocal_V_0_7_q0 mem_dout 0 16 } } }
	JcoupLocal_0_7 { ap_memory {  { JcoupLocal_0_7_address0 mem_address 1 4 }  { JcoupLocal_0_7_ce0 mem_ce 1 1 }  { JcoupLocal_0_7_q0 mem_dout 0 512 } } }
	trottersLocal_V_0_8 { ap_memory {  { trottersLocal_V_0_8_address0 mem_address 1 4 }  { trottersLocal_V_0_8_ce0 mem_ce 1 1 }  { trottersLocal_V_0_8_q0 mem_dout 0 16 } } }
	JcoupLocal_0_8 { ap_memory {  { JcoupLocal_0_8_address0 mem_address 1 4 }  { JcoupLocal_0_8_ce0 mem_ce 1 1 }  { JcoupLocal_0_8_q0 mem_dout 0 512 } } }
	trottersLocal_V_0_9 { ap_memory {  { trottersLocal_V_0_9_address0 mem_address 1 4 }  { trottersLocal_V_0_9_ce0 mem_ce 1 1 }  { trottersLocal_V_0_9_q0 mem_dout 0 16 } } }
	JcoupLocal_0_9 { ap_memory {  { JcoupLocal_0_9_address0 mem_address 1 4 }  { JcoupLocal_0_9_ce0 mem_ce 1 1 }  { JcoupLocal_0_9_q0 mem_dout 0 512 } } }
	trottersLocal_V_0_10 { ap_memory {  { trottersLocal_V_0_10_address0 mem_address 1 4 }  { trottersLocal_V_0_10_ce0 mem_ce 1 1 }  { trottersLocal_V_0_10_q0 mem_dout 0 16 } } }
	JcoupLocal_0_10 { ap_memory {  { JcoupLocal_0_10_address0 mem_address 1 4 }  { JcoupLocal_0_10_ce0 mem_ce 1 1 }  { JcoupLocal_0_10_q0 mem_dout 0 512 } } }
	trottersLocal_V_0_11 { ap_memory {  { trottersLocal_V_0_11_address0 mem_address 1 4 }  { trottersLocal_V_0_11_ce0 mem_ce 1 1 }  { trottersLocal_V_0_11_q0 mem_dout 0 16 } } }
	JcoupLocal_0_11 { ap_memory {  { JcoupLocal_0_11_address0 mem_address 1 4 }  { JcoupLocal_0_11_ce0 mem_ce 1 1 }  { JcoupLocal_0_11_q0 mem_dout 0 512 } } }
	trottersLocal_V_0_12 { ap_memory {  { trottersLocal_V_0_12_address0 mem_address 1 4 }  { trottersLocal_V_0_12_ce0 mem_ce 1 1 }  { trottersLocal_V_0_12_q0 mem_dout 0 16 } } }
	JcoupLocal_0_12 { ap_memory {  { JcoupLocal_0_12_address0 mem_address 1 4 }  { JcoupLocal_0_12_ce0 mem_ce 1 1 }  { JcoupLocal_0_12_q0 mem_dout 0 512 } } }
	trottersLocal_V_0_13 { ap_memory {  { trottersLocal_V_0_13_address0 mem_address 1 4 }  { trottersLocal_V_0_13_ce0 mem_ce 1 1 }  { trottersLocal_V_0_13_q0 mem_dout 0 16 } } }
	JcoupLocal_0_13 { ap_memory {  { JcoupLocal_0_13_address0 mem_address 1 4 }  { JcoupLocal_0_13_ce0 mem_ce 1 1 }  { JcoupLocal_0_13_q0 mem_dout 0 512 } } }
	trottersLocal_V_0_14 { ap_memory {  { trottersLocal_V_0_14_address0 mem_address 1 4 }  { trottersLocal_V_0_14_ce0 mem_ce 1 1 }  { trottersLocal_V_0_14_q0 mem_dout 0 16 } } }
	JcoupLocal_0_14 { ap_memory {  { JcoupLocal_0_14_address0 mem_address 1 4 }  { JcoupLocal_0_14_ce0 mem_ce 1 1 }  { JcoupLocal_0_14_q0 mem_dout 0 512 } } }
	trottersLocal_V_0_15 { ap_memory {  { trottersLocal_V_0_15_address0 mem_address 1 4 }  { trottersLocal_V_0_15_ce0 mem_ce 1 1 }  { trottersLocal_V_0_15_q0 mem_dout 0 16 } } }
	JcoupLocal_0_15 { ap_memory {  { JcoupLocal_0_15_address0 mem_address 1 4 }  { JcoupLocal_0_15_ce0 mem_ce 1 1 }  { JcoupLocal_0_15_q0 mem_dout 0 512 } } }
	inside { ap_none {  { inside in_data 0 1 } } }
	trottersLocal_V_1_0 { ap_memory {  { trottersLocal_V_1_0_address0 mem_address 1 4 }  { trottersLocal_V_1_0_ce0 mem_ce 1 1 }  { trottersLocal_V_1_0_q0 mem_dout 0 16 } } }
	JcoupLocal_1_0 { ap_memory {  { JcoupLocal_1_0_address0 mem_address 1 4 }  { JcoupLocal_1_0_ce0 mem_ce 1 1 }  { JcoupLocal_1_0_q0 mem_dout 0 512 } } }
	trottersLocal_V_1_1 { ap_memory {  { trottersLocal_V_1_1_address0 mem_address 1 4 }  { trottersLocal_V_1_1_ce0 mem_ce 1 1 }  { trottersLocal_V_1_1_q0 mem_dout 0 16 } } }
	JcoupLocal_1_1 { ap_memory {  { JcoupLocal_1_1_address0 mem_address 1 4 }  { JcoupLocal_1_1_ce0 mem_ce 1 1 }  { JcoupLocal_1_1_q0 mem_dout 0 512 } } }
	trottersLocal_V_1_2 { ap_memory {  { trottersLocal_V_1_2_address0 mem_address 1 4 }  { trottersLocal_V_1_2_ce0 mem_ce 1 1 }  { trottersLocal_V_1_2_q0 mem_dout 0 16 } } }
	JcoupLocal_1_2 { ap_memory {  { JcoupLocal_1_2_address0 mem_address 1 4 }  { JcoupLocal_1_2_ce0 mem_ce 1 1 }  { JcoupLocal_1_2_q0 mem_dout 0 512 } } }
	trottersLocal_V_1_3 { ap_memory {  { trottersLocal_V_1_3_address0 mem_address 1 4 }  { trottersLocal_V_1_3_ce0 mem_ce 1 1 }  { trottersLocal_V_1_3_q0 mem_dout 0 16 } } }
	JcoupLocal_1_3 { ap_memory {  { JcoupLocal_1_3_address0 mem_address 1 4 }  { JcoupLocal_1_3_ce0 mem_ce 1 1 }  { JcoupLocal_1_3_q0 mem_dout 0 512 } } }
	trottersLocal_V_1_4 { ap_memory {  { trottersLocal_V_1_4_address0 mem_address 1 4 }  { trottersLocal_V_1_4_ce0 mem_ce 1 1 }  { trottersLocal_V_1_4_q0 mem_dout 0 16 } } }
	JcoupLocal_1_4 { ap_memory {  { JcoupLocal_1_4_address0 mem_address 1 4 }  { JcoupLocal_1_4_ce0 mem_ce 1 1 }  { JcoupLocal_1_4_q0 mem_dout 0 512 } } }
	trottersLocal_V_1_5 { ap_memory {  { trottersLocal_V_1_5_address0 mem_address 1 4 }  { trottersLocal_V_1_5_ce0 mem_ce 1 1 }  { trottersLocal_V_1_5_q0 mem_dout 0 16 } } }
	JcoupLocal_1_5 { ap_memory {  { JcoupLocal_1_5_address0 mem_address 1 4 }  { JcoupLocal_1_5_ce0 mem_ce 1 1 }  { JcoupLocal_1_5_q0 mem_dout 0 512 } } }
	trottersLocal_V_1_6 { ap_memory {  { trottersLocal_V_1_6_address0 mem_address 1 4 }  { trottersLocal_V_1_6_ce0 mem_ce 1 1 }  { trottersLocal_V_1_6_q0 mem_dout 0 16 } } }
	JcoupLocal_1_6 { ap_memory {  { JcoupLocal_1_6_address0 mem_address 1 4 }  { JcoupLocal_1_6_ce0 mem_ce 1 1 }  { JcoupLocal_1_6_q0 mem_dout 0 512 } } }
	trottersLocal_V_1_7 { ap_memory {  { trottersLocal_V_1_7_address0 mem_address 1 4 }  { trottersLocal_V_1_7_ce0 mem_ce 1 1 }  { trottersLocal_V_1_7_q0 mem_dout 0 16 } } }
	JcoupLocal_1_7 { ap_memory {  { JcoupLocal_1_7_address0 mem_address 1 4 }  { JcoupLocal_1_7_ce0 mem_ce 1 1 }  { JcoupLocal_1_7_q0 mem_dout 0 512 } } }
	trottersLocal_V_1_8 { ap_memory {  { trottersLocal_V_1_8_address0 mem_address 1 4 }  { trottersLocal_V_1_8_ce0 mem_ce 1 1 }  { trottersLocal_V_1_8_q0 mem_dout 0 16 } } }
	JcoupLocal_1_8 { ap_memory {  { JcoupLocal_1_8_address0 mem_address 1 4 }  { JcoupLocal_1_8_ce0 mem_ce 1 1 }  { JcoupLocal_1_8_q0 mem_dout 0 512 } } }
	trottersLocal_V_1_9 { ap_memory {  { trottersLocal_V_1_9_address0 mem_address 1 4 }  { trottersLocal_V_1_9_ce0 mem_ce 1 1 }  { trottersLocal_V_1_9_q0 mem_dout 0 16 } } }
	JcoupLocal_1_9 { ap_memory {  { JcoupLocal_1_9_address0 mem_address 1 4 }  { JcoupLocal_1_9_ce0 mem_ce 1 1 }  { JcoupLocal_1_9_q0 mem_dout 0 512 } } }
	trottersLocal_V_1_10 { ap_memory {  { trottersLocal_V_1_10_address0 mem_address 1 4 }  { trottersLocal_V_1_10_ce0 mem_ce 1 1 }  { trottersLocal_V_1_10_q0 mem_dout 0 16 } } }
	JcoupLocal_1_10 { ap_memory {  { JcoupLocal_1_10_address0 mem_address 1 4 }  { JcoupLocal_1_10_ce0 mem_ce 1 1 }  { JcoupLocal_1_10_q0 mem_dout 0 512 } } }
	trottersLocal_V_1_11 { ap_memory {  { trottersLocal_V_1_11_address0 mem_address 1 4 }  { trottersLocal_V_1_11_ce0 mem_ce 1 1 }  { trottersLocal_V_1_11_q0 mem_dout 0 16 } } }
	JcoupLocal_1_11 { ap_memory {  { JcoupLocal_1_11_address0 mem_address 1 4 }  { JcoupLocal_1_11_ce0 mem_ce 1 1 }  { JcoupLocal_1_11_q0 mem_dout 0 512 } } }
	trottersLocal_V_1_12 { ap_memory {  { trottersLocal_V_1_12_address0 mem_address 1 4 }  { trottersLocal_V_1_12_ce0 mem_ce 1 1 }  { trottersLocal_V_1_12_q0 mem_dout 0 16 } } }
	JcoupLocal_1_12 { ap_memory {  { JcoupLocal_1_12_address0 mem_address 1 4 }  { JcoupLocal_1_12_ce0 mem_ce 1 1 }  { JcoupLocal_1_12_q0 mem_dout 0 512 } } }
	trottersLocal_V_1_13 { ap_memory {  { trottersLocal_V_1_13_address0 mem_address 1 4 }  { trottersLocal_V_1_13_ce0 mem_ce 1 1 }  { trottersLocal_V_1_13_q0 mem_dout 0 16 } } }
	JcoupLocal_1_13 { ap_memory {  { JcoupLocal_1_13_address0 mem_address 1 4 }  { JcoupLocal_1_13_ce0 mem_ce 1 1 }  { JcoupLocal_1_13_q0 mem_dout 0 512 } } }
	trottersLocal_V_1_14 { ap_memory {  { trottersLocal_V_1_14_address0 mem_address 1 4 }  { trottersLocal_V_1_14_ce0 mem_ce 1 1 }  { trottersLocal_V_1_14_q0 mem_dout 0 16 } } }
	JcoupLocal_1_14 { ap_memory {  { JcoupLocal_1_14_address0 mem_address 1 4 }  { JcoupLocal_1_14_ce0 mem_ce 1 1 }  { JcoupLocal_1_14_q0 mem_dout 0 512 } } }
	trottersLocal_V_1_15 { ap_memory {  { trottersLocal_V_1_15_address0 mem_address 1 4 }  { trottersLocal_V_1_15_ce0 mem_ce 1 1 }  { trottersLocal_V_1_15_q0 mem_dout 0 16 } } }
	JcoupLocal_1_15 { ap_memory {  { JcoupLocal_1_15_address0 mem_address 1 4 }  { JcoupLocal_1_15_ce0 mem_ce 1 1 }  { JcoupLocal_1_15_q0 mem_dout 0 512 } } }
	inside_1 { ap_none {  { inside_1 in_data 0 1 } } }
	trottersLocal_V_2_0 { ap_memory {  { trottersLocal_V_2_0_address0 mem_address 1 4 }  { trottersLocal_V_2_0_ce0 mem_ce 1 1 }  { trottersLocal_V_2_0_q0 mem_dout 0 16 } } }
	JcoupLocal_2_0 { ap_memory {  { JcoupLocal_2_0_address0 mem_address 1 4 }  { JcoupLocal_2_0_ce0 mem_ce 1 1 }  { JcoupLocal_2_0_q0 mem_dout 0 512 } } }
	trottersLocal_V_2_1 { ap_memory {  { trottersLocal_V_2_1_address0 mem_address 1 4 }  { trottersLocal_V_2_1_ce0 mem_ce 1 1 }  { trottersLocal_V_2_1_q0 mem_dout 0 16 } } }
	JcoupLocal_2_1 { ap_memory {  { JcoupLocal_2_1_address0 mem_address 1 4 }  { JcoupLocal_2_1_ce0 mem_ce 1 1 }  { JcoupLocal_2_1_q0 mem_dout 0 512 } } }
	trottersLocal_V_2_2 { ap_memory {  { trottersLocal_V_2_2_address0 mem_address 1 4 }  { trottersLocal_V_2_2_ce0 mem_ce 1 1 }  { trottersLocal_V_2_2_q0 mem_dout 0 16 } } }
	JcoupLocal_2_2 { ap_memory {  { JcoupLocal_2_2_address0 mem_address 1 4 }  { JcoupLocal_2_2_ce0 mem_ce 1 1 }  { JcoupLocal_2_2_q0 mem_dout 0 512 } } }
	trottersLocal_V_2_3 { ap_memory {  { trottersLocal_V_2_3_address0 mem_address 1 4 }  { trottersLocal_V_2_3_ce0 mem_ce 1 1 }  { trottersLocal_V_2_3_q0 mem_dout 0 16 } } }
	JcoupLocal_2_3 { ap_memory {  { JcoupLocal_2_3_address0 mem_address 1 4 }  { JcoupLocal_2_3_ce0 mem_ce 1 1 }  { JcoupLocal_2_3_q0 mem_dout 0 512 } } }
	trottersLocal_V_2_4 { ap_memory {  { trottersLocal_V_2_4_address0 mem_address 1 4 }  { trottersLocal_V_2_4_ce0 mem_ce 1 1 }  { trottersLocal_V_2_4_q0 mem_dout 0 16 } } }
	JcoupLocal_2_4 { ap_memory {  { JcoupLocal_2_4_address0 mem_address 1 4 }  { JcoupLocal_2_4_ce0 mem_ce 1 1 }  { JcoupLocal_2_4_q0 mem_dout 0 512 } } }
	trottersLocal_V_2_5 { ap_memory {  { trottersLocal_V_2_5_address0 mem_address 1 4 }  { trottersLocal_V_2_5_ce0 mem_ce 1 1 }  { trottersLocal_V_2_5_q0 mem_dout 0 16 } } }
	JcoupLocal_2_5 { ap_memory {  { JcoupLocal_2_5_address0 mem_address 1 4 }  { JcoupLocal_2_5_ce0 mem_ce 1 1 }  { JcoupLocal_2_5_q0 mem_dout 0 512 } } }
	trottersLocal_V_2_6 { ap_memory {  { trottersLocal_V_2_6_address0 mem_address 1 4 }  { trottersLocal_V_2_6_ce0 mem_ce 1 1 }  { trottersLocal_V_2_6_q0 mem_dout 0 16 } } }
	JcoupLocal_2_6 { ap_memory {  { JcoupLocal_2_6_address0 mem_address 1 4 }  { JcoupLocal_2_6_ce0 mem_ce 1 1 }  { JcoupLocal_2_6_q0 mem_dout 0 512 } } }
	trottersLocal_V_2_7 { ap_memory {  { trottersLocal_V_2_7_address0 mem_address 1 4 }  { trottersLocal_V_2_7_ce0 mem_ce 1 1 }  { trottersLocal_V_2_7_q0 mem_dout 0 16 } } }
	JcoupLocal_2_7 { ap_memory {  { JcoupLocal_2_7_address0 mem_address 1 4 }  { JcoupLocal_2_7_ce0 mem_ce 1 1 }  { JcoupLocal_2_7_q0 mem_dout 0 512 } } }
	trottersLocal_V_2_8 { ap_memory {  { trottersLocal_V_2_8_address0 mem_address 1 4 }  { trottersLocal_V_2_8_ce0 mem_ce 1 1 }  { trottersLocal_V_2_8_q0 mem_dout 0 16 } } }
	JcoupLocal_2_8 { ap_memory {  { JcoupLocal_2_8_address0 mem_address 1 4 }  { JcoupLocal_2_8_ce0 mem_ce 1 1 }  { JcoupLocal_2_8_q0 mem_dout 0 512 } } }
	trottersLocal_V_2_9 { ap_memory {  { trottersLocal_V_2_9_address0 mem_address 1 4 }  { trottersLocal_V_2_9_ce0 mem_ce 1 1 }  { trottersLocal_V_2_9_q0 mem_dout 0 16 } } }
	JcoupLocal_2_9 { ap_memory {  { JcoupLocal_2_9_address0 mem_address 1 4 }  { JcoupLocal_2_9_ce0 mem_ce 1 1 }  { JcoupLocal_2_9_q0 mem_dout 0 512 } } }
	trottersLocal_V_2_10 { ap_memory {  { trottersLocal_V_2_10_address0 mem_address 1 4 }  { trottersLocal_V_2_10_ce0 mem_ce 1 1 }  { trottersLocal_V_2_10_q0 mem_dout 0 16 } } }
	JcoupLocal_2_10 { ap_memory {  { JcoupLocal_2_10_address0 mem_address 1 4 }  { JcoupLocal_2_10_ce0 mem_ce 1 1 }  { JcoupLocal_2_10_q0 mem_dout 0 512 } } }
	trottersLocal_V_2_11 { ap_memory {  { trottersLocal_V_2_11_address0 mem_address 1 4 }  { trottersLocal_V_2_11_ce0 mem_ce 1 1 }  { trottersLocal_V_2_11_q0 mem_dout 0 16 } } }
	JcoupLocal_2_11 { ap_memory {  { JcoupLocal_2_11_address0 mem_address 1 4 }  { JcoupLocal_2_11_ce0 mem_ce 1 1 }  { JcoupLocal_2_11_q0 mem_dout 0 512 } } }
	trottersLocal_V_2_12 { ap_memory {  { trottersLocal_V_2_12_address0 mem_address 1 4 }  { trottersLocal_V_2_12_ce0 mem_ce 1 1 }  { trottersLocal_V_2_12_q0 mem_dout 0 16 } } }
	JcoupLocal_2_12 { ap_memory {  { JcoupLocal_2_12_address0 mem_address 1 4 }  { JcoupLocal_2_12_ce0 mem_ce 1 1 }  { JcoupLocal_2_12_q0 mem_dout 0 512 } } }
	trottersLocal_V_2_13 { ap_memory {  { trottersLocal_V_2_13_address0 mem_address 1 4 }  { trottersLocal_V_2_13_ce0 mem_ce 1 1 }  { trottersLocal_V_2_13_q0 mem_dout 0 16 } } }
	JcoupLocal_2_13 { ap_memory {  { JcoupLocal_2_13_address0 mem_address 1 4 }  { JcoupLocal_2_13_ce0 mem_ce 1 1 }  { JcoupLocal_2_13_q0 mem_dout 0 512 } } }
	trottersLocal_V_2_14 { ap_memory {  { trottersLocal_V_2_14_address0 mem_address 1 4 }  { trottersLocal_V_2_14_ce0 mem_ce 1 1 }  { trottersLocal_V_2_14_q0 mem_dout 0 16 } } }
	JcoupLocal_2_14 { ap_memory {  { JcoupLocal_2_14_address0 mem_address 1 4 }  { JcoupLocal_2_14_ce0 mem_ce 1 1 }  { JcoupLocal_2_14_q0 mem_dout 0 512 } } }
	trottersLocal_V_2_15 { ap_memory {  { trottersLocal_V_2_15_address0 mem_address 1 4 }  { trottersLocal_V_2_15_ce0 mem_ce 1 1 }  { trottersLocal_V_2_15_q0 mem_dout 0 16 } } }
	JcoupLocal_2_15 { ap_memory {  { JcoupLocal_2_15_address0 mem_address 1 4 }  { JcoupLocal_2_15_ce0 mem_ce 1 1 }  { JcoupLocal_2_15_q0 mem_dout 0 512 } } }
	inside_2 { ap_none {  { inside_2 in_data 0 1 } } }
	trottersLocal_V_3_0 { ap_memory {  { trottersLocal_V_3_0_address0 mem_address 1 4 }  { trottersLocal_V_3_0_ce0 mem_ce 1 1 }  { trottersLocal_V_3_0_q0 mem_dout 0 16 } } }
	JcoupLocal_3_0 { ap_memory {  { JcoupLocal_3_0_address0 mem_address 1 4 }  { JcoupLocal_3_0_ce0 mem_ce 1 1 }  { JcoupLocal_3_0_q0 mem_dout 0 512 } } }
	trottersLocal_V_3_1 { ap_memory {  { trottersLocal_V_3_1_address0 mem_address 1 4 }  { trottersLocal_V_3_1_ce0 mem_ce 1 1 }  { trottersLocal_V_3_1_q0 mem_dout 0 16 } } }
	JcoupLocal_3_1 { ap_memory {  { JcoupLocal_3_1_address0 mem_address 1 4 }  { JcoupLocal_3_1_ce0 mem_ce 1 1 }  { JcoupLocal_3_1_q0 mem_dout 0 512 } } }
	trottersLocal_V_3_2 { ap_memory {  { trottersLocal_V_3_2_address0 mem_address 1 4 }  { trottersLocal_V_3_2_ce0 mem_ce 1 1 }  { trottersLocal_V_3_2_q0 mem_dout 0 16 } } }
	JcoupLocal_3_2 { ap_memory {  { JcoupLocal_3_2_address0 mem_address 1 4 }  { JcoupLocal_3_2_ce0 mem_ce 1 1 }  { JcoupLocal_3_2_q0 mem_dout 0 512 } } }
	trottersLocal_V_3_3 { ap_memory {  { trottersLocal_V_3_3_address0 mem_address 1 4 }  { trottersLocal_V_3_3_ce0 mem_ce 1 1 }  { trottersLocal_V_3_3_q0 mem_dout 0 16 } } }
	JcoupLocal_3_3 { ap_memory {  { JcoupLocal_3_3_address0 mem_address 1 4 }  { JcoupLocal_3_3_ce0 mem_ce 1 1 }  { JcoupLocal_3_3_q0 mem_dout 0 512 } } }
	trottersLocal_V_3_4 { ap_memory {  { trottersLocal_V_3_4_address0 mem_address 1 4 }  { trottersLocal_V_3_4_ce0 mem_ce 1 1 }  { trottersLocal_V_3_4_q0 mem_dout 0 16 } } }
	JcoupLocal_3_4 { ap_memory {  { JcoupLocal_3_4_address0 mem_address 1 4 }  { JcoupLocal_3_4_ce0 mem_ce 1 1 }  { JcoupLocal_3_4_q0 mem_dout 0 512 } } }
	trottersLocal_V_3_5 { ap_memory {  { trottersLocal_V_3_5_address0 mem_address 1 4 }  { trottersLocal_V_3_5_ce0 mem_ce 1 1 }  { trottersLocal_V_3_5_q0 mem_dout 0 16 } } }
	JcoupLocal_3_5 { ap_memory {  { JcoupLocal_3_5_address0 mem_address 1 4 }  { JcoupLocal_3_5_ce0 mem_ce 1 1 }  { JcoupLocal_3_5_q0 mem_dout 0 512 } } }
	trottersLocal_V_3_6 { ap_memory {  { trottersLocal_V_3_6_address0 mem_address 1 4 }  { trottersLocal_V_3_6_ce0 mem_ce 1 1 }  { trottersLocal_V_3_6_q0 mem_dout 0 16 } } }
	JcoupLocal_3_6 { ap_memory {  { JcoupLocal_3_6_address0 mem_address 1 4 }  { JcoupLocal_3_6_ce0 mem_ce 1 1 }  { JcoupLocal_3_6_q0 mem_dout 0 512 } } }
	trottersLocal_V_3_7 { ap_memory {  { trottersLocal_V_3_7_address0 mem_address 1 4 }  { trottersLocal_V_3_7_ce0 mem_ce 1 1 }  { trottersLocal_V_3_7_q0 mem_dout 0 16 } } }
	JcoupLocal_3_7 { ap_memory {  { JcoupLocal_3_7_address0 mem_address 1 4 }  { JcoupLocal_3_7_ce0 mem_ce 1 1 }  { JcoupLocal_3_7_q0 mem_dout 0 512 } } }
	trottersLocal_V_3_8 { ap_memory {  { trottersLocal_V_3_8_address0 mem_address 1 4 }  { trottersLocal_V_3_8_ce0 mem_ce 1 1 }  { trottersLocal_V_3_8_q0 mem_dout 0 16 } } }
	JcoupLocal_3_8 { ap_memory {  { JcoupLocal_3_8_address0 mem_address 1 4 }  { JcoupLocal_3_8_ce0 mem_ce 1 1 }  { JcoupLocal_3_8_q0 mem_dout 0 512 } } }
	trottersLocal_V_3_9 { ap_memory {  { trottersLocal_V_3_9_address0 mem_address 1 4 }  { trottersLocal_V_3_9_ce0 mem_ce 1 1 }  { trottersLocal_V_3_9_q0 mem_dout 0 16 } } }
	JcoupLocal_3_9 { ap_memory {  { JcoupLocal_3_9_address0 mem_address 1 4 }  { JcoupLocal_3_9_ce0 mem_ce 1 1 }  { JcoupLocal_3_9_q0 mem_dout 0 512 } } }
	trottersLocal_V_3_10 { ap_memory {  { trottersLocal_V_3_10_address0 mem_address 1 4 }  { trottersLocal_V_3_10_ce0 mem_ce 1 1 }  { trottersLocal_V_3_10_q0 mem_dout 0 16 } } }
	JcoupLocal_3_10 { ap_memory {  { JcoupLocal_3_10_address0 mem_address 1 4 }  { JcoupLocal_3_10_ce0 mem_ce 1 1 }  { JcoupLocal_3_10_q0 mem_dout 0 512 } } }
	trottersLocal_V_3_11 { ap_memory {  { trottersLocal_V_3_11_address0 mem_address 1 4 }  { trottersLocal_V_3_11_ce0 mem_ce 1 1 }  { trottersLocal_V_3_11_q0 mem_dout 0 16 } } }
	JcoupLocal_3_11 { ap_memory {  { JcoupLocal_3_11_address0 mem_address 1 4 }  { JcoupLocal_3_11_ce0 mem_ce 1 1 }  { JcoupLocal_3_11_q0 mem_dout 0 512 } } }
	trottersLocal_V_3_12 { ap_memory {  { trottersLocal_V_3_12_address0 mem_address 1 4 }  { trottersLocal_V_3_12_ce0 mem_ce 1 1 }  { trottersLocal_V_3_12_q0 mem_dout 0 16 } } }
	JcoupLocal_3_12 { ap_memory {  { JcoupLocal_3_12_address0 mem_address 1 4 }  { JcoupLocal_3_12_ce0 mem_ce 1 1 }  { JcoupLocal_3_12_q0 mem_dout 0 512 } } }
	trottersLocal_V_3_13 { ap_memory {  { trottersLocal_V_3_13_address0 mem_address 1 4 }  { trottersLocal_V_3_13_ce0 mem_ce 1 1 }  { trottersLocal_V_3_13_q0 mem_dout 0 16 } } }
	JcoupLocal_3_13 { ap_memory {  { JcoupLocal_3_13_address0 mem_address 1 4 }  { JcoupLocal_3_13_ce0 mem_ce 1 1 }  { JcoupLocal_3_13_q0 mem_dout 0 512 } } }
	trottersLocal_V_3_14 { ap_memory {  { trottersLocal_V_3_14_address0 mem_address 1 4 }  { trottersLocal_V_3_14_ce0 mem_ce 1 1 }  { trottersLocal_V_3_14_q0 mem_dout 0 16 } } }
	JcoupLocal_3_14 { ap_memory {  { JcoupLocal_3_14_address0 mem_address 1 4 }  { JcoupLocal_3_14_ce0 mem_ce 1 1 }  { JcoupLocal_3_14_q0 mem_dout 0 512 } } }
	trottersLocal_V_3_15 { ap_memory {  { trottersLocal_V_3_15_address0 mem_address 1 4 }  { trottersLocal_V_3_15_ce0 mem_ce 1 1 }  { trottersLocal_V_3_15_q0 mem_dout 0 16 } } }
	JcoupLocal_3_15 { ap_memory {  { JcoupLocal_3_15_address0 mem_address 1 4 }  { JcoupLocal_3_15_ce0 mem_ce 1 1 }  { JcoupLocal_3_15_q0 mem_dout 0 512 } } }
	inside_3 { ap_none {  { inside_3 in_data 0 1 } } }
	dH_3_out { ap_vld {  { dH_3_out out_data 1 32 }  { dH_3_out_ap_vld out_vld 1 1 } } }
	dH_2_out { ap_vld {  { dH_2_out out_data 1 32 }  { dH_2_out_ap_vld out_vld 1 1 } } }
	dH_1_out { ap_vld {  { dH_1_out out_data 1 32 }  { dH_1_out_ap_vld out_vld 1 1 } } }
	dH_0_out { ap_vld {  { dH_0_out out_data 1 32 }  { dH_0_out_ap_vld out_vld 1 1 } } }
}
