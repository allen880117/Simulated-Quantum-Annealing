# This script segment is generated automatically by AutoPilot

set name QuantumMonteCarloU50_fadd_32ns_32ns_32_7_full_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {fadd} IMPL {fulldsp} LATENCY 6 ALLOW_PRAGMA 1
}


set id 277
set name QuantumMonteCarloU50_mux_1664_16_1_1
set corename simcore_mux
set op mux
set stage_num 1
set din0_width 16
set din0_signed 0
set din1_width 16
set din1_signed 0
set din2_width 16
set din2_signed 0
set din3_width 16
set din3_signed 0
set din4_width 16
set din4_signed 0
set din5_width 16
set din5_signed 0
set din6_width 16
set din6_signed 0
set din7_width 16
set din7_signed 0
set din8_width 16
set din8_signed 0
set din9_width 16
set din9_signed 0
set din10_width 16
set din10_signed 0
set din11_width 16
set din11_signed 0
set din12_width 16
set din12_signed 0
set din13_width 16
set din13_signed 0
set din14_width 16
set din14_signed 0
set din15_width 16
set din15_signed 0
set din16_width 64
set din16_signed 0
set dout_width 16
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mux} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


set op mux
set corename Multiplexer
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_pipemux] == "::AESL_LIB_VIRTEX::xil_gen_pipemux"} {
eval "::AESL_LIB_VIRTEX::xil_gen_pipemux { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    din0_width ${din0_width} \
    din0_signed ${din0_signed} \
    din1_width ${din1_width} \
    din1_signed ${din1_signed} \
    din2_width ${din2_width} \
    din2_signed ${din2_signed} \
    din3_width ${din3_width} \
    din3_signed ${din3_signed} \
    din4_width ${din4_width} \
    din4_signed ${din4_signed} \
    din5_width ${din5_width} \
    din5_signed ${din5_signed} \
    din6_width ${din6_width} \
    din6_signed ${din6_signed} \
    din7_width ${din7_width} \
    din7_signed ${din7_signed} \
    din8_width ${din8_width} \
    din8_signed ${din8_signed} \
    din9_width ${din9_width} \
    din9_signed ${din9_signed} \
    din10_width ${din10_width} \
    din10_signed ${din10_signed} \
    din11_width ${din11_width} \
    din11_signed ${din11_signed} \
    din12_width ${din12_width} \
    din12_signed ${din12_signed} \
    din13_width ${din13_width} \
    din13_signed ${din13_signed} \
    din14_width ${din14_width} \
    din14_signed ${din14_signed} \
    din15_width ${din15_width} \
    din15_signed ${din15_signed} \
    din16_width ${din16_width} \
    din16_signed ${din16_signed} \
    dout_width ${dout_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_pipemux, check your platform lib"
}
}


set id 278
set name QuantumMonteCarloU50_mux_1664_512_1_1
set corename simcore_mux
set op mux
set stage_num 1
set din0_width 512
set din0_signed 0
set din1_width 512
set din1_signed 0
set din2_width 512
set din2_signed 0
set din3_width 512
set din3_signed 0
set din4_width 512
set din4_signed 0
set din5_width 512
set din5_signed 0
set din6_width 512
set din6_signed 0
set din7_width 512
set din7_signed 0
set din8_width 512
set din8_signed 0
set din9_width 512
set din9_signed 0
set din10_width 512
set din10_signed 0
set din11_width 512
set din11_signed 0
set din12_width 512
set din12_signed 0
set din13_width 512
set din13_signed 0
set din14_width 512
set din14_signed 0
set din15_width 512
set din15_signed 0
set din16_width 64
set din16_signed 0
set dout_width 512
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mux} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


set op mux
set corename Multiplexer
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_pipemux] == "::AESL_LIB_VIRTEX::xil_gen_pipemux"} {
eval "::AESL_LIB_VIRTEX::xil_gen_pipemux { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    din0_width ${din0_width} \
    din0_signed ${din0_signed} \
    din1_width ${din1_width} \
    din1_signed ${din1_signed} \
    din2_width ${din2_width} \
    din2_signed ${din2_signed} \
    din3_width ${din3_width} \
    din3_signed ${din3_signed} \
    din4_width ${din4_width} \
    din4_signed ${din4_signed} \
    din5_width ${din5_width} \
    din5_signed ${din5_signed} \
    din6_width ${din6_width} \
    din6_signed ${din6_signed} \
    din7_width ${din7_width} \
    din7_signed ${din7_signed} \
    din8_width ${din8_width} \
    din8_signed ${din8_signed} \
    din9_width ${din9_width} \
    din9_signed ${din9_signed} \
    din10_width ${din10_width} \
    din10_signed ${din10_signed} \
    din11_width ${din11_width} \
    din11_signed ${din11_signed} \
    din12_width ${din12_width} \
    din12_signed ${din12_signed} \
    din13_width ${din13_width} \
    din13_signed ${din13_signed} \
    din14_width ${din14_width} \
    din14_signed ${din14_signed} \
    din15_width ${din15_width} \
    din15_signed ${din15_signed} \
    din16_width ${din16_width} \
    din16_signed ${din16_signed} \
    dout_width ${dout_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_pipemux, check your platform lib"
}
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
    id 315 \
    name trotters \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename trotters \
    op interface \
    ports { trotters_address0 { O 4 vector } trotters_ce0 { O 1 bit } trotters_q0 { I 16 vector } trotters_address1 { O 4 vector } trotters_ce1 { O 1 bit } trotters_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'trotters'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 316 \
    name trotters1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename trotters1 \
    op interface \
    ports { trotters1_address0 { O 4 vector } trotters1_ce0 { O 1 bit } trotters1_q0 { I 16 vector } trotters1_address1 { O 4 vector } trotters1_ce1 { O 1 bit } trotters1_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'trotters1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 317 \
    name trotters2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename trotters2 \
    op interface \
    ports { trotters2_address0 { O 4 vector } trotters2_ce0 { O 1 bit } trotters2_q0 { I 16 vector } trotters2_address1 { O 4 vector } trotters2_ce1 { O 1 bit } trotters2_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'trotters2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 318 \
    name trotters3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename trotters3 \
    op interface \
    ports { trotters3_address0 { O 4 vector } trotters3_ce0 { O 1 bit } trotters3_q0 { I 16 vector } trotters3_address1 { O 4 vector } trotters3_ce1 { O 1 bit } trotters3_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'trotters3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 319 \
    name trotters4 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename trotters4 \
    op interface \
    ports { trotters4_address0 { O 4 vector } trotters4_ce0 { O 1 bit } trotters4_q0 { I 16 vector } trotters4_address1 { O 4 vector } trotters4_ce1 { O 1 bit } trotters4_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'trotters4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 320 \
    name trotters5 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename trotters5 \
    op interface \
    ports { trotters5_address0 { O 4 vector } trotters5_ce0 { O 1 bit } trotters5_q0 { I 16 vector } trotters5_address1 { O 4 vector } trotters5_ce1 { O 1 bit } trotters5_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'trotters5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 321 \
    name trotters6 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename trotters6 \
    op interface \
    ports { trotters6_address0 { O 4 vector } trotters6_ce0 { O 1 bit } trotters6_q0 { I 16 vector } trotters6_address1 { O 4 vector } trotters6_ce1 { O 1 bit } trotters6_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'trotters6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 322 \
    name trotters7 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename trotters7 \
    op interface \
    ports { trotters7_address0 { O 4 vector } trotters7_ce0 { O 1 bit } trotters7_q0 { I 16 vector } trotters7_address1 { O 4 vector } trotters7_ce1 { O 1 bit } trotters7_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'trotters7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 323 \
    name trotters8 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename trotters8 \
    op interface \
    ports { trotters8_address0 { O 4 vector } trotters8_ce0 { O 1 bit } trotters8_q0 { I 16 vector } trotters8_address1 { O 4 vector } trotters8_ce1 { O 1 bit } trotters8_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'trotters8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 324 \
    name trotters9 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename trotters9 \
    op interface \
    ports { trotters9_address0 { O 4 vector } trotters9_ce0 { O 1 bit } trotters9_q0 { I 16 vector } trotters9_address1 { O 4 vector } trotters9_ce1 { O 1 bit } trotters9_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'trotters9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 325 \
    name trotters10 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename trotters10 \
    op interface \
    ports { trotters10_address0 { O 4 vector } trotters10_ce0 { O 1 bit } trotters10_q0 { I 16 vector } trotters10_address1 { O 4 vector } trotters10_ce1 { O 1 bit } trotters10_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'trotters10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 326 \
    name trotters11 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename trotters11 \
    op interface \
    ports { trotters11_address0 { O 4 vector } trotters11_ce0 { O 1 bit } trotters11_q0 { I 16 vector } trotters11_address1 { O 4 vector } trotters11_ce1 { O 1 bit } trotters11_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'trotters11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 327 \
    name trotters12 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename trotters12 \
    op interface \
    ports { trotters12_address0 { O 4 vector } trotters12_ce0 { O 1 bit } trotters12_q0 { I 16 vector } trotters12_address1 { O 4 vector } trotters12_ce1 { O 1 bit } trotters12_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'trotters12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 328 \
    name trotters13 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename trotters13 \
    op interface \
    ports { trotters13_address0 { O 4 vector } trotters13_ce0 { O 1 bit } trotters13_q0 { I 16 vector } trotters13_address1 { O 4 vector } trotters13_ce1 { O 1 bit } trotters13_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'trotters13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 329 \
    name trotters14 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename trotters14 \
    op interface \
    ports { trotters14_address0 { O 4 vector } trotters14_ce0 { O 1 bit } trotters14_q0 { I 16 vector } trotters14_address1 { O 4 vector } trotters14_ce1 { O 1 bit } trotters14_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'trotters14'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 330 \
    name trotters15 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename trotters15 \
    op interface \
    ports { trotters15_address0 { O 4 vector } trotters15_ce0 { O 1 bit } trotters15_q0 { I 16 vector } trotters15_address1 { O 4 vector } trotters15_ce1 { O 1 bit } trotters15_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'trotters15'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 332 \
    name JcoupLocal \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename JcoupLocal \
    op interface \
    ports { JcoupLocal_address0 { O 4 vector } JcoupLocal_ce0 { O 1 bit } JcoupLocal_q0 { I 512 vector } JcoupLocal_address1 { O 4 vector } JcoupLocal_ce1 { O 1 bit } JcoupLocal_q1 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 333 \
    name JcoupLocal16 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename JcoupLocal16 \
    op interface \
    ports { JcoupLocal16_address0 { O 4 vector } JcoupLocal16_ce0 { O 1 bit } JcoupLocal16_q0 { I 512 vector } JcoupLocal16_address1 { O 4 vector } JcoupLocal16_ce1 { O 1 bit } JcoupLocal16_q1 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal16'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 334 \
    name JcoupLocal17 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename JcoupLocal17 \
    op interface \
    ports { JcoupLocal17_address0 { O 4 vector } JcoupLocal17_ce0 { O 1 bit } JcoupLocal17_q0 { I 512 vector } JcoupLocal17_address1 { O 4 vector } JcoupLocal17_ce1 { O 1 bit } JcoupLocal17_q1 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal17'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 335 \
    name JcoupLocal18 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename JcoupLocal18 \
    op interface \
    ports { JcoupLocal18_address0 { O 4 vector } JcoupLocal18_ce0 { O 1 bit } JcoupLocal18_q0 { I 512 vector } JcoupLocal18_address1 { O 4 vector } JcoupLocal18_ce1 { O 1 bit } JcoupLocal18_q1 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal18'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 336 \
    name JcoupLocal19 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename JcoupLocal19 \
    op interface \
    ports { JcoupLocal19_address0 { O 4 vector } JcoupLocal19_ce0 { O 1 bit } JcoupLocal19_q0 { I 512 vector } JcoupLocal19_address1 { O 4 vector } JcoupLocal19_ce1 { O 1 bit } JcoupLocal19_q1 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal19'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 337 \
    name JcoupLocal20 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename JcoupLocal20 \
    op interface \
    ports { JcoupLocal20_address0 { O 4 vector } JcoupLocal20_ce0 { O 1 bit } JcoupLocal20_q0 { I 512 vector } JcoupLocal20_address1 { O 4 vector } JcoupLocal20_ce1 { O 1 bit } JcoupLocal20_q1 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal20'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 338 \
    name JcoupLocal21 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename JcoupLocal21 \
    op interface \
    ports { JcoupLocal21_address0 { O 4 vector } JcoupLocal21_ce0 { O 1 bit } JcoupLocal21_q0 { I 512 vector } JcoupLocal21_address1 { O 4 vector } JcoupLocal21_ce1 { O 1 bit } JcoupLocal21_q1 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal21'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 339 \
    name JcoupLocal22 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename JcoupLocal22 \
    op interface \
    ports { JcoupLocal22_address0 { O 4 vector } JcoupLocal22_ce0 { O 1 bit } JcoupLocal22_q0 { I 512 vector } JcoupLocal22_address1 { O 4 vector } JcoupLocal22_ce1 { O 1 bit } JcoupLocal22_q1 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal22'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 340 \
    name JcoupLocal23 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename JcoupLocal23 \
    op interface \
    ports { JcoupLocal23_address0 { O 4 vector } JcoupLocal23_ce0 { O 1 bit } JcoupLocal23_q0 { I 512 vector } JcoupLocal23_address1 { O 4 vector } JcoupLocal23_ce1 { O 1 bit } JcoupLocal23_q1 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal23'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 341 \
    name JcoupLocal24 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename JcoupLocal24 \
    op interface \
    ports { JcoupLocal24_address0 { O 4 vector } JcoupLocal24_ce0 { O 1 bit } JcoupLocal24_q0 { I 512 vector } JcoupLocal24_address1 { O 4 vector } JcoupLocal24_ce1 { O 1 bit } JcoupLocal24_q1 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal24'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 342 \
    name JcoupLocal25 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename JcoupLocal25 \
    op interface \
    ports { JcoupLocal25_address0 { O 4 vector } JcoupLocal25_ce0 { O 1 bit } JcoupLocal25_q0 { I 512 vector } JcoupLocal25_address1 { O 4 vector } JcoupLocal25_ce1 { O 1 bit } JcoupLocal25_q1 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal25'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 343 \
    name JcoupLocal26 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename JcoupLocal26 \
    op interface \
    ports { JcoupLocal26_address0 { O 4 vector } JcoupLocal26_ce0 { O 1 bit } JcoupLocal26_q0 { I 512 vector } JcoupLocal26_address1 { O 4 vector } JcoupLocal26_ce1 { O 1 bit } JcoupLocal26_q1 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal26'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 344 \
    name JcoupLocal27 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename JcoupLocal27 \
    op interface \
    ports { JcoupLocal27_address0 { O 4 vector } JcoupLocal27_ce0 { O 1 bit } JcoupLocal27_q0 { I 512 vector } JcoupLocal27_address1 { O 4 vector } JcoupLocal27_ce1 { O 1 bit } JcoupLocal27_q1 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal27'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 345 \
    name JcoupLocal28 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename JcoupLocal28 \
    op interface \
    ports { JcoupLocal28_address0 { O 4 vector } JcoupLocal28_ce0 { O 1 bit } JcoupLocal28_q0 { I 512 vector } JcoupLocal28_address1 { O 4 vector } JcoupLocal28_ce1 { O 1 bit } JcoupLocal28_q1 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal28'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 346 \
    name JcoupLocal29 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename JcoupLocal29 \
    op interface \
    ports { JcoupLocal29_address0 { O 4 vector } JcoupLocal29_ce0 { O 1 bit } JcoupLocal29_q0 { I 512 vector } JcoupLocal29_address1 { O 4 vector } JcoupLocal29_ce1 { O 1 bit } JcoupLocal29_q1 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal29'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 347 \
    name JcoupLocal30 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename JcoupLocal30 \
    op interface \
    ports { JcoupLocal30_address0 { O 4 vector } JcoupLocal30_ce0 { O 1 bit } JcoupLocal30_q0 { I 512 vector } JcoupLocal30_address1 { O 4 vector } JcoupLocal30_ce1 { O 1 bit } JcoupLocal30_q1 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal30'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 312 \
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
    id 313 \
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
    id 314 \
    name packOfst \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_packOfst \
    op interface \
    ports { packOfst { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 331 \
    name dH_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dH_read \
    op interface \
    ports { dH_read { I 32 vector } } \
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

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -2 \
    name ap_return \
    type ap_return \
    reset_level 1 \
    sync_rst true \
    corename ap_return \
    op interface \
    ports { ap_return { O 32 vector } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -3 \
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
    id -4 \
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


# Adapter definition:
set PortName ap_ce
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_ce] == "cg_default_interface_gen_ce"} {
eval "cg_default_interface_gen_ce { \
    id -5 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_ce \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


