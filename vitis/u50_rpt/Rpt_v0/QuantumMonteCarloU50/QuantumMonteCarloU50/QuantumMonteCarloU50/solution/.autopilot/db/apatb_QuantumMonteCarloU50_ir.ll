; ModuleID = '/home/edci/workspace/SQA_kernels/Hardware/build/QuantumMonteCarloU50/QuantumMonteCarloU50/QuantumMonteCarloU50/solution/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%struct.ap_uint = type { %struct.ap_int_base }
%struct.ap_int_base = type { %struct.ssdm_int }
%struct.ssdm_int = type { i512 }
%struct.fp_pack_t = type { [16 x float] }

; Function Attrs: noinline
define void @apatb_QuantumMonteCarloU50_ir([8 x %struct.ap_uint]* %trotters, [256 x %struct.fp_pack_t]* %Jcoup, float* %h, float %Jperp, float %Beta, [4096 x float]* %logRand) local_unnamed_addr #0 {
entry:
  %trotters_copy = alloca [4 x [8 x i512]], align 512
  %malloccall = call i8* @malloc(i64 67108864)
  %Jcoup_copy = bitcast i8* %malloccall to [4096 x [256 x i512]]*
  %malloccall1 = tail call i8* @malloc(i64 16384)
  %h_copy = bitcast i8* %malloccall1 to [4096 x float]*
  %malloccall2 = tail call i8* @malloc(i64 65536)
  %logRand_copy = bitcast i8* %malloccall2 to [4 x [4096 x float]]*
  %0 = bitcast [8 x %struct.ap_uint]* %trotters to [4 x [8 x %struct.ap_uint]]*
  %1 = bitcast [256 x %struct.fp_pack_t]* %Jcoup to [4096 x [256 x %struct.fp_pack_t]]*
  %2 = bitcast float* %h to [4096 x float]*
  %3 = bitcast [4096 x float]* %logRand to [4 x [4096 x float]]*
  call fastcc void @copy_in([4 x [8 x %struct.ap_uint]]* %0, [4 x [8 x i512]]* nonnull align 512 %trotters_copy, [4096 x [256 x %struct.fp_pack_t]]* %1, [4096 x [256 x i512]]* %Jcoup_copy, [4096 x float]* %2, [4096 x float]* %h_copy, [4 x [4096 x float]]* %3, [4 x [4096 x float]]* %logRand_copy)
  %4 = getelementptr [4096 x [256 x i512]], [4096 x [256 x i512]]* %Jcoup_copy, i32 0, i32 0
  %5 = getelementptr inbounds [4096 x float], [4096 x float]* %h_copy, i32 0, i32 0
  call void @apatb_QuantumMonteCarloU50_hw([4 x [8 x i512]]* %trotters_copy, [256 x i512]* %4, float* %5, float %Jperp, float %Beta, [4 x [4096 x float]]* %logRand_copy)
  call fastcc void @copy_out([4 x [8 x %struct.ap_uint]]* %0, [4 x [8 x i512]]* nonnull align 512 %trotters_copy, [4096 x [256 x %struct.fp_pack_t]]* %1, [4096 x [256 x i512]]* %Jcoup_copy, [4096 x float]* %2, [4096 x float]* %h_copy, [4 x [4096 x float]]* %3, [4 x [4096 x float]]* %logRand_copy)
  call void @free(i8* %malloccall)
  tail call void @free(i8* %malloccall1)
  tail call void @free(i8* %malloccall2)
  ret void
}

declare noalias i8* @malloc(i64) local_unnamed_addr

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_in([4 x [8 x %struct.ap_uint]]* readonly, [4 x [8 x i512]]* noalias align 512 "fpga.caller.interfaces"="layout_transformed", [4096 x [256 x %struct.fp_pack_t]]* readonly, [4096 x [256 x i512]]* noalias, [4096 x float]* readonly, [4096 x float]* noalias, [4 x [4096 x float]]* readonly, [4 x [4096 x float]]* noalias "fpga.caller.interfaces"="layout_transformed") unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0a4a8struct.ap_uint.93([4 x [8 x i512]]* align 512 %1, [4 x [8 x %struct.ap_uint]]* %0)
  call fastcc void @onebyonecpy_hls.p0a4096a256struct.fp_pack_t([4096 x [256 x i512]]* %3, [4096 x [256 x %struct.fp_pack_t]]* %2)
  call fastcc void @onebyonecpy_hls.p0a4096f32([4096 x float]* %5, [4096 x float]* %4)
  call fastcc void @onebyonecpy_hls.p0a4a4096f32([4 x [4096 x float]]* %7, [4 x [4096 x float]]* %6)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @onebyonecpy_hls.p0a4a8struct.ap_uint([4 x [8 x %struct.ap_uint]]* noalias "fpga.caller.interfaces"="layout_transformed", [4 x [8 x i512]]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed") unnamed_addr #2 {
entry:
  %2 = icmp eq [4 x [8 x %struct.ap_uint]]* %0, null
  %3 = icmp eq [4 x [8 x i512]]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx18 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  br label %for.loop2

for.loop2:                                        ; preds = %for.loop2, %for.loop
  %for.loop.idx317 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %for.loop2 ]
  %dst.addr5.0.0.014.gep15 = getelementptr [4 x [8 x %struct.ap_uint]], [4 x [8 x %struct.ap_uint]]* %0, i64 0, i64 %for.loop.idx18, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %5 = getelementptr [4 x [8 x i512]], [4 x [8 x i512]]* %1, i64 0, i64 %for.loop.idx18, i64 %for.loop.idx317
  %6 = load i512, i512* %5, align 64
  store i512 %6, i512* %dst.addr5.0.0.014.gep15, align 64
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx317, 1
  %exitcond = icmp ne i64 %for.loop.idx3.next, 8
  br i1 %exitcond, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %for.loop2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx18, 1
  %exitcond19 = icmp ne i64 %for.loop.idx.next, 4
  br i1 %exitcond19, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #3

; Function Attrs: argmemonly noinline
define internal fastcc void @onebyonecpy_hls.p0a4096a256struct.fp_pack_t([4096 x [256 x i512]]* noalias, [4096 x [256 x %struct.fp_pack_t]]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [4096 x [256 x i512]]* %0, null
  %3 = icmp eq [4096 x [256 x %struct.fp_pack_t]]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx23 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  br label %for.loop2

for.loop2:                                        ; preds = %for.loop2.split, %for.loop
  %for.loop.idx322 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %for.loop2.split ]
  %5 = getelementptr [4096 x [256 x i512]], [4096 x [256 x i512]]* %0, i64 0, i64 %for.loop.idx23, i64 %for.loop.idx322
  %.promoted = load i512, i512* %5, align 64
  br label %for.loop8

for.loop8:                                        ; preds = %for.loop8, %for.loop2
  %partset1 = phi i512 [ %.promoted, %for.loop2 ], [ %partset, %for.loop8 ]
  %for.loop.idx921 = phi i64 [ 0, %for.loop2 ], [ %for.loop.idx9.next, %for.loop8 ]
  %6 = mul nuw nsw i64 32, %for.loop.idx921
  %src.addr1218.gep20 = getelementptr [4096 x [256 x %struct.fp_pack_t]], [4096 x [256 x %struct.fp_pack_t]]* %1, i64 0, i64 %for.loop.idx23, i64 %for.loop.idx322, i32 0, i64 %for.loop.idx921
  %7 = load float, float* %src.addr1218.gep20, align 4
  %end = or i64 %6, 31
  %8 = call i32 @_llvm.fpga.pack.none.i32.f32(float %7)
  %9 = zext i64 %6 to i512
  %10 = zext i32 %8 to i512
  %11 = shl i512 %10, %9
  %12 = zext i64 %end to i512
  %13 = add nuw nsw i512 %12, 1
  %14 = shl i512 1, %13
  %15 = icmp uge i512 %13, 512
  %16 = select i1 %15, i512 0, i512 %14
  %17 = shl i512 1, %9
  %18 = sub i512 %16, %17
  %19 = xor i512 %18, -1
  %20 = and i512 %partset1, %19
  %partset = or i512 %20, %11
  %for.loop.idx9.next = add nuw nsw i64 %for.loop.idx921, 1
  %exitcond = icmp ne i64 %for.loop.idx9.next, 16
  br i1 %exitcond, label %for.loop8, label %for.loop2.split

for.loop2.split:                                  ; preds = %for.loop8
  store i512 %partset, i512* %5, align 64
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx322, 1
  %exitcond24 = icmp ne i64 %for.loop.idx3.next, 256
  br i1 %exitcond24, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %for.loop2.split
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx23, 1
  %exitcond25 = icmp ne i64 %for.loop.idx.next, 4096
  br i1 %exitcond25, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @onebyonecpy_hls.p0a4096f32([4096 x float]* noalias, [4096 x float]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [4096 x float]* %0, null
  %3 = icmp eq [4096 x float]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx3 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr.gep1 = getelementptr [4096 x float], [4096 x float]* %0, i64 0, i64 %for.loop.idx3
  %5 = bitcast float* %dst.addr.gep1 to i8*
  %src.addr.gep2 = getelementptr [4096 x float], [4096 x float]* %1, i64 0, i64 %for.loop.idx3
  %6 = bitcast float* %src.addr.gep2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %5, i8* align 1 %6, i64 4, i1 false)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx3, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 4096
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @onebyonecpy_hls.p0a4a4096f32([4 x [4096 x float]]* noalias "fpga.caller.interfaces"="layout_transformed", [4 x [4096 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed") unnamed_addr #2 {
entry:
  %2 = icmp eq [4 x [4096 x float]]* %0, null
  %3 = icmp eq [4 x [4096 x float]]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx12 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  br label %for.loop2

for.loop2:                                        ; preds = %for.loop2, %for.loop
  %for.loop.idx311 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %for.loop2 ]
  %dst.addr57.gep9 = getelementptr [4 x [4096 x float]], [4 x [4096 x float]]* %0, i64 0, i64 %for.loop.idx12, i64 %for.loop.idx311
  %5 = bitcast float* %dst.addr57.gep9 to i8*
  %src.addr68.gep10 = getelementptr [4 x [4096 x float]], [4 x [4096 x float]]* %1, i64 0, i64 %for.loop.idx12, i64 %for.loop.idx311
  %6 = bitcast float* %src.addr68.gep10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %5, i8* align 1 %6, i64 4, i1 false)
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx311, 1
  %exitcond = icmp ne i64 %for.loop.idx3.next, 4096
  br i1 %exitcond, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %for.loop2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx12, 1
  %exitcond13 = icmp ne i64 %for.loop.idx.next, 4
  br i1 %exitcond13, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_out([4 x [8 x %struct.ap_uint]]*, [4 x [8 x i512]]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed", [4096 x [256 x %struct.fp_pack_t]]*, [4096 x [256 x i512]]* noalias readonly, [4096 x float]*, [4096 x float]* noalias readonly, [4 x [4096 x float]]*, [4 x [4096 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
entry:
  call fastcc void @onebyonecpy_hls.p0a4a8struct.ap_uint([4 x [8 x %struct.ap_uint]]* %0, [4 x [8 x i512]]* align 512 %1)
  call fastcc void @onebyonecpy_hls.p0a4096a256struct.fp_pack_t.87([4096 x [256 x %struct.fp_pack_t]]* %2, [4096 x [256 x i512]]* %3)
  call fastcc void @onebyonecpy_hls.p0a4096f32([4096 x float]* %4, [4096 x float]* %5)
  call fastcc void @onebyonecpy_hls.p0a4a4096f32([4 x [4096 x float]]* %6, [4 x [4096 x float]]* %7)
  ret void
}

declare void @free(i8*) local_unnamed_addr

; Function Attrs: alwaysinline nounwind readnone
define internal float @_llvm.fpga.unpack.none.f32.i32(i32 %A) #5 {
  %A.cast = bitcast i32 %A to float
  ret float %A.cast
}

; Function Attrs: argmemonly noinline
define internal fastcc void @onebyonecpy_hls.p0a4096a256struct.fp_pack_t.87([4096 x [256 x %struct.fp_pack_t]]* noalias, [4096 x [256 x i512]]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [4096 x [256 x %struct.fp_pack_t]]* %0, null
  %3 = icmp eq [4096 x [256 x i512]]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx23 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  br label %for.loop2

for.loop2:                                        ; preds = %for.loop2.split, %for.loop
  %for.loop.idx322 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %for.loop2.split ]
  %5 = getelementptr [4096 x [256 x i512]], [4096 x [256 x i512]]* %1, i64 0, i64 %for.loop.idx23, i64 %for.loop.idx322
  %6 = load i512, i512* %5, align 64
  br label %for.loop8

for.loop8:                                        ; preds = %for.loop8, %for.loop2
  %for.loop.idx921 = phi i64 [ 0, %for.loop2 ], [ %for.loop.idx9.next, %for.loop8 ]
  %dst.addr1117.gep19 = getelementptr [4096 x [256 x %struct.fp_pack_t]], [4096 x [256 x %struct.fp_pack_t]]* %0, i64 0, i64 %for.loop.idx23, i64 %for.loop.idx322, i32 0, i64 %for.loop.idx921
  %7 = mul nuw nsw i64 32, %for.loop.idx921
  %end = or i64 %7, 31
  %8 = zext i64 %7 to i512
  %9 = zext i64 %end to i512
  %10 = add nuw nsw i512 %9, 1
  %11 = shl i512 1, %10
  %12 = icmp uge i512 %10, 512
  %13 = select i1 %12, i512 0, i512 %11
  %14 = shl i512 1, %8
  %15 = sub i512 %13, %14
  %16 = and i512 %6, %15
  %17 = lshr i512 %16, %8
  %partselect = trunc i512 %17 to i32
  %18 = call float @_llvm.fpga.unpack.none.f32.i32(i32 %partselect)
  store float %18, float* %dst.addr1117.gep19, align 4
  %for.loop.idx9.next = add nuw nsw i64 %for.loop.idx921, 1
  %exitcond = icmp ne i64 %for.loop.idx9.next, 16
  br i1 %exitcond, label %for.loop8, label %for.loop2.split

for.loop2.split:                                  ; preds = %for.loop8
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx322, 1
  %exitcond24 = icmp ne i64 %for.loop.idx3.next, 256
  br i1 %exitcond24, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %for.loop2.split
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx23, 1
  %exitcond25 = icmp ne i64 %for.loop.idx.next, 4096
  br i1 %exitcond25, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

; Function Attrs: alwaysinline nounwind readnone
define internal i32 @_llvm.fpga.pack.none.i32.f32(float %A) #5 {
  %A.cast = bitcast float %A to i32
  ret i32 %A.cast
}

; Function Attrs: argmemonly noinline
define internal fastcc void @onebyonecpy_hls.p0a4a8struct.ap_uint.93([4 x [8 x i512]]* noalias align 512 "fpga.caller.interfaces"="layout_transformed", [4 x [8 x %struct.ap_uint]]* noalias readonly "fpga.caller.interfaces"="layout_transformed") unnamed_addr #2 {
entry:
  %2 = icmp eq [4 x [8 x i512]]* %0, null
  %3 = icmp eq [4 x [8 x %struct.ap_uint]]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx18 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  br label %for.loop2

for.loop2:                                        ; preds = %for.loop2, %for.loop
  %for.loop.idx317 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %for.loop2 ]
  %5 = getelementptr [4 x [8 x i512]], [4 x [8 x i512]]* %0, i64 0, i64 %for.loop.idx18, i64 %for.loop.idx317
  %src.addr6.0.0.013.gep16 = getelementptr [4 x [8 x %struct.ap_uint]], [4 x [8 x %struct.ap_uint]]* %1, i64 0, i64 %for.loop.idx18, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %6 = load i512, i512* %src.addr6.0.0.013.gep16, align 64
  store i512 %6, i512* %5, align 64
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx317, 1
  %exitcond = icmp ne i64 %for.loop.idx3.next, 8
  br i1 %exitcond, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %for.loop2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx18, 1
  %exitcond19 = icmp ne i64 %for.loop.idx.next, 4
  br i1 %exitcond19, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

declare void @apatb_QuantumMonteCarloU50_hw([4 x [8 x i512]]*, [256 x i512]*, float*, float, float, [4 x [4096 x float]]*)

define void @QuantumMonteCarloU50_hw_stub_wrapper([4 x [8 x i512]]*, [256 x i512]*, float*, float, float, [4 x [4096 x float]]*) #6 {
entry:
  %6 = alloca [4 x [8 x %struct.ap_uint]]
  %malloccall = tail call i8* @malloc(i64 67108864)
  %7 = bitcast i8* %malloccall to [4096 x [256 x %struct.fp_pack_t]]*
  %8 = bitcast [256 x i512]* %1 to [4096 x [256 x i512]]*
  %9 = bitcast float* %2 to [4096 x float]*
  call void @copy_out([4 x [8 x %struct.ap_uint]]* %6, [4 x [8 x i512]]* %0, [4096 x [256 x %struct.fp_pack_t]]* %7, [4096 x [256 x i512]]* %8, [4096 x float]* null, [4096 x float]* %9, [4 x [4096 x float]]* null, [4 x [4096 x float]]* %5)
  %10 = bitcast [4 x [8 x %struct.ap_uint]]* %6 to [8 x %struct.ap_uint]*
  %11 = bitcast [4096 x [256 x %struct.fp_pack_t]]* %7 to [256 x %struct.fp_pack_t]*
  %12 = bitcast [4096 x float]* %9 to float*
  %13 = bitcast [4 x [4096 x float]]* %5 to [4096 x float]*
  call void @QuantumMonteCarloU50_hw_stub([8 x %struct.ap_uint]* %10, [256 x %struct.fp_pack_t]* %11, float* %12, float %3, float %4, [4096 x float]* %13)
  call void @copy_in([4 x [8 x %struct.ap_uint]]* %6, [4 x [8 x i512]]* %0, [4096 x [256 x %struct.fp_pack_t]]* %7, [4096 x [256 x i512]]* %8, [4096 x float]* null, [4096 x float]* %9, [4 x [4096 x float]]* null, [4 x [4096 x float]]* %5)
  ret void
}

declare void @QuantumMonteCarloU50_hw_stub([8 x %struct.ap_uint]*, [256 x %struct.fp_pack_t]*, float*, float, float, [4096 x float]*)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { argmemonly noinline "fpga.wrapper.func"="copyout" }
attributes #5 = { alwaysinline nounwind readnone }
attributes #6 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
