set moduleName TrotterUnitFinal
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {TrotterUnitFinal}
set C_modelType { void 0 }
set C_modelArgList {
	{ t_offset int 2 regular  }
	{ stage int 13 regular  }
	{ iPack int 8 regular  }
	{ iSpin int 4 regular  }
	{ trotters int 16 regular {array 256 { 2 3 } 1 1 }  }
	{ dH float 32 regular  }
	{ upSpin int 1 regular  }
	{ downSpin int 1 regular  }
	{ Beta float 32 regular  }
	{ dHTunnel float 32 regular  }
	{ logRandNumber float 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "t_offset", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "stage", "interface" : "wire", "bitwidth" : 13, "direction" : "READONLY"} , 
 	{ "Name" : "iPack", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "iSpin", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "trotters", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "dH", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "upSpin", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "downSpin", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "Beta", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "dHTunnel", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "logRandNumber", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ t_offset sc_in sc_lv 2 signal 0 } 
	{ stage sc_in sc_lv 13 signal 1 } 
	{ iPack sc_in sc_lv 8 signal 2 } 
	{ iSpin sc_in sc_lv 4 signal 3 } 
	{ trotters_address0 sc_out sc_lv 8 signal 4 } 
	{ trotters_ce0 sc_out sc_logic 1 signal 4 } 
	{ trotters_we0 sc_out sc_logic 1 signal 4 } 
	{ trotters_d0 sc_out sc_lv 16 signal 4 } 
	{ trotters_q0 sc_in sc_lv 16 signal 4 } 
	{ dH sc_in sc_lv 32 signal 5 } 
	{ upSpin sc_in sc_lv 1 signal 6 } 
	{ downSpin sc_in sc_lv 1 signal 7 } 
	{ Beta sc_in sc_lv 32 signal 8 } 
	{ dHTunnel sc_in sc_lv 32 signal 9 } 
	{ logRandNumber sc_in sc_lv 32 signal 10 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "t_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "t_offset", "role": "default" }} , 
 	{ "name": "stage", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "stage", "role": "default" }} , 
 	{ "name": "iPack", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "iPack", "role": "default" }} , 
 	{ "name": "iSpin", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "iSpin", "role": "default" }} , 
 	{ "name": "trotters_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "trotters", "role": "address0" }} , 
 	{ "name": "trotters_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trotters", "role": "ce0" }} , 
 	{ "name": "trotters_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trotters", "role": "we0" }} , 
 	{ "name": "trotters_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trotters", "role": "d0" }} , 
 	{ "name": "trotters_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "trotters", "role": "q0" }} , 
 	{ "name": "dH", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dH", "role": "default" }} , 
 	{ "name": "upSpin", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "upSpin", "role": "default" }} , 
 	{ "name": "downSpin", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "downSpin", "role": "default" }} , 
 	{ "name": "Beta", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Beta", "role": "default" }} , 
 	{ "name": "dHTunnel", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dHTunnel", "role": "default" }} , 
 	{ "name": "logRandNumber", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "logRandNumber", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5"],
		"CDFG" : "TrotterUnitFinal",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "15",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "stage", "Type" : "None", "Direction" : "I"},
			{"Name" : "iPack", "Type" : "None", "Direction" : "I"},
			{"Name" : "iSpin", "Type" : "None", "Direction" : "I"},
			{"Name" : "trotters", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "dH", "Type" : "None", "Direction" : "I"},
			{"Name" : "upSpin", "Type" : "None", "Direction" : "I"},
			{"Name" : "downSpin", "Type" : "None", "Direction" : "I"},
			{"Name" : "Beta", "Type" : "None", "Direction" : "I"},
			{"Name" : "dHTunnel", "Type" : "None", "Direction" : "I"},
			{"Name" : "logRandNumber", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fsub_32ns_32ns_32_7_full_dsp_1_U83", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U84", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U85", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fdiv_32ns_32ns_32_12_no_dsp_1_U86", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U87", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	TrotterUnitFinal {
		t_offset {Type I LastRead 0 FirstWrite -1}
		stage {Type I LastRead 0 FirstWrite -1}
		iPack {Type I LastRead 0 FirstWrite -1}
		iSpin {Type I LastRead 0 FirstWrite -1}
		trotters {Type IO LastRead 11 FirstWrite 15}
		dH {Type I LastRead 0 FirstWrite -1}
		upSpin {Type I LastRead 0 FirstWrite -1}
		downSpin {Type I LastRead 0 FirstWrite -1}
		Beta {Type I LastRead 0 FirstWrite -1}
		dHTunnel {Type I LastRead 0 FirstWrite -1}
		logRandNumber {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "15"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "15"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	t_offset { ap_none {  { t_offset in_data 0 2 } } }
	stage { ap_none {  { stage in_data 0 13 } } }
	iPack { ap_none {  { iPack in_data 0 8 } } }
	iSpin { ap_none {  { iSpin in_data 0 4 } } }
	trotters { ap_memory {  { trotters_address0 mem_address 1 8 }  { trotters_ce0 mem_ce 1 1 }  { trotters_we0 mem_we 1 1 }  { trotters_d0 mem_din 1 16 }  { trotters_q0 mem_dout 0 16 } } }
	dH { ap_none {  { dH in_data 0 32 } } }
	upSpin { ap_none {  { upSpin in_data 0 1 } } }
	downSpin { ap_none {  { downSpin in_data 0 1 } } }
	Beta { ap_none {  { Beta in_data 0 32 } } }
	dHTunnel { ap_none {  { dHTunnel in_data 0 32 } } }
	logRandNumber { ap_none {  { logRandNumber in_data 0 32 } } }
}
