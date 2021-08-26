# This script segment is generated automatically by AutoPilot

set id 538
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
    id 542 \
    name JcoupLocal_0_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename JcoupLocal_0_0 \
    op interface \
    ports { JcoupLocal_0_0_address0 { O 4 vector } JcoupLocal_0_0_ce0 { O 1 bit } JcoupLocal_0_0_q0 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal_0_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 543 \
    name JcoupLocal_0_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename JcoupLocal_0_1 \
    op interface \
    ports { JcoupLocal_0_1_address0 { O 4 vector } JcoupLocal_0_1_ce0 { O 1 bit } JcoupLocal_0_1_q0 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal_0_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 544 \
    name JcoupLocal_0_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename JcoupLocal_0_2 \
    op interface \
    ports { JcoupLocal_0_2_address0 { O 4 vector } JcoupLocal_0_2_ce0 { O 1 bit } JcoupLocal_0_2_q0 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal_0_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 545 \
    name JcoupLocal_0_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename JcoupLocal_0_3 \
    op interface \
    ports { JcoupLocal_0_3_address0 { O 4 vector } JcoupLocal_0_3_ce0 { O 1 bit } JcoupLocal_0_3_q0 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal_0_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 546 \
    name JcoupLocal_0_4 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename JcoupLocal_0_4 \
    op interface \
    ports { JcoupLocal_0_4_address0 { O 4 vector } JcoupLocal_0_4_ce0 { O 1 bit } JcoupLocal_0_4_q0 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal_0_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 547 \
    name JcoupLocal_0_5 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename JcoupLocal_0_5 \
    op interface \
    ports { JcoupLocal_0_5_address0 { O 4 vector } JcoupLocal_0_5_ce0 { O 1 bit } JcoupLocal_0_5_q0 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal_0_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 548 \
    name JcoupLocal_0_6 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename JcoupLocal_0_6 \
    op interface \
    ports { JcoupLocal_0_6_address0 { O 4 vector } JcoupLocal_0_6_ce0 { O 1 bit } JcoupLocal_0_6_q0 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal_0_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 549 \
    name JcoupLocal_0_7 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename JcoupLocal_0_7 \
    op interface \
    ports { JcoupLocal_0_7_address0 { O 4 vector } JcoupLocal_0_7_ce0 { O 1 bit } JcoupLocal_0_7_q0 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal_0_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 550 \
    name JcoupLocal_0_8 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename JcoupLocal_0_8 \
    op interface \
    ports { JcoupLocal_0_8_address0 { O 4 vector } JcoupLocal_0_8_ce0 { O 1 bit } JcoupLocal_0_8_q0 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal_0_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 551 \
    name JcoupLocal_0_9 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename JcoupLocal_0_9 \
    op interface \
    ports { JcoupLocal_0_9_address0 { O 4 vector } JcoupLocal_0_9_ce0 { O 1 bit } JcoupLocal_0_9_q0 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal_0_9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 552 \
    name JcoupLocal_0_10 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename JcoupLocal_0_10 \
    op interface \
    ports { JcoupLocal_0_10_address0 { O 4 vector } JcoupLocal_0_10_ce0 { O 1 bit } JcoupLocal_0_10_q0 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal_0_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 553 \
    name JcoupLocal_0_11 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename JcoupLocal_0_11 \
    op interface \
    ports { JcoupLocal_0_11_address0 { O 4 vector } JcoupLocal_0_11_ce0 { O 1 bit } JcoupLocal_0_11_q0 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal_0_11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 554 \
    name JcoupLocal_0_12 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename JcoupLocal_0_12 \
    op interface \
    ports { JcoupLocal_0_12_address0 { O 4 vector } JcoupLocal_0_12_ce0 { O 1 bit } JcoupLocal_0_12_q0 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal_0_12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 555 \
    name JcoupLocal_0_13 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename JcoupLocal_0_13 \
    op interface \
    ports { JcoupLocal_0_13_address0 { O 4 vector } JcoupLocal_0_13_ce0 { O 1 bit } JcoupLocal_0_13_q0 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal_0_13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 556 \
    name JcoupLocal_0_14 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename JcoupLocal_0_14 \
    op interface \
    ports { JcoupLocal_0_14_address0 { O 4 vector } JcoupLocal_0_14_ce0 { O 1 bit } JcoupLocal_0_14_q0 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal_0_14'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 557 \
    name JcoupLocal_0_15 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename JcoupLocal_0_15 \
    op interface \
    ports { JcoupLocal_0_15_address0 { O 4 vector } JcoupLocal_0_15_ce0 { O 1 bit } JcoupLocal_0_15_q0 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal_0_15'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 558 \
    name JcoupLocal_1_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename JcoupLocal_1_0 \
    op interface \
    ports { JcoupLocal_1_0_address0 { O 4 vector } JcoupLocal_1_0_ce0 { O 1 bit } JcoupLocal_1_0_we0 { O 1 bit } JcoupLocal_1_0_d0 { O 512 vector } JcoupLocal_1_0_q0 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal_1_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 559 \
    name JcoupLocal_1_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename JcoupLocal_1_1 \
    op interface \
    ports { JcoupLocal_1_1_address0 { O 4 vector } JcoupLocal_1_1_ce0 { O 1 bit } JcoupLocal_1_1_we0 { O 1 bit } JcoupLocal_1_1_d0 { O 512 vector } JcoupLocal_1_1_q0 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal_1_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 560 \
    name JcoupLocal_1_2 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename JcoupLocal_1_2 \
    op interface \
    ports { JcoupLocal_1_2_address0 { O 4 vector } JcoupLocal_1_2_ce0 { O 1 bit } JcoupLocal_1_2_we0 { O 1 bit } JcoupLocal_1_2_d0 { O 512 vector } JcoupLocal_1_2_q0 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal_1_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 561 \
    name JcoupLocal_1_3 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename JcoupLocal_1_3 \
    op interface \
    ports { JcoupLocal_1_3_address0 { O 4 vector } JcoupLocal_1_3_ce0 { O 1 bit } JcoupLocal_1_3_we0 { O 1 bit } JcoupLocal_1_3_d0 { O 512 vector } JcoupLocal_1_3_q0 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal_1_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 562 \
    name JcoupLocal_1_4 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename JcoupLocal_1_4 \
    op interface \
    ports { JcoupLocal_1_4_address0 { O 4 vector } JcoupLocal_1_4_ce0 { O 1 bit } JcoupLocal_1_4_we0 { O 1 bit } JcoupLocal_1_4_d0 { O 512 vector } JcoupLocal_1_4_q0 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal_1_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 563 \
    name JcoupLocal_1_5 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename JcoupLocal_1_5 \
    op interface \
    ports { JcoupLocal_1_5_address0 { O 4 vector } JcoupLocal_1_5_ce0 { O 1 bit } JcoupLocal_1_5_we0 { O 1 bit } JcoupLocal_1_5_d0 { O 512 vector } JcoupLocal_1_5_q0 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal_1_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 564 \
    name JcoupLocal_1_6 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename JcoupLocal_1_6 \
    op interface \
    ports { JcoupLocal_1_6_address0 { O 4 vector } JcoupLocal_1_6_ce0 { O 1 bit } JcoupLocal_1_6_we0 { O 1 bit } JcoupLocal_1_6_d0 { O 512 vector } JcoupLocal_1_6_q0 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal_1_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 565 \
    name JcoupLocal_1_7 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename JcoupLocal_1_7 \
    op interface \
    ports { JcoupLocal_1_7_address0 { O 4 vector } JcoupLocal_1_7_ce0 { O 1 bit } JcoupLocal_1_7_we0 { O 1 bit } JcoupLocal_1_7_d0 { O 512 vector } JcoupLocal_1_7_q0 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal_1_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 566 \
    name JcoupLocal_1_8 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename JcoupLocal_1_8 \
    op interface \
    ports { JcoupLocal_1_8_address0 { O 4 vector } JcoupLocal_1_8_ce0 { O 1 bit } JcoupLocal_1_8_we0 { O 1 bit } JcoupLocal_1_8_d0 { O 512 vector } JcoupLocal_1_8_q0 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal_1_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 567 \
    name JcoupLocal_1_9 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename JcoupLocal_1_9 \
    op interface \
    ports { JcoupLocal_1_9_address0 { O 4 vector } JcoupLocal_1_9_ce0 { O 1 bit } JcoupLocal_1_9_we0 { O 1 bit } JcoupLocal_1_9_d0 { O 512 vector } JcoupLocal_1_9_q0 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal_1_9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 568 \
    name JcoupLocal_1_10 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename JcoupLocal_1_10 \
    op interface \
    ports { JcoupLocal_1_10_address0 { O 4 vector } JcoupLocal_1_10_ce0 { O 1 bit } JcoupLocal_1_10_we0 { O 1 bit } JcoupLocal_1_10_d0 { O 512 vector } JcoupLocal_1_10_q0 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal_1_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 569 \
    name JcoupLocal_1_11 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename JcoupLocal_1_11 \
    op interface \
    ports { JcoupLocal_1_11_address0 { O 4 vector } JcoupLocal_1_11_ce0 { O 1 bit } JcoupLocal_1_11_we0 { O 1 bit } JcoupLocal_1_11_d0 { O 512 vector } JcoupLocal_1_11_q0 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal_1_11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 570 \
    name JcoupLocal_1_12 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename JcoupLocal_1_12 \
    op interface \
    ports { JcoupLocal_1_12_address0 { O 4 vector } JcoupLocal_1_12_ce0 { O 1 bit } JcoupLocal_1_12_we0 { O 1 bit } JcoupLocal_1_12_d0 { O 512 vector } JcoupLocal_1_12_q0 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal_1_12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 571 \
    name JcoupLocal_1_13 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename JcoupLocal_1_13 \
    op interface \
    ports { JcoupLocal_1_13_address0 { O 4 vector } JcoupLocal_1_13_ce0 { O 1 bit } JcoupLocal_1_13_we0 { O 1 bit } JcoupLocal_1_13_d0 { O 512 vector } JcoupLocal_1_13_q0 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal_1_13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 572 \
    name JcoupLocal_1_14 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename JcoupLocal_1_14 \
    op interface \
    ports { JcoupLocal_1_14_address0 { O 4 vector } JcoupLocal_1_14_ce0 { O 1 bit } JcoupLocal_1_14_we0 { O 1 bit } JcoupLocal_1_14_d0 { O 512 vector } JcoupLocal_1_14_q0 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal_1_14'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 573 \
    name JcoupLocal_1_15 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename JcoupLocal_1_15 \
    op interface \
    ports { JcoupLocal_1_15_address0 { O 4 vector } JcoupLocal_1_15_ce0 { O 1 bit } JcoupLocal_1_15_we0 { O 1 bit } JcoupLocal_1_15_d0 { O 512 vector } JcoupLocal_1_15_q0 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal_1_15'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 574 \
    name JcoupLocal_2_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename JcoupLocal_2_0 \
    op interface \
    ports { JcoupLocal_2_0_address0 { O 4 vector } JcoupLocal_2_0_ce0 { O 1 bit } JcoupLocal_2_0_we0 { O 1 bit } JcoupLocal_2_0_d0 { O 512 vector } JcoupLocal_2_0_q0 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal_2_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 575 \
    name JcoupLocal_2_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename JcoupLocal_2_1 \
    op interface \
    ports { JcoupLocal_2_1_address0 { O 4 vector } JcoupLocal_2_1_ce0 { O 1 bit } JcoupLocal_2_1_we0 { O 1 bit } JcoupLocal_2_1_d0 { O 512 vector } JcoupLocal_2_1_q0 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal_2_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 576 \
    name JcoupLocal_2_2 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename JcoupLocal_2_2 \
    op interface \
    ports { JcoupLocal_2_2_address0 { O 4 vector } JcoupLocal_2_2_ce0 { O 1 bit } JcoupLocal_2_2_we0 { O 1 bit } JcoupLocal_2_2_d0 { O 512 vector } JcoupLocal_2_2_q0 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal_2_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 577 \
    name JcoupLocal_2_3 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename JcoupLocal_2_3 \
    op interface \
    ports { JcoupLocal_2_3_address0 { O 4 vector } JcoupLocal_2_3_ce0 { O 1 bit } JcoupLocal_2_3_we0 { O 1 bit } JcoupLocal_2_3_d0 { O 512 vector } JcoupLocal_2_3_q0 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal_2_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 578 \
    name JcoupLocal_2_4 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename JcoupLocal_2_4 \
    op interface \
    ports { JcoupLocal_2_4_address0 { O 4 vector } JcoupLocal_2_4_ce0 { O 1 bit } JcoupLocal_2_4_we0 { O 1 bit } JcoupLocal_2_4_d0 { O 512 vector } JcoupLocal_2_4_q0 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal_2_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 579 \
    name JcoupLocal_2_5 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename JcoupLocal_2_5 \
    op interface \
    ports { JcoupLocal_2_5_address0 { O 4 vector } JcoupLocal_2_5_ce0 { O 1 bit } JcoupLocal_2_5_we0 { O 1 bit } JcoupLocal_2_5_d0 { O 512 vector } JcoupLocal_2_5_q0 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal_2_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 580 \
    name JcoupLocal_2_6 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename JcoupLocal_2_6 \
    op interface \
    ports { JcoupLocal_2_6_address0 { O 4 vector } JcoupLocal_2_6_ce0 { O 1 bit } JcoupLocal_2_6_we0 { O 1 bit } JcoupLocal_2_6_d0 { O 512 vector } JcoupLocal_2_6_q0 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal_2_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 581 \
    name JcoupLocal_2_7 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename JcoupLocal_2_7 \
    op interface \
    ports { JcoupLocal_2_7_address0 { O 4 vector } JcoupLocal_2_7_ce0 { O 1 bit } JcoupLocal_2_7_we0 { O 1 bit } JcoupLocal_2_7_d0 { O 512 vector } JcoupLocal_2_7_q0 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal_2_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 582 \
    name JcoupLocal_2_8 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename JcoupLocal_2_8 \
    op interface \
    ports { JcoupLocal_2_8_address0 { O 4 vector } JcoupLocal_2_8_ce0 { O 1 bit } JcoupLocal_2_8_we0 { O 1 bit } JcoupLocal_2_8_d0 { O 512 vector } JcoupLocal_2_8_q0 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal_2_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 583 \
    name JcoupLocal_2_9 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename JcoupLocal_2_9 \
    op interface \
    ports { JcoupLocal_2_9_address0 { O 4 vector } JcoupLocal_2_9_ce0 { O 1 bit } JcoupLocal_2_9_we0 { O 1 bit } JcoupLocal_2_9_d0 { O 512 vector } JcoupLocal_2_9_q0 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal_2_9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 584 \
    name JcoupLocal_2_10 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename JcoupLocal_2_10 \
    op interface \
    ports { JcoupLocal_2_10_address0 { O 4 vector } JcoupLocal_2_10_ce0 { O 1 bit } JcoupLocal_2_10_we0 { O 1 bit } JcoupLocal_2_10_d0 { O 512 vector } JcoupLocal_2_10_q0 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal_2_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 585 \
    name JcoupLocal_2_11 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename JcoupLocal_2_11 \
    op interface \
    ports { JcoupLocal_2_11_address0 { O 4 vector } JcoupLocal_2_11_ce0 { O 1 bit } JcoupLocal_2_11_we0 { O 1 bit } JcoupLocal_2_11_d0 { O 512 vector } JcoupLocal_2_11_q0 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal_2_11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 586 \
    name JcoupLocal_2_12 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename JcoupLocal_2_12 \
    op interface \
    ports { JcoupLocal_2_12_address0 { O 4 vector } JcoupLocal_2_12_ce0 { O 1 bit } JcoupLocal_2_12_we0 { O 1 bit } JcoupLocal_2_12_d0 { O 512 vector } JcoupLocal_2_12_q0 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal_2_12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 587 \
    name JcoupLocal_2_13 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename JcoupLocal_2_13 \
    op interface \
    ports { JcoupLocal_2_13_address0 { O 4 vector } JcoupLocal_2_13_ce0 { O 1 bit } JcoupLocal_2_13_we0 { O 1 bit } JcoupLocal_2_13_d0 { O 512 vector } JcoupLocal_2_13_q0 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal_2_13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 588 \
    name JcoupLocal_2_14 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename JcoupLocal_2_14 \
    op interface \
    ports { JcoupLocal_2_14_address0 { O 4 vector } JcoupLocal_2_14_ce0 { O 1 bit } JcoupLocal_2_14_we0 { O 1 bit } JcoupLocal_2_14_d0 { O 512 vector } JcoupLocal_2_14_q0 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal_2_14'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 589 \
    name JcoupLocal_2_15 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename JcoupLocal_2_15 \
    op interface \
    ports { JcoupLocal_2_15_address0 { O 4 vector } JcoupLocal_2_15_ce0 { O 1 bit } JcoupLocal_2_15_we0 { O 1 bit } JcoupLocal_2_15_d0 { O 512 vector } JcoupLocal_2_15_q0 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal_2_15'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 590 \
    name JcoupLocal_3_0 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename JcoupLocal_3_0 \
    op interface \
    ports { JcoupLocal_3_0_address0 { O 4 vector } JcoupLocal_3_0_ce0 { O 1 bit } JcoupLocal_3_0_we0 { O 1 bit } JcoupLocal_3_0_d0 { O 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal_3_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 591 \
    name JcoupLocal_3_1 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename JcoupLocal_3_1 \
    op interface \
    ports { JcoupLocal_3_1_address0 { O 4 vector } JcoupLocal_3_1_ce0 { O 1 bit } JcoupLocal_3_1_we0 { O 1 bit } JcoupLocal_3_1_d0 { O 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal_3_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 592 \
    name JcoupLocal_3_2 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename JcoupLocal_3_2 \
    op interface \
    ports { JcoupLocal_3_2_address0 { O 4 vector } JcoupLocal_3_2_ce0 { O 1 bit } JcoupLocal_3_2_we0 { O 1 bit } JcoupLocal_3_2_d0 { O 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal_3_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 593 \
    name JcoupLocal_3_3 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename JcoupLocal_3_3 \
    op interface \
    ports { JcoupLocal_3_3_address0 { O 4 vector } JcoupLocal_3_3_ce0 { O 1 bit } JcoupLocal_3_3_we0 { O 1 bit } JcoupLocal_3_3_d0 { O 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal_3_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 594 \
    name JcoupLocal_3_4 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename JcoupLocal_3_4 \
    op interface \
    ports { JcoupLocal_3_4_address0 { O 4 vector } JcoupLocal_3_4_ce0 { O 1 bit } JcoupLocal_3_4_we0 { O 1 bit } JcoupLocal_3_4_d0 { O 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal_3_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 595 \
    name JcoupLocal_3_5 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename JcoupLocal_3_5 \
    op interface \
    ports { JcoupLocal_3_5_address0 { O 4 vector } JcoupLocal_3_5_ce0 { O 1 bit } JcoupLocal_3_5_we0 { O 1 bit } JcoupLocal_3_5_d0 { O 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal_3_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 596 \
    name JcoupLocal_3_6 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename JcoupLocal_3_6 \
    op interface \
    ports { JcoupLocal_3_6_address0 { O 4 vector } JcoupLocal_3_6_ce0 { O 1 bit } JcoupLocal_3_6_we0 { O 1 bit } JcoupLocal_3_6_d0 { O 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal_3_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 597 \
    name JcoupLocal_3_7 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename JcoupLocal_3_7 \
    op interface \
    ports { JcoupLocal_3_7_address0 { O 4 vector } JcoupLocal_3_7_ce0 { O 1 bit } JcoupLocal_3_7_we0 { O 1 bit } JcoupLocal_3_7_d0 { O 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal_3_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 598 \
    name JcoupLocal_3_8 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename JcoupLocal_3_8 \
    op interface \
    ports { JcoupLocal_3_8_address0 { O 4 vector } JcoupLocal_3_8_ce0 { O 1 bit } JcoupLocal_3_8_we0 { O 1 bit } JcoupLocal_3_8_d0 { O 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal_3_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 599 \
    name JcoupLocal_3_9 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename JcoupLocal_3_9 \
    op interface \
    ports { JcoupLocal_3_9_address0 { O 4 vector } JcoupLocal_3_9_ce0 { O 1 bit } JcoupLocal_3_9_we0 { O 1 bit } JcoupLocal_3_9_d0 { O 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal_3_9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 600 \
    name JcoupLocal_3_10 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename JcoupLocal_3_10 \
    op interface \
    ports { JcoupLocal_3_10_address0 { O 4 vector } JcoupLocal_3_10_ce0 { O 1 bit } JcoupLocal_3_10_we0 { O 1 bit } JcoupLocal_3_10_d0 { O 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal_3_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 601 \
    name JcoupLocal_3_11 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename JcoupLocal_3_11 \
    op interface \
    ports { JcoupLocal_3_11_address0 { O 4 vector } JcoupLocal_3_11_ce0 { O 1 bit } JcoupLocal_3_11_we0 { O 1 bit } JcoupLocal_3_11_d0 { O 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal_3_11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 602 \
    name JcoupLocal_3_12 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename JcoupLocal_3_12 \
    op interface \
    ports { JcoupLocal_3_12_address0 { O 4 vector } JcoupLocal_3_12_ce0 { O 1 bit } JcoupLocal_3_12_we0 { O 1 bit } JcoupLocal_3_12_d0 { O 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal_3_12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 603 \
    name JcoupLocal_3_13 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename JcoupLocal_3_13 \
    op interface \
    ports { JcoupLocal_3_13_address0 { O 4 vector } JcoupLocal_3_13_ce0 { O 1 bit } JcoupLocal_3_13_we0 { O 1 bit } JcoupLocal_3_13_d0 { O 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal_3_13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 604 \
    name JcoupLocal_3_14 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename JcoupLocal_3_14 \
    op interface \
    ports { JcoupLocal_3_14_address0 { O 4 vector } JcoupLocal_3_14_ce0 { O 1 bit } JcoupLocal_3_14_we0 { O 1 bit } JcoupLocal_3_14_d0 { O 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal_3_14'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 605 \
    name JcoupLocal_3_15 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename JcoupLocal_3_15 \
    op interface \
    ports { JcoupLocal_3_15_address0 { O 4 vector } JcoupLocal_3_15_ce0 { O 1 bit } JcoupLocal_3_15_we0 { O 1 bit } JcoupLocal_3_15_d0 { O 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal_3_15'"
}
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


# flow_control definition:
set InstName QuantumMonteCarloU50_flow_control_loop_pipe_sequential_init_U
set CompName QuantumMonteCarloU50_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix QuantumMonteCarloU50_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


