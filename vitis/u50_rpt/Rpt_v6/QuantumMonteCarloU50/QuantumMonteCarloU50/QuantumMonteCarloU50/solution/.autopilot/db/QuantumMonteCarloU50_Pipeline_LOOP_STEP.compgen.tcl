# This script segment is generated automatically by AutoPilot

set name QuantumMonteCarloU50_fadd_32ns_32ns_32_7_full_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {fadd} IMPL {fulldsp} LATENCY 6 ALLOW_PRAGMA 1
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
    id 365 \
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
    id 366 \
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
    id 367 \
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
    id 368 \
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
    id 369 \
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
    id 370 \
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
    id 371 \
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
    id 372 \
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
    id 373 \
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
    id 374 \
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
    id 375 \
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
    id 376 \
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
    id 377 \
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
    id 378 \
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
    id 379 \
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
    id 380 \
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
    id 381 \
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
    id 382 \
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
    id 383 \
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
    id 384 \
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
    id 385 \
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
    id 386 \
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
    id 387 \
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
    id 388 \
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
    id 389 \
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
    id 390 \
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
    id 391 \
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
    id 392 \
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
    id 393 \
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
    id 394 \
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
    id 395 \
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
    id 396 \
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
    id 398 \
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
    id 399 \
    name JcoupLocal_1_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename JcoupLocal_1_0 \
    op interface \
    ports { JcoupLocal_1_0_address0 { O 4 vector } JcoupLocal_1_0_ce0 { O 1 bit } JcoupLocal_1_0_q0 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal_1_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 400 \
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
    id 401 \
    name JcoupLocal_1_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename JcoupLocal_1_1 \
    op interface \
    ports { JcoupLocal_1_1_address0 { O 4 vector } JcoupLocal_1_1_ce0 { O 1 bit } JcoupLocal_1_1_q0 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal_1_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 402 \
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
    id 403 \
    name JcoupLocal_1_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename JcoupLocal_1_2 \
    op interface \
    ports { JcoupLocal_1_2_address0 { O 4 vector } JcoupLocal_1_2_ce0 { O 1 bit } JcoupLocal_1_2_q0 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal_1_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 404 \
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
    id 405 \
    name JcoupLocal_1_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename JcoupLocal_1_3 \
    op interface \
    ports { JcoupLocal_1_3_address0 { O 4 vector } JcoupLocal_1_3_ce0 { O 1 bit } JcoupLocal_1_3_q0 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal_1_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 406 \
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
    id 407 \
    name JcoupLocal_1_4 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename JcoupLocal_1_4 \
    op interface \
    ports { JcoupLocal_1_4_address0 { O 4 vector } JcoupLocal_1_4_ce0 { O 1 bit } JcoupLocal_1_4_q0 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal_1_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 408 \
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
    id 409 \
    name JcoupLocal_1_5 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename JcoupLocal_1_5 \
    op interface \
    ports { JcoupLocal_1_5_address0 { O 4 vector } JcoupLocal_1_5_ce0 { O 1 bit } JcoupLocal_1_5_q0 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal_1_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 410 \
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
    id 411 \
    name JcoupLocal_1_6 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename JcoupLocal_1_6 \
    op interface \
    ports { JcoupLocal_1_6_address0 { O 4 vector } JcoupLocal_1_6_ce0 { O 1 bit } JcoupLocal_1_6_q0 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal_1_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 412 \
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
    id 413 \
    name JcoupLocal_1_7 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename JcoupLocal_1_7 \
    op interface \
    ports { JcoupLocal_1_7_address0 { O 4 vector } JcoupLocal_1_7_ce0 { O 1 bit } JcoupLocal_1_7_q0 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal_1_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 414 \
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
    id 415 \
    name JcoupLocal_1_8 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename JcoupLocal_1_8 \
    op interface \
    ports { JcoupLocal_1_8_address0 { O 4 vector } JcoupLocal_1_8_ce0 { O 1 bit } JcoupLocal_1_8_q0 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal_1_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 416 \
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
    id 417 \
    name JcoupLocal_1_9 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename JcoupLocal_1_9 \
    op interface \
    ports { JcoupLocal_1_9_address0 { O 4 vector } JcoupLocal_1_9_ce0 { O 1 bit } JcoupLocal_1_9_q0 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal_1_9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 418 \
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
    id 419 \
    name JcoupLocal_1_10 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename JcoupLocal_1_10 \
    op interface \
    ports { JcoupLocal_1_10_address0 { O 4 vector } JcoupLocal_1_10_ce0 { O 1 bit } JcoupLocal_1_10_q0 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal_1_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 420 \
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
    id 421 \
    name JcoupLocal_1_11 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename JcoupLocal_1_11 \
    op interface \
    ports { JcoupLocal_1_11_address0 { O 4 vector } JcoupLocal_1_11_ce0 { O 1 bit } JcoupLocal_1_11_q0 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal_1_11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 422 \
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
    id 423 \
    name JcoupLocal_1_12 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename JcoupLocal_1_12 \
    op interface \
    ports { JcoupLocal_1_12_address0 { O 4 vector } JcoupLocal_1_12_ce0 { O 1 bit } JcoupLocal_1_12_q0 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal_1_12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 424 \
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
    id 425 \
    name JcoupLocal_1_13 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename JcoupLocal_1_13 \
    op interface \
    ports { JcoupLocal_1_13_address0 { O 4 vector } JcoupLocal_1_13_ce0 { O 1 bit } JcoupLocal_1_13_q0 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal_1_13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 426 \
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
    id 427 \
    name JcoupLocal_1_14 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename JcoupLocal_1_14 \
    op interface \
    ports { JcoupLocal_1_14_address0 { O 4 vector } JcoupLocal_1_14_ce0 { O 1 bit } JcoupLocal_1_14_q0 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal_1_14'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 428 \
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
    id 429 \
    name JcoupLocal_1_15 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename JcoupLocal_1_15 \
    op interface \
    ports { JcoupLocal_1_15_address0 { O 4 vector } JcoupLocal_1_15_ce0 { O 1 bit } JcoupLocal_1_15_q0 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal_1_15'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 431 \
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
    id 432 \
    name JcoupLocal_2_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename JcoupLocal_2_0 \
    op interface \
    ports { JcoupLocal_2_0_address0 { O 4 vector } JcoupLocal_2_0_ce0 { O 1 bit } JcoupLocal_2_0_q0 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal_2_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 433 \
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
    id 434 \
    name JcoupLocal_2_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename JcoupLocal_2_1 \
    op interface \
    ports { JcoupLocal_2_1_address0 { O 4 vector } JcoupLocal_2_1_ce0 { O 1 bit } JcoupLocal_2_1_q0 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal_2_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 435 \
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
    id 436 \
    name JcoupLocal_2_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename JcoupLocal_2_2 \
    op interface \
    ports { JcoupLocal_2_2_address0 { O 4 vector } JcoupLocal_2_2_ce0 { O 1 bit } JcoupLocal_2_2_q0 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal_2_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 437 \
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
    id 438 \
    name JcoupLocal_2_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename JcoupLocal_2_3 \
    op interface \
    ports { JcoupLocal_2_3_address0 { O 4 vector } JcoupLocal_2_3_ce0 { O 1 bit } JcoupLocal_2_3_q0 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal_2_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 439 \
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
    id 440 \
    name JcoupLocal_2_4 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename JcoupLocal_2_4 \
    op interface \
    ports { JcoupLocal_2_4_address0 { O 4 vector } JcoupLocal_2_4_ce0 { O 1 bit } JcoupLocal_2_4_q0 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal_2_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 441 \
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
    id 442 \
    name JcoupLocal_2_5 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename JcoupLocal_2_5 \
    op interface \
    ports { JcoupLocal_2_5_address0 { O 4 vector } JcoupLocal_2_5_ce0 { O 1 bit } JcoupLocal_2_5_q0 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal_2_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 443 \
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
    id 444 \
    name JcoupLocal_2_6 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename JcoupLocal_2_6 \
    op interface \
    ports { JcoupLocal_2_6_address0 { O 4 vector } JcoupLocal_2_6_ce0 { O 1 bit } JcoupLocal_2_6_q0 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal_2_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 445 \
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
    id 446 \
    name JcoupLocal_2_7 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename JcoupLocal_2_7 \
    op interface \
    ports { JcoupLocal_2_7_address0 { O 4 vector } JcoupLocal_2_7_ce0 { O 1 bit } JcoupLocal_2_7_q0 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal_2_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 447 \
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
    id 448 \
    name JcoupLocal_2_8 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename JcoupLocal_2_8 \
    op interface \
    ports { JcoupLocal_2_8_address0 { O 4 vector } JcoupLocal_2_8_ce0 { O 1 bit } JcoupLocal_2_8_q0 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal_2_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 449 \
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
    id 450 \
    name JcoupLocal_2_9 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename JcoupLocal_2_9 \
    op interface \
    ports { JcoupLocal_2_9_address0 { O 4 vector } JcoupLocal_2_9_ce0 { O 1 bit } JcoupLocal_2_9_q0 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal_2_9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 451 \
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
    id 452 \
    name JcoupLocal_2_10 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename JcoupLocal_2_10 \
    op interface \
    ports { JcoupLocal_2_10_address0 { O 4 vector } JcoupLocal_2_10_ce0 { O 1 bit } JcoupLocal_2_10_q0 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal_2_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 453 \
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
    id 454 \
    name JcoupLocal_2_11 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename JcoupLocal_2_11 \
    op interface \
    ports { JcoupLocal_2_11_address0 { O 4 vector } JcoupLocal_2_11_ce0 { O 1 bit } JcoupLocal_2_11_q0 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal_2_11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 455 \
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
    id 456 \
    name JcoupLocal_2_12 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename JcoupLocal_2_12 \
    op interface \
    ports { JcoupLocal_2_12_address0 { O 4 vector } JcoupLocal_2_12_ce0 { O 1 bit } JcoupLocal_2_12_q0 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal_2_12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 457 \
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
    id 458 \
    name JcoupLocal_2_13 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename JcoupLocal_2_13 \
    op interface \
    ports { JcoupLocal_2_13_address0 { O 4 vector } JcoupLocal_2_13_ce0 { O 1 bit } JcoupLocal_2_13_q0 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal_2_13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 459 \
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
    id 460 \
    name JcoupLocal_2_14 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename JcoupLocal_2_14 \
    op interface \
    ports { JcoupLocal_2_14_address0 { O 4 vector } JcoupLocal_2_14_ce0 { O 1 bit } JcoupLocal_2_14_q0 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal_2_14'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 461 \
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
    id 462 \
    name JcoupLocal_2_15 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename JcoupLocal_2_15 \
    op interface \
    ports { JcoupLocal_2_15_address0 { O 4 vector } JcoupLocal_2_15_ce0 { O 1 bit } JcoupLocal_2_15_q0 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal_2_15'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 464 \
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
    id 465 \
    name JcoupLocal_3_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename JcoupLocal_3_0 \
    op interface \
    ports { JcoupLocal_3_0_address0 { O 4 vector } JcoupLocal_3_0_ce0 { O 1 bit } JcoupLocal_3_0_q0 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal_3_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 466 \
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
    id 467 \
    name JcoupLocal_3_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename JcoupLocal_3_1 \
    op interface \
    ports { JcoupLocal_3_1_address0 { O 4 vector } JcoupLocal_3_1_ce0 { O 1 bit } JcoupLocal_3_1_q0 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal_3_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 468 \
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
    id 469 \
    name JcoupLocal_3_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename JcoupLocal_3_2 \
    op interface \
    ports { JcoupLocal_3_2_address0 { O 4 vector } JcoupLocal_3_2_ce0 { O 1 bit } JcoupLocal_3_2_q0 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal_3_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 470 \
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
    id 471 \
    name JcoupLocal_3_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename JcoupLocal_3_3 \
    op interface \
    ports { JcoupLocal_3_3_address0 { O 4 vector } JcoupLocal_3_3_ce0 { O 1 bit } JcoupLocal_3_3_q0 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal_3_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 472 \
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
    id 473 \
    name JcoupLocal_3_4 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename JcoupLocal_3_4 \
    op interface \
    ports { JcoupLocal_3_4_address0 { O 4 vector } JcoupLocal_3_4_ce0 { O 1 bit } JcoupLocal_3_4_q0 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal_3_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 474 \
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
    id 475 \
    name JcoupLocal_3_5 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename JcoupLocal_3_5 \
    op interface \
    ports { JcoupLocal_3_5_address0 { O 4 vector } JcoupLocal_3_5_ce0 { O 1 bit } JcoupLocal_3_5_q0 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal_3_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 476 \
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
    id 477 \
    name JcoupLocal_3_6 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename JcoupLocal_3_6 \
    op interface \
    ports { JcoupLocal_3_6_address0 { O 4 vector } JcoupLocal_3_6_ce0 { O 1 bit } JcoupLocal_3_6_q0 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal_3_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 478 \
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
    id 479 \
    name JcoupLocal_3_7 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename JcoupLocal_3_7 \
    op interface \
    ports { JcoupLocal_3_7_address0 { O 4 vector } JcoupLocal_3_7_ce0 { O 1 bit } JcoupLocal_3_7_q0 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal_3_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 480 \
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
    id 481 \
    name JcoupLocal_3_8 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename JcoupLocal_3_8 \
    op interface \
    ports { JcoupLocal_3_8_address0 { O 4 vector } JcoupLocal_3_8_ce0 { O 1 bit } JcoupLocal_3_8_q0 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal_3_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 482 \
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
    id 483 \
    name JcoupLocal_3_9 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename JcoupLocal_3_9 \
    op interface \
    ports { JcoupLocal_3_9_address0 { O 4 vector } JcoupLocal_3_9_ce0 { O 1 bit } JcoupLocal_3_9_q0 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal_3_9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 484 \
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
    id 485 \
    name JcoupLocal_3_10 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename JcoupLocal_3_10 \
    op interface \
    ports { JcoupLocal_3_10_address0 { O 4 vector } JcoupLocal_3_10_ce0 { O 1 bit } JcoupLocal_3_10_q0 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal_3_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 486 \
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
    id 487 \
    name JcoupLocal_3_11 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename JcoupLocal_3_11 \
    op interface \
    ports { JcoupLocal_3_11_address0 { O 4 vector } JcoupLocal_3_11_ce0 { O 1 bit } JcoupLocal_3_11_q0 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal_3_11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 488 \
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
    id 489 \
    name JcoupLocal_3_12 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename JcoupLocal_3_12 \
    op interface \
    ports { JcoupLocal_3_12_address0 { O 4 vector } JcoupLocal_3_12_ce0 { O 1 bit } JcoupLocal_3_12_q0 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal_3_12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 490 \
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
    id 491 \
    name JcoupLocal_3_13 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename JcoupLocal_3_13 \
    op interface \
    ports { JcoupLocal_3_13_address0 { O 4 vector } JcoupLocal_3_13_ce0 { O 1 bit } JcoupLocal_3_13_q0 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal_3_13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 492 \
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
    id 493 \
    name JcoupLocal_3_14 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename JcoupLocal_3_14 \
    op interface \
    ports { JcoupLocal_3_14_address0 { O 4 vector } JcoupLocal_3_14_ce0 { O 1 bit } JcoupLocal_3_14_q0 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal_3_14'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 494 \
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


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 495 \
    name JcoupLocal_3_15 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename JcoupLocal_3_15 \
    op interface \
    ports { JcoupLocal_3_15_address0 { O 4 vector } JcoupLocal_3_15_ce0 { O 1 bit } JcoupLocal_3_15_q0 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'JcoupLocal_3_15'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 361 \
    name dH_3_1_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dH_3_1_reload \
    op interface \
    ports { dH_3_1_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 362 \
    name dH_2_1_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dH_2_1_reload \
    op interface \
    ports { dH_2_1_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 363 \
    name dH_1_1_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dH_1_1_reload \
    op interface \
    ports { dH_1_1_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 364 \
    name dH_0_1_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dH_0_1_reload \
    op interface \
    ports { dH_0_1_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 397 \
    name inside \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_inside \
    op interface \
    ports { inside { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 430 \
    name inside_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_inside_1 \
    op interface \
    ports { inside_1 { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 463 \
    name inside_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_inside_2 \
    op interface \
    ports { inside_2 { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 496 \
    name inside_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_inside_3 \
    op interface \
    ports { inside_3 { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 497 \
    name dH_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dH_3_out \
    op interface \
    ports { dH_3_out { O 32 vector } dH_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 498 \
    name dH_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dH_2_out \
    op interface \
    ports { dH_2_out { O 32 vector } dH_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 499 \
    name dH_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dH_1_out \
    op interface \
    ports { dH_1_out { O 32 vector } dH_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 500 \
    name dH_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dH_0_out \
    op interface \
    ports { dH_0_out { O 32 vector } dH_0_out_ap_vld { O 1 bit } } \
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


