# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_control {
trotters { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 16
	offset_end 27
}
Jcoup { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 28
	offset_end 39
}
h { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 40
	offset_end 51
}
Jperp { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 52
	offset_end 59
}
Beta { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 60
	offset_end 67
}
logRand { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 68
	offset_end 79
}
ap_start {
	mailbox_input_ctrl 0
	mailbox_output_ctrl 0
	auto_restart_enabled 1
	auto_restart_counter_num 0
	auto_restart_counter_offset 16
	auto_restart_counter_size 32
}
ap_done { }
ap_ready { }
ap_continue { }
ap_idle { }
}
dict set axilite_register_dict control $port_control


