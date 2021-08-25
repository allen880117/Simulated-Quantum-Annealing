# This script segment is generated automatically by AutoPilot

set name QuantumMonteCarloU50_fsub_32ns_32ns_32_7_full_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {fsub} IMPL {fulldsp} LATENCY 6 ALLOW_PRAGMA 1
}


set name QuantumMonteCarloU50_fmul_32ns_32ns_32_4_max_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {fmul} IMPL {maxdsp} LATENCY 3 ALLOW_PRAGMA 1
}


set name QuantumMonteCarloU50_fdiv_32ns_32ns_32_12_no_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {fdiv} IMPL {fabric} LATENCY 11 ALLOW_PRAGMA 1
}


set name QuantumMonteCarloU50_fcmp_32ns_32ns_1_2_no_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {fcmp} IMPL {auto} LATENCY 1 ALLOW_PRAGMA 1
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 499 \
    name trotters \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename trotters \
    op interface \
    ports { trotters_address0 { O 4 vector } trotters_ce0 { O 1 bit } trotters_we0 { O 1 bit } trotters_d0 { O 16 vector } trotters_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'trotters'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 500 \
    name trotters1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename trotters1 \
    op interface \
    ports { trotters1_address0 { O 4 vector } trotters1_ce0 { O 1 bit } trotters1_we0 { O 1 bit } trotters1_d0 { O 16 vector } trotters1_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'trotters1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 501 \
    name trotters2 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename trotters2 \
    op interface \
    ports { trotters2_address0 { O 4 vector } trotters2_ce0 { O 1 bit } trotters2_we0 { O 1 bit } trotters2_d0 { O 16 vector } trotters2_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'trotters2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 502 \
    name trotters3 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename trotters3 \
    op interface \
    ports { trotters3_address0 { O 4 vector } trotters3_ce0 { O 1 bit } trotters3_we0 { O 1 bit } trotters3_d0 { O 16 vector } trotters3_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'trotters3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 503 \
    name trotters4 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename trotters4 \
    op interface \
    ports { trotters4_address0 { O 4 vector } trotters4_ce0 { O 1 bit } trotters4_we0 { O 1 bit } trotters4_d0 { O 16 vector } trotters4_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'trotters4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 504 \
    name trotters5 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename trotters5 \
    op interface \
    ports { trotters5_address0 { O 4 vector } trotters5_ce0 { O 1 bit } trotters5_we0 { O 1 bit } trotters5_d0 { O 16 vector } trotters5_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'trotters5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 505 \
    name trotters6 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename trotters6 \
    op interface \
    ports { trotters6_address0 { O 4 vector } trotters6_ce0 { O 1 bit } trotters6_we0 { O 1 bit } trotters6_d0 { O 16 vector } trotters6_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'trotters6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 506 \
    name trotters7 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename trotters7 \
    op interface \
    ports { trotters7_address0 { O 4 vector } trotters7_ce0 { O 1 bit } trotters7_we0 { O 1 bit } trotters7_d0 { O 16 vector } trotters7_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'trotters7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 507 \
    name trotters8 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename trotters8 \
    op interface \
    ports { trotters8_address0 { O 4 vector } trotters8_ce0 { O 1 bit } trotters8_we0 { O 1 bit } trotters8_d0 { O 16 vector } trotters8_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'trotters8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 508 \
    name trotters9 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename trotters9 \
    op interface \
    ports { trotters9_address0 { O 4 vector } trotters9_ce0 { O 1 bit } trotters9_we0 { O 1 bit } trotters9_d0 { O 16 vector } trotters9_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'trotters9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 509 \
    name trotters10 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename trotters10 \
    op interface \
    ports { trotters10_address0 { O 4 vector } trotters10_ce0 { O 1 bit } trotters10_we0 { O 1 bit } trotters10_d0 { O 16 vector } trotters10_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'trotters10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 510 \
    name trotters11 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename trotters11 \
    op interface \
    ports { trotters11_address0 { O 4 vector } trotters11_ce0 { O 1 bit } trotters11_we0 { O 1 bit } trotters11_d0 { O 16 vector } trotters11_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'trotters11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 511 \
    name trotters12 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename trotters12 \
    op interface \
    ports { trotters12_address0 { O 4 vector } trotters12_ce0 { O 1 bit } trotters12_we0 { O 1 bit } trotters12_d0 { O 16 vector } trotters12_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'trotters12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 512 \
    name trotters13 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename trotters13 \
    op interface \
    ports { trotters13_address0 { O 4 vector } trotters13_ce0 { O 1 bit } trotters13_we0 { O 1 bit } trotters13_d0 { O 16 vector } trotters13_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'trotters13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 513 \
    name trotters14 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename trotters14 \
    op interface \
    ports { trotters14_address0 { O 4 vector } trotters14_ce0 { O 1 bit } trotters14_we0 { O 1 bit } trotters14_d0 { O 16 vector } trotters14_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'trotters14'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 514 \
    name trotters15 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename trotters15 \
    op interface \
    ports { trotters15_address0 { O 4 vector } trotters15_ce0 { O 1 bit } trotters15_we0 { O 1 bit } trotters15_d0 { O 16 vector } trotters15_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'trotters15'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 495 \
    name t_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_offset \
    op interface \
    ports { t_offset { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 496 \
    name stage \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_stage \
    op interface \
    ports { stage { I 13 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 497 \
    name iPack \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_iPack \
    op interface \
    ports { iPack { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 498 \
    name iSpin \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_iSpin \
    op interface \
    ports { iSpin { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 515 \
    name dH \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dH \
    op interface \
    ports { dH { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 516 \
    name upSpin \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_upSpin \
    op interface \
    ports { upSpin { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 517 \
    name downSpin \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_downSpin \
    op interface \
    ports { downSpin { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 518 \
    name Beta \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Beta \
    op interface \
    ports { Beta { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 519 \
    name dHTunnel \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dHTunnel \
    op interface \
    ports { dHTunnel { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 520 \
    name logRandNumber \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_logRandNumber \
    op interface \
    ports { logRandNumber { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


