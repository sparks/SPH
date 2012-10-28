;******************************************************************************
;* TMS320C6x C/C++ Codegen                                          PC v5.1.0 *
;* Date/Time created: Sat Oct 27 23:57:19 2012                                *
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
;*   Debug Info        : Optimized w/Profiling Info                           *
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
DW$8	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$37)
DW$9	.dwtag  DW_TAG_unspecified_parameters
	.dwendtag DW$7


DW$10	.dwtag  DW_TAG_subprogram, DW_AT_name("clock"), DW_AT_symbol_name("_clock")
	.dwattr DW$10, DW_AT_type(*DW$T$47)
	.dwattr DW$10, DW_AT_declaration(0x01)
	.dwattr DW$10, DW_AT_external(0x01)

DW$11	.dwtag  DW_TAG_subprogram, DW_AT_name("exit"), DW_AT_symbol_name("_exit")
	.dwattr DW$11, DW_AT_type(*DW$T$10)
	.dwattr DW$11, DW_AT_declaration(0x01)
	.dwattr DW$11, DW_AT_external(0x01)
	.global	_config
_config:	.usect	".far",40,4
DW$12	.dwtag  DW_TAG_variable, DW_AT_name("config"), DW_AT_symbol_name("_config")
	.dwattr DW$12, DW_AT_location[DW_OP_addr _config]
	.dwattr DW$12, DW_AT_type(*DW$T$54)
	.dwattr DW$12, DW_AT_external(0x01)
	.global	_hCodec
	.bss	_hCodec,4,4
DW$13	.dwtag  DW_TAG_variable, DW_AT_name("hCodec"), DW_AT_symbol_name("_hCodec")
	.dwattr DW$13, DW_AT_location[DW_OP_addr _hCodec]
	.dwattr DW$13, DW_AT_type(*DW$T$28)
	.dwattr DW$13, DW_AT_external(0x01)
	.global	_textfile
	.bss	_textfile,4,4
DW$14	.dwtag  DW_TAG_variable, DW_AT_name("textfile"), DW_AT_symbol_name("_textfile")
	.dwattr DW$14, DW_AT_location[DW_OP_addr _textfile]
	.dwattr DW$14, DW_AT_type(*DW$T$56)
	.dwattr DW$14, DW_AT_external(0x01)
	.global	_out1
	.bss	_out1,8,8
DW$15	.dwtag  DW_TAG_variable, DW_AT_name("out1"), DW_AT_symbol_name("_out1")
	.dwattr DW$15, DW_AT_location[DW_OP_addr _out1]
	.dwattr DW$15, DW_AT_type(*DW$T$14)
	.dwattr DW$15, DW_AT_external(0x01)
	.global	_out2
	.bss	_out2,8,8
DW$16	.dwtag  DW_TAG_variable, DW_AT_name("out2"), DW_AT_symbol_name("_out2")
	.dwattr DW$16, DW_AT_location[DW_OP_addr _out2]
	.dwattr DW$16, DW_AT_type(*DW$T$14)
	.dwattr DW$16, DW_AT_external(0x01)
	.global	_out3
	.bss	_out3,8,8
DW$17	.dwtag  DW_TAG_variable, DW_AT_name("out3"), DW_AT_symbol_name("_out3")
	.dwattr DW$17, DW_AT_location[DW_OP_addr _out3]
	.dwattr DW$17, DW_AT_type(*DW$T$14)
	.dwattr DW$17, DW_AT_external(0x01)
	.global	_left
	.bss	_left,4,4
DW$18	.dwtag  DW_TAG_variable, DW_AT_name("left"), DW_AT_symbol_name("_left")
	.dwattr DW$18, DW_AT_location[DW_OP_addr _left]
	.dwattr DW$18, DW_AT_type(*DW$T$29)
	.dwattr DW$18, DW_AT_external(0x01)
	.global	_right
	.bss	_right,4,4
DW$19	.dwtag  DW_TAG_variable, DW_AT_name("right"), DW_AT_symbol_name("_right")
	.dwattr DW$19, DW_AT_location[DW_OP_addr _right]
	.dwattr DW$19, DW_AT_type(*DW$T$29)
	.dwattr DW$19, DW_AT_external(0x01)
	.global	_mix
	.bss	_mix,2,2
DW$20	.dwtag  DW_TAG_variable, DW_AT_name("mix"), DW_AT_symbol_name("_mix")
	.dwattr DW$20, DW_AT_location[DW_OP_addr _mix]
	.dwattr DW$20, DW_AT_type(*DW$T$23)
	.dwattr DW$20, DW_AT_external(0x01)
	.global	_audio_out
	.bss	_audio_out,2,2
DW$21	.dwtag  DW_TAG_variable, DW_AT_name("audio_out"), DW_AT_symbol_name("_audio_out")
	.dwattr DW$21, DW_AT_location[DW_OP_addr _audio_out]
	.dwattr DW$21, DW_AT_type(*DW$T$23)
	.dwattr DW$21, DW_AT_external(0x01)
	.global	_input_ready
	.bss	_input_ready,1,1
DW$22	.dwtag  DW_TAG_variable, DW_AT_name("input_ready"), DW_AT_symbol_name("_input_ready")
	.dwattr DW$22, DW_AT_location[DW_OP_addr _input_ready]
	.dwattr DW$22, DW_AT_type(*DW$T$27)
	.dwattr DW$22, DW_AT_external(0x01)
	.global	_output_ready
	.bss	_output_ready,1,1
DW$23	.dwtag  DW_TAG_variable, DW_AT_name("output_ready"), DW_AT_symbol_name("_output_ready")
	.dwattr DW$23, DW_AT_location[DW_OP_addr _output_ready]
	.dwattr DW$23, DW_AT_type(*DW$T$27)
	.dwattr DW$23, DW_AT_external(0x01)
	.global	_channel_flag
	.bss	_channel_flag,1,1
DW$24	.dwtag  DW_TAG_variable, DW_AT_name("channel_flag"), DW_AT_symbol_name("_channel_flag")
	.dwattr DW$24, DW_AT_location[DW_OP_addr _channel_flag]
	.dwattr DW$24, DW_AT_type(*DW$T$27)
	.dwattr DW$24, DW_AT_external(0x01)
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

DW$25	.dwtag  DW_TAG_variable, DW_AT_name("$T0$1"), DW_AT_symbol_name("_$T0$1")
	.dwattr DW$25, DW_AT_type(*DW$T$46)
	.dwattr DW$25, DW_AT_location[DW_OP_addr _$T0$1]
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

DW$26	.dwtag  DW_TAG_variable, DW_AT_name("$T1$2"), DW_AT_symbol_name("_$T1$2")
	.dwattr DW$26, DW_AT_type(*DW$T$46)
	.dwattr DW$26, DW_AT_location[DW_OP_addr _$T1$2]
;	C:\CCStudio_v3.1\C6000\cgtools\bin\acp6x.exe -DCHIP_6713 -IH:/SPH/firmware/lib/dsk6713/include -IC:/CCStudio_v3.1/C6000/rtdx/include -IC:/CCStudio_v3.1/C6000/csl/include -IC:/CCStudio_v3.1/C6000/xdais/include -IC:/CCStudio_v3.1/c6000/bios/include -IC:/CCStudio_v3.1/C6000/cgtools/include --version=6700 --mem_model:code=near --mem_model:data=far_aggregates -m --i_output_file C:\Users\ssalen\AppData\Local\Temp\TI2722 --template_info_file C:\Users\ssalen\AppData\Local\Temp\TI2726 --object_file 
	.sect	".text"
	.global	_main

DW$27	.dwtag  DW_TAG_subprogram, DW_AT_name("main"), DW_AT_symbol_name("_main")
	.dwattr DW$27, DW_AT_low_pc(_main)
	.dwattr DW$27, DW_AT_high_pc(0x00)
	.dwattr DW$27, DW_AT_begin_file("main.c")
	.dwattr DW$27, DW_AT_begin_line(0x2e)
	.dwattr DW$27, DW_AT_begin_column(0x05)
	.dwattr DW$27, DW_AT_frame_base[DW_OP_breg31 112]
	.dwattr DW$27, DW_AT_skeletal(0x01)
	.dwpsn	"main.c",46,12

;******************************************************************************
;* FUNCTION NAME: _main                                                       *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP                                      *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,DP,SP                                   *
;*   Local Frame Size  : 8 Args + 96 Auto + 4 Save = 108 byte                 *
;******************************************************************************
_main:
;** --------------------------------------------------------------------------*
           CALL    .S1     __strasg          ; |55| 
           MVKL    .S2     _$T0$1,B4         ; |55| 
           STW     .D2T2   B3,*SP--(112)     ; |46| 
           MVKL    .S2     RL0,B3            ; |55| 

           MVKH    .S2     _$T0$1,B4         ; |55| 
||         ADD     .D2     SP,24,B5          ; |55| 

           MV      .L1X    B5,A4             ; |55| 
||         MVKH    .S2     RL0,B3            ; |55| 
||         MVK     .S1     0x28,A6           ; |55| 

RL0:       ; CALL OCCURS {__strasg}          ; |55| 
;** --------------------------------------------------------------------------*
           CALL    .S1     __strasg          ; |56| 
           MVKL    .S1     _$T1$2,A3         ; |56| 
           MVKH    .S1     _$T1$2,A3         ; |56| 
           MVKL    .S2     RL1,B3            ; |56| 
           ADDAD   .D2     SP,8,B5           ; |56| 

           MV      .L2X    A3,B4             ; |56| 
||         MV      .L1X    B5,A4             ; |56| 
||         MVKH    .S2     RL1,B3            ; |56| 

RL1:       ; CALL OCCURS {__strasg}          ; |56| 
           CALL    .S1     _clock            ; |59| 
           MVK     .S1     10,A3             ; |57| 
           STW     .D2T1   A3,*+SP(104)      ; |57| 
           NOP             1
           MVKL    .S2     RL2,B3            ; |59| 
           MVKH    .S2     RL2,B3            ; |59| 
RL2:       ; CALL OCCURS {_clock}            ; |59| 
           CALL    .S1     _clock            ; |60| 
           STW     .D2T1   A4,*+SP(12)       ; |59| 
           NOP             2
           MVKL    .S2     RL3,B3            ; |60| 
           MVKH    .S2     RL3,B3            ; |60| 
RL3:       ; CALL OCCURS {_clock}            ; |60| 
           LDW     .D2T2   *+SP(12),B4       ; |61| 
           CALL    .S1     _clock            ; |63| 
           STW     .D2T1   A4,*+SP(16)       ; |60| 
           MVKL    .S2     RL4,B3            ; |63| 
           MVKH    .S2     RL4,B3            ; |63| 
           SUB     .L2X    A4,B4,B4          ; |61| 
           STW     .D2T2   B4,*+SP(20)       ; |61| 
RL4:       ; CALL OCCURS {_clock}            ; |63| 
           CALL    .S1     _convolve         ; |64| 
           LDW     .D2T1   *+SP(104),A6      ; |64| 
           MV      .L2X    A4,B4             ; |63| 
           STW     .D2T2   B4,*+SP(12)       ; |63| 

           ADD     .D2     SP,24,B5          ; |64| 
||         MVKL    .S2     RL5,B3            ; |64| 

           MV      .L1X    B5,A4             ; |64| 
||         ADDAD   .D2     SP,8,B4           ; |64| 
||         MVKH    .S2     RL5,B3            ; |64| 

RL5:       ; CALL OCCURS {_convolve}         ; |64| 
           CALL    .S1     _clock            ; |65| 
           STW     .D2T1   A4,*+DP(_out1)    ; |64| 
           STW     .D2T1   A5,*+DP(_out1+4)  ; |64| 
           NOP             1
           MVKL    .S2     RL6,B3            ; |65| 
           MVKH    .S2     RL6,B3            ; |65| 
RL6:       ; CALL OCCURS {_clock}            ; |65| 
           LDW     .D2T2   *+SP(12),B5       ; |66| 
           LDW     .D2T2   *+SP(20),B4       ; |66| 
           CALL    .S1     _printf           ; |66| 
           MVKL    .S2     SL1+0,B6          ; |66| 
           MVKH    .S2     SL1+0,B6          ; |66| 

           SUB     .L2X    A4,B5,B5          ; |66| 
||         STW     .D2T1   A4,*+SP(16)       ; |65| 

           MVKL    .S2     RL7,B3            ; |66| 
||         SUB     .L2     B5,B4,B4          ; |66| 
||         STW     .D2T2   B6,*+SP(4)        ; |66| 

           MVKH    .S2     RL7,B3            ; |66| 
||         STW     .D2T2   B4,*+SP(8)        ; |66| 

RL7:       ; CALL OCCURS {_printf}           ; |66| 
           CALL    .S1     _clock            ; |68| 
           MVKL    .S2     RL8,B3            ; |68| 
           MVKH    .S2     RL8,B3            ; |68| 
           NOP             3
RL8:       ; CALL OCCURS {_clock}            ; |68| 
           CALL    .S1     _convolve_opt     ; |69| 
           LDW     .D2T1   *+SP(104),A6      ; |69| 
           STW     .D2T1   A4,*+SP(12)       ; |68| 
           ADD     .D2     SP,24,B4          ; |69| 
           MVKL    .S2     RL9,B3            ; |69| 

           ADDAD   .D2     SP,8,B4           ; |69| 
||         MV      .L1X    B4,A4             ; |69| 
||         MVKH    .S2     RL9,B3            ; |69| 

RL9:       ; CALL OCCURS {_convolve_opt}     ; |69| 
           CALL    .S1     _clock            ; |70| 
           STW     .D2T1   A4,*+DP(_out2)    ; |69| 
           STW     .D2T1   A5,*+DP(_out2+4)  ; |69| 
           NOP             1
           MVKL    .S2     RL10,B3           ; |70| 
           MVKH    .S2     RL10,B3           ; |70| 
RL10:      ; CALL OCCURS {_clock}            ; |70| 
;** --------------------------------------------------------------------------*
           LDW     .D2T2   *+SP(12),B4       ; |71| 
           LDW     .D2T2   *+SP(20),B5       ; |71| 
           CALL    .S1     _printf           ; |71| 
           MVKL    .S1     SL1+0,A3          ; |71| 
           MVKH    .S1     SL1+0,A3          ; |71| 

           SUB     .L2X    A4,B4,B4          ; |71| 
||         STW     .D2T1   A4,*+SP(16)       ; |70| 

           SUB     .L2     B4,B5,B4          ; |71| 
||         STW     .D2T1   A3,*+SP(4)        ; |71| 
||         MVKL    .S2     RL11,B3           ; |71| 

           STW     .D2T2   B4,*+SP(8)        ; |71| 
||         MVKH    .S2     RL11,B3           ; |71| 

RL11:      ; CALL OCCURS {_printf}           ; |71| 
;** --------------------------------------------------------------------------*
           CALL    .S1     _exit             ; |114| 
           MVKL    .S2     RL12,B3           ; |114| 
           MVKH    .S2     RL12,B3           ; |114| 
           NOP             3
RL12:      ; CALL OCCURS {_exit}             ; |114| 
;** --------------------------------------------------------------------------*
           LDW     .D2T2   *++SP(112),B3     ; |116| 
           ZERO    .L1     A4                ; |114| 
           NOP             3
           RET     .S2     B3                ; |116| 
	.dwpsn	"main.c",116,1
           NOP             5
           ; BRANCH OCCURS {B3}              ; |116| 
	.dwattr DW$27, DW_AT_end_file("main.c")
	.dwattr DW$27, DW_AT_end_line(0x74)
	.dwattr DW$27, DW_AT_end_column(0x01)
	.dwendtag DW$27

	.sect	".text"
	.global	_process_sample

DW$28	.dwtag  DW_TAG_subprogram, DW_AT_name("process_sample"), DW_AT_symbol_name("_process_sample")
	.dwattr DW$28, DW_AT_low_pc(_process_sample)
	.dwattr DW$28, DW_AT_high_pc(0x00)
	.dwattr DW$28, DW_AT_begin_file("main.c")
	.dwattr DW$28, DW_AT_begin_line(0x77)
	.dwattr DW$28, DW_AT_begin_column(0x06)
	.dwattr DW$28, DW_AT_frame_base[DW_OP_breg31 8]
	.dwattr DW$28, DW_AT_skeletal(0x01)
	.dwpsn	"main.c",119,30

;******************************************************************************
;* FUNCTION NAME: _process_sample                                             *
;*                                                                            *
;*   Regs Modified     : SP                                                   *
;*   Regs Used         : A4,B3,SP                                             *
;*   Local Frame Size  : 0 Args + 4 Auto + 0 Save = 4 byte                    *
;******************************************************************************
_process_sample:
;** --------------------------------------------------------------------------*
DW$29	.dwtag  DW_TAG_formal_parameter, DW_AT_name("x"), DW_AT_symbol_name("_x")
	.dwattr DW$29, DW_AT_type(*DW$T$23)
	.dwattr DW$29, DW_AT_location[DW_OP_reg4]
           RET     .S2     B3                ; |121| 
           SUB     .L2     SP,8,SP           ; |119| 
           STH     .D2T1   A4,*+SP(4)        ; |119| 
           ADD     .L2     8,SP,SP           ; |121| 
	.dwpsn	"main.c",121,1
           NOP             2
           ; BRANCH OCCURS {B3}              ; |121| 
	.dwattr DW$28, DW_AT_end_file("main.c")
	.dwattr DW$28, DW_AT_end_line(0x79)
	.dwattr DW$28, DW_AT_end_column(0x01)
	.dwendtag DW$28

	.sect	".text"
	.global	_receive_interrupt

DW$30	.dwtag  DW_TAG_subprogram, DW_AT_name("receive_interrupt"), DW_AT_symbol_name("_receive_interrupt")
	.dwattr DW$30, DW_AT_low_pc(_receive_interrupt)
	.dwattr DW$30, DW_AT_high_pc(0x00)
	.dwattr DW$30, DW_AT_begin_file("main.c")
	.dwattr DW$30, DW_AT_begin_line(0x7d)
	.dwattr DW$30, DW_AT_begin_column(0x06)
	.dwattr DW$30, DW_AT_frame_base[DW_OP_breg31 16]
	.dwattr DW$30, DW_AT_skeletal(0x01)
	.dwpsn	"main.c",125,30

;******************************************************************************
;* FUNCTION NAME: _receive_interrupt                                          *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,B0,B1,B2,B3,B4,*
;*                           B5,B6,B7,B8,B9,B13,SP                            *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,B0,B1,B2,B3,B4,*
;*                           B5,B6,B7,B8,B9,B13,DP,SP                         *
;*   Local Frame Size  : 0 Args + 0 Auto + 12 Save = 12 byte                  *
;******************************************************************************
_receive_interrupt:
;** --------------------------------------------------------------------------*

           STW     .D2T1   A11,*SP--(16)     ; |125| 
||         MVK     .S2     (_right-$bss),B4  ; |130| 
||         MVK     .S1     (_left-$bss),A3   ; |127| 

           LDBU    .D2T2   *+DP(_channel_flag),B0 ; |126| 
||         ADD     .L2     DP,B4,B5          ; |130| 
||         ADD     .S2X    DP,A3,B4          ; |127| 
||         MVK     .S1     1,A11             ; |132| 

           LDW     .D2T1   *+DP(_hCodec),A4  ; |127| 

           STW     .D2T2   B13,*+SP(12)      ; |125| 
||         MV      .L2     B3,B13            ; |125| 
||         MVKL    .S2     RL13,B3           ; |127| 

           MVKH    .S2     RL13,B3           ; |127| 
||         STW     .D2T1   A10,*+SP(8)       ; |125| 
||         ZERO    .L1     A10               ; |128| 

           NOP             1

   [!B0]   MV      .L2     B5,B4             ; |130| 
|| [!B0]   MVKL    .S2     RL14,B3           ; |130| 
|| [!B0]   B       .S1     L1                ; |126| 

   [!B0]   MVKH    .S2     RL14,B3           ; |130| 
|| [ B0]   CALL    .S1     _DSK6713_AIC23_read ; |127| 

   [!B0]   CALL    .S1     _DSK6713_AIC23_read ; |130| 
           NOP             3
           ; BRANCHCC OCCURS {L1}            ; |126| 
;** --------------------------------------------------------------------------*
           NOP             1
RL13:      ; CALL OCCURS {_DSK6713_AIC23_read}  ; |127| 
;** --------------------------------------------------------------------------*

           B       .S1     L2                ; |129| 
||         MVK     .S2     1,B4              ; |135| 
||         STB     .D2T1   A10,*+DP(_channel_flag) ; |128| 
||         MV      .L2     B13,B3            ; |136| 

           STB     .D2T2   B4,*+DP(_input_ready) ; |135| 
           LDW     .D2T1   *+SP(8),A10       ; |136| 

           LDW     .D2T2   *+SP(12),B13      ; |136| 
||         RET     .S2     B3                ; |136| 

           LDW     .D2T1   *++SP(16),A11     ; |136| 
           NOP             1
           ; BRANCH OCCURS {L2}              ; |129| 
;** --------------------------------------------------------------------------*
L1:    
           NOP             2
RL14:      ; CALL OCCURS {_DSK6713_AIC23_read}  ; |130| 
;** --------------------------------------------------------------------------*
           LDH     .D2T2   *+DP(_left),B4    ; |131| 
           LDH     .D2T2   *+DP(_right),B5   ; |131| 
           MVKL    .S2     RL15,B3           ; |131| 
           MVKH    .S2     RL15,B3           ; |131| 
           NOP             2
           ADD     .L2     B5,B4,B4          ; |131| 
           INTDP   .L2     B4,B7:B6          ; |131| 
           CALL    .S1     __divd            ; |131| 
           ZERO    .L2     B5                ; |131| 
           MVKH    .S2     0x40000000,B5     ; |131| 
           NOP             1
           MV      .L1X    B6,A4             ; |131| 

           MV      .L1X    B7,A5             ; |131| 
||         ZERO    .L2     B4                ; |131| 

RL15:      ; CALL OCCURS {__divd}            ; |131| 
;** --------------------------------------------------------------------------*

           DPTRUNC .L1     A5:A4,A3          ; |131| 
||         STB     .D2T1   A11,*+DP(_channel_flag) ; |132| 

           LDW     .D2T1   *+SP(8),A10       ; |136| 

           LDW     .D2T2   *+SP(12),B13      ; |136| 
||         MVK     .S2     1,B4              ; |135| 
||         MV      .L2     B13,B3            ; |136| 

           STB     .D2T2   B4,*+DP(_input_ready) ; |135| 

           RET     .S2     B3                ; |136| 
||         STH     .D2T1   A3,*+DP(_mix)     ; |131| 

           LDW     .D2T1   *++SP(16),A11     ; |136| 
           NOP             1
;** --------------------------------------------------------------------------*
L2:    
	.dwpsn	"main.c",136,1
           NOP             3
           ; BRANCH OCCURS {B3}              ; |136| 
	.dwattr DW$30, DW_AT_end_file("main.c")
	.dwattr DW$30, DW_AT_end_line(0x88)
	.dwattr DW$30, DW_AT_end_column(0x01)
	.dwendtag DW$30

	.sect	".text"
	.global	_transmit_interrupt

DW$31	.dwtag  DW_TAG_subprogram, DW_AT_name("transmit_interrupt"), DW_AT_symbol_name("_transmit_interrupt")
	.dwattr DW$31, DW_AT_low_pc(_transmit_interrupt)
	.dwattr DW$31, DW_AT_high_pc(0x00)
	.dwattr DW$31, DW_AT_begin_file("main.c")
	.dwattr DW$31, DW_AT_begin_line(0x8a)
	.dwattr DW$31, DW_AT_begin_column(0x06)
	.dwattr DW$31, DW_AT_frame_base[DW_OP_breg31 8]
	.dwattr DW$31, DW_AT_skeletal(0x01)
	.dwpsn	"main.c",138,31

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
           STW     .D2T2   B3,*SP--(8)       ; |138| 

           CALL    .S1     _DSK6713_AIC23_write ; |139| 
||         LDH     .D2T2   *+DP(_audio_out),B4 ; |139| 

           LDW     .D2T1   *+DP(_hCodec),A4  ; |139| 
           MVKL    .S2     RL16,B3           ; |139| 
           MVKH    .S2     RL16,B3           ; |139| 
           NOP             1
           EXTU    .S2     B4,16,16,B4       ; |139| 
RL16:      ; CALL OCCURS {_DSK6713_AIC23_write}  ; |139| 
;** --------------------------------------------------------------------------*
           LDBU    .D2T2   *+DP(_output_ready),B4 ; |140| 
           NOP             4
           CMPGTU  .L2     B4,1,B0           ; |140| 
   [!B0]   LDBU    .D2T2   *+DP(_output_ready),B4 ; |140| 
           NOP             4
   [!B0]   ADD     .L2     1,B4,B4           ; |140| 
   [!B0]   STB     .D2T2   B4,*+DP(_output_ready) ; |140| 
           LDW     .D2T2   *++SP(8),B3       ; |141| 
           NOP             4
           RET     .S2     B3                ; |141| 
	.dwpsn	"main.c",141,1
           NOP             5
           ; BRANCH OCCURS {B3}              ; |141| 
	.dwattr DW$31, DW_AT_end_file("main.c")
	.dwattr DW$31, DW_AT_end_line(0x8d)
	.dwattr DW$31, DW_AT_end_column(0x01)
	.dwendtag DW$31

	.sect	".text"
	.global	_convolve

DW$32	.dwtag  DW_TAG_subprogram, DW_AT_name("convolve"), DW_AT_symbol_name("_convolve")
	.dwattr DW$32, DW_AT_low_pc(_convolve)
	.dwattr DW$32, DW_AT_high_pc(0x00)
	.dwattr DW$32, DW_AT_begin_file("main.c")
	.dwattr DW$32, DW_AT_begin_line(0x8f)
	.dwattr DW$32, DW_AT_begin_column(0x0b)
	.dwattr DW$32, DW_AT_frame_base[DW_OP_breg31 32]
	.dwattr DW$32, DW_AT_skeletal(0x01)
	.dwpsn	"main.c",143,45

;******************************************************************************
;* FUNCTION NAME: _convolve                                                   *
;*                                                                            *
;*   Regs Modified     : A3,A4,A5,B0,B4,B5,B6,B7,B8,B9,SP                     *
;*   Regs Used         : A3,A4,A5,A6,B0,B3,B4,B5,B6,B7,B8,B9,SP               *
;*   Local Frame Size  : 0 Args + 28 Auto + 0 Save = 28 byte                  *
;******************************************************************************
_convolve:
;** --------------------------------------------------------------------------*
DW$33	.dwtag  DW_TAG_formal_parameter, DW_AT_name("w"), DW_AT_symbol_name("_w")
	.dwattr DW$33, DW_AT_type(*DW$T$42)
	.dwattr DW$33, DW_AT_location[DW_OP_reg4]
DW$34	.dwtag  DW_TAG_formal_parameter, DW_AT_name("x"), DW_AT_symbol_name("_x")
	.dwattr DW$34, DW_AT_type(*DW$T$42)
	.dwattr DW$34, DW_AT_location[DW_OP_reg20]
DW$35	.dwtag  DW_TAG_formal_parameter, DW_AT_name("n"), DW_AT_symbol_name("_n")
	.dwattr DW$35, DW_AT_type(*DW$T$10)
	.dwattr DW$35, DW_AT_location[DW_OP_reg6]
           ZERO    .L2     B5                ; |144| 

           CMPLT   .L2X    B5,A6,B0          ; |147| 
||         ZERO    .L1     A3                ; |144| 
||         ADDK    .S2     -32,SP            ; |143| 

   [!B0]   B       .S1     L4                ; |147| 
||         STW     .D2T1   A3,*+SP(16)       ; |144| 

           STW     .D2T1   A4,*+SP(4)        ; |143| 

           STW     .D2T1   A6,*+SP(12)       ; |143| 
||         ZERO    .L2     B7                ; |145| 

           STW     .D2T2   B7,*+SP(28)       ; |145| 
||         MV      .L1X    B4,A3             ; |143| 

           STW     .D2T1   A3,*+SP(8)        ; |143| 
||         ZERO    .L2     B4                ; |145| 

           STW     .D2T2   B4,*+SP(24)       ; |145| 
           ; BRANCHCC OCCURS {L4}            ; |147| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Software pipelining disabled
;*----------------------------------------------------------------------------*
L3:    
DW$L$_convolve$2$B:
	.dwpsn	"main.c",147,0

           SUB     .L2X    A6,B5,B4          ; |148| 
||         MV      .S2     B5,B7

           MV      .L2X    A3,B6
||         SUB     .S2     B4,1,B4           ; |148| 

           MV      .L2X    A4,B8
||         LDW     .D2T2   *+B6[B4],B4       ; |148| 

           LDW     .D2T2   *+B8[B7],B5       ; |148| 
           LDDW    .D2T2   *+SP(24),B9:B8    ; |148| 
           NOP             3
           MPYI    .M2     B4,B5,B6          ; |148| 
           NOP             2
           ADD     .L2     1,B7,B5           ; |147| 

           CMPLT   .L2X    B5,A6,B0          ; |147| 
||         STW     .D2T2   B5,*+SP(16)       ; |147| 

           NOP             2
   [ B0]   B       .S1     L3                ; |147| 
           NOP             1

           SHR     .S2     B6,31,B8          ; |148| 
||         ADDU    .L2     B6,B8,B7:B6       ; |148| 

           ADD     .L2     B7,B8,B7          ; |148| 
||         STW     .D2T2   B6,*+SP(24)       ; |148| 

           ADD     .L2     B7,B9,B6          ; |148| 
	.dwpsn	"main.c",149,0
           STW     .D2T2   B6,*+SP(28)       ; |148| 
           ; BRANCHCC OCCURS {L3}            ; |147| 
DW$L$_convolve$2$E:
;** --------------------------------------------------------------------------*
L4:    
           RET     .S2     B3                ; |152| 
           LDDW    .D2T1   *+SP(24),A5:A4    ; |151| 
           ADDK    .S2     32,SP             ; |152| 
	.dwpsn	"main.c",152,1
           NOP             3
           ; BRANCH OCCURS {B3}              ; |152| 

DW$36	.dwtag  DW_TAG_loop
	.dwattr DW$36, DW_AT_name("H:\SPH\firmware\lab3\main.asm:L3:1:1351396639")
	.dwattr DW$36, DW_AT_begin_file("main.c")
	.dwattr DW$36, DW_AT_begin_line(0x93)
	.dwattr DW$36, DW_AT_end_line(0x95)
DW$37	.dwtag  DW_TAG_loop_range
	.dwattr DW$37, DW_AT_low_pc(DW$L$_convolve$2$B)
	.dwattr DW$37, DW_AT_high_pc(DW$L$_convolve$2$E)
	.dwendtag DW$36

	.dwattr DW$32, DW_AT_end_file("main.c")
	.dwattr DW$32, DW_AT_end_line(0x98)
	.dwattr DW$32, DW_AT_end_column(0x01)
	.dwendtag DW$32

	.sect	".text"
	.global	_convolve_opt

DW$38	.dwtag  DW_TAG_subprogram, DW_AT_name("convolve_opt"), DW_AT_symbol_name("_convolve_opt")
	.dwattr DW$38, DW_AT_low_pc(_convolve_opt)
	.dwattr DW$38, DW_AT_high_pc(0x00)
	.dwattr DW$38, DW_AT_begin_file("main.c")
	.dwattr DW$38, DW_AT_begin_line(0x9a)
	.dwattr DW$38, DW_AT_begin_column(0x0b)
	.dwattr DW$38, DW_AT_frame_base[DW_OP_breg31 32]
	.dwattr DW$38, DW_AT_skeletal(0x01)
	.dwpsn	"main.c",154,65

;******************************************************************************
;* FUNCTION NAME: _convolve_opt                                               *
;*                                                                            *
;*   Regs Modified     : A3,A4,A5,B0,B4,B5,B6,B7,B8,B9,SP                     *
;*   Regs Used         : A3,A4,A5,A6,B0,B3,B4,B5,B6,B7,B8,B9,SP               *
;*   Local Frame Size  : 0 Args + 28 Auto + 0 Save = 28 byte                  *
;******************************************************************************
_convolve_opt:
;** --------------------------------------------------------------------------*
DW$39	.dwtag  DW_TAG_formal_parameter, DW_AT_name("w"), DW_AT_symbol_name("_w")
	.dwattr DW$39, DW_AT_type(*DW$T$43)
	.dwattr DW$39, DW_AT_location[DW_OP_reg4]
DW$40	.dwtag  DW_TAG_formal_parameter, DW_AT_name("x"), DW_AT_symbol_name("_x")
	.dwattr DW$40, DW_AT_type(*DW$T$43)
	.dwattr DW$40, DW_AT_location[DW_OP_reg20]
DW$41	.dwtag  DW_TAG_formal_parameter, DW_AT_name("n"), DW_AT_symbol_name("_n")
	.dwattr DW$41, DW_AT_type(*DW$T$10)
	.dwattr DW$41, DW_AT_location[DW_OP_reg6]
           ZERO    .L2     B5                ; |155| 

           CMPLT   .L2X    B5,A6,B0          ; |159| 
||         ZERO    .L1     A3                ; |155| 
||         ADDK    .S2     -32,SP            ; |154| 

   [!B0]   B       .S1     L6                ; |159| 
||         STW     .D2T1   A3,*+SP(16)       ; |155| 

           STW     .D2T1   A4,*+SP(4)        ; |154| 

           STW     .D2T1   A6,*+SP(12)       ; |154| 
||         ZERO    .L2     B7                ; |156| 

           STW     .D2T2   B7,*+SP(28)       ; |156| 
||         MV      .L1X    B4,A3             ; |154| 

           STW     .D2T1   A3,*+SP(8)        ; |154| 
||         ZERO    .L2     B4                ; |156| 

           STW     .D2T2   B4,*+SP(24)       ; |156| 
           ; BRANCHCC OCCURS {L6}            ; |159| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Software pipelining disabled
;*----------------------------------------------------------------------------*
L5:    
DW$L$_convolve_opt$2$B:
	.dwpsn	"main.c",159,0

           SUB     .L2X    A6,B5,B4          ; |160| 
||         MV      .S2     B5,B7

           MV      .L2X    A3,B6
||         SUB     .S2     B4,1,B4           ; |160| 

           MV      .L2X    A4,B8
||         LDW     .D2T2   *+B6[B4],B4       ; |160| 

           LDW     .D2T2   *+B8[B7],B5       ; |160| 
           LDDW    .D2T2   *+SP(24),B9:B8    ; |160| 
           NOP             3
           MPYI    .M2     B4,B5,B6          ; |160| 
           NOP             2
           ADD     .L2     1,B7,B5           ; |159| 

           CMPLT   .L2X    B5,A6,B0          ; |159| 
||         STW     .D2T2   B5,*+SP(16)       ; |159| 

           NOP             2
   [ B0]   B       .S1     L5                ; |159| 
           NOP             1

           SHR     .S2     B6,31,B8          ; |160| 
||         ADDU    .L2     B6,B8,B7:B6       ; |160| 

           ADD     .L2     B7,B8,B7          ; |160| 
||         STW     .D2T2   B6,*+SP(24)       ; |160| 

           ADD     .L2     B7,B9,B6          ; |160| 
	.dwpsn	"main.c",161,0
           STW     .D2T2   B6,*+SP(28)       ; |160| 
           ; BRANCHCC OCCURS {L5}            ; |159| 
DW$L$_convolve_opt$2$E:
;** --------------------------------------------------------------------------*
L6:    
           RET     .S2     B3                ; |164| 
           LDDW    .D2T1   *+SP(24),A5:A4    ; |163| 
           ADDK    .S2     32,SP             ; |164| 
	.dwpsn	"main.c",164,1
           NOP             3
           ; BRANCH OCCURS {B3}              ; |164| 

DW$42	.dwtag  DW_TAG_loop
	.dwattr DW$42, DW_AT_name("H:\SPH\firmware\lab3\main.asm:L5:1:1351396639")
	.dwattr DW$42, DW_AT_begin_file("main.c")
	.dwattr DW$42, DW_AT_begin_line(0x9f)
	.dwattr DW$42, DW_AT_end_line(0xa1)
DW$43	.dwtag  DW_TAG_loop_range
	.dwattr DW$43, DW_AT_low_pc(DW$L$_convolve_opt$2$B)
	.dwattr DW$43, DW_AT_high_pc(DW$L$_convolve_opt$2$E)
	.dwendtag DW$42

	.dwattr DW$38, DW_AT_end_file("main.c")
	.dwattr DW$38, DW_AT_end_line(0xa4)
	.dwattr DW$38, DW_AT_end_column(0x01)
	.dwendtag DW$38

;******************************************************************************
;* STRINGS                                                                    *
;******************************************************************************
	.sect	".const"
SL1:	.string	"convovle cycles: %d",10,0
;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************
	.global	_DSK6713_AIC23_write
	.global	_DSK6713_AIC23_read
	.global	_printf
	.global	_clock
	.global	_exit
	.global	__strasg
	.global	__divd

;******************************************************************************
;* TYPE INFORMATION                                                           *
;******************************************************************************

DW$T$24	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$24, DW_AT_language(DW_LANG_C)
DW$44	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$23)
	.dwendtag DW$T$24


DW$T$25	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$25, DW_AT_language(DW_LANG_C)
DW$T$27	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$27, DW_AT_type(*DW$T$26)
DW$T$23	.dwtag  DW_TAG_typedef, DW_AT_name("Int16"), DW_AT_type(*DW$T$8)
	.dwattr DW$T$23, DW_AT_language(DW_LANG_C)

DW$T$30	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$23)
	.dwattr DW$T$30, DW_AT_language(DW_LANG_C)
DW$45	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$28)
DW$46	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$29)
	.dwendtag DW$T$30


DW$T$33	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$23)
	.dwattr DW$T$33, DW_AT_language(DW_LANG_C)
DW$47	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$28)
DW$48	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$32)
	.dwendtag DW$T$33

DW$T$10	.dwtag  DW_TAG_base_type, DW_AT_name("int")
	.dwattr DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr DW$T$10, DW_AT_byte_size(0x04)
DW$T$28	.dwtag  DW_TAG_typedef, DW_AT_name("DSK6713_AIC23_CodecHandle"), DW_AT_type(*DW$T$10)
	.dwattr DW$T$28, DW_AT_language(DW_LANG_C)

DW$T$38	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$38, DW_AT_language(DW_LANG_C)
DW$49	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$37)
DW$50	.dwtag  DW_TAG_unspecified_parameters
	.dwendtag DW$T$38


DW$T$40	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$40, DW_AT_language(DW_LANG_C)
DW$T$42	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$42, DW_AT_address_class(0x20)
DW$T$43	.dwtag  DW_TAG_restrict_type
	.dwattr DW$T$43, DW_AT_type(*DW$T$42)

DW$T$46	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$45)
	.dwattr DW$T$46, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$46, DW_AT_byte_size(0x28)
DW$51	.dwtag  DW_TAG_subrange_type
	.dwattr DW$51, DW_AT_upper_bound(0x09)
	.dwendtag DW$T$46

DW$T$29	.dwtag  DW_TAG_typedef, DW_AT_name("Uint32"), DW_AT_type(*DW$T$11)
	.dwattr DW$T$29, DW_AT_language(DW_LANG_C)
DW$T$32	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$29)
	.dwattr DW$T$32, DW_AT_address_class(0x20)
DW$T$47	.dwtag  DW_TAG_typedef, DW_AT_name("clock_t"), DW_AT_type(*DW$T$11)
	.dwattr DW$T$47, DW_AT_language(DW_LANG_C)

DW$T$48	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$47)
	.dwattr DW$T$48, DW_AT_language(DW_LANG_C)
DW$T$14	.dwtag  DW_TAG_base_type, DW_AT_name("long long")
	.dwattr DW$T$14, DW_AT_encoding(DW_ATE_signed)
	.dwattr DW$T$14, DW_AT_byte_size(0x08)

DW$T$50	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$14)
	.dwattr DW$T$50, DW_AT_language(DW_LANG_C)
DW$52	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$42)
DW$53	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$42)
DW$54	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$50

DW$T$54	.dwtag  DW_TAG_typedef, DW_AT_name("DSK6713_AIC23_Config"), DW_AT_type(*DW$T$20)
	.dwattr DW$T$54, DW_AT_language(DW_LANG_C)
DW$T$56	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$55)
	.dwattr DW$T$56, DW_AT_address_class(0x20)
DW$T$37	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$36)
	.dwattr DW$T$37, DW_AT_address_class(0x20)
DW$T$26	.dwtag  DW_TAG_typedef, DW_AT_name("Uint8"), DW_AT_type(*DW$T$6)
	.dwattr DW$T$26, DW_AT_language(DW_LANG_C)
DW$T$8	.dwtag  DW_TAG_base_type, DW_AT_name("short")
	.dwattr DW$T$8, DW_AT_encoding(DW_ATE_signed)
	.dwattr DW$T$8, DW_AT_byte_size(0x02)
DW$T$45	.dwtag  DW_TAG_const_type
	.dwattr DW$T$45, DW_AT_type(*DW$T$10)
DW$T$11	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned int")
	.dwattr DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$11, DW_AT_byte_size(0x04)

DW$T$20	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$20, DW_AT_name("DSK6713_AIC23_Config")
	.dwattr DW$T$20, DW_AT_byte_size(0x28)
DW$55	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$55, DW_AT_name("regs"), DW_AT_symbol_name("_regs")
	.dwattr DW$55, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$55, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$20

DW$T$55	.dwtag  DW_TAG_typedef, DW_AT_name("FILE"), DW_AT_type(*DW$T$22)
	.dwattr DW$T$55, DW_AT_language(DW_LANG_C)
DW$T$36	.dwtag  DW_TAG_const_type
	.dwattr DW$T$36, DW_AT_type(*DW$T$35)
DW$T$6	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned char")
	.dwattr DW$T$6, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr DW$T$6, DW_AT_byte_size(0x01)

DW$T$19	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$19, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$19, DW_AT_byte_size(0x28)
DW$56	.dwtag  DW_TAG_subrange_type
	.dwattr DW$56, DW_AT_upper_bound(0x09)
	.dwendtag DW$T$19


DW$T$22	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$22, DW_AT_byte_size(0x1c)
DW$57	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$57, DW_AT_name("fd"), DW_AT_symbol_name("_fd")
	.dwattr DW$57, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$57, DW_AT_accessibility(DW_ACCESS_public)
DW$58	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$58, DW_AT_name("buf"), DW_AT_symbol_name("_buf")
	.dwattr DW$58, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$58, DW_AT_accessibility(DW_ACCESS_public)
DW$59	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$59, DW_AT_name("pos"), DW_AT_symbol_name("_pos")
	.dwattr DW$59, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$59, DW_AT_accessibility(DW_ACCESS_public)
DW$60	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$60, DW_AT_name("bufend"), DW_AT_symbol_name("_bufend")
	.dwattr DW$60, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$60, DW_AT_accessibility(DW_ACCESS_public)
DW$61	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$61, DW_AT_name("buff_stop"), DW_AT_symbol_name("_buff_stop")
	.dwattr DW$61, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$61, DW_AT_accessibility(DW_ACCESS_public)
DW$62	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$62, DW_AT_name("flags"), DW_AT_symbol_name("_flags")
	.dwattr DW$62, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$62, DW_AT_accessibility(DW_ACCESS_public)
DW$63	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$63, DW_AT_name("index"), DW_AT_symbol_name("_index")
	.dwattr DW$63, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$63, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$22

DW$T$35	.dwtag  DW_TAG_base_type, DW_AT_name("signed char")
	.dwattr DW$T$35, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr DW$T$35, DW_AT_byte_size(0x01)
DW$T$21	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$6)
	.dwattr DW$T$21, DW_AT_address_class(0x20)

	.dwattr DW$32, DW_AT_external(0x01)
	.dwattr DW$32, DW_AT_type(*DW$T$14)
	.dwattr DW$38, DW_AT_external(0x01)
	.dwattr DW$38, DW_AT_type(*DW$T$14)
	.dwattr DW$27, DW_AT_external(0x01)
	.dwattr DW$27, DW_AT_type(*DW$T$10)
	.dwattr DW$28, DW_AT_external(0x01)
	.dwattr DW$30, DW_AT_external(0x01)
	.dwattr DW$31, DW_AT_external(0x01)
	.dwattr DW$CU, DW_AT_language(DW_LANG_C)

;***************************************************************
;* DWARF REGISTER MAP                                          *
;***************************************************************

DW$64	.dwtag  DW_TAG_assign_register, DW_AT_name("A0")
	.dwattr DW$64, DW_AT_location[DW_OP_reg0]
DW$65	.dwtag  DW_TAG_assign_register, DW_AT_name("A1")
	.dwattr DW$65, DW_AT_location[DW_OP_reg1]
DW$66	.dwtag  DW_TAG_assign_register, DW_AT_name("A2")
	.dwattr DW$66, DW_AT_location[DW_OP_reg2]
DW$67	.dwtag  DW_TAG_assign_register, DW_AT_name("A3")
	.dwattr DW$67, DW_AT_location[DW_OP_reg3]
DW$68	.dwtag  DW_TAG_assign_register, DW_AT_name("A4")
	.dwattr DW$68, DW_AT_location[DW_OP_reg4]
DW$69	.dwtag  DW_TAG_assign_register, DW_AT_name("A5")
	.dwattr DW$69, DW_AT_location[DW_OP_reg5]
DW$70	.dwtag  DW_TAG_assign_register, DW_AT_name("A6")
	.dwattr DW$70, DW_AT_location[DW_OP_reg6]
DW$71	.dwtag  DW_TAG_assign_register, DW_AT_name("A7")
	.dwattr DW$71, DW_AT_location[DW_OP_reg7]
DW$72	.dwtag  DW_TAG_assign_register, DW_AT_name("A8")
	.dwattr DW$72, DW_AT_location[DW_OP_reg8]
DW$73	.dwtag  DW_TAG_assign_register, DW_AT_name("A9")
	.dwattr DW$73, DW_AT_location[DW_OP_reg9]
DW$74	.dwtag  DW_TAG_assign_register, DW_AT_name("A10")
	.dwattr DW$74, DW_AT_location[DW_OP_reg10]
DW$75	.dwtag  DW_TAG_assign_register, DW_AT_name("A11")
	.dwattr DW$75, DW_AT_location[DW_OP_reg11]
DW$76	.dwtag  DW_TAG_assign_register, DW_AT_name("A12")
	.dwattr DW$76, DW_AT_location[DW_OP_reg12]
DW$77	.dwtag  DW_TAG_assign_register, DW_AT_name("A13")
	.dwattr DW$77, DW_AT_location[DW_OP_reg13]
DW$78	.dwtag  DW_TAG_assign_register, DW_AT_name("A14")
	.dwattr DW$78, DW_AT_location[DW_OP_reg14]
DW$79	.dwtag  DW_TAG_assign_register, DW_AT_name("A15")
	.dwattr DW$79, DW_AT_location[DW_OP_reg15]
DW$80	.dwtag  DW_TAG_assign_register, DW_AT_name("B0")
	.dwattr DW$80, DW_AT_location[DW_OP_reg16]
DW$81	.dwtag  DW_TAG_assign_register, DW_AT_name("B1")
	.dwattr DW$81, DW_AT_location[DW_OP_reg17]
DW$82	.dwtag  DW_TAG_assign_register, DW_AT_name("B2")
	.dwattr DW$82, DW_AT_location[DW_OP_reg18]
DW$83	.dwtag  DW_TAG_assign_register, DW_AT_name("B3")
	.dwattr DW$83, DW_AT_location[DW_OP_reg19]
DW$84	.dwtag  DW_TAG_assign_register, DW_AT_name("B4")
	.dwattr DW$84, DW_AT_location[DW_OP_reg20]
DW$85	.dwtag  DW_TAG_assign_register, DW_AT_name("B5")
	.dwattr DW$85, DW_AT_location[DW_OP_reg21]
DW$86	.dwtag  DW_TAG_assign_register, DW_AT_name("B6")
	.dwattr DW$86, DW_AT_location[DW_OP_reg22]
DW$87	.dwtag  DW_TAG_assign_register, DW_AT_name("B7")
	.dwattr DW$87, DW_AT_location[DW_OP_reg23]
DW$88	.dwtag  DW_TAG_assign_register, DW_AT_name("B8")
	.dwattr DW$88, DW_AT_location[DW_OP_reg24]
DW$89	.dwtag  DW_TAG_assign_register, DW_AT_name("B9")
	.dwattr DW$89, DW_AT_location[DW_OP_reg25]
DW$90	.dwtag  DW_TAG_assign_register, DW_AT_name("B10")
	.dwattr DW$90, DW_AT_location[DW_OP_reg26]
DW$91	.dwtag  DW_TAG_assign_register, DW_AT_name("B11")
	.dwattr DW$91, DW_AT_location[DW_OP_reg27]
DW$92	.dwtag  DW_TAG_assign_register, DW_AT_name("B12")
	.dwattr DW$92, DW_AT_location[DW_OP_reg28]
DW$93	.dwtag  DW_TAG_assign_register, DW_AT_name("B13")
	.dwattr DW$93, DW_AT_location[DW_OP_reg29]
DW$94	.dwtag  DW_TAG_assign_register, DW_AT_name("DP")
	.dwattr DW$94, DW_AT_location[DW_OP_reg30]
DW$95	.dwtag  DW_TAG_assign_register, DW_AT_name("SP")
	.dwattr DW$95, DW_AT_location[DW_OP_reg31]
DW$96	.dwtag  DW_TAG_assign_register, DW_AT_name("FP")
	.dwattr DW$96, DW_AT_location[DW_OP_regx 0x20]
DW$97	.dwtag  DW_TAG_assign_register, DW_AT_name("PC")
	.dwattr DW$97, DW_AT_location[DW_OP_regx 0x21]
DW$98	.dwtag  DW_TAG_assign_register, DW_AT_name("IRP")
	.dwattr DW$98, DW_AT_location[DW_OP_regx 0x22]
DW$99	.dwtag  DW_TAG_assign_register, DW_AT_name("IFR")
	.dwattr DW$99, DW_AT_location[DW_OP_regx 0x23]
DW$100	.dwtag  DW_TAG_assign_register, DW_AT_name("NRP")
	.dwattr DW$100, DW_AT_location[DW_OP_regx 0x24]
DW$101	.dwtag  DW_TAG_assign_register, DW_AT_name("A16")
	.dwattr DW$101, DW_AT_location[DW_OP_regx 0x25]
DW$102	.dwtag  DW_TAG_assign_register, DW_AT_name("A17")
	.dwattr DW$102, DW_AT_location[DW_OP_regx 0x26]
DW$103	.dwtag  DW_TAG_assign_register, DW_AT_name("A18")
	.dwattr DW$103, DW_AT_location[DW_OP_regx 0x27]
DW$104	.dwtag  DW_TAG_assign_register, DW_AT_name("A19")
	.dwattr DW$104, DW_AT_location[DW_OP_regx 0x28]
DW$105	.dwtag  DW_TAG_assign_register, DW_AT_name("A20")
	.dwattr DW$105, DW_AT_location[DW_OP_regx 0x29]
DW$106	.dwtag  DW_TAG_assign_register, DW_AT_name("A21")
	.dwattr DW$106, DW_AT_location[DW_OP_regx 0x2a]
DW$107	.dwtag  DW_TAG_assign_register, DW_AT_name("A22")
	.dwattr DW$107, DW_AT_location[DW_OP_regx 0x2b]
DW$108	.dwtag  DW_TAG_assign_register, DW_AT_name("A23")
	.dwattr DW$108, DW_AT_location[DW_OP_regx 0x2c]
DW$109	.dwtag  DW_TAG_assign_register, DW_AT_name("A24")
	.dwattr DW$109, DW_AT_location[DW_OP_regx 0x2d]
DW$110	.dwtag  DW_TAG_assign_register, DW_AT_name("A25")
	.dwattr DW$110, DW_AT_location[DW_OP_regx 0x2e]
DW$111	.dwtag  DW_TAG_assign_register, DW_AT_name("A26")
	.dwattr DW$111, DW_AT_location[DW_OP_regx 0x2f]
DW$112	.dwtag  DW_TAG_assign_register, DW_AT_name("A27")
	.dwattr DW$112, DW_AT_location[DW_OP_regx 0x30]
DW$113	.dwtag  DW_TAG_assign_register, DW_AT_name("A28")
	.dwattr DW$113, DW_AT_location[DW_OP_regx 0x31]
DW$114	.dwtag  DW_TAG_assign_register, DW_AT_name("A29")
	.dwattr DW$114, DW_AT_location[DW_OP_regx 0x32]
DW$115	.dwtag  DW_TAG_assign_register, DW_AT_name("A30")
	.dwattr DW$115, DW_AT_location[DW_OP_regx 0x33]
DW$116	.dwtag  DW_TAG_assign_register, DW_AT_name("A31")
	.dwattr DW$116, DW_AT_location[DW_OP_regx 0x34]
DW$117	.dwtag  DW_TAG_assign_register, DW_AT_name("B16")
	.dwattr DW$117, DW_AT_location[DW_OP_regx 0x35]
DW$118	.dwtag  DW_TAG_assign_register, DW_AT_name("B17")
	.dwattr DW$118, DW_AT_location[DW_OP_regx 0x36]
DW$119	.dwtag  DW_TAG_assign_register, DW_AT_name("B18")
	.dwattr DW$119, DW_AT_location[DW_OP_regx 0x37]
DW$120	.dwtag  DW_TAG_assign_register, DW_AT_name("B19")
	.dwattr DW$120, DW_AT_location[DW_OP_regx 0x38]
DW$121	.dwtag  DW_TAG_assign_register, DW_AT_name("B20")
	.dwattr DW$121, DW_AT_location[DW_OP_regx 0x39]
DW$122	.dwtag  DW_TAG_assign_register, DW_AT_name("B21")
	.dwattr DW$122, DW_AT_location[DW_OP_regx 0x3a]
DW$123	.dwtag  DW_TAG_assign_register, DW_AT_name("B22")
	.dwattr DW$123, DW_AT_location[DW_OP_regx 0x3b]
DW$124	.dwtag  DW_TAG_assign_register, DW_AT_name("B23")
	.dwattr DW$124, DW_AT_location[DW_OP_regx 0x3c]
DW$125	.dwtag  DW_TAG_assign_register, DW_AT_name("B24")
	.dwattr DW$125, DW_AT_location[DW_OP_regx 0x3d]
DW$126	.dwtag  DW_TAG_assign_register, DW_AT_name("B25")
	.dwattr DW$126, DW_AT_location[DW_OP_regx 0x3e]
DW$127	.dwtag  DW_TAG_assign_register, DW_AT_name("B26")
	.dwattr DW$127, DW_AT_location[DW_OP_regx 0x3f]
DW$128	.dwtag  DW_TAG_assign_register, DW_AT_name("B27")
	.dwattr DW$128, DW_AT_location[DW_OP_regx 0x40]
DW$129	.dwtag  DW_TAG_assign_register, DW_AT_name("B28")
	.dwattr DW$129, DW_AT_location[DW_OP_regx 0x41]
DW$130	.dwtag  DW_TAG_assign_register, DW_AT_name("B29")
	.dwattr DW$130, DW_AT_location[DW_OP_regx 0x42]
DW$131	.dwtag  DW_TAG_assign_register, DW_AT_name("B30")
	.dwattr DW$131, DW_AT_location[DW_OP_regx 0x43]
DW$132	.dwtag  DW_TAG_assign_register, DW_AT_name("B31")
	.dwattr DW$132, DW_AT_location[DW_OP_regx 0x44]
DW$133	.dwtag  DW_TAG_assign_register, DW_AT_name("AMR")
	.dwattr DW$133, DW_AT_location[DW_OP_regx 0x45]
DW$134	.dwtag  DW_TAG_assign_register, DW_AT_name("CSR")
	.dwattr DW$134, DW_AT_location[DW_OP_regx 0x46]
DW$135	.dwtag  DW_TAG_assign_register, DW_AT_name("ISR")
	.dwattr DW$135, DW_AT_location[DW_OP_regx 0x47]
DW$136	.dwtag  DW_TAG_assign_register, DW_AT_name("ICR")
	.dwattr DW$136, DW_AT_location[DW_OP_regx 0x48]
DW$137	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$137, DW_AT_location[DW_OP_regx 0x49]
DW$138	.dwtag  DW_TAG_assign_register, DW_AT_name("ISTP")
	.dwattr DW$138, DW_AT_location[DW_OP_regx 0x4a]
DW$139	.dwtag  DW_TAG_assign_register, DW_AT_name("IN")
	.dwattr DW$139, DW_AT_location[DW_OP_regx 0x4b]
DW$140	.dwtag  DW_TAG_assign_register, DW_AT_name("OUT")
	.dwattr DW$140, DW_AT_location[DW_OP_regx 0x4c]
DW$141	.dwtag  DW_TAG_assign_register, DW_AT_name("ACR")
	.dwattr DW$141, DW_AT_location[DW_OP_regx 0x4d]
DW$142	.dwtag  DW_TAG_assign_register, DW_AT_name("ADR")
	.dwattr DW$142, DW_AT_location[DW_OP_regx 0x4e]
DW$143	.dwtag  DW_TAG_assign_register, DW_AT_name("FADCR")
	.dwattr DW$143, DW_AT_location[DW_OP_regx 0x4f]
DW$144	.dwtag  DW_TAG_assign_register, DW_AT_name("FAUCR")
	.dwattr DW$144, DW_AT_location[DW_OP_regx 0x50]
DW$145	.dwtag  DW_TAG_assign_register, DW_AT_name("FMCR")
	.dwattr DW$145, DW_AT_location[DW_OP_regx 0x51]
DW$146	.dwtag  DW_TAG_assign_register, DW_AT_name("GFPGFR")
	.dwattr DW$146, DW_AT_location[DW_OP_regx 0x52]
DW$147	.dwtag  DW_TAG_assign_register, DW_AT_name("DIER")
	.dwattr DW$147, DW_AT_location[DW_OP_regx 0x53]
DW$148	.dwtag  DW_TAG_assign_register, DW_AT_name("REP")
	.dwattr DW$148, DW_AT_location[DW_OP_regx 0x54]
DW$149	.dwtag  DW_TAG_assign_register, DW_AT_name("TSCL")
	.dwattr DW$149, DW_AT_location[DW_OP_regx 0x55]
DW$150	.dwtag  DW_TAG_assign_register, DW_AT_name("TSCH")
	.dwattr DW$150, DW_AT_location[DW_OP_regx 0x56]
DW$151	.dwtag  DW_TAG_assign_register, DW_AT_name("ARP")
	.dwattr DW$151, DW_AT_location[DW_OP_regx 0x57]
DW$152	.dwtag  DW_TAG_assign_register, DW_AT_name("ILC")
	.dwattr DW$152, DW_AT_location[DW_OP_regx 0x58]
DW$153	.dwtag  DW_TAG_assign_register, DW_AT_name("RILC")
	.dwattr DW$153, DW_AT_location[DW_OP_regx 0x59]
DW$154	.dwtag  DW_TAG_assign_register, DW_AT_name("DNUM")
	.dwattr DW$154, DW_AT_location[DW_OP_regx 0x5a]
DW$155	.dwtag  DW_TAG_assign_register, DW_AT_name("SSR")
	.dwattr DW$155, DW_AT_location[DW_OP_regx 0x5b]
DW$156	.dwtag  DW_TAG_assign_register, DW_AT_name("GPLYA")
	.dwattr DW$156, DW_AT_location[DW_OP_regx 0x5c]
DW$157	.dwtag  DW_TAG_assign_register, DW_AT_name("GPLYB")
	.dwattr DW$157, DW_AT_location[DW_OP_regx 0x5d]
DW$158	.dwtag  DW_TAG_assign_register, DW_AT_name("TSR")
	.dwattr DW$158, DW_AT_location[DW_OP_regx 0x5e]
DW$159	.dwtag  DW_TAG_assign_register, DW_AT_name("ITSR")
	.dwattr DW$159, DW_AT_location[DW_OP_regx 0x5f]
DW$160	.dwtag  DW_TAG_assign_register, DW_AT_name("NTSR")
	.dwattr DW$160, DW_AT_location[DW_OP_regx 0x60]
DW$161	.dwtag  DW_TAG_assign_register, DW_AT_name("EFR")
	.dwattr DW$161, DW_AT_location[DW_OP_regx 0x61]
DW$162	.dwtag  DW_TAG_assign_register, DW_AT_name("ECR")
	.dwattr DW$162, DW_AT_location[DW_OP_regx 0x62]
DW$163	.dwtag  DW_TAG_assign_register, DW_AT_name("IERR")
	.dwattr DW$163, DW_AT_location[DW_OP_regx 0x63]
DW$164	.dwtag  DW_TAG_assign_register, DW_AT_name("DMSG")
	.dwattr DW$164, DW_AT_location[DW_OP_regx 0x64]
DW$165	.dwtag  DW_TAG_assign_register, DW_AT_name("CMSG")
	.dwattr DW$165, DW_AT_location[DW_OP_regx 0x65]
DW$166	.dwtag  DW_TAG_assign_register, DW_AT_name("DT_DMA_ADDR")
	.dwattr DW$166, DW_AT_location[DW_OP_regx 0x66]
DW$167	.dwtag  DW_TAG_assign_register, DW_AT_name("DT_DMA_DATA")
	.dwattr DW$167, DW_AT_location[DW_OP_regx 0x67]
DW$168	.dwtag  DW_TAG_assign_register, DW_AT_name("DT_DMA_CNTL")
	.dwattr DW$168, DW_AT_location[DW_OP_regx 0x68]
DW$169	.dwtag  DW_TAG_assign_register, DW_AT_name("TCU_CNTL")
	.dwattr DW$169, DW_AT_location[DW_OP_regx 0x69]
DW$170	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_REC_CNTL")
	.dwattr DW$170, DW_AT_location[DW_OP_regx 0x6a]
DW$171	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_XMT_CNTL")
	.dwattr DW$171, DW_AT_location[DW_OP_regx 0x6b]
DW$172	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_CFG")
	.dwattr DW$172, DW_AT_location[DW_OP_regx 0x6c]
DW$173	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_RDATA")
	.dwattr DW$173, DW_AT_location[DW_OP_regx 0x6d]
DW$174	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_WDATA")
	.dwattr DW$174, DW_AT_location[DW_OP_regx 0x6e]
DW$175	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_RADDR")
	.dwattr DW$175, DW_AT_location[DW_OP_regx 0x6f]
DW$176	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_WADDR")
	.dwattr DW$176, DW_AT_location[DW_OP_regx 0x70]
DW$177	.dwtag  DW_TAG_assign_register, DW_AT_name("MFREG0")
	.dwattr DW$177, DW_AT_location[DW_OP_regx 0x71]
DW$178	.dwtag  DW_TAG_assign_register, DW_AT_name("DBG_STAT")
	.dwattr DW$178, DW_AT_location[DW_OP_regx 0x72]
DW$179	.dwtag  DW_TAG_assign_register, DW_AT_name("BRK_EN")
	.dwattr DW$179, DW_AT_location[DW_OP_regx 0x73]
DW$180	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP0_CNT")
	.dwattr DW$180, DW_AT_location[DW_OP_regx 0x74]
DW$181	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP0")
	.dwattr DW$181, DW_AT_location[DW_OP_regx 0x75]
DW$182	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP1")
	.dwattr DW$182, DW_AT_location[DW_OP_regx 0x76]
DW$183	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP2")
	.dwattr DW$183, DW_AT_location[DW_OP_regx 0x77]
DW$184	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP3")
	.dwattr DW$184, DW_AT_location[DW_OP_regx 0x78]
DW$185	.dwtag  DW_TAG_assign_register, DW_AT_name("OVERLAY")
	.dwattr DW$185, DW_AT_location[DW_OP_regx 0x79]
DW$186	.dwtag  DW_TAG_assign_register, DW_AT_name("PC_PROF")
	.dwattr DW$186, DW_AT_location[DW_OP_regx 0x7a]
DW$187	.dwtag  DW_TAG_assign_register, DW_AT_name("ATSR")
	.dwattr DW$187, DW_AT_location[DW_OP_regx 0x7b]
DW$188	.dwtag  DW_TAG_assign_register, DW_AT_name("TRR")
	.dwattr DW$188, DW_AT_location[DW_OP_regx 0x7c]
DW$189	.dwtag  DW_TAG_assign_register, DW_AT_name("TCRR")
	.dwattr DW$189, DW_AT_location[DW_OP_regx 0x7d]
DW$190	.dwtag  DW_TAG_assign_register, DW_AT_name("CIE_RETA")
	.dwattr DW$190, DW_AT_location[DW_OP_regx 0x7e]
	.dwendtag DW$CU

