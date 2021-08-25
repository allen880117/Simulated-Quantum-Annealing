set moduleName QuantumMonteCarloU50
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_chain
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {QuantumMonteCarloU50}
set C_modelType { void 0 }
set C_modelArgList {
	{ gmem int 512 regular {axi_master 2}  }
	{ trotters int 64 regular {axi_slave 0}  }
	{ Jcoup int 64 regular {axi_slave 0}  }
	{ h int 64 regular {axi_slave 0}  }
	{ Jperp float 32 regular {axi_slave 0}  }
	{ Beta float 32 regular {axi_slave 0}  }
	{ logRand int 64 regular {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "gmem", "interface" : "axi_master", "bitwidth" : 512, "direction" : "READWRITE", "bitSlice":[ {"cElement": [{"cName": "trotters","offset": { "type": "dynamic","port_name": "trotters","bundle": "control"},"direction": "READWRITE"},{"cName": "Jcoup","offset": { "type": "dynamic","port_name": "Jcoup","bundle": "control"},"direction": "READONLY"},{"cName": "h","offset": { "type": "dynamic","port_name": "h","bundle": "control"},"direction": "READONLY"},{"cName": "logRand","offset": { "type": "dynamic","port_name": "logRand","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "trotters", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":27}} , 
 	{ "Name" : "Jcoup", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":28}, "offset_end" : {"in":39}} , 
 	{ "Name" : "h", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":40}, "offset_end" : {"in":51}} , 
 	{ "Name" : "Jperp", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":52}, "offset_end" : {"in":59}} , 
 	{ "Name" : "Beta", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":60}, "offset_end" : {"in":67}} , 
 	{ "Name" : "logRand", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":68}, "offset_end" : {"in":79}} ]}
# RTL Port declarations: 
set portNum 65
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ m_axi_gmem_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_AWLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_WDATA sc_out sc_lv 512 signal 0 } 
	{ m_axi_gmem_WSTRB sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_ARLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_RDATA sc_in sc_lv 512 signal 0 } 
	{ m_axi_gmem_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_BUSER sc_in sc_lv 1 signal 0 } 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 7 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 7 signal -1 } 
	{ s_axi_control_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"QuantumMonteCarloU50","role":"start","value":"0","valid_bit":"0"},{"name":"QuantumMonteCarloU50","role":"continue","value":"0","valid_bit":"4"},{"name":"QuantumMonteCarloU50","role":"auto_start","value":"0","valid_bit":"7"},{"name":"trotters","role":"data","value":"16"},{"name":"Jcoup","role":"data","value":"28"},{"name":"h","role":"data","value":"40"},{"name":"Jperp","role":"data","value":"52"},{"name":"Beta","role":"data","value":"60"},{"name":"logRand","role":"data","value":"68"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"QuantumMonteCarloU50","role":"start","value":"0","valid_bit":"0"},{"name":"QuantumMonteCarloU50","role":"done","value":"0","valid_bit":"1"},{"name":"QuantumMonteCarloU50","role":"idle","value":"0","valid_bit":"2"},{"name":"QuantumMonteCarloU50","role":"ready","value":"0","valid_bit":"3"},{"name":"QuantumMonteCarloU50","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_control_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARVALID" } },
	{ "name": "s_axi_control_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARREADY" } },
	{ "name": "s_axi_control_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RVALID" } },
	{ "name": "s_axi_control_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RREADY" } },
	{ "name": "s_axi_control_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "RDATA" } },
	{ "name": "s_axi_control_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "RRESP" } },
	{ "name": "s_axi_control_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BVALID" } },
	{ "name": "s_axi_control_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BREADY" } },
	{ "name": "s_axi_control_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "m_axi_gmem_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem", "role": "AWLEN" }} , 
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
 	{ "name": "m_axi_gmem_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem", "role": "ARLEN" }} , 
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
 	{ "name": "m_axi_gmem_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BUSER" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "11", "13", "94", "175", "256", "337", "343", "349", "355", "361", "363", "366", "367", "368"],
		"CDFG" : "QuantumMonteCarloU50",
		"Protocol" : "ap_ctrl_chain",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1596710", "EstimateLatencyMax" : "9175761",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "IO",
				"BlockSignal" : [
					{"Name" : "gmem_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "gmem_blk_n_B", "Type" : "RtlSignal"},
					{"Name" : "gmem_blk_n_R", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "363", "SubInstance" : "grp_QuantumMonteCarloU50_Pipeline_WRITE_TROTTERS_VITIS_LOOP_281_3_fu_667", "Port" : "gmem", "Inst_start_state" : "229", "Inst_end_state" : "230"},
					{"ID" : "9", "SubInstance" : "grp_QuantumMonteCarloU50_Pipeline_READ_TROTTERS_VITIS_LOOP_195_1_fu_516", "Port" : "gmem", "Inst_start_state" : "72", "Inst_end_state" : "73"},
					{"ID" : "11", "SubInstance" : "grp_QuantumMonteCarloU50_Pipeline_READ_NEW_JCOUP_fu_527", "Port" : "gmem", "Inst_start_state" : "223", "Inst_end_state" : "224"}]},
			{"Name" : "trotters", "Type" : "None", "Direction" : "I"},
			{"Name" : "Jcoup", "Type" : "None", "Direction" : "I"},
			{"Name" : "h", "Type" : "None", "Direction" : "I"},
			{"Name" : "Jperp", "Type" : "None", "Direction" : "I"},
			{"Name" : "Beta", "Type" : "None", "Direction" : "I"},
			{"Name" : "logRand", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "LOOP_STEP", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "298", "FirstState" : "ap_ST_fsm_state225", "LastState" : ["ap_ST_fsm_state226"], "QuitState" : ["ap_ST_fsm_state225"], "PreState" : ["ap_ST_fsm_state224"], "PostState" : ["ap_ST_fsm_state227"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "LOOP_STAGE", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "298", "FirstState" : "ap_ST_fsm_state74", "LastState" : ["ap_ST_fsm_state227"], "QuitState" : ["ap_ST_fsm_state74"], "PreState" : ["ap_ST_fsm_state73"], "PostState" : ["ap_ST_fsm_state228"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.trottersLocal_V_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.trottersLocal_V_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.trottersLocal_V_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.trottersLocal_V_3_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.JcoupLocal_0_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.JcoupLocal_1_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.JcoupLocal_2_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.JcoupLocal_3_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_READ_TROTTERS_VITIS_LOOP_195_1_fu_516", "Parent" : "0", "Child" : ["10"],
		"CDFG" : "QuantumMonteCarloU50_Pipeline_READ_TROTTERS_VITIS_LOOP_195_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1027", "EstimateLatencyMax" : "1027",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln194", "Type" : "None", "Direction" : "I"},
			{"Name" : "trottersLocal_V_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "trottersLocal_V_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "trottersLocal_V_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "trottersLocal_V_3", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "READ_TROTTERS_VITIS_LOOP_195_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_READ_TROTTERS_VITIS_LOOP_195_1_fu_516.flow_control_loop_pipe_sequential_init_U", "Parent" : "9"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_READ_NEW_JCOUP_fu_527", "Parent" : "0", "Child" : ["12"],
		"CDFG" : "QuantumMonteCarloU50_Pipeline_READ_NEW_JCOUP",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "259", "EstimateLatencyMax" : "259",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln241", "Type" : "None", "Direction" : "I"},
			{"Name" : "JcoupLocal_0", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "READ_NEW_JCOUP", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_READ_NEW_JCOUP_fu_527.flow_control_loop_pipe_sequential_init_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_535", "Parent" : "0", "Child" : ["14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93"],
		"CDFG" : "TrotterUnit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "96",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "stage", "Type" : "None", "Direction" : "I"},
			{"Name" : "packOfst", "Type" : "None", "Direction" : "I"},
			{"Name" : "trotters", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dH_read_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "dH_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "JcoupLocal", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_535.grp_copysignf_fu_32982", "Parent" : "13",
		"CDFG" : "copysignf",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_535.grp_copysignf_fu_32988", "Parent" : "13",
		"CDFG" : "copysignf",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_535.grp_copysignf_fu_32994", "Parent" : "13",
		"CDFG" : "copysignf",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_535.grp_copysignf_fu_33000", "Parent" : "13",
		"CDFG" : "copysignf",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_535.grp_copysignf_fu_33006", "Parent" : "13",
		"CDFG" : "copysignf",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_535.grp_copysignf_fu_33012", "Parent" : "13",
		"CDFG" : "copysignf",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_535.grp_copysignf_fu_33018", "Parent" : "13",
		"CDFG" : "copysignf",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_535.grp_copysignf_fu_33024", "Parent" : "13",
		"CDFG" : "copysignf",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_535.grp_copysignf_fu_33030", "Parent" : "13",
		"CDFG" : "copysignf",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_535.grp_copysignf_fu_33036", "Parent" : "13",
		"CDFG" : "copysignf",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_535.grp_copysignf_fu_33042", "Parent" : "13",
		"CDFG" : "copysignf",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_535.grp_copysignf_fu_33048", "Parent" : "13",
		"CDFG" : "copysignf",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_535.grp_copysignf_fu_33054", "Parent" : "13",
		"CDFG" : "copysignf",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_535.grp_copysignf_fu_33060", "Parent" : "13",
		"CDFG" : "copysignf",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_535.grp_copysignf_fu_33066", "Parent" : "13",
		"CDFG" : "copysignf",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_535.grp_copysignf_fu_33072", "Parent" : "13",
		"CDFG" : "copysignf",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_535.fadd_32ns_32ns_32_7_full_dsp_1_U11", "Parent" : "13"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_535.fadd_32ns_32ns_32_7_full_dsp_1_U12", "Parent" : "13"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_535.fadd_32ns_32ns_32_7_full_dsp_1_U13", "Parent" : "13"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_535.fadd_32ns_32ns_32_7_full_dsp_1_U14", "Parent" : "13"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_535.fadd_32ns_32ns_32_7_full_dsp_1_U15", "Parent" : "13"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_535.fadd_32ns_32ns_32_7_full_dsp_1_U16", "Parent" : "13"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_535.fadd_32ns_32ns_32_7_full_dsp_1_U17", "Parent" : "13"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_535.fadd_32ns_32ns_32_7_full_dsp_1_U18", "Parent" : "13"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_535.fadd_32ns_32ns_32_7_full_dsp_1_U19", "Parent" : "13"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_535.fadd_32ns_32ns_32_7_full_dsp_1_U20", "Parent" : "13"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_535.fadd_32ns_32ns_32_7_full_dsp_1_U21", "Parent" : "13"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_535.fadd_32ns_32ns_32_7_full_dsp_1_U22", "Parent" : "13"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_535.fadd_32ns_32ns_32_7_full_dsp_1_U23", "Parent" : "13"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_535.fadd_32ns_32ns_32_7_full_dsp_1_U24", "Parent" : "13"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_535.fadd_32ns_32ns_32_7_full_dsp_1_U25", "Parent" : "13"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_535.fadd_32ns_32ns_32_7_full_dsp_1_U26", "Parent" : "13"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_535.fadd_32ns_32ns_32_7_full_dsp_1_U27", "Parent" : "13"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_535.fadd_32ns_32ns_32_7_full_dsp_1_U28", "Parent" : "13"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_535.fadd_32ns_32ns_32_7_full_dsp_1_U29", "Parent" : "13"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_535.fadd_32ns_32ns_32_7_full_dsp_1_U30", "Parent" : "13"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_535.fadd_32ns_32ns_32_7_full_dsp_1_U31", "Parent" : "13"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_535.fadd_32ns_32ns_32_7_full_dsp_1_U32", "Parent" : "13"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_535.fadd_32ns_32ns_32_7_full_dsp_1_U33", "Parent" : "13"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_535.fadd_32ns_32ns_32_7_full_dsp_1_U34", "Parent" : "13"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_535.fadd_32ns_32ns_32_7_full_dsp_1_U35", "Parent" : "13"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_535.fadd_32ns_32ns_32_7_full_dsp_1_U36", "Parent" : "13"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_535.fadd_32ns_32ns_32_7_full_dsp_1_U37", "Parent" : "13"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_535.fadd_32ns_32ns_32_7_full_dsp_1_U38", "Parent" : "13"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_535.fadd_32ns_32ns_32_7_full_dsp_1_U39", "Parent" : "13"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_535.fadd_32ns_32ns_32_7_full_dsp_1_U40", "Parent" : "13"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_535.fadd_32ns_32ns_32_7_full_dsp_1_U41", "Parent" : "13"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_535.fadd_32ns_32ns_32_7_full_dsp_1_U42", "Parent" : "13"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_535.fadd_32ns_32ns_32_7_full_dsp_1_U43", "Parent" : "13"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_535.fadd_32ns_32ns_32_7_full_dsp_1_U44", "Parent" : "13"},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_535.fadd_32ns_32ns_32_7_full_dsp_1_U45", "Parent" : "13"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_535.fadd_32ns_32ns_32_7_full_dsp_1_U46", "Parent" : "13"},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_535.fadd_32ns_32ns_32_7_full_dsp_1_U47", "Parent" : "13"},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_535.fadd_32ns_32ns_32_7_full_dsp_1_U48", "Parent" : "13"},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_535.fadd_32ns_32ns_32_7_full_dsp_1_U49", "Parent" : "13"},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_535.fadd_32ns_32ns_32_7_full_dsp_1_U50", "Parent" : "13"},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_535.fadd_32ns_32ns_32_7_full_dsp_1_U51", "Parent" : "13"},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_535.fadd_32ns_32ns_32_7_full_dsp_1_U52", "Parent" : "13"},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_535.fadd_32ns_32ns_32_7_full_dsp_1_U53", "Parent" : "13"},
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_535.fadd_32ns_32ns_32_7_full_dsp_1_U54", "Parent" : "13"},
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_535.fadd_32ns_32ns_32_7_full_dsp_1_U55", "Parent" : "13"},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_535.fadd_32ns_32ns_32_7_full_dsp_1_U56", "Parent" : "13"},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_535.fadd_32ns_32ns_32_7_full_dsp_1_U57", "Parent" : "13"},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_535.fadd_32ns_32ns_32_7_full_dsp_1_U58", "Parent" : "13"},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_535.fadd_32ns_32ns_32_7_full_dsp_1_U59", "Parent" : "13"},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_535.fadd_32ns_32ns_32_7_full_dsp_1_U60", "Parent" : "13"},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_535.fadd_32ns_32ns_32_7_full_dsp_1_U61", "Parent" : "13"},
	{"ID" : "81", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_535.fadd_32ns_32ns_32_7_full_dsp_1_U62", "Parent" : "13"},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_535.fadd_32ns_32ns_32_7_full_dsp_1_U63", "Parent" : "13"},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_535.fadd_32ns_32ns_32_7_full_dsp_1_U64", "Parent" : "13"},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_535.fadd_32ns_32ns_32_7_full_dsp_1_U65", "Parent" : "13"},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_535.fadd_32ns_32ns_32_7_full_dsp_1_U66", "Parent" : "13"},
	{"ID" : "86", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_535.fadd_32ns_32ns_32_7_full_dsp_1_U67", "Parent" : "13"},
	{"ID" : "87", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_535.fadd_32ns_32ns_32_7_full_dsp_1_U68", "Parent" : "13"},
	{"ID" : "88", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_535.fadd_32ns_32ns_32_7_full_dsp_1_U69", "Parent" : "13"},
	{"ID" : "89", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_535.fadd_32ns_32ns_32_7_full_dsp_1_U70", "Parent" : "13"},
	{"ID" : "90", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_535.fadd_32ns_32ns_32_7_full_dsp_1_U71", "Parent" : "13"},
	{"ID" : "91", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_535.fadd_32ns_32ns_32_7_full_dsp_1_U72", "Parent" : "13"},
	{"ID" : "92", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_535.fadd_32ns_32ns_32_7_full_dsp_1_U73", "Parent" : "13"},
	{"ID" : "93", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_535.fadd_32ns_32ns_32_7_full_dsp_1_U74", "Parent" : "13"},
	{"ID" : "94", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_549", "Parent" : "0", "Child" : ["95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128", "129", "130", "131", "132", "133", "134", "135", "136", "137", "138", "139", "140", "141", "142", "143", "144", "145", "146", "147", "148", "149", "150", "151", "152", "153", "154", "155", "156", "157", "158", "159", "160", "161", "162", "163", "164", "165", "166", "167", "168", "169", "170", "171", "172", "173", "174"],
		"CDFG" : "TrotterUnit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "96",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "stage", "Type" : "None", "Direction" : "I"},
			{"Name" : "packOfst", "Type" : "None", "Direction" : "I"},
			{"Name" : "trotters", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dH_read_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "dH_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "JcoupLocal", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "95", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_549.grp_copysignf_fu_32982", "Parent" : "94",
		"CDFG" : "copysignf",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "96", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_549.grp_copysignf_fu_32988", "Parent" : "94",
		"CDFG" : "copysignf",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "97", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_549.grp_copysignf_fu_32994", "Parent" : "94",
		"CDFG" : "copysignf",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "98", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_549.grp_copysignf_fu_33000", "Parent" : "94",
		"CDFG" : "copysignf",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "99", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_549.grp_copysignf_fu_33006", "Parent" : "94",
		"CDFG" : "copysignf",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "100", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_549.grp_copysignf_fu_33012", "Parent" : "94",
		"CDFG" : "copysignf",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "101", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_549.grp_copysignf_fu_33018", "Parent" : "94",
		"CDFG" : "copysignf",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "102", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_549.grp_copysignf_fu_33024", "Parent" : "94",
		"CDFG" : "copysignf",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "103", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_549.grp_copysignf_fu_33030", "Parent" : "94",
		"CDFG" : "copysignf",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "104", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_549.grp_copysignf_fu_33036", "Parent" : "94",
		"CDFG" : "copysignf",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "105", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_549.grp_copysignf_fu_33042", "Parent" : "94",
		"CDFG" : "copysignf",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "106", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_549.grp_copysignf_fu_33048", "Parent" : "94",
		"CDFG" : "copysignf",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "107", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_549.grp_copysignf_fu_33054", "Parent" : "94",
		"CDFG" : "copysignf",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "108", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_549.grp_copysignf_fu_33060", "Parent" : "94",
		"CDFG" : "copysignf",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "109", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_549.grp_copysignf_fu_33066", "Parent" : "94",
		"CDFG" : "copysignf",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "110", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_549.grp_copysignf_fu_33072", "Parent" : "94",
		"CDFG" : "copysignf",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "111", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_549.fadd_32ns_32ns_32_7_full_dsp_1_U11", "Parent" : "94"},
	{"ID" : "112", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_549.fadd_32ns_32ns_32_7_full_dsp_1_U12", "Parent" : "94"},
	{"ID" : "113", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_549.fadd_32ns_32ns_32_7_full_dsp_1_U13", "Parent" : "94"},
	{"ID" : "114", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_549.fadd_32ns_32ns_32_7_full_dsp_1_U14", "Parent" : "94"},
	{"ID" : "115", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_549.fadd_32ns_32ns_32_7_full_dsp_1_U15", "Parent" : "94"},
	{"ID" : "116", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_549.fadd_32ns_32ns_32_7_full_dsp_1_U16", "Parent" : "94"},
	{"ID" : "117", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_549.fadd_32ns_32ns_32_7_full_dsp_1_U17", "Parent" : "94"},
	{"ID" : "118", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_549.fadd_32ns_32ns_32_7_full_dsp_1_U18", "Parent" : "94"},
	{"ID" : "119", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_549.fadd_32ns_32ns_32_7_full_dsp_1_U19", "Parent" : "94"},
	{"ID" : "120", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_549.fadd_32ns_32ns_32_7_full_dsp_1_U20", "Parent" : "94"},
	{"ID" : "121", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_549.fadd_32ns_32ns_32_7_full_dsp_1_U21", "Parent" : "94"},
	{"ID" : "122", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_549.fadd_32ns_32ns_32_7_full_dsp_1_U22", "Parent" : "94"},
	{"ID" : "123", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_549.fadd_32ns_32ns_32_7_full_dsp_1_U23", "Parent" : "94"},
	{"ID" : "124", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_549.fadd_32ns_32ns_32_7_full_dsp_1_U24", "Parent" : "94"},
	{"ID" : "125", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_549.fadd_32ns_32ns_32_7_full_dsp_1_U25", "Parent" : "94"},
	{"ID" : "126", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_549.fadd_32ns_32ns_32_7_full_dsp_1_U26", "Parent" : "94"},
	{"ID" : "127", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_549.fadd_32ns_32ns_32_7_full_dsp_1_U27", "Parent" : "94"},
	{"ID" : "128", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_549.fadd_32ns_32ns_32_7_full_dsp_1_U28", "Parent" : "94"},
	{"ID" : "129", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_549.fadd_32ns_32ns_32_7_full_dsp_1_U29", "Parent" : "94"},
	{"ID" : "130", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_549.fadd_32ns_32ns_32_7_full_dsp_1_U30", "Parent" : "94"},
	{"ID" : "131", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_549.fadd_32ns_32ns_32_7_full_dsp_1_U31", "Parent" : "94"},
	{"ID" : "132", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_549.fadd_32ns_32ns_32_7_full_dsp_1_U32", "Parent" : "94"},
	{"ID" : "133", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_549.fadd_32ns_32ns_32_7_full_dsp_1_U33", "Parent" : "94"},
	{"ID" : "134", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_549.fadd_32ns_32ns_32_7_full_dsp_1_U34", "Parent" : "94"},
	{"ID" : "135", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_549.fadd_32ns_32ns_32_7_full_dsp_1_U35", "Parent" : "94"},
	{"ID" : "136", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_549.fadd_32ns_32ns_32_7_full_dsp_1_U36", "Parent" : "94"},
	{"ID" : "137", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_549.fadd_32ns_32ns_32_7_full_dsp_1_U37", "Parent" : "94"},
	{"ID" : "138", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_549.fadd_32ns_32ns_32_7_full_dsp_1_U38", "Parent" : "94"},
	{"ID" : "139", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_549.fadd_32ns_32ns_32_7_full_dsp_1_U39", "Parent" : "94"},
	{"ID" : "140", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_549.fadd_32ns_32ns_32_7_full_dsp_1_U40", "Parent" : "94"},
	{"ID" : "141", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_549.fadd_32ns_32ns_32_7_full_dsp_1_U41", "Parent" : "94"},
	{"ID" : "142", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_549.fadd_32ns_32ns_32_7_full_dsp_1_U42", "Parent" : "94"},
	{"ID" : "143", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_549.fadd_32ns_32ns_32_7_full_dsp_1_U43", "Parent" : "94"},
	{"ID" : "144", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_549.fadd_32ns_32ns_32_7_full_dsp_1_U44", "Parent" : "94"},
	{"ID" : "145", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_549.fadd_32ns_32ns_32_7_full_dsp_1_U45", "Parent" : "94"},
	{"ID" : "146", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_549.fadd_32ns_32ns_32_7_full_dsp_1_U46", "Parent" : "94"},
	{"ID" : "147", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_549.fadd_32ns_32ns_32_7_full_dsp_1_U47", "Parent" : "94"},
	{"ID" : "148", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_549.fadd_32ns_32ns_32_7_full_dsp_1_U48", "Parent" : "94"},
	{"ID" : "149", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_549.fadd_32ns_32ns_32_7_full_dsp_1_U49", "Parent" : "94"},
	{"ID" : "150", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_549.fadd_32ns_32ns_32_7_full_dsp_1_U50", "Parent" : "94"},
	{"ID" : "151", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_549.fadd_32ns_32ns_32_7_full_dsp_1_U51", "Parent" : "94"},
	{"ID" : "152", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_549.fadd_32ns_32ns_32_7_full_dsp_1_U52", "Parent" : "94"},
	{"ID" : "153", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_549.fadd_32ns_32ns_32_7_full_dsp_1_U53", "Parent" : "94"},
	{"ID" : "154", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_549.fadd_32ns_32ns_32_7_full_dsp_1_U54", "Parent" : "94"},
	{"ID" : "155", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_549.fadd_32ns_32ns_32_7_full_dsp_1_U55", "Parent" : "94"},
	{"ID" : "156", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_549.fadd_32ns_32ns_32_7_full_dsp_1_U56", "Parent" : "94"},
	{"ID" : "157", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_549.fadd_32ns_32ns_32_7_full_dsp_1_U57", "Parent" : "94"},
	{"ID" : "158", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_549.fadd_32ns_32ns_32_7_full_dsp_1_U58", "Parent" : "94"},
	{"ID" : "159", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_549.fadd_32ns_32ns_32_7_full_dsp_1_U59", "Parent" : "94"},
	{"ID" : "160", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_549.fadd_32ns_32ns_32_7_full_dsp_1_U60", "Parent" : "94"},
	{"ID" : "161", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_549.fadd_32ns_32ns_32_7_full_dsp_1_U61", "Parent" : "94"},
	{"ID" : "162", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_549.fadd_32ns_32ns_32_7_full_dsp_1_U62", "Parent" : "94"},
	{"ID" : "163", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_549.fadd_32ns_32ns_32_7_full_dsp_1_U63", "Parent" : "94"},
	{"ID" : "164", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_549.fadd_32ns_32ns_32_7_full_dsp_1_U64", "Parent" : "94"},
	{"ID" : "165", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_549.fadd_32ns_32ns_32_7_full_dsp_1_U65", "Parent" : "94"},
	{"ID" : "166", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_549.fadd_32ns_32ns_32_7_full_dsp_1_U66", "Parent" : "94"},
	{"ID" : "167", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_549.fadd_32ns_32ns_32_7_full_dsp_1_U67", "Parent" : "94"},
	{"ID" : "168", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_549.fadd_32ns_32ns_32_7_full_dsp_1_U68", "Parent" : "94"},
	{"ID" : "169", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_549.fadd_32ns_32ns_32_7_full_dsp_1_U69", "Parent" : "94"},
	{"ID" : "170", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_549.fadd_32ns_32ns_32_7_full_dsp_1_U70", "Parent" : "94"},
	{"ID" : "171", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_549.fadd_32ns_32ns_32_7_full_dsp_1_U71", "Parent" : "94"},
	{"ID" : "172", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_549.fadd_32ns_32ns_32_7_full_dsp_1_U72", "Parent" : "94"},
	{"ID" : "173", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_549.fadd_32ns_32ns_32_7_full_dsp_1_U73", "Parent" : "94"},
	{"ID" : "174", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_549.fadd_32ns_32ns_32_7_full_dsp_1_U74", "Parent" : "94"},
	{"ID" : "175", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_563", "Parent" : "0", "Child" : ["176", "177", "178", "179", "180", "181", "182", "183", "184", "185", "186", "187", "188", "189", "190", "191", "192", "193", "194", "195", "196", "197", "198", "199", "200", "201", "202", "203", "204", "205", "206", "207", "208", "209", "210", "211", "212", "213", "214", "215", "216", "217", "218", "219", "220", "221", "222", "223", "224", "225", "226", "227", "228", "229", "230", "231", "232", "233", "234", "235", "236", "237", "238", "239", "240", "241", "242", "243", "244", "245", "246", "247", "248", "249", "250", "251", "252", "253", "254", "255"],
		"CDFG" : "TrotterUnit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "96",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "stage", "Type" : "None", "Direction" : "I"},
			{"Name" : "packOfst", "Type" : "None", "Direction" : "I"},
			{"Name" : "trotters", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dH_read_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "dH_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "JcoupLocal", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "176", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_563.grp_copysignf_fu_32982", "Parent" : "175",
		"CDFG" : "copysignf",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "177", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_563.grp_copysignf_fu_32988", "Parent" : "175",
		"CDFG" : "copysignf",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "178", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_563.grp_copysignf_fu_32994", "Parent" : "175",
		"CDFG" : "copysignf",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "179", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_563.grp_copysignf_fu_33000", "Parent" : "175",
		"CDFG" : "copysignf",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "180", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_563.grp_copysignf_fu_33006", "Parent" : "175",
		"CDFG" : "copysignf",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "181", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_563.grp_copysignf_fu_33012", "Parent" : "175",
		"CDFG" : "copysignf",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "182", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_563.grp_copysignf_fu_33018", "Parent" : "175",
		"CDFG" : "copysignf",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "183", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_563.grp_copysignf_fu_33024", "Parent" : "175",
		"CDFG" : "copysignf",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "184", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_563.grp_copysignf_fu_33030", "Parent" : "175",
		"CDFG" : "copysignf",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "185", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_563.grp_copysignf_fu_33036", "Parent" : "175",
		"CDFG" : "copysignf",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "186", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_563.grp_copysignf_fu_33042", "Parent" : "175",
		"CDFG" : "copysignf",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "187", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_563.grp_copysignf_fu_33048", "Parent" : "175",
		"CDFG" : "copysignf",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "188", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_563.grp_copysignf_fu_33054", "Parent" : "175",
		"CDFG" : "copysignf",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "189", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_563.grp_copysignf_fu_33060", "Parent" : "175",
		"CDFG" : "copysignf",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "190", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_563.grp_copysignf_fu_33066", "Parent" : "175",
		"CDFG" : "copysignf",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "191", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_563.grp_copysignf_fu_33072", "Parent" : "175",
		"CDFG" : "copysignf",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "192", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_563.fadd_32ns_32ns_32_7_full_dsp_1_U11", "Parent" : "175"},
	{"ID" : "193", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_563.fadd_32ns_32ns_32_7_full_dsp_1_U12", "Parent" : "175"},
	{"ID" : "194", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_563.fadd_32ns_32ns_32_7_full_dsp_1_U13", "Parent" : "175"},
	{"ID" : "195", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_563.fadd_32ns_32ns_32_7_full_dsp_1_U14", "Parent" : "175"},
	{"ID" : "196", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_563.fadd_32ns_32ns_32_7_full_dsp_1_U15", "Parent" : "175"},
	{"ID" : "197", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_563.fadd_32ns_32ns_32_7_full_dsp_1_U16", "Parent" : "175"},
	{"ID" : "198", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_563.fadd_32ns_32ns_32_7_full_dsp_1_U17", "Parent" : "175"},
	{"ID" : "199", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_563.fadd_32ns_32ns_32_7_full_dsp_1_U18", "Parent" : "175"},
	{"ID" : "200", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_563.fadd_32ns_32ns_32_7_full_dsp_1_U19", "Parent" : "175"},
	{"ID" : "201", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_563.fadd_32ns_32ns_32_7_full_dsp_1_U20", "Parent" : "175"},
	{"ID" : "202", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_563.fadd_32ns_32ns_32_7_full_dsp_1_U21", "Parent" : "175"},
	{"ID" : "203", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_563.fadd_32ns_32ns_32_7_full_dsp_1_U22", "Parent" : "175"},
	{"ID" : "204", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_563.fadd_32ns_32ns_32_7_full_dsp_1_U23", "Parent" : "175"},
	{"ID" : "205", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_563.fadd_32ns_32ns_32_7_full_dsp_1_U24", "Parent" : "175"},
	{"ID" : "206", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_563.fadd_32ns_32ns_32_7_full_dsp_1_U25", "Parent" : "175"},
	{"ID" : "207", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_563.fadd_32ns_32ns_32_7_full_dsp_1_U26", "Parent" : "175"},
	{"ID" : "208", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_563.fadd_32ns_32ns_32_7_full_dsp_1_U27", "Parent" : "175"},
	{"ID" : "209", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_563.fadd_32ns_32ns_32_7_full_dsp_1_U28", "Parent" : "175"},
	{"ID" : "210", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_563.fadd_32ns_32ns_32_7_full_dsp_1_U29", "Parent" : "175"},
	{"ID" : "211", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_563.fadd_32ns_32ns_32_7_full_dsp_1_U30", "Parent" : "175"},
	{"ID" : "212", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_563.fadd_32ns_32ns_32_7_full_dsp_1_U31", "Parent" : "175"},
	{"ID" : "213", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_563.fadd_32ns_32ns_32_7_full_dsp_1_U32", "Parent" : "175"},
	{"ID" : "214", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_563.fadd_32ns_32ns_32_7_full_dsp_1_U33", "Parent" : "175"},
	{"ID" : "215", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_563.fadd_32ns_32ns_32_7_full_dsp_1_U34", "Parent" : "175"},
	{"ID" : "216", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_563.fadd_32ns_32ns_32_7_full_dsp_1_U35", "Parent" : "175"},
	{"ID" : "217", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_563.fadd_32ns_32ns_32_7_full_dsp_1_U36", "Parent" : "175"},
	{"ID" : "218", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_563.fadd_32ns_32ns_32_7_full_dsp_1_U37", "Parent" : "175"},
	{"ID" : "219", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_563.fadd_32ns_32ns_32_7_full_dsp_1_U38", "Parent" : "175"},
	{"ID" : "220", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_563.fadd_32ns_32ns_32_7_full_dsp_1_U39", "Parent" : "175"},
	{"ID" : "221", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_563.fadd_32ns_32ns_32_7_full_dsp_1_U40", "Parent" : "175"},
	{"ID" : "222", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_563.fadd_32ns_32ns_32_7_full_dsp_1_U41", "Parent" : "175"},
	{"ID" : "223", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_563.fadd_32ns_32ns_32_7_full_dsp_1_U42", "Parent" : "175"},
	{"ID" : "224", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_563.fadd_32ns_32ns_32_7_full_dsp_1_U43", "Parent" : "175"},
	{"ID" : "225", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_563.fadd_32ns_32ns_32_7_full_dsp_1_U44", "Parent" : "175"},
	{"ID" : "226", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_563.fadd_32ns_32ns_32_7_full_dsp_1_U45", "Parent" : "175"},
	{"ID" : "227", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_563.fadd_32ns_32ns_32_7_full_dsp_1_U46", "Parent" : "175"},
	{"ID" : "228", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_563.fadd_32ns_32ns_32_7_full_dsp_1_U47", "Parent" : "175"},
	{"ID" : "229", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_563.fadd_32ns_32ns_32_7_full_dsp_1_U48", "Parent" : "175"},
	{"ID" : "230", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_563.fadd_32ns_32ns_32_7_full_dsp_1_U49", "Parent" : "175"},
	{"ID" : "231", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_563.fadd_32ns_32ns_32_7_full_dsp_1_U50", "Parent" : "175"},
	{"ID" : "232", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_563.fadd_32ns_32ns_32_7_full_dsp_1_U51", "Parent" : "175"},
	{"ID" : "233", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_563.fadd_32ns_32ns_32_7_full_dsp_1_U52", "Parent" : "175"},
	{"ID" : "234", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_563.fadd_32ns_32ns_32_7_full_dsp_1_U53", "Parent" : "175"},
	{"ID" : "235", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_563.fadd_32ns_32ns_32_7_full_dsp_1_U54", "Parent" : "175"},
	{"ID" : "236", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_563.fadd_32ns_32ns_32_7_full_dsp_1_U55", "Parent" : "175"},
	{"ID" : "237", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_563.fadd_32ns_32ns_32_7_full_dsp_1_U56", "Parent" : "175"},
	{"ID" : "238", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_563.fadd_32ns_32ns_32_7_full_dsp_1_U57", "Parent" : "175"},
	{"ID" : "239", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_563.fadd_32ns_32ns_32_7_full_dsp_1_U58", "Parent" : "175"},
	{"ID" : "240", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_563.fadd_32ns_32ns_32_7_full_dsp_1_U59", "Parent" : "175"},
	{"ID" : "241", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_563.fadd_32ns_32ns_32_7_full_dsp_1_U60", "Parent" : "175"},
	{"ID" : "242", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_563.fadd_32ns_32ns_32_7_full_dsp_1_U61", "Parent" : "175"},
	{"ID" : "243", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_563.fadd_32ns_32ns_32_7_full_dsp_1_U62", "Parent" : "175"},
	{"ID" : "244", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_563.fadd_32ns_32ns_32_7_full_dsp_1_U63", "Parent" : "175"},
	{"ID" : "245", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_563.fadd_32ns_32ns_32_7_full_dsp_1_U64", "Parent" : "175"},
	{"ID" : "246", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_563.fadd_32ns_32ns_32_7_full_dsp_1_U65", "Parent" : "175"},
	{"ID" : "247", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_563.fadd_32ns_32ns_32_7_full_dsp_1_U66", "Parent" : "175"},
	{"ID" : "248", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_563.fadd_32ns_32ns_32_7_full_dsp_1_U67", "Parent" : "175"},
	{"ID" : "249", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_563.fadd_32ns_32ns_32_7_full_dsp_1_U68", "Parent" : "175"},
	{"ID" : "250", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_563.fadd_32ns_32ns_32_7_full_dsp_1_U69", "Parent" : "175"},
	{"ID" : "251", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_563.fadd_32ns_32ns_32_7_full_dsp_1_U70", "Parent" : "175"},
	{"ID" : "252", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_563.fadd_32ns_32ns_32_7_full_dsp_1_U71", "Parent" : "175"},
	{"ID" : "253", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_563.fadd_32ns_32ns_32_7_full_dsp_1_U72", "Parent" : "175"},
	{"ID" : "254", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_563.fadd_32ns_32ns_32_7_full_dsp_1_U73", "Parent" : "175"},
	{"ID" : "255", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_563.fadd_32ns_32ns_32_7_full_dsp_1_U74", "Parent" : "175"},
	{"ID" : "256", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_577", "Parent" : "0", "Child" : ["257", "258", "259", "260", "261", "262", "263", "264", "265", "266", "267", "268", "269", "270", "271", "272", "273", "274", "275", "276", "277", "278", "279", "280", "281", "282", "283", "284", "285", "286", "287", "288", "289", "290", "291", "292", "293", "294", "295", "296", "297", "298", "299", "300", "301", "302", "303", "304", "305", "306", "307", "308", "309", "310", "311", "312", "313", "314", "315", "316", "317", "318", "319", "320", "321", "322", "323", "324", "325", "326", "327", "328", "329", "330", "331", "332", "333", "334", "335", "336"],
		"CDFG" : "TrotterUnit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "96",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "stage", "Type" : "None", "Direction" : "I"},
			{"Name" : "packOfst", "Type" : "None", "Direction" : "I"},
			{"Name" : "trotters", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dH_read_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "dH_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "JcoupLocal", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "257", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_577.grp_copysignf_fu_32982", "Parent" : "256",
		"CDFG" : "copysignf",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "258", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_577.grp_copysignf_fu_32988", "Parent" : "256",
		"CDFG" : "copysignf",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "259", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_577.grp_copysignf_fu_32994", "Parent" : "256",
		"CDFG" : "copysignf",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "260", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_577.grp_copysignf_fu_33000", "Parent" : "256",
		"CDFG" : "copysignf",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "261", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_577.grp_copysignf_fu_33006", "Parent" : "256",
		"CDFG" : "copysignf",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "262", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_577.grp_copysignf_fu_33012", "Parent" : "256",
		"CDFG" : "copysignf",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "263", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_577.grp_copysignf_fu_33018", "Parent" : "256",
		"CDFG" : "copysignf",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "264", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_577.grp_copysignf_fu_33024", "Parent" : "256",
		"CDFG" : "copysignf",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "265", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_577.grp_copysignf_fu_33030", "Parent" : "256",
		"CDFG" : "copysignf",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "266", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_577.grp_copysignf_fu_33036", "Parent" : "256",
		"CDFG" : "copysignf",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "267", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_577.grp_copysignf_fu_33042", "Parent" : "256",
		"CDFG" : "copysignf",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "268", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_577.grp_copysignf_fu_33048", "Parent" : "256",
		"CDFG" : "copysignf",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "269", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_577.grp_copysignf_fu_33054", "Parent" : "256",
		"CDFG" : "copysignf",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "270", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_577.grp_copysignf_fu_33060", "Parent" : "256",
		"CDFG" : "copysignf",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "271", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_577.grp_copysignf_fu_33066", "Parent" : "256",
		"CDFG" : "copysignf",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "272", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_577.grp_copysignf_fu_33072", "Parent" : "256",
		"CDFG" : "copysignf",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "273", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_577.fadd_32ns_32ns_32_7_full_dsp_1_U11", "Parent" : "256"},
	{"ID" : "274", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_577.fadd_32ns_32ns_32_7_full_dsp_1_U12", "Parent" : "256"},
	{"ID" : "275", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_577.fadd_32ns_32ns_32_7_full_dsp_1_U13", "Parent" : "256"},
	{"ID" : "276", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_577.fadd_32ns_32ns_32_7_full_dsp_1_U14", "Parent" : "256"},
	{"ID" : "277", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_577.fadd_32ns_32ns_32_7_full_dsp_1_U15", "Parent" : "256"},
	{"ID" : "278", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_577.fadd_32ns_32ns_32_7_full_dsp_1_U16", "Parent" : "256"},
	{"ID" : "279", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_577.fadd_32ns_32ns_32_7_full_dsp_1_U17", "Parent" : "256"},
	{"ID" : "280", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_577.fadd_32ns_32ns_32_7_full_dsp_1_U18", "Parent" : "256"},
	{"ID" : "281", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_577.fadd_32ns_32ns_32_7_full_dsp_1_U19", "Parent" : "256"},
	{"ID" : "282", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_577.fadd_32ns_32ns_32_7_full_dsp_1_U20", "Parent" : "256"},
	{"ID" : "283", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_577.fadd_32ns_32ns_32_7_full_dsp_1_U21", "Parent" : "256"},
	{"ID" : "284", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_577.fadd_32ns_32ns_32_7_full_dsp_1_U22", "Parent" : "256"},
	{"ID" : "285", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_577.fadd_32ns_32ns_32_7_full_dsp_1_U23", "Parent" : "256"},
	{"ID" : "286", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_577.fadd_32ns_32ns_32_7_full_dsp_1_U24", "Parent" : "256"},
	{"ID" : "287", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_577.fadd_32ns_32ns_32_7_full_dsp_1_U25", "Parent" : "256"},
	{"ID" : "288", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_577.fadd_32ns_32ns_32_7_full_dsp_1_U26", "Parent" : "256"},
	{"ID" : "289", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_577.fadd_32ns_32ns_32_7_full_dsp_1_U27", "Parent" : "256"},
	{"ID" : "290", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_577.fadd_32ns_32ns_32_7_full_dsp_1_U28", "Parent" : "256"},
	{"ID" : "291", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_577.fadd_32ns_32ns_32_7_full_dsp_1_U29", "Parent" : "256"},
	{"ID" : "292", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_577.fadd_32ns_32ns_32_7_full_dsp_1_U30", "Parent" : "256"},
	{"ID" : "293", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_577.fadd_32ns_32ns_32_7_full_dsp_1_U31", "Parent" : "256"},
	{"ID" : "294", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_577.fadd_32ns_32ns_32_7_full_dsp_1_U32", "Parent" : "256"},
	{"ID" : "295", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_577.fadd_32ns_32ns_32_7_full_dsp_1_U33", "Parent" : "256"},
	{"ID" : "296", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_577.fadd_32ns_32ns_32_7_full_dsp_1_U34", "Parent" : "256"},
	{"ID" : "297", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_577.fadd_32ns_32ns_32_7_full_dsp_1_U35", "Parent" : "256"},
	{"ID" : "298", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_577.fadd_32ns_32ns_32_7_full_dsp_1_U36", "Parent" : "256"},
	{"ID" : "299", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_577.fadd_32ns_32ns_32_7_full_dsp_1_U37", "Parent" : "256"},
	{"ID" : "300", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_577.fadd_32ns_32ns_32_7_full_dsp_1_U38", "Parent" : "256"},
	{"ID" : "301", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_577.fadd_32ns_32ns_32_7_full_dsp_1_U39", "Parent" : "256"},
	{"ID" : "302", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_577.fadd_32ns_32ns_32_7_full_dsp_1_U40", "Parent" : "256"},
	{"ID" : "303", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_577.fadd_32ns_32ns_32_7_full_dsp_1_U41", "Parent" : "256"},
	{"ID" : "304", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_577.fadd_32ns_32ns_32_7_full_dsp_1_U42", "Parent" : "256"},
	{"ID" : "305", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_577.fadd_32ns_32ns_32_7_full_dsp_1_U43", "Parent" : "256"},
	{"ID" : "306", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_577.fadd_32ns_32ns_32_7_full_dsp_1_U44", "Parent" : "256"},
	{"ID" : "307", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_577.fadd_32ns_32ns_32_7_full_dsp_1_U45", "Parent" : "256"},
	{"ID" : "308", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_577.fadd_32ns_32ns_32_7_full_dsp_1_U46", "Parent" : "256"},
	{"ID" : "309", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_577.fadd_32ns_32ns_32_7_full_dsp_1_U47", "Parent" : "256"},
	{"ID" : "310", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_577.fadd_32ns_32ns_32_7_full_dsp_1_U48", "Parent" : "256"},
	{"ID" : "311", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_577.fadd_32ns_32ns_32_7_full_dsp_1_U49", "Parent" : "256"},
	{"ID" : "312", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_577.fadd_32ns_32ns_32_7_full_dsp_1_U50", "Parent" : "256"},
	{"ID" : "313", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_577.fadd_32ns_32ns_32_7_full_dsp_1_U51", "Parent" : "256"},
	{"ID" : "314", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_577.fadd_32ns_32ns_32_7_full_dsp_1_U52", "Parent" : "256"},
	{"ID" : "315", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_577.fadd_32ns_32ns_32_7_full_dsp_1_U53", "Parent" : "256"},
	{"ID" : "316", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_577.fadd_32ns_32ns_32_7_full_dsp_1_U54", "Parent" : "256"},
	{"ID" : "317", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_577.fadd_32ns_32ns_32_7_full_dsp_1_U55", "Parent" : "256"},
	{"ID" : "318", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_577.fadd_32ns_32ns_32_7_full_dsp_1_U56", "Parent" : "256"},
	{"ID" : "319", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_577.fadd_32ns_32ns_32_7_full_dsp_1_U57", "Parent" : "256"},
	{"ID" : "320", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_577.fadd_32ns_32ns_32_7_full_dsp_1_U58", "Parent" : "256"},
	{"ID" : "321", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_577.fadd_32ns_32ns_32_7_full_dsp_1_U59", "Parent" : "256"},
	{"ID" : "322", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_577.fadd_32ns_32ns_32_7_full_dsp_1_U60", "Parent" : "256"},
	{"ID" : "323", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_577.fadd_32ns_32ns_32_7_full_dsp_1_U61", "Parent" : "256"},
	{"ID" : "324", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_577.fadd_32ns_32ns_32_7_full_dsp_1_U62", "Parent" : "256"},
	{"ID" : "325", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_577.fadd_32ns_32ns_32_7_full_dsp_1_U63", "Parent" : "256"},
	{"ID" : "326", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_577.fadd_32ns_32ns_32_7_full_dsp_1_U64", "Parent" : "256"},
	{"ID" : "327", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_577.fadd_32ns_32ns_32_7_full_dsp_1_U65", "Parent" : "256"},
	{"ID" : "328", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_577.fadd_32ns_32ns_32_7_full_dsp_1_U66", "Parent" : "256"},
	{"ID" : "329", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_577.fadd_32ns_32ns_32_7_full_dsp_1_U67", "Parent" : "256"},
	{"ID" : "330", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_577.fadd_32ns_32ns_32_7_full_dsp_1_U68", "Parent" : "256"},
	{"ID" : "331", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_577.fadd_32ns_32ns_32_7_full_dsp_1_U69", "Parent" : "256"},
	{"ID" : "332", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_577.fadd_32ns_32ns_32_7_full_dsp_1_U70", "Parent" : "256"},
	{"ID" : "333", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_577.fadd_32ns_32ns_32_7_full_dsp_1_U71", "Parent" : "256"},
	{"ID" : "334", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_577.fadd_32ns_32ns_32_7_full_dsp_1_U72", "Parent" : "256"},
	{"ID" : "335", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_577.fadd_32ns_32ns_32_7_full_dsp_1_U73", "Parent" : "256"},
	{"ID" : "336", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnit_fu_577.fadd_32ns_32ns_32_7_full_dsp_1_U74", "Parent" : "256"},
	{"ID" : "337", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnitFinal_fu_591", "Parent" : "0", "Child" : ["338", "339", "340", "341", "342"],
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
	{"ID" : "338", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnitFinal_fu_591.fsub_32ns_32ns_32_7_full_dsp_1_U83", "Parent" : "337"},
	{"ID" : "339", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnitFinal_fu_591.fadd_32ns_32ns_32_7_full_dsp_1_U84", "Parent" : "337"},
	{"ID" : "340", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnitFinal_fu_591.fmul_32ns_32ns_32_4_max_dsp_1_U85", "Parent" : "337"},
	{"ID" : "341", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnitFinal_fu_591.fdiv_32ns_32ns_32_12_no_dsp_1_U86", "Parent" : "337"},
	{"ID" : "342", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnitFinal_fu_591.fcmp_32ns_32ns_1_2_no_dsp_1_U87", "Parent" : "337"},
	{"ID" : "343", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnitFinal_fu_608", "Parent" : "0", "Child" : ["344", "345", "346", "347", "348"],
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
	{"ID" : "344", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnitFinal_fu_608.fsub_32ns_32ns_32_7_full_dsp_1_U83", "Parent" : "343"},
	{"ID" : "345", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnitFinal_fu_608.fadd_32ns_32ns_32_7_full_dsp_1_U84", "Parent" : "343"},
	{"ID" : "346", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnitFinal_fu_608.fmul_32ns_32ns_32_4_max_dsp_1_U85", "Parent" : "343"},
	{"ID" : "347", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnitFinal_fu_608.fdiv_32ns_32ns_32_12_no_dsp_1_U86", "Parent" : "343"},
	{"ID" : "348", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnitFinal_fu_608.fcmp_32ns_32ns_1_2_no_dsp_1_U87", "Parent" : "343"},
	{"ID" : "349", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnitFinal_fu_625", "Parent" : "0", "Child" : ["350", "351", "352", "353", "354"],
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
	{"ID" : "350", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnitFinal_fu_625.fsub_32ns_32ns_32_7_full_dsp_1_U83", "Parent" : "349"},
	{"ID" : "351", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnitFinal_fu_625.fadd_32ns_32ns_32_7_full_dsp_1_U84", "Parent" : "349"},
	{"ID" : "352", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnitFinal_fu_625.fmul_32ns_32ns_32_4_max_dsp_1_U85", "Parent" : "349"},
	{"ID" : "353", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnitFinal_fu_625.fdiv_32ns_32ns_32_12_no_dsp_1_U86", "Parent" : "349"},
	{"ID" : "354", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnitFinal_fu_625.fcmp_32ns_32ns_1_2_no_dsp_1_U87", "Parent" : "349"},
	{"ID" : "355", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnitFinal_fu_642", "Parent" : "0", "Child" : ["356", "357", "358", "359", "360"],
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
	{"ID" : "356", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnitFinal_fu_642.fsub_32ns_32ns_32_7_full_dsp_1_U83", "Parent" : "355"},
	{"ID" : "357", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnitFinal_fu_642.fadd_32ns_32ns_32_7_full_dsp_1_U84", "Parent" : "355"},
	{"ID" : "358", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnitFinal_fu_642.fmul_32ns_32ns_32_4_max_dsp_1_U85", "Parent" : "355"},
	{"ID" : "359", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnitFinal_fu_642.fdiv_32ns_32ns_32_12_no_dsp_1_U86", "Parent" : "355"},
	{"ID" : "360", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TrotterUnitFinal_fu_642.fcmp_32ns_32ns_1_2_no_dsp_1_U87", "Parent" : "355"},
	{"ID" : "361", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_SHIFT_JCOUP_fu_659", "Parent" : "0", "Child" : ["362"],
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
	{"ID" : "362", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_SHIFT_JCOUP_fu_659.flow_control_loop_pipe_sequential_init_U", "Parent" : "361"},
	{"ID" : "363", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_WRITE_TROTTERS_VITIS_LOOP_281_3_fu_667", "Parent" : "0", "Child" : ["364", "365"],
		"CDFG" : "QuantumMonteCarloU50_Pipeline_WRITE_TROTTERS_VITIS_LOOP_281_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1028", "EstimateLatencyMax" : "1028",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "gmem_blk_n_W", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln194", "Type" : "None", "Direction" : "I"},
			{"Name" : "trottersLocal_V_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trottersLocal_V_3", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "WRITE_TROTTERS_VITIS_LOOP_281_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "364", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_WRITE_TROTTERS_VITIS_LOOP_281_3_fu_667.mux_42_16_1_1_U107", "Parent" : "363"},
	{"ID" : "365", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QuantumMonteCarloU50_Pipeline_WRITE_TROTTERS_VITIS_LOOP_281_3_fu_667.flow_control_loop_pipe_sequential_init_U", "Parent" : "363"},
	{"ID" : "366", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "367", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem_m_axi_U", "Parent" : "0"},
	{"ID" : "368", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U115", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	QuantumMonteCarloU50 {
		gmem {Type IO LastRead 152 FirstWrite -1}
		trotters {Type I LastRead 0 FirstWrite -1}
		Jcoup {Type I LastRead 72 FirstWrite -1}
		h {Type I LastRead 72 FirstWrite -1}
		Jperp {Type I LastRead 68 FirstWrite -1}
		Beta {Type I LastRead 72 FirstWrite -1}
		logRand {Type I LastRead 72 FirstWrite -1}}
	QuantumMonteCarloU50_Pipeline_READ_TROTTERS_VITIS_LOOP_195_1 {
		gmem {Type I LastRead 1 FirstWrite -1}
		sext_ln194 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_0 {Type O LastRead -1 FirstWrite 2}
		trottersLocal_V_1 {Type O LastRead -1 FirstWrite 2}
		trottersLocal_V_2 {Type O LastRead -1 FirstWrite 2}
		trottersLocal_V_3 {Type O LastRead -1 FirstWrite 2}}
	QuantumMonteCarloU50_Pipeline_READ_NEW_JCOUP {
		gmem {Type I LastRead 1 FirstWrite -1}
		sext_ln241 {Type I LastRead 0 FirstWrite -1}
		JcoupLocal_0 {Type O LastRead -1 FirstWrite 2}}
	TrotterUnit {
		t_offset {Type I LastRead 0 FirstWrite -1}
		stage {Type I LastRead 0 FirstWrite -1}
		packOfst {Type I LastRead 0 FirstWrite -1}
		trotters {Type I LastRead 30 FirstWrite -1}
		dH_read_2 {Type I LastRead 0 FirstWrite -1}
		dH_read {Type I LastRead 0 FirstWrite -1}
		JcoupLocal {Type I LastRead 30 FirstWrite -1}}
	copysignf {
		x {Type I LastRead 0 FirstWrite -1}}
	copysignf {
		x {Type I LastRead 0 FirstWrite -1}}
	copysignf {
		x {Type I LastRead 0 FirstWrite -1}}
	copysignf {
		x {Type I LastRead 0 FirstWrite -1}}
	copysignf {
		x {Type I LastRead 0 FirstWrite -1}}
	copysignf {
		x {Type I LastRead 0 FirstWrite -1}}
	copysignf {
		x {Type I LastRead 0 FirstWrite -1}}
	copysignf {
		x {Type I LastRead 0 FirstWrite -1}}
	copysignf {
		x {Type I LastRead 0 FirstWrite -1}}
	copysignf {
		x {Type I LastRead 0 FirstWrite -1}}
	copysignf {
		x {Type I LastRead 0 FirstWrite -1}}
	copysignf {
		x {Type I LastRead 0 FirstWrite -1}}
	copysignf {
		x {Type I LastRead 0 FirstWrite -1}}
	copysignf {
		x {Type I LastRead 0 FirstWrite -1}}
	copysignf {
		x {Type I LastRead 0 FirstWrite -1}}
	copysignf {
		x {Type I LastRead 0 FirstWrite -1}}
	TrotterUnit {
		t_offset {Type I LastRead 0 FirstWrite -1}
		stage {Type I LastRead 0 FirstWrite -1}
		packOfst {Type I LastRead 0 FirstWrite -1}
		trotters {Type I LastRead 30 FirstWrite -1}
		dH_read_2 {Type I LastRead 0 FirstWrite -1}
		dH_read {Type I LastRead 0 FirstWrite -1}
		JcoupLocal {Type I LastRead 30 FirstWrite -1}}
	copysignf {
		x {Type I LastRead 0 FirstWrite -1}}
	copysignf {
		x {Type I LastRead 0 FirstWrite -1}}
	copysignf {
		x {Type I LastRead 0 FirstWrite -1}}
	copysignf {
		x {Type I LastRead 0 FirstWrite -1}}
	copysignf {
		x {Type I LastRead 0 FirstWrite -1}}
	copysignf {
		x {Type I LastRead 0 FirstWrite -1}}
	copysignf {
		x {Type I LastRead 0 FirstWrite -1}}
	copysignf {
		x {Type I LastRead 0 FirstWrite -1}}
	copysignf {
		x {Type I LastRead 0 FirstWrite -1}}
	copysignf {
		x {Type I LastRead 0 FirstWrite -1}}
	copysignf {
		x {Type I LastRead 0 FirstWrite -1}}
	copysignf {
		x {Type I LastRead 0 FirstWrite -1}}
	copysignf {
		x {Type I LastRead 0 FirstWrite -1}}
	copysignf {
		x {Type I LastRead 0 FirstWrite -1}}
	copysignf {
		x {Type I LastRead 0 FirstWrite -1}}
	copysignf {
		x {Type I LastRead 0 FirstWrite -1}}
	TrotterUnit {
		t_offset {Type I LastRead 0 FirstWrite -1}
		stage {Type I LastRead 0 FirstWrite -1}
		packOfst {Type I LastRead 0 FirstWrite -1}
		trotters {Type I LastRead 30 FirstWrite -1}
		dH_read_2 {Type I LastRead 0 FirstWrite -1}
		dH_read {Type I LastRead 0 FirstWrite -1}
		JcoupLocal {Type I LastRead 30 FirstWrite -1}}
	copysignf {
		x {Type I LastRead 0 FirstWrite -1}}
	copysignf {
		x {Type I LastRead 0 FirstWrite -1}}
	copysignf {
		x {Type I LastRead 0 FirstWrite -1}}
	copysignf {
		x {Type I LastRead 0 FirstWrite -1}}
	copysignf {
		x {Type I LastRead 0 FirstWrite -1}}
	copysignf {
		x {Type I LastRead 0 FirstWrite -1}}
	copysignf {
		x {Type I LastRead 0 FirstWrite -1}}
	copysignf {
		x {Type I LastRead 0 FirstWrite -1}}
	copysignf {
		x {Type I LastRead 0 FirstWrite -1}}
	copysignf {
		x {Type I LastRead 0 FirstWrite -1}}
	copysignf {
		x {Type I LastRead 0 FirstWrite -1}}
	copysignf {
		x {Type I LastRead 0 FirstWrite -1}}
	copysignf {
		x {Type I LastRead 0 FirstWrite -1}}
	copysignf {
		x {Type I LastRead 0 FirstWrite -1}}
	copysignf {
		x {Type I LastRead 0 FirstWrite -1}}
	copysignf {
		x {Type I LastRead 0 FirstWrite -1}}
	TrotterUnit {
		t_offset {Type I LastRead 0 FirstWrite -1}
		stage {Type I LastRead 0 FirstWrite -1}
		packOfst {Type I LastRead 0 FirstWrite -1}
		trotters {Type I LastRead 30 FirstWrite -1}
		dH_read_2 {Type I LastRead 0 FirstWrite -1}
		dH_read {Type I LastRead 0 FirstWrite -1}
		JcoupLocal {Type I LastRead 30 FirstWrite -1}}
	copysignf {
		x {Type I LastRead 0 FirstWrite -1}}
	copysignf {
		x {Type I LastRead 0 FirstWrite -1}}
	copysignf {
		x {Type I LastRead 0 FirstWrite -1}}
	copysignf {
		x {Type I LastRead 0 FirstWrite -1}}
	copysignf {
		x {Type I LastRead 0 FirstWrite -1}}
	copysignf {
		x {Type I LastRead 0 FirstWrite -1}}
	copysignf {
		x {Type I LastRead 0 FirstWrite -1}}
	copysignf {
		x {Type I LastRead 0 FirstWrite -1}}
	copysignf {
		x {Type I LastRead 0 FirstWrite -1}}
	copysignf {
		x {Type I LastRead 0 FirstWrite -1}}
	copysignf {
		x {Type I LastRead 0 FirstWrite -1}}
	copysignf {
		x {Type I LastRead 0 FirstWrite -1}}
	copysignf {
		x {Type I LastRead 0 FirstWrite -1}}
	copysignf {
		x {Type I LastRead 0 FirstWrite -1}}
	copysignf {
		x {Type I LastRead 0 FirstWrite -1}}
	copysignf {
		x {Type I LastRead 0 FirstWrite -1}}
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
		logRandNumber {Type I LastRead 0 FirstWrite -1}}
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
		logRandNumber {Type I LastRead 0 FirstWrite -1}}
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
		logRandNumber {Type I LastRead 0 FirstWrite -1}}
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
		logRandNumber {Type I LastRead 0 FirstWrite -1}}
	QuantumMonteCarloU50_Pipeline_SHIFT_JCOUP {
		JcoupLocal_2 {Type IO LastRead 0 FirstWrite 1}
		JcoupLocal_3 {Type O LastRead -1 FirstWrite 1}
		JcoupLocal_1 {Type IO LastRead 0 FirstWrite 1}
		JcoupLocal_0 {Type I LastRead 0 FirstWrite -1}}
	QuantumMonteCarloU50_Pipeline_WRITE_TROTTERS_VITIS_LOOP_281_3 {
		gmem {Type O LastRead -1 FirstWrite 3}
		sext_ln194 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_0 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_1 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_2 {Type I LastRead 0 FirstWrite -1}
		trottersLocal_V_3 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1596710", "Max" : "9175761"}
	, {"Name" : "Interval", "Min" : "1596711", "Max" : "9175762"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	gmem { m_axi {  { m_axi_gmem_AWVALID VALID 1 1 }  { m_axi_gmem_AWREADY READY 0 1 }  { m_axi_gmem_AWADDR ADDR 1 64 }  { m_axi_gmem_AWID ID 1 1 }  { m_axi_gmem_AWLEN LEN 1 8 }  { m_axi_gmem_AWSIZE SIZE 1 3 }  { m_axi_gmem_AWBURST BURST 1 2 }  { m_axi_gmem_AWLOCK LOCK 1 2 }  { m_axi_gmem_AWCACHE CACHE 1 4 }  { m_axi_gmem_AWPROT PROT 1 3 }  { m_axi_gmem_AWQOS QOS 1 4 }  { m_axi_gmem_AWREGION REGION 1 4 }  { m_axi_gmem_AWUSER USER 1 1 }  { m_axi_gmem_WVALID VALID 1 1 }  { m_axi_gmem_WREADY READY 0 1 }  { m_axi_gmem_WDATA DATA 1 512 }  { m_axi_gmem_WSTRB STRB 1 64 }  { m_axi_gmem_WLAST LAST 1 1 }  { m_axi_gmem_WID ID 1 1 }  { m_axi_gmem_WUSER USER 1 1 }  { m_axi_gmem_ARVALID VALID 1 1 }  { m_axi_gmem_ARREADY READY 0 1 }  { m_axi_gmem_ARADDR ADDR 1 64 }  { m_axi_gmem_ARID ID 1 1 }  { m_axi_gmem_ARLEN LEN 1 8 }  { m_axi_gmem_ARSIZE SIZE 1 3 }  { m_axi_gmem_ARBURST BURST 1 2 }  { m_axi_gmem_ARLOCK LOCK 1 2 }  { m_axi_gmem_ARCACHE CACHE 1 4 }  { m_axi_gmem_ARPROT PROT 1 3 }  { m_axi_gmem_ARQOS QOS 1 4 }  { m_axi_gmem_ARREGION REGION 1 4 }  { m_axi_gmem_ARUSER USER 1 1 }  { m_axi_gmem_RVALID VALID 0 1 }  { m_axi_gmem_RREADY READY 1 1 }  { m_axi_gmem_RDATA DATA 0 512 }  { m_axi_gmem_RLAST LAST 0 1 }  { m_axi_gmem_RID ID 0 1 }  { m_axi_gmem_RUSER USER 0 1 }  { m_axi_gmem_RRESP RESP 0 2 }  { m_axi_gmem_BVALID VALID 0 1 }  { m_axi_gmem_BREADY READY 1 1 }  { m_axi_gmem_BRESP RESP 0 2 }  { m_axi_gmem_BID ID 0 1 }  { m_axi_gmem_BUSER USER 0 1 } } }
}

set busDeadlockParameterList { 
	{ gmem { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ gmem 64 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ gmem 64 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
