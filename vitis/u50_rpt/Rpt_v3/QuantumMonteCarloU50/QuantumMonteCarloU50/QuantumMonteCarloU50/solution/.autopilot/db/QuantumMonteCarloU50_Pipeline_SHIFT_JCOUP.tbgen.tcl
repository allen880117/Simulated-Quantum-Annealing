set moduleName QuantumMonteCarloU50_Pipeline_SHIFT_JCOUP
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
set C_modelName {QuantumMonteCarloU50_Pipeline_SHIFT_JCOUP}
set C_modelType { void 0 }
set C_modelArgList {
	{ JcoupLocal_2 int 512 regular {array 256 { 1 0 } 1 1 }  }
	{ JcoupLocal_3 int 512 regular {array 256 { 3 0 } 0 1 }  }
	{ JcoupLocal_1 int 512 regular {array 256 { 1 0 } 1 1 }  }
	{ JcoupLocal_0 int 512 regular {array 256 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "JcoupLocal_2", "interface" : "memory", "bitwidth" : 512, "direction" : "READWRITE"} , 
 	{ "Name" : "JcoupLocal_3", "interface" : "memory", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "JcoupLocal_1", "interface" : "memory", "bitwidth" : 512, "direction" : "READWRITE"} , 
 	{ "Name" : "JcoupLocal_0", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 27
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ JcoupLocal_2_address0 sc_out sc_lv 8 signal 0 } 
	{ JcoupLocal_2_ce0 sc_out sc_logic 1 signal 0 } 
	{ JcoupLocal_2_q0 sc_in sc_lv 512 signal 0 } 
	{ JcoupLocal_2_address1 sc_out sc_lv 8 signal 0 } 
	{ JcoupLocal_2_ce1 sc_out sc_logic 1 signal 0 } 
	{ JcoupLocal_2_we1 sc_out sc_logic 1 signal 0 } 
	{ JcoupLocal_2_d1 sc_out sc_lv 512 signal 0 } 
	{ JcoupLocal_3_address1 sc_out sc_lv 8 signal 1 } 
	{ JcoupLocal_3_ce1 sc_out sc_logic 1 signal 1 } 
	{ JcoupLocal_3_we1 sc_out sc_logic 1 signal 1 } 
	{ JcoupLocal_3_d1 sc_out sc_lv 512 signal 1 } 
	{ JcoupLocal_1_address0 sc_out sc_lv 8 signal 2 } 
	{ JcoupLocal_1_ce0 sc_out sc_logic 1 signal 2 } 
	{ JcoupLocal_1_q0 sc_in sc_lv 512 signal 2 } 
	{ JcoupLocal_1_address1 sc_out sc_lv 8 signal 2 } 
	{ JcoupLocal_1_ce1 sc_out sc_logic 1 signal 2 } 
	{ JcoupLocal_1_we1 sc_out sc_logic 1 signal 2 } 
	{ JcoupLocal_1_d1 sc_out sc_lv 512 signal 2 } 
	{ JcoupLocal_0_address0 sc_out sc_lv 8 signal 3 } 
	{ JcoupLocal_0_ce0 sc_out sc_logic 1 signal 3 } 
	{ JcoupLocal_0_q0 sc_in sc_lv 512 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "JcoupLocal_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "JcoupLocal_2", "role": "address0" }} , 
 	{ "name": "JcoupLocal_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_2", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_2", "role": "q0" }} , 
 	{ "name": "JcoupLocal_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "JcoupLocal_2", "role": "address1" }} , 
 	{ "name": "JcoupLocal_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_2", "role": "ce1" }} , 
 	{ "name": "JcoupLocal_2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_2", "role": "we1" }} , 
 	{ "name": "JcoupLocal_2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_2", "role": "d1" }} , 
 	{ "name": "JcoupLocal_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "JcoupLocal_3", "role": "address1" }} , 
 	{ "name": "JcoupLocal_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_3", "role": "ce1" }} , 
 	{ "name": "JcoupLocal_3_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_3", "role": "we1" }} , 
 	{ "name": "JcoupLocal_3_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_3", "role": "d1" }} , 
 	{ "name": "JcoupLocal_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "JcoupLocal_1", "role": "address0" }} , 
 	{ "name": "JcoupLocal_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_1", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_1", "role": "q0" }} , 
 	{ "name": "JcoupLocal_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "JcoupLocal_1", "role": "address1" }} , 
 	{ "name": "JcoupLocal_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_1", "role": "ce1" }} , 
 	{ "name": "JcoupLocal_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_1", "role": "we1" }} , 
 	{ "name": "JcoupLocal_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_1", "role": "d1" }} , 
 	{ "name": "JcoupLocal_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "JcoupLocal_0", "role": "address0" }} , 
 	{ "name": "JcoupLocal_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JcoupLocal_0", "role": "ce0" }} , 
 	{ "name": "JcoupLocal_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "JcoupLocal_0", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "QuantumMonteCarloU50_Pipeline_SHIFT_JCOUP",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "258", "EstimateLatencyMax" : "258",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "JcoupLocal_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "JcoupLocal_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "JcoupLocal_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "JcoupLocal_0", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "SHIFT_JCOUP", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	QuantumMonteCarloU50_Pipeline_SHIFT_JCOUP {
		JcoupLocal_2 {Type IO LastRead 0 FirstWrite 1}
		JcoupLocal_3 {Type O LastRead -1 FirstWrite 1}
		JcoupLocal_1 {Type IO LastRead 0 FirstWrite 1}
		JcoupLocal_0 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "258", "Max" : "258"}
	, {"Name" : "Interval", "Min" : "258", "Max" : "258"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	JcoupLocal_2 { ap_memory {  { JcoupLocal_2_address0 mem_address 1 8 }  { JcoupLocal_2_ce0 mem_ce 1 1 }  { JcoupLocal_2_q0 mem_dout 0 512 }  { JcoupLocal_2_address1 MemPortADDR2 1 8 }  { JcoupLocal_2_ce1 MemPortCE2 1 1 }  { JcoupLocal_2_we1 MemPortWE2 1 1 }  { JcoupLocal_2_d1 MemPortDIN2 1 512 } } }
	JcoupLocal_3 { ap_memory {  { JcoupLocal_3_address1 MemPortADDR2 1 8 }  { JcoupLocal_3_ce1 MemPortCE2 1 1 }  { JcoupLocal_3_we1 MemPortWE2 1 1 }  { JcoupLocal_3_d1 MemPortDIN2 1 512 } } }
	JcoupLocal_1 { ap_memory {  { JcoupLocal_1_address0 mem_address 1 8 }  { JcoupLocal_1_ce0 mem_ce 1 1 }  { JcoupLocal_1_q0 mem_dout 0 512 }  { JcoupLocal_1_address1 MemPortADDR2 1 8 }  { JcoupLocal_1_ce1 MemPortCE2 1 1 }  { JcoupLocal_1_we1 MemPortWE2 1 1 }  { JcoupLocal_1_d1 MemPortDIN2 1 512 } } }
	JcoupLocal_0 { ap_memory {  { JcoupLocal_0_address0 mem_address 1 8 }  { JcoupLocal_0_ce0 mem_ce 1 1 }  { JcoupLocal_0_q0 mem_dout 0 512 } } }
}
