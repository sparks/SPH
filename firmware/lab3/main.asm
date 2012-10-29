;******************************************************************************
;* TMS320C6x C/C++ Codegen                                          PC v5.1.0 *
;* Date/Time created: Sun Oct 28 19:42:38 2012                                *
;******************************************************************************
	.compiler_opts --endian=little --mem_model:code=near --mem_model:data=far_aggregates --silicon_version=6700 

;******************************************************************************
;* GLOBAL FILE PARAMETERS                                                     *
;*                                                                            *
;*   Architecture      : TMS320C670x                                          *
;*   Optimization      : Disabled                                             *
;*   Optimizing for    : Compile time, Ease of Development                    *
;*                       Based on options: no -o, no -ms                      *
;*   Endian            : Little                                               *
;*   Interrupt Thrshld : Disabled                                             *
;*   Data Access Model : Far Aggregate Data                                   *
;*   Pipelining        : Disabled                                             *
;*   Memory Aliases    : Presume are aliases (pessimistic)                    *
;*   Debug Info        : DWARF Debug                                          *
;*                                                                            *
;******************************************************************************

	.asg	A15, FP
	.asg	B14, DP
	.asg	B15, SP
	.global	$bss


DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr DW$CU, DW_AT_name("main.c")
	.dwattr DW$CU, DW_AT_producer("TMS320C6x C/C++ Codegen PC v5.1.0 Copyright (c) 1996-2005 Texas Instruments Incorporated")
	.dwattr DW$CU, DW_AT_stmt_list(0x00)
	.dwattr DW$CU, DW_AT_TI_VERSION(0x01)
;*****************************************************************************
;* CINIT RECORDS                                                             *
;*****************************************************************************
	.sect	".cinit"
	.align	8
	.field  	IR_1,32
	.field  	_config+0,32
	.field  	23,32			; _config._regs[0] @ 0
	.field  	23,32			; _config._regs[1] @ 32
	.field  	505,32			; _config._regs[2] @ 64
	.field  	505,32			; _config._regs[3] @ 96
	.field  	17,32			; _config._regs[4] @ 128
	.field  	0,32			; _config._regs[5] @ 160
	.field  	0,32			; _config._regs[6] @ 192
	.field  	67,32			; _config._regs[7] @ 224
	.field  	129,32			; _config._regs[8] @ 256
	.field  	1,32			; _config._regs[9] @ 288
IR_1:	.set	40

	.sect	".cinit"
	.align	8
	.field  	4,32
	.field  	_left+0,32
	.field  	0,32			; _left @ 0

	.sect	".cinit"
	.align	8
	.field  	4,32
	.field  	_right+0,32
	.field  	0,32			; _right @ 0

	.sect	".cinit"
	.align	8
	.field  	2,32
	.field  	_mix+0,32
	.field  	0,16			; _mix @ 0

	.sect	".cinit"
	.align	8
	.field  	2,32
	.field  	_audio_out+0,32
	.field  	0,16			; _audio_out @ 0

	.sect	".cinit"
	.align	8
	.field  	1,32
	.field  	_input_ready+0,32
	.field  	0,8			; _input_ready @ 0

	.sect	".cinit"
	.align	8
	.field  	1,32
	.field  	_output_ready+0,32
	.field  	0,8			; _output_ready @ 0

	.sect	".cinit"
	.align	8
	.field  	1,32
	.field  	_channel_flag+0,32
	.field  	0,8			; _channel_flag @ 0


DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("DSK6713_AIC23_write"), DW_AT_symbol_name("_DSK6713_AIC23_write")
	.dwattr DW$1, DW_AT_type(*DW$T$23)
	.dwattr DW$1, DW_AT_declaration(0x01)
	.dwattr DW$1, DW_AT_external(0x01)
DW$2	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$28)
DW$3	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$29)
	.dwendtag DW$1


DW$4	.dwtag  DW_TAG_subprogram, DW_AT_name("DSK6713_AIC23_read"), DW_AT_symbol_name("_DSK6713_AIC23_read")
	.dwattr DW$4, DW_AT_type(*DW$T$23)
	.dwattr DW$4, DW_AT_declaration(0x01)
	.dwattr DW$4, DW_AT_external(0x01)
DW$5	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$28)
DW$6	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$32)
	.dwendtag DW$4


DW$7	.dwtag  DW_TAG_subprogram, DW_AT_name("printf"), DW_AT_symbol_name("_printf")
	.dwattr DW$7, DW_AT_type(*DW$T$10)
	.dwattr DW$7, DW_AT_declaration(0x01)
	.dwattr DW$7, DW_AT_external(0x01)
DW$8	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$40)
DW$9	.dwtag  DW_TAG_unspecified_parameters
	.dwendtag DW$7


DW$10	.dwtag  DW_TAG_subprogram, DW_AT_name("clock"), DW_AT_symbol_name("_clock")
	.dwattr DW$10, DW_AT_type(*DW$T$50)
	.dwattr DW$10, DW_AT_declaration(0x01)
	.dwattr DW$10, DW_AT_external(0x01)

DW$11	.dwtag  DW_TAG_subprogram, DW_AT_name("convolve_as_func"), DW_AT_symbol_name("_convolve_as_func")
	.dwattr DW$11, DW_AT_type(*DW$T$14)
	.dwattr DW$11, DW_AT_declaration(0x01)
	.dwattr DW$11, DW_AT_external(0x01)
DW$12	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$45)
DW$13	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$45)
DW$14	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$11


DW$15	.dwtag  DW_TAG_subprogram, DW_AT_name("exit"), DW_AT_symbol_name("_exit")
	.dwattr DW$15, DW_AT_type(*DW$T$10)
	.dwattr DW$15, DW_AT_declaration(0x01)
	.dwattr DW$15, DW_AT_external(0x01)
	.global	_config
_config:	.usect	".far",40,4
DW$16	.dwtag  DW_TAG_variable, DW_AT_name("config"), DW_AT_symbol_name("_config")
	.dwattr DW$16, DW_AT_location[DW_OP_addr _config]
	.dwattr DW$16, DW_AT_type(*DW$T$61)
	.dwattr DW$16, DW_AT_external(0x01)
	.global	_hCodec
	.bss	_hCodec,4,4
DW$17	.dwtag  DW_TAG_variable, DW_AT_name("hCodec"), DW_AT_symbol_name("_hCodec")
	.dwattr DW$17, DW_AT_location[DW_OP_addr _hCodec]
	.dwattr DW$17, DW_AT_type(*DW$T$28)
	.dwattr DW$17, DW_AT_external(0x01)
	.global	_textfile
	.bss	_textfile,4,4
DW$18	.dwtag  DW_TAG_variable, DW_AT_name("textfile"), DW_AT_symbol_name("_textfile")
	.dwattr DW$18, DW_AT_location[DW_OP_addr _textfile]
	.dwattr DW$18, DW_AT_type(*DW$T$63)
	.dwattr DW$18, DW_AT_external(0x01)
	.global	_out1
	.bss	_out1,4,4
DW$19	.dwtag  DW_TAG_variable, DW_AT_name("out1"), DW_AT_symbol_name("_out1")
	.dwattr DW$19, DW_AT_location[DW_OP_addr _out1]
	.dwattr DW$19, DW_AT_type(*DW$T$10)
	.dwattr DW$19, DW_AT_external(0x01)
	.global	_out2
	.bss	_out2,4,4
DW$20	.dwtag  DW_TAG_variable, DW_AT_name("out2"), DW_AT_symbol_name("_out2")
	.dwattr DW$20, DW_AT_location[DW_OP_addr _out2]
	.dwattr DW$20, DW_AT_type(*DW$T$10)
	.dwattr DW$20, DW_AT_external(0x01)
	.global	_out3
	.bss	_out3,4,4
DW$21	.dwtag  DW_TAG_variable, DW_AT_name("out3"), DW_AT_symbol_name("_out3")
	.dwattr DW$21, DW_AT_location[DW_OP_addr _out3]
	.dwattr DW$21, DW_AT_type(*DW$T$10)
	.dwattr DW$21, DW_AT_external(0x01)
	.global	_left
	.bss	_left,4,4
DW$22	.dwtag  DW_TAG_variable, DW_AT_name("left"), DW_AT_symbol_name("_left")
	.dwattr DW$22, DW_AT_location[DW_OP_addr _left]
	.dwattr DW$22, DW_AT_type(*DW$T$29)
	.dwattr DW$22, DW_AT_external(0x01)
	.global	_right
	.bss	_right,4,4
DW$23	.dwtag  DW_TAG_variable, DW_AT_name("right"), DW_AT_symbol_name("_right")
	.dwattr DW$23, DW_AT_location[DW_OP_addr _right]
	.dwattr DW$23, DW_AT_type(*DW$T$29)
	.dwattr DW$23, DW_AT_external(0x01)
	.global	_mix
	.bss	_mix,2,2
DW$24	.dwtag  DW_TAG_variable, DW_AT_name("mix"), DW_AT_symbol_name("_mix")
	.dwattr DW$24, DW_AT_location[DW_OP_addr _mix]
	.dwattr DW$24, DW_AT_type(*DW$T$23)
	.dwattr DW$24, DW_AT_external(0x01)
	.global	_audio_out
	.bss	_audio_out,2,2
DW$25	.dwtag  DW_TAG_variable, DW_AT_name("audio_out"), DW_AT_symbol_name("_audio_out")
	.dwattr DW$25, DW_AT_location[DW_OP_addr _audio_out]
	.dwattr DW$25, DW_AT_type(*DW$T$23)
	.dwattr DW$25, DW_AT_external(0x01)
	.global	_input_ready
	.bss	_input_ready,1,1
DW$26	.dwtag  DW_TAG_variable, DW_AT_name("input_ready"), DW_AT_symbol_name("_input_ready")
	.dwattr DW$26, DW_AT_location[DW_OP_addr _input_ready]
	.dwattr DW$26, DW_AT_type(*DW$T$27)
	.dwattr DW$26, DW_AT_external(0x01)
	.global	_output_ready
	.bss	_output_ready,1,1
DW$27	.dwtag  DW_TAG_variable, DW_AT_name("output_ready"), DW_AT_symbol_name("_output_ready")
	.dwattr DW$27, DW_AT_location[DW_OP_addr _output_ready]
	.dwattr DW$27, DW_AT_type(*DW$T$27)
	.dwattr DW$27, DW_AT_external(0x01)
	.global	_channel_flag
	.bss	_channel_flag,1,1
DW$28	.dwtag  DW_TAG_variable, DW_AT_name("channel_flag"), DW_AT_symbol_name("_channel_flag")
	.dwattr DW$28, DW_AT_location[DW_OP_addr _channel_flag]
	.dwattr DW$28, DW_AT_type(*DW$T$27)
	.dwattr DW$28, DW_AT_external(0x01)
	.sect	".const"
	.align	4
_$T0$1:
	.field  	-7726,32			; _$T0$1[0] @ 0
	.field  	-5544,32			; _$T0$1[1] @ 32
	.field  	-3805,32			; _$T0$1[2] @ 64
	.field  	-919,32			; _$T0$1[3] @ 96
	.field  	-5055,32			; _$T0$1[4] @ 128
	.field  	3105,32			; _$T0$1[5] @ 160
	.field  	-8432,32			; _$T0$1[6] @ 192
	.field  	7087,32			; _$T0$1[7] @ 224
	.field  	6867,32			; _$T0$1[8] @ 256
	.field  	4660,32			; _$T0$1[9] @ 288

DW$29	.dwtag  DW_TAG_variable, DW_AT_name("$T0$1"), DW_AT_symbol_name("_$T0$1")
	.dwattr DW$29, DW_AT_type(*DW$T$49)
	.dwattr DW$29, DW_AT_location[DW_OP_addr _$T0$1]
	.sect	".const"
	.align	4
_$T1$2:
	.field  	1439,32			; _$T1$2[0] @ 0
	.field  	9921,32			; _$T1$2[1] @ 32
	.field  	-1472,32			; _$T1$2[2] @ 64
	.field  	-9800,32			; _$T1$2[3] @ 96
	.field  	-3391,32			; _$T1$2[4] @ 128
	.field  	5708,32			; _$T1$2[5] @ 160
	.field  	6408,32			; _$T1$2[6] @ 192
	.field  	1202,32			; _$T1$2[7] @ 224
	.field  	-2568,32			; _$T1$2[8] @ 256
	.field  	3993,32			; _$T1$2[9] @ 288

DW$30	.dwtag  DW_TAG_variable, DW_AT_name("$T1$2"), DW_AT_symbol_name("_$T1$2")
	.dwattr DW$30, DW_AT_type(*DW$T$49)
	.dwattr DW$30, DW_AT_location[DW_OP_addr _$T1$2]
	.sect	".const"
	.align	4
_$T2$3:
	.field  	57810,16			; _$T2$3[0] @ 0
	.field  	59992,16			; _$T2$3[1] @ 16
	.field  	61731,16			; _$T2$3[2] @ 32
	.field  	64617,16			; _$T2$3[3] @ 48
	.field  	60481,16			; _$T2$3[4] @ 64
	.field  	3105,16			; _$T2$3[5] @ 80
	.field  	57104,16			; _$T2$3[6] @ 96
	.field  	7087,16			; _$T2$3[7] @ 112
	.field  	6867,16			; _$T2$3[8] @ 128
	.field  	4660,16			; _$T2$3[9] @ 144

DW$31	.dwtag  DW_TAG_variable, DW_AT_name("$T2$3"), DW_AT_symbol_name("_$T2$3")
	.dwattr DW$31, DW_AT_type(*DW$T$37)
	.dwattr DW$31, DW_AT_location[DW_OP_addr _$T2$3]
	.sect	".const"
	.align	4
_$T3$4:
	.field  	1439,16			; _$T3$4[0] @ 0
	.field  	9921,16			; _$T3$4[1] @ 16
	.field  	64064,16			; _$T3$4[2] @ 32
	.field  	55736,16			; _$T3$4[3] @ 48
	.field  	62145,16			; _$T3$4[4] @ 64
	.field  	5708,16			; _$T3$4[5] @ 80
	.field  	6408,16			; _$T3$4[6] @ 96
	.field  	1202,16			; _$T3$4[7] @ 112
	.field  	62968,16			; _$T3$4[8] @ 128
	.field  	3993,16			; _$T3$4[9] @ 144

DW$32	.dwtag  DW_TAG_variable, DW_AT_name("$T3$4"), DW_AT_symbol_name("_$T3$4")
	.dwattr DW$32, DW_AT_type(*DW$T$37)
	.dwattr DW$32, DW_AT_location[DW_OP_addr _$T3$4]
;	C:\CCStudio_v3.1\C6000\cgtools\bin\acp6x.exe --keep_unneeded_types -D_DEBUG -DCHIP_6713 -IH:/SPH/firmware/lib/dsk6713/include -IC:/CCStudio_v3.1/C6000/rtdx/include -IC:/CCStudio_v3.1/C6000/csl/include -IC:/CCStudio_v3.1/C6000/xdais/include -IC:/CCStudio_v3.1/c6000/bios/include -IC:/CCStudio_v3.1/C6000/cgtools/include --version=6700 --mem_model:code=near --mem_model:data=far_aggregates -m --i_output_file C:\Users\ssalen\AppData\Local\Temp\TI7442 --template_info_file 
	.sect	".text"
	.global	_main

DW$33	.dwtag  DW_TAG_subprogram, DW_AT_name("main"), DW_AT_symbol_name("_main")
	.dwattr DW$33, DW_AT_low_pc(_main)
	.dwattr DW$33, DW_AT_high_pc(0x00)
	.dwattr DW$33, DW_AT_begin_file("main.c")
	.dwattr DW$33, DW_AT_begin_line(0x2e)
	.dwattr DW$33, DW_AT_begin_column(0x05)
	.dwpsn	"main.c",46,12

	.dwfde DW$CIE

;******************************************************************************
;* FUNCTION NAME: _main                                                       *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP                                      *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,DP,SP                                   *
;*   Local Frame Size  : 8 Args + 136 Auto + 4 Save = 148 byte                *
;******************************************************************************
_main:
;** --------------------------------------------------------------------------*
	.dwcfa	0x0e, 0
	.dwcfa	0x09, 126, 19
           ADDK    .S2     -152,SP           ; |46| 
	.dwcfa	0x0e, 152
           STW     .D2T2   B3,*+SP(152)      ; |46| 
           NOP             2
	.dwcfa	0x80, 19, 0
DW$34	.dwtag  DW_TAG_variable, DW_AT_name("start"), DW_AT_symbol_name("_start")
	.dwattr DW$34, DW_AT_type(*DW$T$50)
	.dwattr DW$34, DW_AT_location[DW_OP_breg31 12]
DW$35	.dwtag  DW_TAG_variable, DW_AT_name("stop"), DW_AT_symbol_name("_stop")
	.dwattr DW$35, DW_AT_type(*DW$T$50)
	.dwattr DW$35, DW_AT_location[DW_OP_breg31 16]
DW$36	.dwtag  DW_TAG_variable, DW_AT_name("overhead"), DW_AT_symbol_name("_overhead")
	.dwattr DW$36, DW_AT_type(*DW$T$50)
	.dwattr DW$36, DW_AT_location[DW_OP_breg31 20]
DW$37	.dwtag  DW_TAG_variable, DW_AT_name("w"), DW_AT_symbol_name("_w")
	.dwattr DW$37, DW_AT_type(*DW$T$19)
	.dwattr DW$37, DW_AT_location[DW_OP_breg31 24]
DW$38	.dwtag  DW_TAG_variable, DW_AT_name("x"), DW_AT_symbol_name("_x")
	.dwattr DW$38, DW_AT_type(*DW$T$19)
	.dwattr DW$38, DW_AT_location[DW_OP_breg31 64]
DW$39	.dwtag  DW_TAG_variable, DW_AT_name("y"), DW_AT_symbol_name("_y")
	.dwattr DW$39, DW_AT_type(*DW$T$35)
	.dwattr DW$39, DW_AT_location[DW_OP_breg31 104]
DW$40	.dwtag  DW_TAG_variable, DW_AT_name("z"), DW_AT_symbol_name("_z")
	.dwattr DW$40, DW_AT_type(*DW$T$35)
	.dwattr DW$40, DW_AT_location[DW_OP_breg31 124]
DW$41	.dwtag  DW_TAG_variable, DW_AT_name("n"), DW_AT_symbol_name("_n")
	.dwattr DW$41, DW_AT_type(*DW$T$10)
	.dwattr DW$41, DW_AT_location[DW_OP_breg31 144]
	.dwpsn	"main.c",56,6
           CALL    .S1     __strasg          ; |56| 
           MVKL    .S2     _$T0$1,B4         ; |56| 
           MVKL    .S2     RL0,B3            ; |56| 
           MVKH    .S2     _$T0$1,B4         ; |56| 
           ADD     .D2     SP,24,B5          ; |56| 

           MV      .L1X    B5,A4             ; |56| 
||         MVKH    .S2     RL0,B3            ; |56| 
||         MVK     .S1     0x28,A6           ; |56| 

RL0:       ; CALL OCCURS {__strasg}          ; |56| 
	.dwpsn	"main.c",57,6
           CALL    .S1     __strasg          ; |57| 
           MVKL    .S2     _$T1$2,B4         ; |57| 
           MVKL    .S2     RL1,B3            ; |57| 
           MVKH    .S2     _$T1$2,B4         ; |57| 
           ADDAD   .D2     SP,8,B5           ; |57| 

           MV      .L1X    B5,A4             ; |57| 
||         MVKH    .S2     RL1,B3            ; |57| 

RL1:       ; CALL OCCURS {__strasg}          ; |57| 
	.dwpsn	"main.c",58,8
           MVKL    .S1     _$T2$3,A3         ; |58| 
           MVKH    .S1     _$T2$3,A3         ; |58| 
           LDW     .D1T1   *+A3(8),A5        ; |58| 
           LDW     .D1T1   *+A3(12),A4       ; |58| 
           LDW     .D1T2   *+A3(16),B5       ; |58| 
           LDW     .D1T1   *+A3(4),A6        ; |58| 

           LDW     .D1T1   *A3,A3            ; |58| 
||         ADDAD   .D2     SP,13,B4          ; |58| 

           STW     .D2T1   A5,*+B4(8)        ; |58| 
           STW     .D2T1   A4,*+B4(12)       ; |58| 
           STW     .D2T2   B5,*+B4(16)       ; |58| 
           STW     .D2T1   A6,*+B4(4)        ; |58| 
           STW     .D2T1   A3,*B4            ; |58| 
           NOP             2
	.dwpsn	"main.c",59,8
           MVKL    .S1     _$T3$4,A3         ; |59| 
           MVKH    .S1     _$T3$4,A3         ; |59| 
           LDW     .D1T2   *A3,B5            ; |59| 
           LDW     .D1T1   *+A3(8),A6        ; |59| 
           LDW     .D1T1   *+A3(12),A5       ; |59| 
           LDW     .D1T1   *+A3(16),A4       ; |59| 

           LDW     .D1T1   *+A3(4),A3        ; |59| 
||         ADDAW   .D2     SP,31,B4          ; |59| 

           STW     .D2T2   B5,*B4            ; |59| 
           STW     .D2T1   A6,*+B4(8)        ; |59| 
           STW     .D2T1   A5,*+B4(12)       ; |59| 
           STW     .D2T1   A4,*+B4(16)       ; |59| 
           STW     .D2T1   A3,*+B4(4)        ; |59| 
           NOP             2
	.dwpsn	"main.c",60,6
           MVK     .S1     10,A3             ; |60| 
           STW     .D2T1   A3,*+SP(144)      ; |60| 
           NOP             2
	.dwpsn	"main.c",62,2
           CALL    .S1     _clock            ; |62| 
           MVKL    .S2     RL2,B3            ; |62| 
           MVKH    .S2     RL2,B3            ; |62| 
           NOP             3
RL2:       ; CALL OCCURS {_clock}            ; |62| 
           MV      .L2X    A4,B4             ; |62| 
           STW     .D2T2   B4,*+SP(12)       ; |62| 
           NOP             2
	.dwpsn	"main.c",63,2
           CALL    .S1     _clock            ; |63| 
           MVKL    .S2     RL3,B3            ; |63| 
           MVKH    .S2     RL3,B3            ; |63| 
           NOP             3
RL3:       ; CALL OCCURS {_clock}            ; |63| 
           STW     .D2T1   A4,*+SP(16)       ; |63| 
           NOP             2
	.dwpsn	"main.c",64,2
           LDW     .D2T2   *+SP(12),B4       ; |64| 
           NOP             4
           SUB     .L2X    A4,B4,B4          ; |64| 
           STW     .D2T2   B4,*+SP(20)       ; |64| 
           NOP             2
	.dwpsn	"main.c",66,2
           CALL    .S1     _clock            ; |66| 
           MVKL    .S2     RL4,B3            ; |66| 
           MVKH    .S2     RL4,B3            ; |66| 
           NOP             3
RL4:       ; CALL OCCURS {_clock}            ; |66| 
           MV      .L2X    A4,B4             ; |66| 
           STW     .D2T2   B4,*+SP(12)       ; |66| 
           NOP             2
	.dwpsn	"main.c",67,2
           CALL    .S1     _convolve         ; |67| 
           LDW     .D2T1   *+SP(144),A6      ; |67| 
           ADD     .D2     SP,24,B4          ; |67| 
           MVKL    .S2     RL5,B3            ; |67| 
           MV      .L1X    B4,A4             ; |67| 

           MVKH    .S2     RL5,B3            ; |67| 
||         ADDAD   .D2     SP,8,B4           ; |67| 

RL5:       ; CALL OCCURS {_convolve}         ; |67| 
           STW     .D2T1   A4,*+DP(_out1)    ; |67| 
           NOP             2
	.dwpsn	"main.c",68,2
           CALL    .S1     _clock            ; |68| 
           MVKL    .S2     RL6,B3            ; |68| 
           MVKH    .S2     RL6,B3            ; |68| 
           NOP             3
RL6:       ; CALL OCCURS {_clock}            ; |68| 
           STW     .D2T1   A4,*+SP(16)       ; |68| 
           NOP             2
	.dwpsn	"main.c",69,2
           LDW     .D2T2   *+SP(12),B5       ; |69| 
           LDW     .D2T2   *+SP(20),B6       ; |69| 
           MVKL    .S2     SL1+0,B4          ; |69| 
           CALL    .S1     _printf           ; |69| 
           MVKH    .S2     SL1+0,B4          ; |69| 
           SUB     .L2X    A4,B5,B5          ; |69| 

           SUB     .L2     B5,B6,B4          ; |69| 
||         STW     .D2T2   B4,*+SP(4)        ; |69| 

           STW     .D2T2   B4,*+SP(8)        ; |69| 
||         MVKL    .S2     RL7,B3            ; |69| 

           MVKH    .S2     RL7,B3            ; |69| 
RL7:       ; CALL OCCURS {_printf}           ; |69| 
	.dwpsn	"main.c",71,2
           CALL    .S1     _clock            ; |71| 
           MVKL    .S2     RL8,B3            ; |71| 
           MVKH    .S2     RL8,B3            ; |71| 
           NOP             3
RL8:       ; CALL OCCURS {_clock}            ; |71| 
           STW     .D2T1   A4,*+SP(12)       ; |71| 
           NOP             2
	.dwpsn	"main.c",72,2
           CALL    .S1     _convolve_opt     ; |72| 
           LDW     .D2T1   *+SP(144),A6      ; |72| 
           ADD     .D2     SP,24,B4          ; |72| 
           MVKL    .S2     RL9,B3            ; |72| 
           MV      .L1X    B4,A4             ; |72| 

           MVKH    .S2     RL9,B3            ; |72| 
||         ADDAD   .D2     SP,8,B4           ; |72| 

RL9:       ; CALL OCCURS {_convolve_opt}     ; |72| 
           STW     .D2T1   A4,*+DP(_out2)    ; |72| 
           NOP             2
	.dwpsn	"main.c",73,2
           CALL    .S1     _clock            ; |73| 
           MVKL    .S2     RL10,B3           ; |73| 
           MVKH    .S2     RL10,B3           ; |73| 
           NOP             3
RL10:      ; CALL OCCURS {_clock}            ; |73| 
;** --------------------------------------------------------------------------*
           STW     .D2T1   A4,*+SP(16)       ; |73| 
           NOP             2
	.dwpsn	"main.c",74,2
           LDW     .D2T2   *+SP(12),B5       ; |74| 
           LDW     .D2T2   *+SP(20),B4       ; |74| 
           MVKL    .S2     SL2+0,B6          ; |74| 
           CALL    .S1     _printf           ; |74| 
           MVKH    .S2     SL2+0,B6          ; |74| 
           SUB     .L2X    A4,B5,B5          ; |74| 

           STW     .D2T2   B6,*+SP(4)        ; |74| 
||         SUB     .L2     B5,B4,B4          ; |74| 

           STW     .D2T2   B4,*+SP(8)        ; |74| 
||         MVKL    .S2     RL11,B3           ; |74| 

           MVKH    .S2     RL11,B3           ; |74| 
RL11:      ; CALL OCCURS {_printf}           ; |74| 
	.dwpsn	"main.c",76,2
           CALL    .S1     _clock            ; |76| 
           MVKL    .S2     RL12,B3           ; |76| 
           MVKH    .S2     RL12,B3           ; |76| 
           NOP             3
RL12:      ; CALL OCCURS {_clock}            ; |76| 
           STW     .D2T1   A4,*+SP(12)       ; |76| 
           NOP             2
	.dwpsn	"main.c",77,2
           CALL    .S1     _convolve_as_func ; |77| 
           LDW     .D2T1   *+SP(144),A6      ; |77| 
           ADD     .D2     SP,24,B5          ; |77| 
           MVKL    .S2     RL13,B3           ; |77| 
           MV      .L1X    B5,A4             ; |77| 

           MVKH    .S2     RL13,B3           ; |77| 
||         ADDAD   .D2     SP,8,B4           ; |77| 

RL13:      ; CALL OCCURS {_convolve_as_func}  ; |77| 
           STW     .D2T1   A4,*+DP(_out3)    ; |77| 
           NOP             2
	.dwpsn	"main.c",78,2
           CALL    .S1     _clock            ; |78| 
           MVKL    .S2     RL14,B3           ; |78| 
           MVKH    .S2     RL14,B3           ; |78| 
           NOP             3
RL14:      ; CALL OCCURS {_clock}            ; |78| 
           STW     .D2T1   A4,*+SP(16)       ; |78| 
           NOP             2
	.dwpsn	"main.c",79,2
           LDW     .D2T2   *+SP(12),B4       ; |79| 
           LDW     .D2T2   *+SP(20),B5       ; |79| 
           MVKL    .S1     SL3+0,A3          ; |79| 
           CALL    .S1     _printf           ; |79| 
           MVKH    .S1     SL3+0,A3          ; |79| 
           SUB     .L2X    A4,B4,B4          ; |79| 

           STW     .D2T1   A3,*+SP(4)        ; |79| 
||         SUB     .L2     B4,B5,B4          ; |79| 

           STW     .D2T2   B4,*+SP(8)        ; |79| 
||         MVKL    .S2     RL15,B3           ; |79| 

           MVKH    .S2     RL15,B3           ; |79| 
RL15:      ; CALL OCCURS {_printf}           ; |79| 
	.dwpsn	"main.c",122,2
           CALL    .S1     _exit             ; |122| 
           MVKL    .S2     RL16,B3           ; |122| 
           MVKH    .S2     RL16,B3           ; |122| 
           NOP             3
RL16:      ; CALL OCCURS {_exit}             ; |122| 
           ZERO    .L1     A4                ; |122| 
	.dwpsn	"main.c",124,1
           LDW     .D2T2   *+SP(152),B3      ; |124| 
           NOP             4
	.dwcfa	0xc0, 19
           ADDK    .S2     152,SP            ; |124| 
	.dwcfa	0x0e, 0
           RET     .S2     B3                ; |124| 
           NOP             5
           ; BRANCH OCCURS {B3}              ; |124| 
	.dwattr DW$33, DW_AT_end_file("main.c")
	.dwattr DW$33, DW_AT_end_line(0x7c)
	.dwattr DW$33, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$33

	.sect	".text"
	.global	_process_sample

DW$42	.dwtag  DW_TAG_subprogram, DW_AT_name("process_sample"), DW_AT_symbol_name("_process_sample")
	.dwattr DW$42, DW_AT_low_pc(_process_sample)
	.dwattr DW$42, DW_AT_high_pc(0x00)
	.dwattr DW$42, DW_AT_begin_file("main.c")
	.dwattr DW$42, DW_AT_begin_line(0x7f)
	.dwattr DW$42, DW_AT_begin_column(0x06)
	.dwpsn	"main.c",127,30

	.dwfde DW$CIE

;******************************************************************************
;* FUNCTION NAME: _process_sample                                             *
;*                                                                            *
;*   Regs Modified     : SP                                                   *
;*   Regs Used         : A4,B3,SP                                             *
;*   Local Frame Size  : 0 Args + 4 Auto + 0 Save = 4 byte                    *
;******************************************************************************
_process_sample:
;** --------------------------------------------------------------------------*
	.dwcfa	0x0e, 0
	.dwcfa	0x09, 126, 19
           SUB     .L2     SP,8,SP           ; |127| 
	.dwcfa	0x0e, 8
DW$43	.dwtag  DW_TAG_formal_parameter, DW_AT_name("x"), DW_AT_symbol_name("_x")
	.dwattr DW$43, DW_AT_type(*DW$T$23)
	.dwattr DW$43, DW_AT_location[DW_OP_reg4]
DW$44	.dwtag  DW_TAG_variable, DW_AT_name("x"), DW_AT_symbol_name("_x")
	.dwattr DW$44, DW_AT_type(*DW$T$23)
	.dwattr DW$44, DW_AT_location[DW_OP_breg31 4]
           STH     .D2T1   A4,*+SP(4)        ; |127| 
           NOP             2
	.dwpsn	"main.c",129,1
           ADD     .L2     8,SP,SP           ; |129| 
	.dwcfa	0x0e, 0
           RET     .S2     B3                ; |129| 
           NOP             5
           ; BRANCH OCCURS {B3}              ; |129| 
	.dwattr DW$42, DW_AT_end_file("main.c")
	.dwattr DW$42, DW_AT_end_line(0x81)
	.dwattr DW$42, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$42

	.sect	".text"
	.global	_receive_interrupt

DW$45	.dwtag  DW_TAG_subprogram, DW_AT_name("receive_interrupt"), DW_AT_symbol_name("_receive_interrupt")
	.dwattr DW$45, DW_AT_low_pc(_receive_interrupt)
	.dwattr DW$45, DW_AT_high_pc(0x00)
	.dwattr DW$45, DW_AT_begin_file("main.c")
	.dwattr DW$45, DW_AT_begin_line(0x85)
	.dwattr DW$45, DW_AT_begin_column(0x06)
	.dwpsn	"main.c",133,30

	.dwfde DW$CIE

;******************************************************************************
;* FUNCTION NAME: _receive_interrupt                                          *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP                                      *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,DP,SP                                   *
;*   Local Frame Size  : 0 Args + 0 Auto + 4 Save = 4 byte                    *
;******************************************************************************
_receive_interrupt:
;** --------------------------------------------------------------------------*
	.dwcfa	0x0e, 0
	.dwcfa	0x09, 126, 19
           STW     .D2T2   B3,*SP--(8)       ; |133| 
           NOP             2
	.dwcfa	0x0e, 8
	.dwcfa	0x80, 19, 0
	.dwpsn	"main.c",134,2
           LDBU    .D2T2   *+DP(_channel_flag),B0 ; |134| 
           NOP             4
   [!B0]   B       .S1     L1                ; |134| 
           NOP             5
           ; BRANCHCC OCCURS {L1}            ; |134| 
;** --------------------------------------------------------------------------*
	.dwpsn	"main.c",135,3
           CALL    .S1     _DSK6713_AIC23_read ; |135| 
           LDW     .D2T1   *+DP(_hCodec),A4  ; |135| 
           MVKL    .S2     RL17,B3           ; |135| 
           MVK     .S2     (_left-$bss),B4   ; |135| 
           ADD     .L2     DP,B4,B4          ; |135| 
           MVKH    .S2     RL17,B3           ; |135| 
RL17:      ; CALL OCCURS {_DSK6713_AIC23_read}  ; |135| 
	.dwpsn	"main.c",136,3
           ZERO    .L2     B4                ; |136| 
           STB     .D2T2   B4,*+DP(_channel_flag) ; |136| 
           NOP             2
	.dwpsn	"main.c",137,2
           B       .S1     L2                ; |137| 
           NOP             5
           ; BRANCH OCCURS {L2}              ; |137| 
;** --------------------------------------------------------------------------*
L1:    
	.dwpsn	"main.c",138,3
           CALL    .S1     _DSK6713_AIC23_read ; |138| 
           LDW     .D2T1   *+DP(_hCodec),A4  ; |138| 
           MVKL    .S2     RL18,B3           ; |138| 
           MVK     .S1     (_right-$bss),A3  ; |138| 
           MVKH    .S2     RL18,B3           ; |138| 
           ADD     .L2X    DP,A3,B4          ; |138| 
RL18:      ; CALL OCCURS {_DSK6713_AIC23_read}  ; |138| 
	.dwpsn	"main.c",139,3
           LDH     .D2T2   *+DP(_right),B5   ; |139| 
           LDH     .D2T2   *+DP(_left),B4    ; |139| 
           MVKL    .S2     RL19,B3           ; |139| 
           MVKH    .S2     RL19,B3           ; |139| 
           NOP             2
           ADD     .L2     B5,B4,B4          ; |139| 
           INTDP   .L2     B4,B7:B6          ; |139| 
           CALL    .S1     __divd            ; |139| 
           ZERO    .L2     B5                ; |139| 
           MVKH    .S2     0x40000000,B5     ; |139| 
           NOP             1
           MV      .L1X    B7,A5             ; |139| 

           MV      .L1X    B6,A4             ; |139| 
||         ZERO    .L2     B4                ; |139| 

RL19:      ; CALL OCCURS {__divd}            ; |139| 
           DPTRUNC .L1     A5:A4,A3          ; |139| 
           NOP             3
           STH     .D2T1   A3,*+DP(_mix)     ; |139| 
           NOP             2
	.dwpsn	"main.c",140,3
           MVK     .S1     1,A3              ; |140| 
           STB     .D2T1   A3,*+DP(_channel_flag) ; |140| 
;** --------------------------------------------------------------------------*
L2:    
	.dwpsn	"main.c",143,2
           MVK     .S2     1,B4              ; |143| 
           STB     .D2T2   B4,*+DP(_input_ready) ; |143| 
           NOP             2
	.dwpsn	"main.c",144,1
           LDW     .D2T2   *++SP(8),B3       ; |144| 
           NOP             4
	.dwcfa	0xc0, 19
	.dwcfa	0x0e, 0
           RET     .S2     B3                ; |144| 
           NOP             5
           ; BRANCH OCCURS {B3}              ; |144| 
	.dwattr DW$45, DW_AT_end_file("main.c")
	.dwattr DW$45, DW_AT_end_line(0x90)
	.dwattr DW$45, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$45

	.sect	".text"
	.global	_transmit_interrupt

DW$46	.dwtag  DW_TAG_subprogram, DW_AT_name("transmit_interrupt"), DW_AT_symbol_name("_transmit_interrupt")
	.dwattr DW$46, DW_AT_low_pc(_transmit_interrupt)
	.dwattr DW$46, DW_AT_high_pc(0x00)
	.dwattr DW$46, DW_AT_begin_file("main.c")
	.dwattr DW$46, DW_AT_begin_line(0x92)
	.dwattr DW$46, DW_AT_begin_column(0x06)
	.dwpsn	"main.c",146,31

	.dwfde DW$CIE

;******************************************************************************
;* FUNCTION NAME: _transmit_interrupt                                         *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP                                      *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,DP,SP                                   *
;*   Local Frame Size  : 0 Args + 0 Auto + 4 Save = 4 byte                    *
;******************************************************************************
_transmit_interrupt:
;** --------------------------------------------------------------------------*
	.dwcfa	0x0e, 0
	.dwcfa	0x09, 126, 19
           STW     .D2T2   B3,*SP--(8)       ; |146| 
           NOP             2
	.dwcfa	0x0e, 8
	.dwcfa	0x80, 19, 0
	.dwpsn	"main.c",147,2

           CALL    .S1     _DSK6713_AIC23_write ; |147| 
||         LDH     .D2T2   *+DP(_audio_out),B4 ; |147| 

           LDW     .D2T1   *+DP(_hCodec),A4  ; |147| 
           MVKL    .S2     RL20,B3           ; |147| 
           MVKH    .S2     RL20,B3           ; |147| 
           NOP             1
           EXTU    .S2     B4,16,16,B4       ; |147| 
RL20:      ; CALL OCCURS {_DSK6713_AIC23_write}  ; |147| 
	.dwpsn	"main.c",148,2
           LDBU    .D2T2   *+DP(_output_ready),B4 ; |148| 
           NOP             4
           CMPGTU  .L2     B4,1,B0           ; |148| 
   [ B0]   B       .S1     L3                ; |148| 
           NOP             5
           ; BRANCHCC OCCURS {L3}            ; |148| 
;** --------------------------------------------------------------------------*
	.dwpsn	"main.c",148,24
           LDBU    .D2T2   *+DP(_output_ready),B4 ; |148| 
           NOP             4
           ADD     .L2     1,B4,B4           ; |148| 
           STB     .D2T2   B4,*+DP(_output_ready) ; |148| 
;** --------------------------------------------------------------------------*
L3:    
	.dwpsn	"main.c",149,1
           LDW     .D2T2   *++SP(8),B3       ; |149| 
           NOP             4
	.dwcfa	0xc0, 19
	.dwcfa	0x0e, 0
           RET     .S2     B3                ; |149| 
           NOP             5
           ; BRANCH OCCURS {B3}              ; |149| 
	.dwattr DW$46, DW_AT_end_file("main.c")
	.dwattr DW$46, DW_AT_end_line(0x95)
	.dwattr DW$46, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$46

	.sect	".text"
	.global	_convolve

DW$47	.dwtag  DW_TAG_subprogram, DW_AT_name("convolve"), DW_AT_symbol_name("_convolve")
	.dwattr DW$47, DW_AT_low_pc(_convolve)
	.dwattr DW$47, DW_AT_high_pc(0x00)
	.dwattr DW$47, DW_AT_begin_file("main.c")
	.dwattr DW$47, DW_AT_begin_line(0x97)
	.dwattr DW$47, DW_AT_begin_column(0x0b)
	.dwpsn	"main.c",151,45

	.dwfde DW$CIE

;******************************************************************************
;* FUNCTION NAME: _convolve                                                   *
;*                                                                            *
;*   Regs Modified     : A3,A4,A5,B0,B4,B5,B6,B8,B9,SP                        *
;*   Regs Used         : A3,A4,A5,A6,B0,B3,B4,B5,B6,B8,B9,SP                  *
;*   Local Frame Size  : 0 Args + 20 Auto + 0 Save = 20 byte                  *
;******************************************************************************
_convolve:
;** --------------------------------------------------------------------------*
	.dwcfa	0x0e, 0
	.dwcfa	0x09, 126, 19
           SUB     .D2     SP,24,SP          ; |151| 
	.dwcfa	0x0e, 24
DW$48	.dwtag  DW_TAG_formal_parameter, DW_AT_name("w"), DW_AT_symbol_name("_w")
	.dwattr DW$48, DW_AT_type(*DW$T$45)
	.dwattr DW$48, DW_AT_location[DW_OP_reg4]
DW$49	.dwtag  DW_TAG_formal_parameter, DW_AT_name("x"), DW_AT_symbol_name("_x")
	.dwattr DW$49, DW_AT_type(*DW$T$45)
	.dwattr DW$49, DW_AT_location[DW_OP_reg20]
DW$50	.dwtag  DW_TAG_formal_parameter, DW_AT_name("n"), DW_AT_symbol_name("_n")
	.dwattr DW$50, DW_AT_type(*DW$T$10)
	.dwattr DW$50, DW_AT_location[DW_OP_reg6]
DW$51	.dwtag  DW_TAG_variable, DW_AT_name("w"), DW_AT_symbol_name("_w")
	.dwattr DW$51, DW_AT_type(*DW$T$45)
	.dwattr DW$51, DW_AT_location[DW_OP_breg31 4]
DW$52	.dwtag  DW_TAG_variable, DW_AT_name("x"), DW_AT_symbol_name("_x")
	.dwattr DW$52, DW_AT_type(*DW$T$45)
	.dwattr DW$52, DW_AT_location[DW_OP_breg31 8]
DW$53	.dwtag  DW_TAG_variable, DW_AT_name("n"), DW_AT_symbol_name("_n")
	.dwattr DW$53, DW_AT_type(*DW$T$10)
	.dwattr DW$53, DW_AT_location[DW_OP_breg31 12]
DW$54	.dwtag  DW_TAG_variable, DW_AT_name("i"), DW_AT_symbol_name("_i")
	.dwattr DW$54, DW_AT_type(*DW$T$10)
	.dwattr DW$54, DW_AT_location[DW_OP_breg31 16]
DW$55	.dwtag  DW_TAG_variable, DW_AT_name("result"), DW_AT_symbol_name("_result")
	.dwattr DW$55, DW_AT_type(*DW$T$10)
	.dwattr DW$55, DW_AT_location[DW_OP_breg31 20]
           STW     .D2T1   A6,*+SP(12)       ; |151| 

           STW     .D2T1   A4,*+SP(4)        ; |151| 
||         MV      .L1X    B4,A3             ; |151| 

           STW     .D2T1   A3,*+SP(8)        ; |151| 
           NOP             2
	.dwpsn	"main.c",152,6
           ZERO    .L2     B4                ; |152| 
           STW     .D2T2   B4,*+SP(16)       ; |152| 
           NOP             2
	.dwpsn	"main.c",153,6
           STW     .D2T2   B4,*+SP(20)       ; |153| 
           NOP             2
	.dwpsn	"main.c",155,8
           LDW     .D2T2   *+SP(16),B5       ; |155| 
           NOP             4
           CMPLT   .L2X    B5,A6,B0          ; |155| 
   [!B0]   B       .S1     L5                ; |155| 
           NOP             5
           ; BRANCHCC OCCURS {L5}            ; |155| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Software pipelining disabled
;*----------------------------------------------------------------------------*
L4:    
DW$L$_convolve$2$B:
	.dwpsn	"main.c",156,3
           SUB     .L2X    A6,B5,B6          ; |156| 

           MV      .L2X    A4,B8
||         MV      .S2     B5,B4

           LDW     .D2T2   *+B8[B4],B4       ; |156| 
||         SUB     .L2     B6,1,B6           ; |156| 
||         MV      .S2X    A3,B5

           LDW     .D2T2   *+B5[B6],B5       ; |156| 
           NOP             4
           MPYI    .M2     B5,B4,B5          ; |156| 
           NOP             3
           LDW     .D2T2   *+SP(20),B9       ; |156| 
           NOP             4
           ADD     .L2     B5,B9,B4          ; |156| 
           STW     .D2T2   B4,*+SP(20)       ; |156| 
           NOP             2
	.dwpsn	"main.c",155,15
           LDW     .D2T2   *+SP(16),B4       ; |155| 
           NOP             4
           ADD     .L2     1,B4,B4           ; |155| 
           STW     .D2T2   B4,*+SP(16)       ; |155| 
           NOP             2
	.dwpsn	"main.c",155,8
           LDW     .D2T2   *+SP(16),B5       ; |155| 
           NOP             4
           CMPLT   .L2X    B5,A6,B0          ; |155| 
   [ B0]   B       .S1     L4                ; |155| 
           NOP             5
           ; BRANCHCC OCCURS {L4}            ; |155| 
DW$L$_convolve$2$E:
;** --------------------------------------------------------------------------*
L5:    
	.dwpsn	"main.c",159,2
           LDW     .D2T2   *+SP(20),B4       ; |159| 
           NOP             4
           MV      .L1X    B4,A4             ; |159| 
           SHR     .S1X    B4,31,A5          ; |159| 
	.dwpsn	"main.c",160,1
           ADDK    .S2     24,SP             ; |160| 
	.dwcfa	0x0e, 0
           RET     .S2     B3                ; |160| 
           NOP             5
           ; BRANCH OCCURS {B3}              ; |160| 

DW$56	.dwtag  DW_TAG_loop
	.dwattr DW$56, DW_AT_name("H:\SPH\firmware\lab3\main.asm:L4:1:1351467758")
	.dwattr DW$56, DW_AT_begin_file("main.c")
	.dwattr DW$56, DW_AT_begin_line(0x9b)
	.dwattr DW$56, DW_AT_end_line(0x9d)
DW$57	.dwtag  DW_TAG_loop_range
	.dwattr DW$57, DW_AT_low_pc(DW$L$_convolve$2$B)
	.dwattr DW$57, DW_AT_high_pc(DW$L$_convolve$2$E)
	.dwendtag DW$56

	.dwattr DW$47, DW_AT_end_file("main.c")
	.dwattr DW$47, DW_AT_end_line(0xa0)
	.dwattr DW$47, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$47

	.sect	".text"
	.global	_convolve_opt

DW$58	.dwtag  DW_TAG_subprogram, DW_AT_name("convolve_opt"), DW_AT_symbol_name("_convolve_opt")
	.dwattr DW$58, DW_AT_low_pc(_convolve_opt)
	.dwattr DW$58, DW_AT_high_pc(0x00)
	.dwattr DW$58, DW_AT_begin_file("main.c")
	.dwattr DW$58, DW_AT_begin_line(0xa2)
	.dwattr DW$58, DW_AT_begin_column(0x0b)
	.dwpsn	"main.c",162,65

	.dwfde DW$CIE

;******************************************************************************
;* FUNCTION NAME: _convolve_opt                                               *
;*                                                                            *
;*   Regs Modified     : A3,A4,A5,B0,B4,B5,B6,B8,B9,SP                        *
;*   Regs Used         : A3,A4,A5,A6,B0,B3,B4,B5,B6,B8,B9,SP                  *
;*   Local Frame Size  : 0 Args + 20 Auto + 0 Save = 20 byte                  *
;******************************************************************************
_convolve_opt:
;** --------------------------------------------------------------------------*
	.dwcfa	0x0e, 0
	.dwcfa	0x09, 126, 19
           SUB     .D2     SP,24,SP          ; |162| 
	.dwcfa	0x0e, 24
DW$59	.dwtag  DW_TAG_formal_parameter, DW_AT_name("w"), DW_AT_symbol_name("_w")
	.dwattr DW$59, DW_AT_type(*DW$T$46)
	.dwattr DW$59, DW_AT_location[DW_OP_reg4]
DW$60	.dwtag  DW_TAG_formal_parameter, DW_AT_name("x"), DW_AT_symbol_name("_x")
	.dwattr DW$60, DW_AT_type(*DW$T$46)
	.dwattr DW$60, DW_AT_location[DW_OP_reg20]
DW$61	.dwtag  DW_TAG_formal_parameter, DW_AT_name("n"), DW_AT_symbol_name("_n")
	.dwattr DW$61, DW_AT_type(*DW$T$10)
	.dwattr DW$61, DW_AT_location[DW_OP_reg6]
DW$62	.dwtag  DW_TAG_variable, DW_AT_name("w"), DW_AT_symbol_name("_w")
	.dwattr DW$62, DW_AT_type(*DW$T$46)
	.dwattr DW$62, DW_AT_location[DW_OP_breg31 4]
DW$63	.dwtag  DW_TAG_variable, DW_AT_name("x"), DW_AT_symbol_name("_x")
	.dwattr DW$63, DW_AT_type(*DW$T$46)
	.dwattr DW$63, DW_AT_location[DW_OP_breg31 8]
DW$64	.dwtag  DW_TAG_variable, DW_AT_name("n"), DW_AT_symbol_name("_n")
	.dwattr DW$64, DW_AT_type(*DW$T$10)
	.dwattr DW$64, DW_AT_location[DW_OP_breg31 12]
DW$65	.dwtag  DW_TAG_variable, DW_AT_name("i"), DW_AT_symbol_name("_i")
	.dwattr DW$65, DW_AT_type(*DW$T$10)
	.dwattr DW$65, DW_AT_location[DW_OP_breg31 16]
DW$66	.dwtag  DW_TAG_variable, DW_AT_name("result"), DW_AT_symbol_name("_result")
	.dwattr DW$66, DW_AT_type(*DW$T$10)
	.dwattr DW$66, DW_AT_location[DW_OP_breg31 20]
           STW     .D2T1   A6,*+SP(12)       ; |162| 

           STW     .D2T1   A4,*+SP(4)        ; |162| 
||         MV      .L1X    B4,A3             ; |162| 

           STW     .D2T1   A3,*+SP(8)        ; |162| 
           NOP             2
	.dwpsn	"main.c",163,6
           ZERO    .L2     B4                ; |163| 
           STW     .D2T2   B4,*+SP(16)       ; |163| 
           NOP             2
	.dwpsn	"main.c",164,6
           STW     .D2T2   B4,*+SP(20)       ; |164| 
           NOP             2
	.dwpsn	"main.c",167,8
           LDW     .D2T2   *+SP(16),B5       ; |167| 
           NOP             4
           CMPLT   .L2X    B5,A6,B0          ; |167| 
   [!B0]   B       .S1     L7                ; |167| 
           NOP             5
           ; BRANCHCC OCCURS {L7}            ; |167| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Software pipelining disabled
;*----------------------------------------------------------------------------*
L6:    
DW$L$_convolve_opt$2$B:
	.dwpsn	"main.c",168,3
           SUB     .L2X    A6,B5,B6          ; |168| 

           MV      .L2X    A4,B8
||         MV      .S2     B5,B4

           LDW     .D2T2   *+B8[B4],B4       ; |168| 
||         SUB     .L2     B6,1,B6           ; |168| 
||         MV      .S2X    A3,B5

           LDW     .D2T2   *+B5[B6],B5       ; |168| 
           NOP             4
           MPYI    .M2     B5,B4,B5          ; |168| 
           NOP             3
           LDW     .D2T2   *+SP(20),B9       ; |168| 
           NOP             4
           ADD     .L2     B5,B9,B4          ; |168| 
           STW     .D2T2   B4,*+SP(20)       ; |168| 
           NOP             2
	.dwpsn	"main.c",167,15
           LDW     .D2T2   *+SP(16),B4       ; |167| 
           NOP             4
           ADD     .L2     1,B4,B4           ; |167| 
           STW     .D2T2   B4,*+SP(16)       ; |167| 
           NOP             2
	.dwpsn	"main.c",167,8
           LDW     .D2T2   *+SP(16),B5       ; |167| 
           NOP             4
           CMPLT   .L2X    B5,A6,B0          ; |167| 
   [ B0]   B       .S1     L6                ; |167| 
           NOP             5
           ; BRANCHCC OCCURS {L6}            ; |167| 
DW$L$_convolve_opt$2$E:
;** --------------------------------------------------------------------------*
L7:    
	.dwpsn	"main.c",171,2
           LDW     .D2T2   *+SP(20),B4       ; |171| 
           NOP             4
           MV      .L1X    B4,A4             ; |171| 
           SHR     .S1X    B4,31,A5          ; |171| 
	.dwpsn	"main.c",172,1
           ADDK    .S2     24,SP             ; |172| 
	.dwcfa	0x0e, 0
           RET     .S2     B3                ; |172| 
           NOP             5
           ; BRANCH OCCURS {B3}              ; |172| 

DW$67	.dwtag  DW_TAG_loop
	.dwattr DW$67, DW_AT_name("H:\SPH\firmware\lab3\main.asm:L6:1:1351467758")
	.dwattr DW$67, DW_AT_begin_file("main.c")
	.dwattr DW$67, DW_AT_begin_line(0xa7)
	.dwattr DW$67, DW_AT_end_line(0xa9)
DW$68	.dwtag  DW_TAG_loop_range
	.dwattr DW$68, DW_AT_low_pc(DW$L$_convolve_opt$2$B)
	.dwattr DW$68, DW_AT_high_pc(DW$L$_convolve_opt$2$E)
	.dwendtag DW$67

	.dwattr DW$58, DW_AT_end_file("main.c")
	.dwattr DW$58, DW_AT_end_line(0xac)
	.dwattr DW$58, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$58

;******************************************************************************
;* STRINGS                                                                    *
;******************************************************************************
	.sect	".const"
SL1:	.string	"convovle no opt cycles: %d",10,0
SL2:	.string	"convovle opt cycles: %d",10,0
SL3:	.string	"convovle as cycles: %d",10,0
;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************
	.global	_DSK6713_AIC23_write
	.global	_DSK6713_AIC23_read
	.global	_printf
	.global	_clock
	.global	_convolve_as_func
	.global	_exit
	.global	__strasg
	.global	__divd

;******************************************************************************
;* TYPE INFORMATION                                                           *
;******************************************************************************

DW$T$24	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$24, DW_AT_language(DW_LANG_C)
DW$69	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$23)
	.dwendtag DW$T$24


DW$T$25	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$25, DW_AT_language(DW_LANG_C)
DW$T$27	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$27, DW_AT_type(*DW$T$26)
DW$T$23	.dwtag  DW_TAG_typedef, DW_AT_name("Int16"), DW_AT_type(*DW$T$8)
	.dwattr DW$T$23, DW_AT_language(DW_LANG_C)

DW$T$30	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$23)
	.dwattr DW$T$30, DW_AT_language(DW_LANG_C)
DW$70	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$28)
DW$71	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$29)
	.dwendtag DW$T$30


DW$T$33	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$23)
	.dwattr DW$T$33, DW_AT_language(DW_LANG_C)
DW$72	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$28)
DW$73	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$32)
	.dwendtag DW$T$33


DW$T$35	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$8)
	.dwattr DW$T$35, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$35, DW_AT_byte_size(0x14)
DW$74	.dwtag  DW_TAG_subrange_type
	.dwattr DW$74, DW_AT_upper_bound(0x09)
	.dwendtag DW$T$35


DW$T$37	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$36)
	.dwattr DW$T$37, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$37, DW_AT_byte_size(0x14)
DW$75	.dwtag  DW_TAG_subrange_type
	.dwattr DW$75, DW_AT_upper_bound(0x09)
	.dwendtag DW$T$37

DW$T$10	.dwtag  DW_TAG_base_type, DW_AT_name("int")
	.dwattr DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr DW$T$10, DW_AT_byte_size(0x04)

DW$T$19	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$19, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$19, DW_AT_byte_size(0x28)
DW$76	.dwtag  DW_TAG_subrange_type
	.dwattr DW$76, DW_AT_upper_bound(0x09)
	.dwendtag DW$T$19

DW$T$28	.dwtag  DW_TAG_typedef, DW_AT_name("DSK6713_AIC23_CodecHandle"), DW_AT_type(*DW$T$10)
	.dwattr DW$T$28, DW_AT_language(DW_LANG_C)

DW$T$41	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$41, DW_AT_language(DW_LANG_C)
DW$77	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$40)
DW$78	.dwtag  DW_TAG_unspecified_parameters
	.dwendtag DW$T$41


DW$T$43	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$43, DW_AT_language(DW_LANG_C)
DW$T$45	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$45, DW_AT_address_class(0x20)
DW$T$46	.dwtag  DW_TAG_restrict_type
	.dwattr DW$T$46, DW_AT_type(*DW$T$45)

DW$T$49	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$48)
	.dwattr DW$T$49, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$49, DW_AT_byte_size(0x28)
DW$79	.dwtag  DW_TAG_subrange_type
	.dwattr DW$79, DW_AT_upper_bound(0x09)
	.dwendtag DW$T$49

DW$T$29	.dwtag  DW_TAG_typedef, DW_AT_name("Uint32"), DW_AT_type(*DW$T$11)
	.dwattr DW$T$29, DW_AT_language(DW_LANG_C)
DW$T$32	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$29)
	.dwattr DW$T$32, DW_AT_address_class(0x20)
DW$T$50	.dwtag  DW_TAG_typedef, DW_AT_name("clock_t"), DW_AT_type(*DW$T$11)
	.dwattr DW$T$50, DW_AT_language(DW_LANG_C)

DW$T$51	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$50)
	.dwattr DW$T$51, DW_AT_language(DW_LANG_C)
DW$T$14	.dwtag  DW_TAG_base_type, DW_AT_name("long long")
	.dwattr DW$T$14, DW_AT_encoding(DW_ATE_signed)
	.dwattr DW$T$14, DW_AT_byte_size(0x08)

DW$T$53	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$14)
	.dwattr DW$T$53, DW_AT_language(DW_LANG_C)
DW$80	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$45)
DW$81	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$45)
DW$82	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$53

DW$T$61	.dwtag  DW_TAG_typedef, DW_AT_name("DSK6713_AIC23_Config"), DW_AT_type(*DW$T$20)
	.dwattr DW$T$61, DW_AT_language(DW_LANG_C)
DW$T$63	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$62)
	.dwattr DW$T$63, DW_AT_address_class(0x20)
DW$T$40	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$39)
	.dwattr DW$T$40, DW_AT_address_class(0x20)
DW$T$26	.dwtag  DW_TAG_typedef, DW_AT_name("Uint8"), DW_AT_type(*DW$T$6)
	.dwattr DW$T$26, DW_AT_language(DW_LANG_C)
DW$T$8	.dwtag  DW_TAG_base_type, DW_AT_name("short")
	.dwattr DW$T$8, DW_AT_encoding(DW_ATE_signed)
	.dwattr DW$T$8, DW_AT_byte_size(0x02)
DW$T$36	.dwtag  DW_TAG_const_type
	.dwattr DW$T$36, DW_AT_type(*DW$T$8)
DW$T$48	.dwtag  DW_TAG_const_type
	.dwattr DW$T$48, DW_AT_type(*DW$T$10)
DW$T$11	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned int")
	.dwattr DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$11, DW_AT_byte_size(0x04)

DW$T$20	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$20, DW_AT_name("DSK6713_AIC23_Config")
	.dwattr DW$T$20, DW_AT_byte_size(0x28)
DW$83	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$83, DW_AT_name("regs"), DW_AT_symbol_name("_regs")
	.dwattr DW$83, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$83, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$20

DW$T$62	.dwtag  DW_TAG_typedef, DW_AT_name("FILE"), DW_AT_type(*DW$T$22)
	.dwattr DW$T$62, DW_AT_language(DW_LANG_C)
DW$T$39	.dwtag  DW_TAG_const_type
	.dwattr DW$T$39, DW_AT_type(*DW$T$38)
DW$T$6	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned char")
	.dwattr DW$T$6, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr DW$T$6, DW_AT_byte_size(0x01)

DW$T$22	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$22, DW_AT_byte_size(0x1c)
DW$84	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$84, DW_AT_name("fd"), DW_AT_symbol_name("_fd")
	.dwattr DW$84, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$84, DW_AT_accessibility(DW_ACCESS_public)
DW$85	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$85, DW_AT_name("buf"), DW_AT_symbol_name("_buf")
	.dwattr DW$85, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$85, DW_AT_accessibility(DW_ACCESS_public)
DW$86	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$86, DW_AT_name("pos"), DW_AT_symbol_name("_pos")
	.dwattr DW$86, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$86, DW_AT_accessibility(DW_ACCESS_public)
DW$87	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$87, DW_AT_name("bufend"), DW_AT_symbol_name("_bufend")
	.dwattr DW$87, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$87, DW_AT_accessibility(DW_ACCESS_public)
DW$88	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$88, DW_AT_name("buff_stop"), DW_AT_symbol_name("_buff_stop")
	.dwattr DW$88, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$88, DW_AT_accessibility(DW_ACCESS_public)
DW$89	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$89, DW_AT_name("flags"), DW_AT_symbol_name("_flags")
	.dwattr DW$89, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$89, DW_AT_accessibility(DW_ACCESS_public)
DW$90	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$90, DW_AT_name("index"), DW_AT_symbol_name("_index")
	.dwattr DW$90, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$90, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$22

DW$T$38	.dwtag  DW_TAG_base_type, DW_AT_name("signed char")
	.dwattr DW$T$38, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr DW$T$38, DW_AT_byte_size(0x01)
DW$T$21	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$6)
	.dwattr DW$T$21, DW_AT_address_class(0x20)

	.dwattr DW$47, DW_AT_external(0x01)
	.dwattr DW$47, DW_AT_type(*DW$T$14)
	.dwattr DW$58, DW_AT_external(0x01)
	.dwattr DW$58, DW_AT_type(*DW$T$14)
	.dwattr DW$33, DW_AT_external(0x01)
	.dwattr DW$33, DW_AT_type(*DW$T$10)
	.dwattr DW$42, DW_AT_external(0x01)
	.dwattr DW$45, DW_AT_external(0x01)
	.dwattr DW$46, DW_AT_external(0x01)
	.dwattr DW$CU, DW_AT_language(DW_LANG_C)

;***************************************************************
;* DWARF CIE ENTRIES                                           *
;***************************************************************

DW$CIE	.dwcie 1, 126
	.dwcfa	0x0c, 31, 0
	.dwcfa	0x07, 0
	.dwcfa	0x07, 1
	.dwcfa	0x07, 2
	.dwcfa	0x07, 3
	.dwcfa	0x07, 4
	.dwcfa	0x07, 5
	.dwcfa	0x07, 6
	.dwcfa	0x07, 7
	.dwcfa	0x07, 8
	.dwcfa	0x07, 9
	.dwcfa	0x08, 10
	.dwcfa	0x08, 11
	.dwcfa	0x08, 12
	.dwcfa	0x08, 13
	.dwcfa	0x08, 14
	.dwcfa	0x08, 15
	.dwcfa	0x07, 16
	.dwcfa	0x07, 17
	.dwcfa	0x07, 18
	.dwcfa	0x07, 19
	.dwcfa	0x07, 20
	.dwcfa	0x07, 21
	.dwcfa	0x07, 22
	.dwcfa	0x07, 23
	.dwcfa	0x07, 24
	.dwcfa	0x07, 25
	.dwcfa	0x08, 26
	.dwcfa	0x08, 27
	.dwcfa	0x08, 28
	.dwcfa	0x08, 29
	.dwcfa	0x08, 30
	.dwcfa	0x08, 31
	.dwcfa	0x08, 32
	.dwcfa	0x07, 33
	.dwcfa	0x07, 34
	.dwcfa	0x07, 35
	.dwcfa	0x07, 36
	.dwcfa	0x07, 37
	.dwcfa	0x07, 38
	.dwcfa	0x07, 39
	.dwcfa	0x07, 40
	.dwcfa	0x07, 41
	.dwcfa	0x07, 42
	.dwcfa	0x07, 43
	.dwcfa	0x07, 44
	.dwcfa	0x07, 45
	.dwcfa	0x07, 46
	.dwcfa	0x07, 47
	.dwcfa	0x07, 48
	.dwcfa	0x07, 49
	.dwcfa	0x07, 50
	.dwcfa	0x07, 51
	.dwcfa	0x07, 52
	.dwcfa	0x07, 53
	.dwcfa	0x07, 54
	.dwcfa	0x07, 55
	.dwcfa	0x07, 56
	.dwcfa	0x07, 57
	.dwcfa	0x07, 58
	.dwcfa	0x07, 59
	.dwcfa	0x07, 60
	.dwcfa	0x07, 61
	.dwcfa	0x07, 62
	.dwcfa	0x07, 63
	.dwcfa	0x07, 64
	.dwcfa	0x07, 65
	.dwcfa	0x07, 66
	.dwcfa	0x07, 67
	.dwcfa	0x07, 68
	.dwcfa	0x07, 69
	.dwcfa	0x07, 70
	.dwcfa	0x07, 71
	.dwcfa	0x07, 72
	.dwcfa	0x07, 73
	.dwcfa	0x07, 74
	.dwcfa	0x07, 75
	.dwcfa	0x07, 76
	.dwcfa	0x07, 77
	.dwcfa	0x07, 78
	.dwcfa	0x07, 79
	.dwcfa	0x07, 80
	.dwcfa	0x07, 81
	.dwcfa	0x07, 82
	.dwcfa	0x07, 83
	.dwcfa	0x07, 84
	.dwcfa	0x07, 85
	.dwcfa	0x07, 86
	.dwcfa	0x07, 87
	.dwcfa	0x07, 88
	.dwcfa	0x07, 89
	.dwcfa	0x07, 90
	.dwcfa	0x07, 91
	.dwcfa	0x07, 92
	.dwcfa	0x07, 93
	.dwcfa	0x07, 94
	.dwcfa	0x07, 95
	.dwcfa	0x07, 96
	.dwcfa	0x07, 97
	.dwcfa	0x07, 98
	.dwcfa	0x07, 99
	.dwcfa	0x07, 100
	.dwcfa	0x07, 101
	.dwcfa	0x07, 102
	.dwcfa	0x07, 103
	.dwcfa	0x07, 104
	.dwcfa	0x07, 105
	.dwcfa	0x07, 106
	.dwcfa	0x07, 107
	.dwcfa	0x07, 108
	.dwcfa	0x07, 109
	.dwcfa	0x07, 110
	.dwcfa	0x07, 111
	.dwcfa	0x07, 112
	.dwcfa	0x07, 113
	.dwcfa	0x07, 114
	.dwcfa	0x07, 115
	.dwcfa	0x07, 116
	.dwcfa	0x07, 117
	.dwcfa	0x07, 118
	.dwcfa	0x07, 119
	.dwcfa	0x07, 120
	.dwcfa	0x07, 121
	.dwcfa	0x07, 122
	.dwcfa	0x07, 123
	.dwcfa	0x07, 124
	.dwcfa	0x07, 125
	.dwcfa	0x07, 126

;***************************************************************
;* DWARF REGISTER MAP                                          *
;***************************************************************

DW$91	.dwtag  DW_TAG_assign_register, DW_AT_name("A0")
	.dwattr DW$91, DW_AT_location[DW_OP_reg0]
DW$92	.dwtag  DW_TAG_assign_register, DW_AT_name("A1")
	.dwattr DW$92, DW_AT_location[DW_OP_reg1]
DW$93	.dwtag  DW_TAG_assign_register, DW_AT_name("A2")
	.dwattr DW$93, DW_AT_location[DW_OP_reg2]
DW$94	.dwtag  DW_TAG_assign_register, DW_AT_name("A3")
	.dwattr DW$94, DW_AT_location[DW_OP_reg3]
DW$95	.dwtag  DW_TAG_assign_register, DW_AT_name("A4")
	.dwattr DW$95, DW_AT_location[DW_OP_reg4]
DW$96	.dwtag  DW_TAG_assign_register, DW_AT_name("A5")
	.dwattr DW$96, DW_AT_location[DW_OP_reg5]
DW$97	.dwtag  DW_TAG_assign_register, DW_AT_name("A6")
	.dwattr DW$97, DW_AT_location[DW_OP_reg6]
DW$98	.dwtag  DW_TAG_assign_register, DW_AT_name("A7")
	.dwattr DW$98, DW_AT_location[DW_OP_reg7]
DW$99	.dwtag  DW_TAG_assign_register, DW_AT_name("A8")
	.dwattr DW$99, DW_AT_location[DW_OP_reg8]
DW$100	.dwtag  DW_TAG_assign_register, DW_AT_name("A9")
	.dwattr DW$100, DW_AT_location[DW_OP_reg9]
DW$101	.dwtag  DW_TAG_assign_register, DW_AT_name("A10")
	.dwattr DW$101, DW_AT_location[DW_OP_reg10]
DW$102	.dwtag  DW_TAG_assign_register, DW_AT_name("A11")
	.dwattr DW$102, DW_AT_location[DW_OP_reg11]
DW$103	.dwtag  DW_TAG_assign_register, DW_AT_name("A12")
	.dwattr DW$103, DW_AT_location[DW_OP_reg12]
DW$104	.dwtag  DW_TAG_assign_register, DW_AT_name("A13")
	.dwattr DW$104, DW_AT_location[DW_OP_reg13]
DW$105	.dwtag  DW_TAG_assign_register, DW_AT_name("A14")
	.dwattr DW$105, DW_AT_location[DW_OP_reg14]
DW$106	.dwtag  DW_TAG_assign_register, DW_AT_name("A15")
	.dwattr DW$106, DW_AT_location[DW_OP_reg15]
DW$107	.dwtag  DW_TAG_assign_register, DW_AT_name("B0")
	.dwattr DW$107, DW_AT_location[DW_OP_reg16]
DW$108	.dwtag  DW_TAG_assign_register, DW_AT_name("B1")
	.dwattr DW$108, DW_AT_location[DW_OP_reg17]
DW$109	.dwtag  DW_TAG_assign_register, DW_AT_name("B2")
	.dwattr DW$109, DW_AT_location[DW_OP_reg18]
DW$110	.dwtag  DW_TAG_assign_register, DW_AT_name("B3")
	.dwattr DW$110, DW_AT_location[DW_OP_reg19]
DW$111	.dwtag  DW_TAG_assign_register, DW_AT_name("B4")
	.dwattr DW$111, DW_AT_location[DW_OP_reg20]
DW$112	.dwtag  DW_TAG_assign_register, DW_AT_name("B5")
	.dwattr DW$112, DW_AT_location[DW_OP_reg21]
DW$113	.dwtag  DW_TAG_assign_register, DW_AT_name("B6")
	.dwattr DW$113, DW_AT_location[DW_OP_reg22]
DW$114	.dwtag  DW_TAG_assign_register, DW_AT_name("B7")
	.dwattr DW$114, DW_AT_location[DW_OP_reg23]
DW$115	.dwtag  DW_TAG_assign_register, DW_AT_name("B8")
	.dwattr DW$115, DW_AT_location[DW_OP_reg24]
DW$116	.dwtag  DW_TAG_assign_register, DW_AT_name("B9")
	.dwattr DW$116, DW_AT_location[DW_OP_reg25]
DW$117	.dwtag  DW_TAG_assign_register, DW_AT_name("B10")
	.dwattr DW$117, DW_AT_location[DW_OP_reg26]
DW$118	.dwtag  DW_TAG_assign_register, DW_AT_name("B11")
	.dwattr DW$118, DW_AT_location[DW_OP_reg27]
DW$119	.dwtag  DW_TAG_assign_register, DW_AT_name("B12")
	.dwattr DW$119, DW_AT_location[DW_OP_reg28]
DW$120	.dwtag  DW_TAG_assign_register, DW_AT_name("B13")
	.dwattr DW$120, DW_AT_location[DW_OP_reg29]
DW$121	.dwtag  DW_TAG_assign_register, DW_AT_name("DP")
	.dwattr DW$121, DW_AT_location[DW_OP_reg30]
DW$122	.dwtag  DW_TAG_assign_register, DW_AT_name("SP")
	.dwattr DW$122, DW_AT_location[DW_OP_reg31]
DW$123	.dwtag  DW_TAG_assign_register, DW_AT_name("FP")
	.dwattr DW$123, DW_AT_location[DW_OP_regx 0x20]
DW$124	.dwtag  DW_TAG_assign_register, DW_AT_name("PC")
	.dwattr DW$124, DW_AT_location[DW_OP_regx 0x21]
DW$125	.dwtag  DW_TAG_assign_register, DW_AT_name("IRP")
	.dwattr DW$125, DW_AT_location[DW_OP_regx 0x22]
DW$126	.dwtag  DW_TAG_assign_register, DW_AT_name("IFR")
	.dwattr DW$126, DW_AT_location[DW_OP_regx 0x23]
DW$127	.dwtag  DW_TAG_assign_register, DW_AT_name("NRP")
	.dwattr DW$127, DW_AT_location[DW_OP_regx 0x24]
DW$128	.dwtag  DW_TAG_assign_register, DW_AT_name("A16")
	.dwattr DW$128, DW_AT_location[DW_OP_regx 0x25]
DW$129	.dwtag  DW_TAG_assign_register, DW_AT_name("A17")
	.dwattr DW$129, DW_AT_location[DW_OP_regx 0x26]
DW$130	.dwtag  DW_TAG_assign_register, DW_AT_name("A18")
	.dwattr DW$130, DW_AT_location[DW_OP_regx 0x27]
DW$131	.dwtag  DW_TAG_assign_register, DW_AT_name("A19")
	.dwattr DW$131, DW_AT_location[DW_OP_regx 0x28]
DW$132	.dwtag  DW_TAG_assign_register, DW_AT_name("A20")
	.dwattr DW$132, DW_AT_location[DW_OP_regx 0x29]
DW$133	.dwtag  DW_TAG_assign_register, DW_AT_name("A21")
	.dwattr DW$133, DW_AT_location[DW_OP_regx 0x2a]
DW$134	.dwtag  DW_TAG_assign_register, DW_AT_name("A22")
	.dwattr DW$134, DW_AT_location[DW_OP_regx 0x2b]
DW$135	.dwtag  DW_TAG_assign_register, DW_AT_name("A23")
	.dwattr DW$135, DW_AT_location[DW_OP_regx 0x2c]
DW$136	.dwtag  DW_TAG_assign_register, DW_AT_name("A24")
	.dwattr DW$136, DW_AT_location[DW_OP_regx 0x2d]
DW$137	.dwtag  DW_TAG_assign_register, DW_AT_name("A25")
	.dwattr DW$137, DW_AT_location[DW_OP_regx 0x2e]
DW$138	.dwtag  DW_TAG_assign_register, DW_AT_name("A26")
	.dwattr DW$138, DW_AT_location[DW_OP_regx 0x2f]
DW$139	.dwtag  DW_TAG_assign_register, DW_AT_name("A27")
	.dwattr DW$139, DW_AT_location[DW_OP_regx 0x30]
DW$140	.dwtag  DW_TAG_assign_register, DW_AT_name("A28")
	.dwattr DW$140, DW_AT_location[DW_OP_regx 0x31]
DW$141	.dwtag  DW_TAG_assign_register, DW_AT_name("A29")
	.dwattr DW$141, DW_AT_location[DW_OP_regx 0x32]
DW$142	.dwtag  DW_TAG_assign_register, DW_AT_name("A30")
	.dwattr DW$142, DW_AT_location[DW_OP_regx 0x33]
DW$143	.dwtag  DW_TAG_assign_register, DW_AT_name("A31")
	.dwattr DW$143, DW_AT_location[DW_OP_regx 0x34]
DW$144	.dwtag  DW_TAG_assign_register, DW_AT_name("B16")
	.dwattr DW$144, DW_AT_location[DW_OP_regx 0x35]
DW$145	.dwtag  DW_TAG_assign_register, DW_AT_name("B17")
	.dwattr DW$145, DW_AT_location[DW_OP_regx 0x36]
DW$146	.dwtag  DW_TAG_assign_register, DW_AT_name("B18")
	.dwattr DW$146, DW_AT_location[DW_OP_regx 0x37]
DW$147	.dwtag  DW_TAG_assign_register, DW_AT_name("B19")
	.dwattr DW$147, DW_AT_location[DW_OP_regx 0x38]
DW$148	.dwtag  DW_TAG_assign_register, DW_AT_name("B20")
	.dwattr DW$148, DW_AT_location[DW_OP_regx 0x39]
DW$149	.dwtag  DW_TAG_assign_register, DW_AT_name("B21")
	.dwattr DW$149, DW_AT_location[DW_OP_regx 0x3a]
DW$150	.dwtag  DW_TAG_assign_register, DW_AT_name("B22")
	.dwattr DW$150, DW_AT_location[DW_OP_regx 0x3b]
DW$151	.dwtag  DW_TAG_assign_register, DW_AT_name("B23")
	.dwattr DW$151, DW_AT_location[DW_OP_regx 0x3c]
DW$152	.dwtag  DW_TAG_assign_register, DW_AT_name("B24")
	.dwattr DW$152, DW_AT_location[DW_OP_regx 0x3d]
DW$153	.dwtag  DW_TAG_assign_register, DW_AT_name("B25")
	.dwattr DW$153, DW_AT_location[DW_OP_regx 0x3e]
DW$154	.dwtag  DW_TAG_assign_register, DW_AT_name("B26")
	.dwattr DW$154, DW_AT_location[DW_OP_regx 0x3f]
DW$155	.dwtag  DW_TAG_assign_register, DW_AT_name("B27")
	.dwattr DW$155, DW_AT_location[DW_OP_regx 0x40]
DW$156	.dwtag  DW_TAG_assign_register, DW_AT_name("B28")
	.dwattr DW$156, DW_AT_location[DW_OP_regx 0x41]
DW$157	.dwtag  DW_TAG_assign_register, DW_AT_name("B29")
	.dwattr DW$157, DW_AT_location[DW_OP_regx 0x42]
DW$158	.dwtag  DW_TAG_assign_register, DW_AT_name("B30")
	.dwattr DW$158, DW_AT_location[DW_OP_regx 0x43]
DW$159	.dwtag  DW_TAG_assign_register, DW_AT_name("B31")
	.dwattr DW$159, DW_AT_location[DW_OP_regx 0x44]
DW$160	.dwtag  DW_TAG_assign_register, DW_AT_name("AMR")
	.dwattr DW$160, DW_AT_location[DW_OP_regx 0x45]
DW$161	.dwtag  DW_TAG_assign_register, DW_AT_name("CSR")
	.dwattr DW$161, DW_AT_location[DW_OP_regx 0x46]
DW$162	.dwtag  DW_TAG_assign_register, DW_AT_name("ISR")
	.dwattr DW$162, DW_AT_location[DW_OP_regx 0x47]
DW$163	.dwtag  DW_TAG_assign_register, DW_AT_name("ICR")
	.dwattr DW$163, DW_AT_location[DW_OP_regx 0x48]
DW$164	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$164, DW_AT_location[DW_OP_regx 0x49]
DW$165	.dwtag  DW_TAG_assign_register, DW_AT_name("ISTP")
	.dwattr DW$165, DW_AT_location[DW_OP_regx 0x4a]
DW$166	.dwtag  DW_TAG_assign_register, DW_AT_name("IN")
	.dwattr DW$166, DW_AT_location[DW_OP_regx 0x4b]
DW$167	.dwtag  DW_TAG_assign_register, DW_AT_name("OUT")
	.dwattr DW$167, DW_AT_location[DW_OP_regx 0x4c]
DW$168	.dwtag  DW_TAG_assign_register, DW_AT_name("ACR")
	.dwattr DW$168, DW_AT_location[DW_OP_regx 0x4d]
DW$169	.dwtag  DW_TAG_assign_register, DW_AT_name("ADR")
	.dwattr DW$169, DW_AT_location[DW_OP_regx 0x4e]
DW$170	.dwtag  DW_TAG_assign_register, DW_AT_name("FADCR")
	.dwattr DW$170, DW_AT_location[DW_OP_regx 0x4f]
DW$171	.dwtag  DW_TAG_assign_register, DW_AT_name("FAUCR")
	.dwattr DW$171, DW_AT_location[DW_OP_regx 0x50]
DW$172	.dwtag  DW_TAG_assign_register, DW_AT_name("FMCR")
	.dwattr DW$172, DW_AT_location[DW_OP_regx 0x51]
DW$173	.dwtag  DW_TAG_assign_register, DW_AT_name("GFPGFR")
	.dwattr DW$173, DW_AT_location[DW_OP_regx 0x52]
DW$174	.dwtag  DW_TAG_assign_register, DW_AT_name("DIER")
	.dwattr DW$174, DW_AT_location[DW_OP_regx 0x53]
DW$175	.dwtag  DW_TAG_assign_register, DW_AT_name("REP")
	.dwattr DW$175, DW_AT_location[DW_OP_regx 0x54]
DW$176	.dwtag  DW_TAG_assign_register, DW_AT_name("TSCL")
	.dwattr DW$176, DW_AT_location[DW_OP_regx 0x55]
DW$177	.dwtag  DW_TAG_assign_register, DW_AT_name("TSCH")
	.dwattr DW$177, DW_AT_location[DW_OP_regx 0x56]
DW$178	.dwtag  DW_TAG_assign_register, DW_AT_name("ARP")
	.dwattr DW$178, DW_AT_location[DW_OP_regx 0x57]
DW$179	.dwtag  DW_TAG_assign_register, DW_AT_name("ILC")
	.dwattr DW$179, DW_AT_location[DW_OP_regx 0x58]
DW$180	.dwtag  DW_TAG_assign_register, DW_AT_name("RILC")
	.dwattr DW$180, DW_AT_location[DW_OP_regx 0x59]
DW$181	.dwtag  DW_TAG_assign_register, DW_AT_name("DNUM")
	.dwattr DW$181, DW_AT_location[DW_OP_regx 0x5a]
DW$182	.dwtag  DW_TAG_assign_register, DW_AT_name("SSR")
	.dwattr DW$182, DW_AT_location[DW_OP_regx 0x5b]
DW$183	.dwtag  DW_TAG_assign_register, DW_AT_name("GPLYA")
	.dwattr DW$183, DW_AT_location[DW_OP_regx 0x5c]
DW$184	.dwtag  DW_TAG_assign_register, DW_AT_name("GPLYB")
	.dwattr DW$184, DW_AT_location[DW_OP_regx 0x5d]
DW$185	.dwtag  DW_TAG_assign_register, DW_AT_name("TSR")
	.dwattr DW$185, DW_AT_location[DW_OP_regx 0x5e]
DW$186	.dwtag  DW_TAG_assign_register, DW_AT_name("ITSR")
	.dwattr DW$186, DW_AT_location[DW_OP_regx 0x5f]
DW$187	.dwtag  DW_TAG_assign_register, DW_AT_name("NTSR")
	.dwattr DW$187, DW_AT_location[DW_OP_regx 0x60]
DW$188	.dwtag  DW_TAG_assign_register, DW_AT_name("EFR")
	.dwattr DW$188, DW_AT_location[DW_OP_regx 0x61]
DW$189	.dwtag  DW_TAG_assign_register, DW_AT_name("ECR")
	.dwattr DW$189, DW_AT_location[DW_OP_regx 0x62]
DW$190	.dwtag  DW_TAG_assign_register, DW_AT_name("IERR")
	.dwattr DW$190, DW_AT_location[DW_OP_regx 0x63]
DW$191	.dwtag  DW_TAG_assign_register, DW_AT_name("DMSG")
	.dwattr DW$191, DW_AT_location[DW_OP_regx 0x64]
DW$192	.dwtag  DW_TAG_assign_register, DW_AT_name("CMSG")
	.dwattr DW$192, DW_AT_location[DW_OP_regx 0x65]
DW$193	.dwtag  DW_TAG_assign_register, DW_AT_name("DT_DMA_ADDR")
	.dwattr DW$193, DW_AT_location[DW_OP_regx 0x66]
DW$194	.dwtag  DW_TAG_assign_register, DW_AT_name("DT_DMA_DATA")
	.dwattr DW$194, DW_AT_location[DW_OP_regx 0x67]
DW$195	.dwtag  DW_TAG_assign_register, DW_AT_name("DT_DMA_CNTL")
	.dwattr DW$195, DW_AT_location[DW_OP_regx 0x68]
DW$196	.dwtag  DW_TAG_assign_register, DW_AT_name("TCU_CNTL")
	.dwattr DW$196, DW_AT_location[DW_OP_regx 0x69]
DW$197	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_REC_CNTL")
	.dwattr DW$197, DW_AT_location[DW_OP_regx 0x6a]
DW$198	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_XMT_CNTL")
	.dwattr DW$198, DW_AT_location[DW_OP_regx 0x6b]
DW$199	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_CFG")
	.dwattr DW$199, DW_AT_location[DW_OP_regx 0x6c]
DW$200	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_RDATA")
	.dwattr DW$200, DW_AT_location[DW_OP_regx 0x6d]
DW$201	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_WDATA")
	.dwattr DW$201, DW_AT_location[DW_OP_regx 0x6e]
DW$202	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_RADDR")
	.dwattr DW$202, DW_AT_location[DW_OP_regx 0x6f]
DW$203	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_WADDR")
	.dwattr DW$203, DW_AT_location[DW_OP_regx 0x70]
DW$204	.dwtag  DW_TAG_assign_register, DW_AT_name("MFREG0")
	.dwattr DW$204, DW_AT_location[DW_OP_regx 0x71]
DW$205	.dwtag  DW_TAG_assign_register, DW_AT_name("DBG_STAT")
	.dwattr DW$205, DW_AT_location[DW_OP_regx 0x72]
DW$206	.dwtag  DW_TAG_assign_register, DW_AT_name("BRK_EN")
	.dwattr DW$206, DW_AT_location[DW_OP_regx 0x73]
DW$207	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP0_CNT")
	.dwattr DW$207, DW_AT_location[DW_OP_regx 0x74]
DW$208	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP0")
	.dwattr DW$208, DW_AT_location[DW_OP_regx 0x75]
DW$209	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP1")
	.dwattr DW$209, DW_AT_location[DW_OP_regx 0x76]
DW$210	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP2")
	.dwattr DW$210, DW_AT_location[DW_OP_regx 0x77]
DW$211	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP3")
	.dwattr DW$211, DW_AT_location[DW_OP_regx 0x78]
DW$212	.dwtag  DW_TAG_assign_register, DW_AT_name("OVERLAY")
	.dwattr DW$212, DW_AT_location[DW_OP_regx 0x79]
DW$213	.dwtag  DW_TAG_assign_register, DW_AT_name("PC_PROF")
	.dwattr DW$213, DW_AT_location[DW_OP_regx 0x7a]
DW$214	.dwtag  DW_TAG_assign_register, DW_AT_name("ATSR")
	.dwattr DW$214, DW_AT_location[DW_OP_regx 0x7b]
DW$215	.dwtag  DW_TAG_assign_register, DW_AT_name("TRR")
	.dwattr DW$215, DW_AT_location[DW_OP_regx 0x7c]
DW$216	.dwtag  DW_TAG_assign_register, DW_AT_name("TCRR")
	.dwattr DW$216, DW_AT_location[DW_OP_regx 0x7d]
DW$217	.dwtag  DW_TAG_assign_register, DW_AT_name("CIE_RETA")
	.dwattr DW$217, DW_AT_location[DW_OP_regx 0x7e]
	.dwendtag DW$CU

