# This script segment is generated automatically by AutoPilot

set id 67
set name QuantumMonteCarloU50_mux_42_32_1_1
set corename simcore_mux
set op mux
set stage_num 1
set din0_width 32
set din0_signed 0
set din1_width 32
set din1_signed 0
set din2_width 32
set din2_signed 0
set din3_width 32
set din3_signed 0
set din4_width 2
set din4_signed 0
set dout_width 32
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
    dout_width ${dout_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_pipemux, check your platform lib"
}
}


set id 72
set name QuantumMonteCarloU50_mux_647_16_1_1
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
set din16_width 16
set din16_signed 0
set din17_width 16
set din17_signed 0
set din18_width 16
set din18_signed 0
set din19_width 16
set din19_signed 0
set din20_width 16
set din20_signed 0
set din21_width 16
set din21_signed 0
set din22_width 16
set din22_signed 0
set din23_width 16
set din23_signed 0
set din24_width 16
set din24_signed 0
set din25_width 16
set din25_signed 0
set din26_width 16
set din26_signed 0
set din27_width 16
set din27_signed 0
set din28_width 16
set din28_signed 0
set din29_width 16
set din29_signed 0
set din30_width 16
set din30_signed 0
set din31_width 16
set din31_signed 0
set din32_width 16
set din32_signed 0
set din33_width 16
set din33_signed 0
set din34_width 16
set din34_signed 0
set din35_width 16
set din35_signed 0
set din36_width 16
set din36_signed 0
set din37_width 16
set din37_signed 0
set din38_width 16
set din38_signed 0
set din39_width 16
set din39_signed 0
set din40_width 16
set din40_signed 0
set din41_width 16
set din41_signed 0
set din42_width 16
set din42_signed 0
set din43_width 16
set din43_signed 0
set din44_width 16
set din44_signed 0
set din45_width 16
set din45_signed 0
set din46_width 16
set din46_signed 0
set din47_width 16
set din47_signed 0
set din48_width 16
set din48_signed 0
set din49_width 16
set din49_signed 0
set din50_width 16
set din50_signed 0
set din51_width 16
set din51_signed 0
set din52_width 16
set din52_signed 0
set din53_width 16
set din53_signed 0
set din54_width 16
set din54_signed 0
set din55_width 16
set din55_signed 0
set din56_width 16
set din56_signed 0
set din57_width 16
set din57_signed 0
set din58_width 16
set din58_signed 0
set din59_width 16
set din59_signed 0
set din60_width 16
set din60_signed 0
set din61_width 16
set din61_signed 0
set din62_width 16
set din62_signed 0
set din63_width 16
set din63_signed 0
set din64_width 7
set din64_signed 0
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
    din17_width ${din17_width} \
    din17_signed ${din17_signed} \
    din18_width ${din18_width} \
    din18_signed ${din18_signed} \
    din19_width ${din19_width} \
    din19_signed ${din19_signed} \
    din20_width ${din20_width} \
    din20_signed ${din20_signed} \
    din21_width ${din21_width} \
    din21_signed ${din21_signed} \
    din22_width ${din22_width} \
    din22_signed ${din22_signed} \
    din23_width ${din23_width} \
    din23_signed ${din23_signed} \
    din24_width ${din24_width} \
    din24_signed ${din24_signed} \
    din25_width ${din25_width} \
    din25_signed ${din25_signed} \
    din26_width ${din26_width} \
    din26_signed ${din26_signed} \
    din27_width ${din27_width} \
    din27_signed ${din27_signed} \
    din28_width ${din28_width} \
    din28_signed ${din28_signed} \
    din29_width ${din29_width} \
    din29_signed ${din29_signed} \
    din30_width ${din30_width} \
    din30_signed ${din30_signed} \
    din31_width ${din31_width} \
    din31_signed ${din31_signed} \
    din32_width ${din32_width} \
    din32_signed ${din32_signed} \
    din33_width ${din33_width} \
    din33_signed ${din33_signed} \
    din34_width ${din34_width} \
    din34_signed ${din34_signed} \
    din35_width ${din35_width} \
    din35_signed ${din35_signed} \
    din36_width ${din36_width} \
    din36_signed ${din36_signed} \
    din37_width ${din37_width} \
    din37_signed ${din37_signed} \
    din38_width ${din38_width} \
    din38_signed ${din38_signed} \
    din39_width ${din39_width} \
    din39_signed ${din39_signed} \
    din40_width ${din40_width} \
    din40_signed ${din40_signed} \
    din41_width ${din41_width} \
    din41_signed ${din41_signed} \
    din42_width ${din42_width} \
    din42_signed ${din42_signed} \
    din43_width ${din43_width} \
    din43_signed ${din43_signed} \
    din44_width ${din44_width} \
    din44_signed ${din44_signed} \
    din45_width ${din45_width} \
    din45_signed ${din45_signed} \
    din46_width ${din46_width} \
    din46_signed ${din46_signed} \
    din47_width ${din47_width} \
    din47_signed ${din47_signed} \
    din48_width ${din48_width} \
    din48_signed ${din48_signed} \
    din49_width ${din49_width} \
    din49_signed ${din49_signed} \
    din50_width ${din50_width} \
    din50_signed ${din50_signed} \
    din51_width ${din51_width} \
    din51_signed ${din51_signed} \
    din52_width ${din52_width} \
    din52_signed ${din52_signed} \
    din53_width ${din53_width} \
    din53_signed ${din53_signed} \
    din54_width ${din54_width} \
    din54_signed ${din54_signed} \
    din55_width ${din55_width} \
    din55_signed ${din55_signed} \
    din56_width ${din56_width} \
    din56_signed ${din56_signed} \
    din57_width ${din57_width} \
    din57_signed ${din57_signed} \
    din58_width ${din58_width} \
    din58_signed ${din58_signed} \
    din59_width ${din59_width} \
    din59_signed ${din59_signed} \
    din60_width ${din60_width} \
    din60_signed ${din60_signed} \
    din61_width ${din61_width} \
    din61_signed ${din61_signed} \
    din62_width ${din62_width} \
    din62_signed ${din62_signed} \
    din63_width ${din63_width} \
    din63_signed ${din63_signed} \
    din64_width ${din64_width} \
    din64_signed ${din64_signed} \
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
    id 106 \
    name trottersLocal_V_0_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename trottersLocal_V_0_0 \
    op interface \
    ports { trottersLocal_V_0_0_address0 { O 4 vector } trottersLocal_V_0_0_ce0 { O 1 bit } trottersLocal_V_0_0_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'trottersLocal_V_0_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 107 \
    name trottersLocal_V_0_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename trottersLocal_V_0_1 \
    op interface \
    ports { trottersLocal_V_0_1_address0 { O 4 vector } trottersLocal_V_0_1_ce0 { O 1 bit } trottersLocal_V_0_1_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'trottersLocal_V_0_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 108 \
    name trottersLocal_V_0_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename trottersLocal_V_0_2 \
    op interface \
    ports { trottersLocal_V_0_2_address0 { O 4 vector } trottersLocal_V_0_2_ce0 { O 1 bit } trottersLocal_V_0_2_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'trottersLocal_V_0_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 109 \
    name trottersLocal_V_0_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename trottersLocal_V_0_3 \
    op interface \
    ports { trottersLocal_V_0_3_address0 { O 4 vector } trottersLocal_V_0_3_ce0 { O 1 bit } trottersLocal_V_0_3_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'trottersLocal_V_0_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 110 \
    name trottersLocal_V_0_4 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename trottersLocal_V_0_4 \
    op interface \
    ports { trottersLocal_V_0_4_address0 { O 4 vector } trottersLocal_V_0_4_ce0 { O 1 bit } trottersLocal_V_0_4_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'trottersLocal_V_0_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 111 \
    name trottersLocal_V_0_5 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename trottersLocal_V_0_5 \
    op interface \
    ports { trottersLocal_V_0_5_address0 { O 4 vector } trottersLocal_V_0_5_ce0 { O 1 bit } trottersLocal_V_0_5_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'trottersLocal_V_0_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 112 \
    name trottersLocal_V_0_6 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename trottersLocal_V_0_6 \
    op interface \
    ports { trottersLocal_V_0_6_address0 { O 4 vector } trottersLocal_V_0_6_ce0 { O 1 bit } trottersLocal_V_0_6_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'trottersLocal_V_0_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 113 \
    name trottersLocal_V_0_7 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename trottersLocal_V_0_7 \
    op interface \
    ports { trottersLocal_V_0_7_address0 { O 4 vector } trottersLocal_V_0_7_ce0 { O 1 bit } trottersLocal_V_0_7_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'trottersLocal_V_0_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 114 \
    name trottersLocal_V_0_8 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename trottersLocal_V_0_8 \
    op interface \
    ports { trottersLocal_V_0_8_address0 { O 4 vector } trottersLocal_V_0_8_ce0 { O 1 bit } trottersLocal_V_0_8_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'trottersLocal_V_0_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 115 \
    name trottersLocal_V_0_9 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename trottersLocal_V_0_9 \
    op interface \
    ports { trottersLocal_V_0_9_address0 { O 4 vector } trottersLocal_V_0_9_ce0 { O 1 bit } trottersLocal_V_0_9_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'trottersLocal_V_0_9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 116 \
    name trottersLocal_V_0_10 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename trottersLocal_V_0_10 \
    op interface \
    ports { trottersLocal_V_0_10_address0 { O 4 vector } trottersLocal_V_0_10_ce0 { O 1 bit } trottersLocal_V_0_10_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'trottersLocal_V_0_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 117 \
    name trottersLocal_V_0_11 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename trottersLocal_V_0_11 \
    op interface \
    ports { trottersLocal_V_0_11_address0 { O 4 vector } trottersLocal_V_0_11_ce0 { O 1 bit } trottersLocal_V_0_11_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'trottersLocal_V_0_11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 118 \
    name trottersLocal_V_0_12 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename trottersLocal_V_0_12 \
    op interface \
    ports { trottersLocal_V_0_12_address0 { O 4 vector } trottersLocal_V_0_12_ce0 { O 1 bit } trottersLocal_V_0_12_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'trottersLocal_V_0_12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 119 \
    name trottersLocal_V_0_13 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename trottersLocal_V_0_13 \
    op interface \
    ports { trottersLocal_V_0_13_address0 { O 4 vector } trottersLocal_V_0_13_ce0 { O 1 bit } trottersLocal_V_0_13_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'trottersLocal_V_0_13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 120 \
    name trottersLocal_V_0_14 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename trottersLocal_V_0_14 \
    op interface \
    ports { trottersLocal_V_0_14_address0 { O 4 vector } trottersLocal_V_0_14_ce0 { O 1 bit } trottersLocal_V_0_14_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'trottersLocal_V_0_14'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 121 \
    name trottersLocal_V_0_15 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename trottersLocal_V_0_15 \
    op interface \
    ports { trottersLocal_V_0_15_address0 { O 4 vector } trottersLocal_V_0_15_ce0 { O 1 bit } trottersLocal_V_0_15_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'trottersLocal_V_0_15'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 122 \
    name trottersLocal_V_1_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename trottersLocal_V_1_0 \
    op interface \
    ports { trottersLocal_V_1_0_address0 { O 4 vector } trottersLocal_V_1_0_ce0 { O 1 bit } trottersLocal_V_1_0_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'trottersLocal_V_1_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 123 \
    name trottersLocal_V_1_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename trottersLocal_V_1_1 \
    op interface \
    ports { trottersLocal_V_1_1_address0 { O 4 vector } trottersLocal_V_1_1_ce0 { O 1 bit } trottersLocal_V_1_1_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'trottersLocal_V_1_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 124 \
    name trottersLocal_V_1_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename trottersLocal_V_1_2 \
    op interface \
    ports { trottersLocal_V_1_2_address0 { O 4 vector } trottersLocal_V_1_2_ce0 { O 1 bit } trottersLocal_V_1_2_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'trottersLocal_V_1_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 125 \
    name trottersLocal_V_1_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename trottersLocal_V_1_3 \
    op interface \
    ports { trottersLocal_V_1_3_address0 { O 4 vector } trottersLocal_V_1_3_ce0 { O 1 bit } trottersLocal_V_1_3_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'trottersLocal_V_1_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 126 \
    name trottersLocal_V_1_4 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename trottersLocal_V_1_4 \
    op interface \
    ports { trottersLocal_V_1_4_address0 { O 4 vector } trottersLocal_V_1_4_ce0 { O 1 bit } trottersLocal_V_1_4_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'trottersLocal_V_1_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 127 \
    name trottersLocal_V_1_5 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename trottersLocal_V_1_5 \
    op interface \
    ports { trottersLocal_V_1_5_address0 { O 4 vector } trottersLocal_V_1_5_ce0 { O 1 bit } trottersLocal_V_1_5_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'trottersLocal_V_1_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 128 \
    name trottersLocal_V_1_6 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename trottersLocal_V_1_6 \
    op interface \
    ports { trottersLocal_V_1_6_address0 { O 4 vector } trottersLocal_V_1_6_ce0 { O 1 bit } trottersLocal_V_1_6_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'trottersLocal_V_1_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 129 \
    name trottersLocal_V_1_7 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename trottersLocal_V_1_7 \
    op interface \
    ports { trottersLocal_V_1_7_address0 { O 4 vector } trottersLocal_V_1_7_ce0 { O 1 bit } trottersLocal_V_1_7_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'trottersLocal_V_1_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 130 \
    name trottersLocal_V_1_8 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename trottersLocal_V_1_8 \
    op interface \
    ports { trottersLocal_V_1_8_address0 { O 4 vector } trottersLocal_V_1_8_ce0 { O 1 bit } trottersLocal_V_1_8_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'trottersLocal_V_1_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 131 \
    name trottersLocal_V_1_9 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename trottersLocal_V_1_9 \
    op interface \
    ports { trottersLocal_V_1_9_address0 { O 4 vector } trottersLocal_V_1_9_ce0 { O 1 bit } trottersLocal_V_1_9_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'trottersLocal_V_1_9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 132 \
    name trottersLocal_V_1_10 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename trottersLocal_V_1_10 \
    op interface \
    ports { trottersLocal_V_1_10_address0 { O 4 vector } trottersLocal_V_1_10_ce0 { O 1 bit } trottersLocal_V_1_10_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'trottersLocal_V_1_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 133 \
    name trottersLocal_V_1_11 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename trottersLocal_V_1_11 \
    op interface \
    ports { trottersLocal_V_1_11_address0 { O 4 vector } trottersLocal_V_1_11_ce0 { O 1 bit } trottersLocal_V_1_11_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'trottersLocal_V_1_11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 134 \
    name trottersLocal_V_1_12 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename trottersLocal_V_1_12 \
    op interface \
    ports { trottersLocal_V_1_12_address0 { O 4 vector } trottersLocal_V_1_12_ce0 { O 1 bit } trottersLocal_V_1_12_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'trottersLocal_V_1_12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 135 \
    name trottersLocal_V_1_13 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename trottersLocal_V_1_13 \
    op interface \
    ports { trottersLocal_V_1_13_address0 { O 4 vector } trottersLocal_V_1_13_ce0 { O 1 bit } trottersLocal_V_1_13_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'trottersLocal_V_1_13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 136 \
    name trottersLocal_V_1_14 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename trottersLocal_V_1_14 \
    op interface \
    ports { trottersLocal_V_1_14_address0 { O 4 vector } trottersLocal_V_1_14_ce0 { O 1 bit } trottersLocal_V_1_14_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'trottersLocal_V_1_14'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 137 \
    name trottersLocal_V_1_15 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename trottersLocal_V_1_15 \
    op interface \
    ports { trottersLocal_V_1_15_address0 { O 4 vector } trottersLocal_V_1_15_ce0 { O 1 bit } trottersLocal_V_1_15_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'trottersLocal_V_1_15'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 138 \
    name trottersLocal_V_2_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename trottersLocal_V_2_0 \
    op interface \
    ports { trottersLocal_V_2_0_address0 { O 4 vector } trottersLocal_V_2_0_ce0 { O 1 bit } trottersLocal_V_2_0_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'trottersLocal_V_2_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 139 \
    name trottersLocal_V_2_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename trottersLocal_V_2_1 \
    op interface \
    ports { trottersLocal_V_2_1_address0 { O 4 vector } trottersLocal_V_2_1_ce0 { O 1 bit } trottersLocal_V_2_1_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'trottersLocal_V_2_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 140 \
    name trottersLocal_V_2_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename trottersLocal_V_2_2 \
    op interface \
    ports { trottersLocal_V_2_2_address0 { O 4 vector } trottersLocal_V_2_2_ce0 { O 1 bit } trottersLocal_V_2_2_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'trottersLocal_V_2_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 141 \
    name trottersLocal_V_2_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename trottersLocal_V_2_3 \
    op interface \
    ports { trottersLocal_V_2_3_address0 { O 4 vector } trottersLocal_V_2_3_ce0 { O 1 bit } trottersLocal_V_2_3_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'trottersLocal_V_2_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 142 \
    name trottersLocal_V_2_4 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename trottersLocal_V_2_4 \
    op interface \
    ports { trottersLocal_V_2_4_address0 { O 4 vector } trottersLocal_V_2_4_ce0 { O 1 bit } trottersLocal_V_2_4_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'trottersLocal_V_2_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 143 \
    name trottersLocal_V_2_5 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename trottersLocal_V_2_5 \
    op interface \
    ports { trottersLocal_V_2_5_address0 { O 4 vector } trottersLocal_V_2_5_ce0 { O 1 bit } trottersLocal_V_2_5_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'trottersLocal_V_2_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 144 \
    name trottersLocal_V_2_6 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename trottersLocal_V_2_6 \
    op interface \
    ports { trottersLocal_V_2_6_address0 { O 4 vector } trottersLocal_V_2_6_ce0 { O 1 bit } trottersLocal_V_2_6_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'trottersLocal_V_2_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 145 \
    name trottersLocal_V_2_7 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename trottersLocal_V_2_7 \
    op interface \
    ports { trottersLocal_V_2_7_address0 { O 4 vector } trottersLocal_V_2_7_ce0 { O 1 bit } trottersLocal_V_2_7_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'trottersLocal_V_2_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 146 \
    name trottersLocal_V_2_8 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename trottersLocal_V_2_8 \
    op interface \
    ports { trottersLocal_V_2_8_address0 { O 4 vector } trottersLocal_V_2_8_ce0 { O 1 bit } trottersLocal_V_2_8_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'trottersLocal_V_2_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 147 \
    name trottersLocal_V_2_9 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename trottersLocal_V_2_9 \
    op interface \
    ports { trottersLocal_V_2_9_address0 { O 4 vector } trottersLocal_V_2_9_ce0 { O 1 bit } trottersLocal_V_2_9_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'trottersLocal_V_2_9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 148 \
    name trottersLocal_V_2_10 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename trottersLocal_V_2_10 \
    op interface \
    ports { trottersLocal_V_2_10_address0 { O 4 vector } trottersLocal_V_2_10_ce0 { O 1 bit } trottersLocal_V_2_10_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'trottersLocal_V_2_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 149 \
    name trottersLocal_V_2_11 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename trottersLocal_V_2_11 \
    op interface \
    ports { trottersLocal_V_2_11_address0 { O 4 vector } trottersLocal_V_2_11_ce0 { O 1 bit } trottersLocal_V_2_11_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'trottersLocal_V_2_11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 150 \
    name trottersLocal_V_2_12 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename trottersLocal_V_2_12 \
    op interface \
    ports { trottersLocal_V_2_12_address0 { O 4 vector } trottersLocal_V_2_12_ce0 { O 1 bit } trottersLocal_V_2_12_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'trottersLocal_V_2_12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 151 \
    name trottersLocal_V_2_13 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename trottersLocal_V_2_13 \
    op interface \
    ports { trottersLocal_V_2_13_address0 { O 4 vector } trottersLocal_V_2_13_ce0 { O 1 bit } trottersLocal_V_2_13_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'trottersLocal_V_2_13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 152 \
    name trottersLocal_V_2_14 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename trottersLocal_V_2_14 \
    op interface \
    ports { trottersLocal_V_2_14_address0 { O 4 vector } trottersLocal_V_2_14_ce0 { O 1 bit } trottersLocal_V_2_14_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'trottersLocal_V_2_14'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 153 \
    name trottersLocal_V_2_15 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename trottersLocal_V_2_15 \
    op interface \
    ports { trottersLocal_V_2_15_address0 { O 4 vector } trottersLocal_V_2_15_ce0 { O 1 bit } trottersLocal_V_2_15_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'trottersLocal_V_2_15'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 154 \
    name trottersLocal_V_3_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename trottersLocal_V_3_0 \
    op interface \
    ports { trottersLocal_V_3_0_address0 { O 4 vector } trottersLocal_V_3_0_ce0 { O 1 bit } trottersLocal_V_3_0_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'trottersLocal_V_3_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 155 \
    name trottersLocal_V_3_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename trottersLocal_V_3_1 \
    op interface \
    ports { trottersLocal_V_3_1_address0 { O 4 vector } trottersLocal_V_3_1_ce0 { O 1 bit } trottersLocal_V_3_1_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'trottersLocal_V_3_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 156 \
    name trottersLocal_V_3_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename trottersLocal_V_3_2 \
    op interface \
    ports { trottersLocal_V_3_2_address0 { O 4 vector } trottersLocal_V_3_2_ce0 { O 1 bit } trottersLocal_V_3_2_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'trottersLocal_V_3_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 157 \
    name trottersLocal_V_3_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename trottersLocal_V_3_3 \
    op interface \
    ports { trottersLocal_V_3_3_address0 { O 4 vector } trottersLocal_V_3_3_ce0 { O 1 bit } trottersLocal_V_3_3_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'trottersLocal_V_3_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 158 \
    name trottersLocal_V_3_4 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename trottersLocal_V_3_4 \
    op interface \
    ports { trottersLocal_V_3_4_address0 { O 4 vector } trottersLocal_V_3_4_ce0 { O 1 bit } trottersLocal_V_3_4_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'trottersLocal_V_3_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 159 \
    name trottersLocal_V_3_5 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename trottersLocal_V_3_5 \
    op interface \
    ports { trottersLocal_V_3_5_address0 { O 4 vector } trottersLocal_V_3_5_ce0 { O 1 bit } trottersLocal_V_3_5_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'trottersLocal_V_3_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 160 \
    name trottersLocal_V_3_6 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename trottersLocal_V_3_6 \
    op interface \
    ports { trottersLocal_V_3_6_address0 { O 4 vector } trottersLocal_V_3_6_ce0 { O 1 bit } trottersLocal_V_3_6_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'trottersLocal_V_3_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 161 \
    name trottersLocal_V_3_7 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename trottersLocal_V_3_7 \
    op interface \
    ports { trottersLocal_V_3_7_address0 { O 4 vector } trottersLocal_V_3_7_ce0 { O 1 bit } trottersLocal_V_3_7_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'trottersLocal_V_3_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 162 \
    name trottersLocal_V_3_8 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename trottersLocal_V_3_8 \
    op interface \
    ports { trottersLocal_V_3_8_address0 { O 4 vector } trottersLocal_V_3_8_ce0 { O 1 bit } trottersLocal_V_3_8_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'trottersLocal_V_3_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 163 \
    name trottersLocal_V_3_9 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename trottersLocal_V_3_9 \
    op interface \
    ports { trottersLocal_V_3_9_address0 { O 4 vector } trottersLocal_V_3_9_ce0 { O 1 bit } trottersLocal_V_3_9_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'trottersLocal_V_3_9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 164 \
    name trottersLocal_V_3_10 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename trottersLocal_V_3_10 \
    op interface \
    ports { trottersLocal_V_3_10_address0 { O 4 vector } trottersLocal_V_3_10_ce0 { O 1 bit } trottersLocal_V_3_10_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'trottersLocal_V_3_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 165 \
    name trottersLocal_V_3_11 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename trottersLocal_V_3_11 \
    op interface \
    ports { trottersLocal_V_3_11_address0 { O 4 vector } trottersLocal_V_3_11_ce0 { O 1 bit } trottersLocal_V_3_11_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'trottersLocal_V_3_11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 166 \
    name trottersLocal_V_3_12 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename trottersLocal_V_3_12 \
    op interface \
    ports { trottersLocal_V_3_12_address0 { O 4 vector } trottersLocal_V_3_12_ce0 { O 1 bit } trottersLocal_V_3_12_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'trottersLocal_V_3_12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 167 \
    name trottersLocal_V_3_13 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename trottersLocal_V_3_13 \
    op interface \
    ports { trottersLocal_V_3_13_address0 { O 4 vector } trottersLocal_V_3_13_ce0 { O 1 bit } trottersLocal_V_3_13_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'trottersLocal_V_3_13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 168 \
    name trottersLocal_V_3_14 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename trottersLocal_V_3_14 \
    op interface \
    ports { trottersLocal_V_3_14_address0 { O 4 vector } trottersLocal_V_3_14_ce0 { O 1 bit } trottersLocal_V_3_14_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'trottersLocal_V_3_14'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 169 \
    name trottersLocal_V_3_15 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename trottersLocal_V_3_15 \
    op interface \
    ports { trottersLocal_V_3_15_address0 { O 4 vector } trottersLocal_V_3_15_ce0 { O 1 bit } trottersLocal_V_3_15_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'trottersLocal_V_3_15'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 77 \
    name logRandLocal_3_0562 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_logRandLocal_3_0562 \
    op interface \
    ports { logRandLocal_3_0562 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 78 \
    name logRandLocal_2_0561 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_logRandLocal_2_0561 \
    op interface \
    ports { logRandLocal_2_0561 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 79 \
    name logRandLocal_1_0560 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_logRandLocal_1_0560 \
    op interface \
    ports { logRandLocal_1_0560 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 80 \
    name logRandLocal_0_0559 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_logRandLocal_0_0559 \
    op interface \
    ports { logRandLocal_0_0559 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 81 \
    name dH_3_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dH_3_0 \
    op interface \
    ports { dH_3_0 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 82 \
    name dH_2_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dH_2_0 \
    op interface \
    ports { dH_2_0 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 83 \
    name dH_1_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dH_1_0 \
    op interface \
    ports { dH_1_0 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 84 \
    name dH_0_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dH_0_0 \
    op interface \
    ports { dH_0_0 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 85 \
    name downSpin_V_3_0558 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_downSpin_V_3_0558 \
    op interface \
    ports { downSpin_V_3_0558 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 86 \
    name downSpin_V_2_0557 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_downSpin_V_2_0557 \
    op interface \
    ports { downSpin_V_2_0557 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 87 \
    name downSpin_V_1_0556 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_downSpin_V_1_0556 \
    op interface \
    ports { downSpin_V_1_0556 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 88 \
    name downSpin_V_0_0555 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_downSpin_V_0_0555 \
    op interface \
    ports { downSpin_V_0_0555 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 89 \
    name upSpin_V_3_0554 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_upSpin_V_3_0554 \
    op interface \
    ports { upSpin_V_3_0554 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 90 \
    name upSpin_V_2_0553 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_upSpin_V_2_0553 \
    op interface \
    ports { upSpin_V_2_0553 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 91 \
    name upSpin_V_1_0552 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_upSpin_V_1_0552 \
    op interface \
    ports { upSpin_V_1_0552 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 92 \
    name upSpin_V_0_0551 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_upSpin_V_0_0551 \
    op interface \
    ports { upSpin_V_0_0551 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 93 \
    name iSpin_3_0550 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_iSpin_3_0550 \
    op interface \
    ports { iSpin_3_0550 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 94 \
    name iSpin_2_0549 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_iSpin_2_0549 \
    op interface \
    ports { iSpin_2_0549 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 95 \
    name iSpin_1_0548 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_iSpin_1_0548 \
    op interface \
    ports { iSpin_1_0548 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 96 \
    name iSpin_0_0547 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_iSpin_0_0547 \
    op interface \
    ports { iSpin_0_0547 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 97 \
    name iPack_3_0546 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_iPack_3_0546 \
    op interface \
    ports { iPack_3_0546 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 98 \
    name iPack_2_0545 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_iPack_2_0545 \
    op interface \
    ports { iPack_2_0545 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 99 \
    name iPack_1_0544 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_iPack_1_0544 \
    op interface \
    ports { iPack_1_0544 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 100 \
    name iPack_0_0543 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_iPack_0_0543 \
    op interface \
    ports { iPack_0_0543 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 101 \
    name logRand \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_logRand \
    op interface \
    ports { logRand { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 102 \
    name gmem \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem \
    op interface \
    ports { m_axi_gmem_AWVALID { O 1 bit } m_axi_gmem_AWREADY { I 1 bit } m_axi_gmem_AWADDR { O 64 vector } m_axi_gmem_AWID { O 1 vector } m_axi_gmem_AWLEN { O 32 vector } m_axi_gmem_AWSIZE { O 3 vector } m_axi_gmem_AWBURST { O 2 vector } m_axi_gmem_AWLOCK { O 2 vector } m_axi_gmem_AWCACHE { O 4 vector } m_axi_gmem_AWPROT { O 3 vector } m_axi_gmem_AWQOS { O 4 vector } m_axi_gmem_AWREGION { O 4 vector } m_axi_gmem_AWUSER { O 1 vector } m_axi_gmem_WVALID { O 1 bit } m_axi_gmem_WREADY { I 1 bit } m_axi_gmem_WDATA { O 512 vector } m_axi_gmem_WSTRB { O 64 vector } m_axi_gmem_WLAST { O 1 bit } m_axi_gmem_WID { O 1 vector } m_axi_gmem_WUSER { O 1 vector } m_axi_gmem_ARVALID { O 1 bit } m_axi_gmem_ARREADY { I 1 bit } m_axi_gmem_ARADDR { O 64 vector } m_axi_gmem_ARID { O 1 vector } m_axi_gmem_ARLEN { O 32 vector } m_axi_gmem_ARSIZE { O 3 vector } m_axi_gmem_ARBURST { O 2 vector } m_axi_gmem_ARLOCK { O 2 vector } m_axi_gmem_ARCACHE { O 4 vector } m_axi_gmem_ARPROT { O 3 vector } m_axi_gmem_ARQOS { O 4 vector } m_axi_gmem_ARREGION { O 4 vector } m_axi_gmem_ARUSER { O 1 vector } m_axi_gmem_RVALID { I 1 bit } m_axi_gmem_RREADY { O 1 bit } m_axi_gmem_RDATA { I 512 vector } m_axi_gmem_RLAST { I 1 bit } m_axi_gmem_RID { I 1 vector } m_axi_gmem_RUSER { I 1 vector } m_axi_gmem_RRESP { I 2 vector } m_axi_gmem_BVALID { I 1 bit } m_axi_gmem_BREADY { O 1 bit } m_axi_gmem_BRESP { I 2 vector } m_axi_gmem_BID { I 1 vector } m_axi_gmem_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 103 \
    name trunc_ln5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_trunc_ln5 \
    op interface \
    ports { trunc_ln5 { I 6 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 104 \
    name h \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_h \
    op interface \
    ports { h { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 105 \
    name trunc_ln4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_trunc_ln4 \
    op interface \
    ports { trunc_ln4 { I 6 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 170 \
    name trunc_ln8 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_trunc_ln8 \
    op interface \
    ports { trunc_ln8 { I 12 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 171 \
    name logRandLocal_3_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_logRandLocal_3_1_out \
    op interface \
    ports { logRandLocal_3_1_out { O 32 vector } logRandLocal_3_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 172 \
    name logRandLocal_2_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_logRandLocal_2_1_out \
    op interface \
    ports { logRandLocal_2_1_out { O 32 vector } logRandLocal_2_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 173 \
    name logRandLocal_1_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_logRandLocal_1_1_out \
    op interface \
    ports { logRandLocal_1_1_out { O 32 vector } logRandLocal_1_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 174 \
    name logRandLocal_0_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_logRandLocal_0_1_out \
    op interface \
    ports { logRandLocal_0_1_out { O 32 vector } logRandLocal_0_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 175 \
    name dH_3_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dH_3_1_out \
    op interface \
    ports { dH_3_1_out { O 32 vector } dH_3_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 176 \
    name dH_2_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dH_2_1_out \
    op interface \
    ports { dH_2_1_out { O 32 vector } dH_2_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 177 \
    name dH_1_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dH_1_1_out \
    op interface \
    ports { dH_1_1_out { O 32 vector } dH_1_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 178 \
    name dH_0_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dH_0_1_out \
    op interface \
    ports { dH_0_1_out { O 32 vector } dH_0_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 179 \
    name downSpin_V_3_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_downSpin_V_3_1_out \
    op interface \
    ports { downSpin_V_3_1_out { O 1 vector } downSpin_V_3_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 180 \
    name downSpin_V_2_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_downSpin_V_2_1_out \
    op interface \
    ports { downSpin_V_2_1_out { O 1 vector } downSpin_V_2_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 181 \
    name downSpin_V_1_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_downSpin_V_1_1_out \
    op interface \
    ports { downSpin_V_1_1_out { O 1 vector } downSpin_V_1_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 182 \
    name downSpin_V_0_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_downSpin_V_0_1_out \
    op interface \
    ports { downSpin_V_0_1_out { O 1 vector } downSpin_V_0_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 183 \
    name upSpin_V_3_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_upSpin_V_3_1_out \
    op interface \
    ports { upSpin_V_3_1_out { O 1 vector } upSpin_V_3_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 184 \
    name upSpin_V_2_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_upSpin_V_2_1_out \
    op interface \
    ports { upSpin_V_2_1_out { O 1 vector } upSpin_V_2_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 185 \
    name upSpin_V_1_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_upSpin_V_1_1_out \
    op interface \
    ports { upSpin_V_1_1_out { O 1 vector } upSpin_V_1_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 186 \
    name upSpin_V_0_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_upSpin_V_0_1_out \
    op interface \
    ports { upSpin_V_0_1_out { O 1 vector } upSpin_V_0_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 187 \
    name iSpin_3_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_iSpin_3_1_out \
    op interface \
    ports { iSpin_3_1_out { O 32 vector } iSpin_3_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 188 \
    name iSpin_2_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_iSpin_2_1_out \
    op interface \
    ports { iSpin_2_1_out { O 32 vector } iSpin_2_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 189 \
    name iSpin_1_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_iSpin_1_1_out \
    op interface \
    ports { iSpin_1_1_out { O 32 vector } iSpin_1_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 190 \
    name iSpin_0_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_iSpin_0_1_out \
    op interface \
    ports { iSpin_0_1_out { O 32 vector } iSpin_0_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 191 \
    name iPack_3_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_iPack_3_1_out \
    op interface \
    ports { iPack_3_1_out { O 32 vector } iPack_3_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 192 \
    name iPack_2_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_iPack_2_1_out \
    op interface \
    ports { iPack_2_1_out { O 32 vector } iPack_2_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 193 \
    name iPack_1_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_iPack_1_1_out \
    op interface \
    ports { iPack_1_1_out { O 32 vector } iPack_1_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 194 \
    name iPack_0_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_iPack_0_1_out \
    op interface \
    ports { iPack_0_1_out { O 32 vector } iPack_0_1_out_ap_vld { O 1 bit } } \
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


