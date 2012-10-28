;******************************************************************************
;* TMS320C6x C/C++ Codegen                                          PC v5.1.0 *
;* Date/Time created: Sun Oct 28 01:04:16 2012                                *
;******************************************************************************
	.compiler_opts --endian=little --mem_model:code=near --mem_model:data=far_aggregates --silicon_version=6700 

;******************************************************************************
;* GLOBAL FILE PARAMETERS                                                     *
;*                                                                            *
;*   Architecture      : TMS320C670x                                          *
;*   Optimization      : Enabled at level 3                                   *
;*   Optimizing for    : Speed                                                *
;*                       Based on options: -o3, no -ms                        *
;*   Endian            : Little                                               *
;*   Interrupt Thrshld : Disabled                                             *
;*   Data Access Model : Far Aggregate Data                                   *
;*   Pipelining        : Enabled                                              *
;*   Speculate Loads   : Disabled                                             *
;*   Memory Aliases    : Presume are aliases (pessimistic)                    *
;*   Debug Info        : Optimized w/Profiling Info                           *
;*                                                                            *
;******************************************************************************

	.asg	A15, FP
	.asg	B14, DP
	.asg	B15, SP
	.global	$bss


DW$CU	.dwtag  DW_TAG_compile_unit
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
	.dwattr DW$1, DW_AT_type(*DW$T$24)
	.dwattr DW$1, DW_AT_declaration(0x01)
	.dwattr DW$1, DW_AT_external(0x01)
DW$2	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$38)
DW$3	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$39)
	.dwendtag DW$1


DW$4	.dwtag  DW_TAG_subprogram, DW_AT_name("DSK6713_AIC23_read"), DW_AT_symbol_name("_DSK6713_AIC23_read")
	.dwattr DW$4, DW_AT_type(*DW$T$24)
	.dwattr DW$4, DW_AT_declaration(0x01)
	.dwattr DW$4, DW_AT_external(0x01)
DW$5	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$38)
DW$6	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$41)
	.dwendtag DW$4


DW$7	.dwtag  DW_TAG_subprogram, DW_AT_name("printf"), DW_AT_symbol_name("_printf")
	.dwattr DW$7, DW_AT_type(*DW$T$10)
	.dwattr DW$7, DW_AT_declaration(0x01)
	.dwattr DW$7, DW_AT_external(0x01)
DW$8	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$49)
DW$9	.dwtag  DW_TAG_unspecified_parameters
	.dwendtag DW$7


DW$10	.dwtag  DW_TAG_subprogram, DW_AT_name("clock"), DW_AT_symbol_name("_clock")
	.dwattr DW$10, DW_AT_type(*DW$T$63)
	.dwattr DW$10, DW_AT_declaration(0x01)
	.dwattr DW$10, DW_AT_external(0x01)

DW$11	.dwtag  DW_TAG_subprogram, DW_AT_name("convolve_as_func"), DW_AT_symbol_name("_convolve_as_func")
	.dwattr DW$11, DW_AT_type(*DW$T$10)
	.dwattr DW$11, DW_AT_declaration(0x01)
	.dwattr DW$11, DW_AT_external(0x01)
DW$12	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$54)
DW$13	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$54)
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
	.dwattr DW$16, DW_AT_type(*DW$T$67)
	.dwattr DW$16, DW_AT_external(0x01)
	.global	_hCodec
	.bss	_hCodec,4,4
DW$17	.dwtag  DW_TAG_variable, DW_AT_name("hCodec"), DW_AT_symbol_name("_hCodec")
	.dwattr DW$17, DW_AT_location[DW_OP_addr _hCodec]
	.dwattr DW$17, DW_AT_type(*DW$T$38)
	.dwattr DW$17, DW_AT_external(0x01)
	.global	_textfile
	.bss	_textfile,4,4
DW$18	.dwtag  DW_TAG_variable, DW_AT_name("textfile"), DW_AT_symbol_name("_textfile")
	.dwattr DW$18, DW_AT_location[DW_OP_addr _textfile]
	.dwattr DW$18, DW_AT_type(*DW$T$69)
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
	.dwattr DW$22, DW_AT_type(*DW$T$39)
	.dwattr DW$22, DW_AT_external(0x01)
	.global	_right
	.bss	_right,4,4
DW$23	.dwtag  DW_TAG_variable, DW_AT_name("right"), DW_AT_symbol_name("_right")
	.dwattr DW$23, DW_AT_location[DW_OP_addr _right]
	.dwattr DW$23, DW_AT_type(*DW$T$39)
	.dwattr DW$23, DW_AT_external(0x01)
	.global	_mix
	.bss	_mix,2,2
DW$24	.dwtag  DW_TAG_variable, DW_AT_name("mix"), DW_AT_symbol_name("_mix")
	.dwattr DW$24, DW_AT_location[DW_OP_addr _mix]
	.dwattr DW$24, DW_AT_type(*DW$T$24)
	.dwattr DW$24, DW_AT_external(0x01)
	.global	_audio_out
	.bss	_audio_out,2,2
DW$25	.dwtag  DW_TAG_variable, DW_AT_name("audio_out"), DW_AT_symbol_name("_audio_out")
	.dwattr DW$25, DW_AT_location[DW_OP_addr _audio_out]
	.dwattr DW$25, DW_AT_type(*DW$T$24)
	.dwattr DW$25, DW_AT_external(0x01)
	.global	_input_ready
	.bss	_input_ready,1,1
DW$26	.dwtag  DW_TAG_variable, DW_AT_name("input_ready"), DW_AT_symbol_name("_input_ready")
	.dwattr DW$26, DW_AT_location[DW_OP_addr _input_ready]
	.dwattr DW$26, DW_AT_type(*DW$T$36)
	.dwattr DW$26, DW_AT_external(0x01)
	.global	_output_ready
	.bss	_output_ready,1,1
DW$27	.dwtag  DW_TAG_variable, DW_AT_name("output_ready"), DW_AT_symbol_name("_output_ready")
	.dwattr DW$27, DW_AT_location[DW_OP_addr _output_ready]
	.dwattr DW$27, DW_AT_type(*DW$T$36)
	.dwattr DW$27, DW_AT_external(0x01)
	.global	_channel_flag
	.bss	_channel_flag,1,1
DW$28	.dwtag  DW_TAG_variable, DW_AT_name("channel_flag"), DW_AT_symbol_name("_channel_flag")
	.dwattr DW$28, DW_AT_location[DW_OP_addr _channel_flag]
	.dwattr DW$28, DW_AT_type(*DW$T$36)
	.dwattr DW$28, DW_AT_external(0x01)
	.sect	".const"
	.align	4
_$T0$1$1:
	.field  	-7726,32			; _$T0$1$1[0] @ 0
	.field  	-5544,32			; _$T0$1$1[1] @ 32
	.field  	-3805,32			; _$T0$1$1[2] @ 64
	.field  	-919,32			; _$T0$1$1[3] @ 96
	.field  	-5055,32			; _$T0$1$1[4] @ 128
	.field  	3105,32			; _$T0$1$1[5] @ 160
	.field  	-8432,32			; _$T0$1$1[6] @ 192
	.field  	7087,32			; _$T0$1$1[7] @ 224
	.field  	6867,32			; _$T0$1$1[8] @ 256
	.field  	4660,32			; _$T0$1$1[9] @ 288

DW$29	.dwtag  DW_TAG_variable, DW_AT_name("$T0$1$1"), DW_AT_symbol_name("_$T0$1$1")
	.dwattr DW$29, DW_AT_type(*DW$T$61)
	.dwattr DW$29, DW_AT_location[DW_OP_addr _$T0$1$1]
	.sect	".const"
	.align	4
_$T1$2$1:
	.field  	1439,32			; _$T1$2$1[0] @ 0
	.field  	9921,32			; _$T1$2$1[1] @ 32
	.field  	-1472,32			; _$T1$2$1[2] @ 64
	.field  	-9800,32			; _$T1$2$1[3] @ 96
	.field  	-3391,32			; _$T1$2$1[4] @ 128
	.field  	5708,32			; _$T1$2$1[5] @ 160
	.field  	6408,32			; _$T1$2$1[6] @ 192
	.field  	1202,32			; _$T1$2$1[7] @ 224
	.field  	-2568,32			; _$T1$2$1[8] @ 256
	.field  	3993,32			; _$T1$2$1[9] @ 288

DW$30	.dwtag  DW_TAG_variable, DW_AT_name("$T1$2$1"), DW_AT_symbol_name("_$T1$2$1")
	.dwattr DW$30, DW_AT_type(*DW$T$61)
	.dwattr DW$30, DW_AT_location[DW_OP_addr _$T1$2$1]
;	C:\CCStudio_v3.1\C6000\cgtools\bin\opt6x.exe C:\Users\ssalen\AppData\Local\Temp\TI33220 C:\Users\ssalen\AppData\Local\Temp\TI33214 
	.sect	".text"
	.global	_transmit_interrupt

DW$31	.dwtag  DW_TAG_subprogram, DW_AT_name("transmit_interrupt"), DW_AT_symbol_name("_transmit_interrupt")
	.dwattr DW$31, DW_AT_low_pc(_transmit_interrupt)
	.dwattr DW$31, DW_AT_high_pc(0x00)
	.dwattr DW$31, DW_AT_begin_file("H:\SPH\firmware\lab3\main.c")
	.dwattr DW$31, DW_AT_begin_line(0x90)
	.dwattr DW$31, DW_AT_begin_column(0x06)
	.dwattr DW$31, DW_AT_frame_base[DW_OP_breg31 8]
	.dwattr DW$31, DW_AT_skeletal(0x01)
	.dwpsn	"H:\SPH\firmware\lab3\main.c",144,31

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
;** 145	-----------------------    DSK6713_AIC23_write(hCodec, (unsigned)(unsigned short)audio_out);
;** 146	-----------------------    if ( output_ready >= 2 ) goto g3;
;** 146	-----------------------    ++output_ready;
;**	-----------------------g3:
;**  	-----------------------    return;
           STW     .D2T2   B3,*SP--(8)       ; |144| 

           CALL    .S1     _DSK6713_AIC23_write ; |145| 
||         LDW     .D2T1   *+DP(_hCodec),A4  ; |145| 

           LDHU    .D2T2   *+DP(_audio_out),B4 ; |145| 
           MVKL    .S2     RL0,B3            ; |145| 
           MVKH    .S2     RL0,B3            ; |145| 
           NOP             2
RL0:       ; CALL OCCURS {_DSK6713_AIC23_write}  ; |145| 
;** --------------------------------------------------------------------------*
           LDBU    .D2T2   *+DP(_output_ready),B4 ; |146| 
           NOP             4
           CMPLTU  .L2     B4,2,B0           ; |146| 
   [ B0]   LDBU    .D2T2   *+DP(_output_ready),B4 ; |146| 
           NOP             4
   [ B0]   ADD     .L2     1,B4,B4           ; |146| 
   [ B0]   STB     .D2T2   B4,*+DP(_output_ready) ; |146| 
           LDW     .D2T2   *++SP(8),B3       ; |147| 
           NOP             4
           RET     .S2     B3                ; |147| 
	.dwpsn	"H:\SPH\firmware\lab3\main.c",147,1
           NOP             5
           ; BRANCH OCCURS {B3}              ; |147| 
	.dwattr DW$31, DW_AT_end_file("H:\SPH\firmware\lab3\main.c")
	.dwattr DW$31, DW_AT_end_line(0x93)
	.dwattr DW$31, DW_AT_end_column(0x01)
	.dwendtag DW$31

	.sect	".text"
	.global	_receive_interrupt

DW$32	.dwtag  DW_TAG_subprogram, DW_AT_name("receive_interrupt"), DW_AT_symbol_name("_receive_interrupt")
	.dwattr DW$32, DW_AT_low_pc(_receive_interrupt)
	.dwattr DW$32, DW_AT_high_pc(0x00)
	.dwattr DW$32, DW_AT_begin_file("H:\SPH\firmware\lab3\main.c")
	.dwattr DW$32, DW_AT_begin_line(0x83)
	.dwattr DW$32, DW_AT_begin_column(0x06)
	.dwattr DW$32, DW_AT_frame_base[DW_OP_breg31 24]
	.dwattr DW$32, DW_AT_skeletal(0x01)
	.dwpsn	"H:\SPH\firmware\lab3\main.c",131,30

;******************************************************************************
;* FUNCTION NAME: _receive_interrupt                                          *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,B0,B1, *
;*                           B2,B3,B4,B5,B6,B7,B8,B9,B13,SP                   *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,B0,B1, *
;*                           B2,B3,B4,B5,B6,B7,B8,B9,B13,DP,SP                *
;*   Local Frame Size  : 0 Args + 0 Auto + 20 Save = 20 byte                  *
;******************************************************************************
_receive_interrupt:
;** --------------------------------------------------------------------------*
;** 132	-----------------------    v$1 = hCodec;
;** 132	-----------------------    if ( channel_flag ) goto g3;

           STW     .D2T1   A13,*SP--(24)     ; |131| 
||         ZERO    .L1     A13               ; |137| 
||         MVK     .S1     (_right-$bss),A3  ; |136| 
||         MVK     .S2     (_left-$bss),B4   ; |133| 

           LDBU    .D2T2   *+DP(_channel_flag),B0 ; |132| 
||         MVKH    .S1     0x3fe00000,A13    ; |137| 
||         ADD     .L2     DP,B4,B5          ; |133| 
||         ADD     .S2X    DP,A3,B4          ; |136| 

           LDW     .D2T1   *+DP(_hCodec),A4  ; |132| 

           STW     .D2T2   B13,*+SP(20)      ; |131| 
||         MV      .L2     B3,B13            ; |131| 
||         MVKL    .S2     RL1,B3            ; |136| 

           MVKH    .S2     RL1,B3            ; |136| 
||         STW     .D2T1   A12,*+SP(16)      ; |131| 
||         ZERO    .L1     A12               ; |137| 

           STW     .D2T1   A11,*+SP(12)      ; |131| 
||         MVK     .S1     1,A11             ; |138| 

           STW     .D2T1   A10,*+SP(8)       ; |131| 
||         ZERO    .L1     A10               ; |134| 
|| [ B0]   B       .S1     L1                ; |132| 
|| [ B0]   MVKL    .S2     RL2,B3            ; |133| 
|| [ B0]   MV      .L2     B5,B4             ; |133| 

   [!B0]   CALL    .S1     _DSK6713_AIC23_read ; |136| 
|| [ B0]   MVKH    .S2     RL2,B3            ; |133| 

   [ B0]   CALL    .S1     _DSK6713_AIC23_read ; |133| 
           NOP             3
           ; BRANCHCC OCCURS {L1}            ; |132| 
;** --------------------------------------------------------------------------*
;** 136	-----------------------    DSK6713_AIC23_read(v$1, &right);
;** 137	-----------------------    mix = (short)((double)((short)left+(short)right)*0.5);
;** 138	-----------------------    channel_flag = 1u;
;** 138	-----------------------    goto g4;
           NOP             1
RL1:       ; CALL OCCURS {_DSK6713_AIC23_read}  ; |136| 
;** --------------------------------------------------------------------------*

           LDH     .D2T2   *+DP(_right),B5   ; |137| 
||         MV      .L2     B13,B3            ; |142| 

           LDH     .D2T2   *+DP(_left),B4    ; |137| 
           STB     .D2T1   A11,*+DP(_channel_flag) ; |138| 
           LDDW    .D2T1   *+SP(8),A11:A10   ; |142| 
           LDW     .D2T2   *+SP(20),B13      ; |142| 
           NOP             1
           ADD     .L2     B5,B4,B4          ; |137| 
           INTDP   .L2     B4,B5:B4          ; |137| 
           NOP             4

           MPYDP   .M1X    A13:A12,B5:B4,A5:A4 ; |137| 
||         LDW     .D2T1   *+SP(16),A12      ; |142| 

           NOP             2
           MVK     .S2     1,B4              ; |141| 
           STB     .D2T2   B4,*+DP(_input_ready) ; |141| 
           NOP             4
           B       .S1     L2                ; |138| 
           DPTRUNC .L1     A5:A4,A3          ; |137| 
           NOP             3

           STH     .D2T1   A3,*+DP(_mix)     ; |137| 
||         RET     .S2     B3                ; |142| 

           ; BRANCH OCCURS {L2}              ; |138| 
;** --------------------------------------------------------------------------*
L1:    
;**	-----------------------g3:
;** 133	-----------------------    DSK6713_AIC23_read(v$1, &left);
;** 134	-----------------------    channel_flag = 0u;
           NOP             2
RL2:       ; CALL OCCURS {_DSK6713_AIC23_read}  ; |133| 
;** --------------------------------------------------------------------------*
           STB     .D2T1   A10,*+DP(_channel_flag) ; |134| 
           LDW     .D2T1   *+SP(16),A12      ; |142| 
           LDDW    .D2T1   *+SP(8),A11:A10   ; |142| 

           LDW     .D2T2   *+SP(20),B13      ; |142| 
||         MVK     .S2     1,B4              ; |141| 
||         MV      .L2     B13,B3            ; |142| 

           RET     .S2     B3                ; |142| 
||         STB     .D2T2   B4,*+DP(_input_ready) ; |141| 

;** --------------------------------------------------------------------------*
L2:    
;**	-----------------------g4:
;** 141	-----------------------    input_ready = 1u;
;** 141	-----------------------    return;
           LDW     .D2T1   *++SP(24),A13     ; |142| 
	.dwpsn	"H:\SPH\firmware\lab3\main.c",142,1
           NOP             4
           ; BRANCH OCCURS {B3}              ; |142| 
	.dwattr DW$32, DW_AT_end_file("H:\SPH\firmware\lab3\main.c")
	.dwattr DW$32, DW_AT_end_line(0x8e)
	.dwattr DW$32, DW_AT_end_column(0x01)
	.dwendtag DW$32

	.sect	".text"
	.global	_process_sample

DW$33	.dwtag  DW_TAG_subprogram, DW_AT_name("process_sample"), DW_AT_symbol_name("_process_sample")
	.dwattr DW$33, DW_AT_low_pc(_process_sample)
	.dwattr DW$33, DW_AT_high_pc(0x00)
	.dwattr DW$33, DW_AT_begin_file("H:\SPH\firmware\lab3\main.c")
	.dwattr DW$33, DW_AT_begin_line(0x7d)
	.dwattr DW$33, DW_AT_begin_column(0x06)
	.dwattr DW$33, DW_AT_frame_base[DW_OP_breg31 0]
	.dwattr DW$33, DW_AT_skeletal(0x01)
	.dwpsn	"H:\SPH\firmware\lab3\main.c",125,30

;******************************************************************************
;* FUNCTION NAME: _process_sample                                             *
;*                                                                            *
;*   Regs Modified     :                                                      *
;*   Regs Used         : B3                                                   *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
_process_sample:
;** --------------------------------------------------------------------------*
DW$34	.dwtag  DW_TAG_formal_parameter, DW_AT_name("x"), DW_AT_symbol_name("_x")
	.dwattr DW$34, DW_AT_type(*DW$T$24)
	.dwattr DW$34, DW_AT_location[DW_OP_reg4]
;** 125	-----------------------    return;
           RET     .S2     B3                ; |127| 
	.dwpsn	"H:\SPH\firmware\lab3\main.c",127,1
           NOP             5
           ; BRANCH OCCURS {B3}              ; |127| 
	.dwattr DW$33, DW_AT_end_file("H:\SPH\firmware\lab3\main.c")
	.dwattr DW$33, DW_AT_end_line(0x7f)
	.dwattr DW$33, DW_AT_end_column(0x01)
	.dwendtag DW$33

	.sect	".text"
	.global	_convolve

DW$35	.dwtag  DW_TAG_subprogram, DW_AT_name("convolve"), DW_AT_symbol_name("_convolve")
	.dwattr DW$35, DW_AT_low_pc(_convolve)
	.dwattr DW$35, DW_AT_high_pc(0x00)
	.dwattr DW$35, DW_AT_begin_file("H:\SPH\firmware\lab3\main.c")
	.dwattr DW$35, DW_AT_begin_line(0x95)
	.dwattr DW$35, DW_AT_begin_column(0x05)
	.dwattr DW$35, DW_AT_frame_base[DW_OP_breg31 0]
	.dwattr DW$35, DW_AT_skeletal(0x01)
	.dwpsn	"H:\SPH\firmware\lab3\main.c",149,39

;******************************************************************************
;* FUNCTION NAME: _convolve                                                   *
;*                                                                            *
;*   Regs Modified     : A1,A3,A4,A5,A6,A7,B0,B1,B4,B5,B6                     *
;*   Regs Used         : A1,A3,A4,A5,A6,A7,B0,B1,B3,B4,B5,B6,DP,SP            *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
_convolve:
;** --------------------------------------------------------------------------*
DW$36	.dwtag  DW_TAG_formal_parameter, DW_AT_name("w"), DW_AT_symbol_name("_w")
	.dwattr DW$36, DW_AT_type(*DW$T$54)
	.dwattr DW$36, DW_AT_location[DW_OP_reg4]
DW$37	.dwtag  DW_TAG_formal_parameter, DW_AT_name("x"), DW_AT_symbol_name("_x")
	.dwattr DW$37, DW_AT_type(*DW$T$54)
	.dwattr DW$37, DW_AT_location[DW_OP_reg20]
DW$38	.dwtag  DW_TAG_formal_parameter, DW_AT_name("n"), DW_AT_symbol_name("_n")
	.dwattr DW$38, DW_AT_type(*DW$T$10)
	.dwattr DW$38, DW_AT_location[DW_OP_reg6]
;** 151	-----------------------    result = 0;
;** 153	-----------------------    if ( n <= 0 ) goto g4;
;**  	-----------------------    U$11 = w;
;**  	-----------------------    U$17 = &x[n-1];
;**  	-----------------------    L$1 = n;
;**  	-----------------------    #pragma MUST_ITERATE(1, 1099511627775, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)

           CMPGT   .L1     A6,0,A1           ; |153| 
||         MV      .S1X    B4,A3             ; |149| 
||         MV      .D1     A4,A5             ; |149| 

   [!A1]   B       .S2     L6                ; |153| 
||         ADDAW   .D1     A3,A6,A3
||         ZERO    .L1     A4                ; |151| 
||         MV      .S1     A6,A7             ; |149| 

           SUB     .L1     A3,4,A3
           NOP             4
           ; BRANCHCC OCCURS {L6}            ; |153| 
;** --------------------------------------------------------------------------*
;**	-----------------------g3:
;** 154	-----------------------    result += *U$11++**U$17--;
;** 153	-----------------------    if ( --L$1 ) goto g3;

           MVC     .S2     CSR,B6
||         ADD     .L2X    2,A7,B0
||         MV      .L1     A4,A6

           AND     .L2     -2,B6,B5
||         SUB     .L1X    B0,2,A1
||         MVK     .S2     0x2,B1            ; init prolog collapse predicate

           MVC     .S2     B5,CSR            ; interrupts off
||         MV      .L2X    A3,B4

;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 153
;*      Loop opening brace source line   : 153
;*      Loop closing brace source line   : 155
;*      Known Minimum Trip Count         : 1                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 0
;*      Unpartitioned Resource Bound     : 2
;*      Partitioned Resource Bound(*)    : 7
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        0     
;*      .S units                     0        1     
;*      .D units                     1        1     
;*      .M units                     4        0     
;*      .X cross paths               4        0     
;*      .T address paths             1        1     
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          1        1     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             0        1     
;*      Bound(.L .S .D .LS .LSD)     1        1     
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 7  Schedule found with 3 iterations in parallel
;*
;*      Register Usage Table:
;*          +---------------------------------+
;*          |AAAAAAAAAAAAAAAA|BBBBBBBBBBBBBBBB|
;*          |0000000000111111|0000000000111111|
;*          |0123456789012345|0123456789012345|
;*          |----------------+----------------|
;*       0: | *  ***         |**  **          |
;*       1: | *   **         |**  *           |
;*       2: | *   **         |**  *           |
;*       3: | *   **         |**  *           |
;*       4: | *  ***         |**  **          |
;*       5: | *  ***         |**  **          |
;*       6: | * ****         |**  **          |
;*          +---------------------------------+
;*
;*      Done
;*
;*      Collapsed epilog stages     : 2
;*      Collapsed prolog stages     : 2
;*      Minimum required memory pad : 0 bytes
;*
;*      For further improvement on this loop, try option -mh8
;*
;*      Minimum safe trip count     : 1
;*----------------------------------------------------------------------------*
;*        SINGLE SCHEDULED ITERATION
;*
;*        C58:
;*   0              LDW     .D1T1   *A5++,A4          ; |154| 
;*     ||           LDW     .D2T2   *B4--,B5          ; |154| 
;*   1              NOP             4
;*   5              MPYI    .M1X    B5,A4,A3          ; |154| 
;*   6              NOP             2
;*   8      [ B0]   SUB     .L2     B0,1,B0           ; |153| 
;*   9      [ B0]   B       .S2     C58               ; |153| 
;*  10              NOP             4
;*  14              ADD     .S1     A3,A6,A6          ; |154| 
;*  15              ; BRANCHCC OCCURS {C58}           ; |153| 
;*----------------------------------------------------------------------------*
L3:    ; PIPED LOOP PROLOG
;** --------------------------------------------------------------------------*
L4:    ; PIPED LOOP KERNEL
DW$L$_convolve$4$B:
	.dwpsn	"H:\SPH\firmware\lab3\main.c",153,0
   [ B0]   SUB     .L2     B0,1,B0           ; |153| <0,8> 
   [ B0]   B       .S2     L4                ; |153| <0,9> 
           NOP             2
           MPYI    .M1X    B5,A4,A3          ; |154| <1,5> 
           NOP             1
	.dwpsn	"H:\SPH\firmware\lab3\main.c",155,0

   [ B1]   SUB     .L2     B1,1,B1           ; <0,14> 
|| [ A1]   SUB     .L1     A1,1,A1           ; <0,14> 
|| [!B1]   ADD     .S1     A3,A6,A6          ; |154| <0,14> 
|| [ A1]   LDW     .D1T1   *A5++,A4          ; |154| <2,0> 
|| [ A1]   LDW     .D2T2   *B4--,B5          ; |154| <2,0> 

DW$L$_convolve$4$E:
;** --------------------------------------------------------------------------*
L5:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*
;**	-----------------------g4:
;** 157	-----------------------    return result;
           MVC     .S2     B6,CSR            ; interrupts on
           NOP             3
           MV      .L1     A6,A4
;** --------------------------------------------------------------------------*
L6:    
           RET     .S2     B3                ; |158| 
	.dwpsn	"H:\SPH\firmware\lab3\main.c",158,1
           NOP             5
           ; BRANCH OCCURS {B3}              ; |158| 

DW$39	.dwtag  DW_TAG_loop
	.dwattr DW$39, DW_AT_name("H:\SPH\firmware\lab3\Configuration1cfg_c.asm:L4:1:1351400656")
	.dwattr DW$39, DW_AT_begin_file("H:\SPH\firmware\lab3\main.c")
	.dwattr DW$39, DW_AT_begin_line(0x99)
	.dwattr DW$39, DW_AT_end_line(0x9b)
DW$40	.dwtag  DW_TAG_loop_range
	.dwattr DW$40, DW_AT_low_pc(DW$L$_convolve$4$B)
	.dwattr DW$40, DW_AT_high_pc(DW$L$_convolve$4$E)
	.dwendtag DW$39

	.dwattr DW$35, DW_AT_end_file("H:\SPH\firmware\lab3\main.c")
	.dwattr DW$35, DW_AT_end_line(0x9e)
	.dwattr DW$35, DW_AT_end_column(0x01)
	.dwendtag DW$35

	.sect	".text"
	.global	_convolve_opt

DW$41	.dwtag  DW_TAG_subprogram, DW_AT_name("convolve_opt"), DW_AT_symbol_name("_convolve_opt")
	.dwattr DW$41, DW_AT_low_pc(_convolve_opt)
	.dwattr DW$41, DW_AT_high_pc(0x00)
	.dwattr DW$41, DW_AT_begin_file("H:\SPH\firmware\lab3\main.c")
	.dwattr DW$41, DW_AT_begin_line(0xa0)
	.dwattr DW$41, DW_AT_begin_column(0x05)
	.dwattr DW$41, DW_AT_frame_base[DW_OP_breg31 0]
	.dwattr DW$41, DW_AT_skeletal(0x01)
	.dwpsn	"H:\SPH\firmware\lab3\main.c",160,59

;******************************************************************************
;* FUNCTION NAME: _convolve_opt                                               *
;*                                                                            *
;*   Regs Modified     : A1,A3,A4,A5,A6,B0,B1,B4,B5,B6                        *
;*   Regs Used         : A1,A3,A4,A5,A6,B0,B1,B3,B4,B5,B6,DP,SP               *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
_convolve_opt:
;** --------------------------------------------------------------------------*
DW$42	.dwtag  DW_TAG_formal_parameter, DW_AT_name("w"), DW_AT_symbol_name("_w")
	.dwattr DW$42, DW_AT_type(*DW$T$55)
	.dwattr DW$42, DW_AT_location[DW_OP_reg4]
DW$43	.dwtag  DW_TAG_formal_parameter, DW_AT_name("x"), DW_AT_symbol_name("_x")
	.dwattr DW$43, DW_AT_type(*DW$T$55)
	.dwattr DW$43, DW_AT_location[DW_OP_reg20]
DW$44	.dwtag  DW_TAG_formal_parameter, DW_AT_name("n"), DW_AT_symbol_name("_n")
	.dwattr DW$44, DW_AT_type(*DW$T$10)
	.dwattr DW$44, DW_AT_location[DW_OP_reg6]
;** 160	-----------------------    w = w;
;** 160	-----------------------    x = x;
;**  	-----------------------    U$11 = w;
;**  	-----------------------    U$17 = &x[n-1];
;** 166	-----------------------    L$1 = n;
;** 162	-----------------------    result = 0;
;**  	-----------------------    #pragma MUST_ITERATE(10, 4294967295, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
;**	-----------------------g2:
;** 166	-----------------------    result += *U$11++**U$17--;
;** 165	-----------------------    if ( --L$1 ) goto g2;
;** 169	-----------------------    return result;

           ADD     .L2X    1,A6,B0
||         MV      .L1X    B4,A3             ; |160| 
||         MVC     .S2     CSR,B6

           AND     .L2     -2,B6,B5
||         ADDAW   .D1     A3,A6,A3
||         MVK     .S2     0x2,B1            ; init prolog collapse predicate

           MVC     .S2     B5,CSR            ; interrupts off
||         SUB     .L2X    A3,4,B4
||         ZERO    .L1     A6                ; |162| 
||         SUB     .S1X    B0,1,A1
||         MV      .D1     A4,A5             ; |160| 

;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 165
;*      Loop opening brace source line   : 165
;*      Loop closing brace source line   : 167
;*      Known Minimum Trip Count         : 10                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 0
;*      Unpartitioned Resource Bound     : 2
;*      Partitioned Resource Bound(*)    : 7
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        0     
;*      .S units                     0        1     
;*      .D units                     1        1     
;*      .M units                     4        0     
;*      .X cross paths               4        0     
;*      .T address paths             1        1     
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          1        1     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             0        1     
;*      Bound(.L .S .D .LS .LSD)     1        1     
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 7  Schedule found with 3 iterations in parallel
;*
;*      Register Usage Table:
;*          +---------------------------------+
;*          |AAAAAAAAAAAAAAAA|BBBBBBBBBBBBBBBB|
;*          |0000000000111111|0000000000111111|
;*          |0123456789012345|0123456789012345|
;*          |----------------+----------------|
;*       0: | *  ***         |**  **          |
;*       1: | *   **         |**  *           |
;*       2: | *   **         |**  *           |
;*       3: | *   **         |**  *           |
;*       4: | *  ***         |**  **          |
;*       5: | *  ***         |**  **          |
;*       6: | * ****         |**  **          |
;*          +---------------------------------+
;*
;*      Done
;*
;*      Epilog not entirely removed
;*      Collapsed epilog stages     : 1
;*      Collapsed prolog stages     : 2
;*      Minimum required memory pad : 0 bytes
;*
;*      For further improvement on this loop, try option -mh8
;*
;*      Minimum safe trip count     : 1
;*----------------------------------------------------------------------------*
;*        SINGLE SCHEDULED ITERATION
;*
;*        C128:
;*   0              LDW     .D1T1   *A5++,A4          ; |166| 
;*     ||           LDW     .D2T2   *B4--,B5          ; |166| 
;*   1              NOP             4
;*   5              MPYI    .M1X    B5,A4,A3          ; |166| 
;*   6              NOP             2
;*   8      [ B0]   SUB     .L2     B0,1,B0           ; |165| 
;*   9      [ B0]   B       .S2     C128              ; |165| 
;*  10              NOP             4
;*  14              ADD     .S1     A3,A6,A6          ; |166| 
;*  15              ; BRANCHCC OCCURS {C128}          ; |165| 
;*----------------------------------------------------------------------------*
L7:    ; PIPED LOOP PROLOG
;** --------------------------------------------------------------------------*
L8:    ; PIPED LOOP KERNEL
DW$L$_convolve_opt$3$B:
	.dwpsn	"H:\SPH\firmware\lab3\main.c",165,0
   [ B0]   SUB     .L2     B0,1,B0           ; |165| <0,8> 
   [ B0]   B       .S2     L8                ; |165| <0,9> 
           NOP             2
           MPYI    .M1X    B5,A4,A3          ; |166| <1,5> 
           NOP             1
	.dwpsn	"H:\SPH\firmware\lab3\main.c",167,0

   [ B1]   SUB     .L2     B1,1,B1           ; <0,14> 
|| [ A1]   SUB     .L1     A1,1,A1           ; <0,14> 
|| [!B1]   ADD     .S1     A3,A6,A6          ; |166| <0,14> 
|| [ A1]   LDW     .D1T1   *A5++,A4          ; |166| <2,0> 
|| [ A1]   LDW     .D2T2   *B4--,B5          ; |166| <2,0> 

DW$L$_convolve_opt$3$E:
;** --------------------------------------------------------------------------*
L9:    ; PIPED LOOP EPILOG
           NOP             1
           RET     .S2     B3                ; |170| 
           NOP             3
           MVC     .S2     B6,CSR            ; interrupts on
	.dwpsn	"H:\SPH\firmware\lab3\main.c",170,1
           ADD     .L1     A3,A6,A4          ; |166| 
           ; BRANCH OCCURS {B3}              ; |170| 

DW$45	.dwtag  DW_TAG_loop
	.dwattr DW$45, DW_AT_name("H:\SPH\firmware\lab3\Configuration1cfg_c.asm:L8:1:1351400656")
	.dwattr DW$45, DW_AT_begin_file("H:\SPH\firmware\lab3\main.c")
	.dwattr DW$45, DW_AT_begin_line(0xa5)
	.dwattr DW$45, DW_AT_end_line(0xa7)
DW$46	.dwtag  DW_TAG_loop_range
	.dwattr DW$46, DW_AT_low_pc(DW$L$_convolve_opt$3$B)
	.dwattr DW$46, DW_AT_high_pc(DW$L$_convolve_opt$3$E)
	.dwendtag DW$45

	.dwattr DW$41, DW_AT_end_file("H:\SPH\firmware\lab3\main.c")
	.dwattr DW$41, DW_AT_end_line(0xaa)
	.dwattr DW$41, DW_AT_end_column(0x01)
	.dwendtag DW$41

	.sect	".text"
	.global	_main

DW$47	.dwtag  DW_TAG_subprogram, DW_AT_name("main"), DW_AT_symbol_name("_main")
	.dwattr DW$47, DW_AT_low_pc(_main)
	.dwattr DW$47, DW_AT_high_pc(0x00)
	.dwattr DW$47, DW_AT_begin_file("H:\SPH\firmware\lab3\main.c")
	.dwattr DW$47, DW_AT_begin_line(0x2e)
	.dwattr DW$47, DW_AT_begin_column(0x05)
	.dwattr DW$47, DW_AT_frame_base[DW_OP_breg31 104]
	.dwattr DW$47, DW_AT_skeletal(0x01)
	.dwpsn	"H:\SPH\firmware\lab3\main.c",46,12

;******************************************************************************
;* FUNCTION NAME: _main                                                       *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,B0,B1,B2,B3,B4,*
;*                           B5,B6,B7,B8,B9,B10,SP                            *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,B0,B1,B2,B3,B4,*
;*                           B5,B6,B7,B8,B9,B10,B13,DP,SP                     *
;*   Local Frame Size  : 8 Args + 80 Auto + 16 Save = 104 byte                *
;******************************************************************************
_main:
;** --------------------------------------------------------------------------*
;** 56	-----------------------    w[] = {...};
;** 57	-----------------------    x[] = {...};
;** 60	-----------------------    start = clock();
;** 61	-----------------------    stop = clock();
;** 64	-----------------------    start = clock();
;** 65	-----------------------    out1 = convolve(&w, &x, 10);
;** 66	-----------------------    stop = clock();
;** 67	-----------------------    C$1 = stop-start;
;** 67	-----------------------    printf((const char *)"convovle no opt cycles: %d\n", stop-start-C$1);
;** 69	-----------------------    start = clock();
;** 70	-----------------------    out2 = convolve_opt(&w, &x, 10);
;** 71	-----------------------    stop = clock();
           CALL    .S1     __strasg          ; |56| 
           MVKL    .S2     _$T0$1$1,B4       ; |56| 
           STW     .D2T2   B10,*SP--(104)    ; |46| 

           STW     .D2T1   A11,*+SP(100)     ; |46| 
||         MVKL    .S2     RL3,B3            ; |56| 

           STW     .D2T1   A10,*+SP(96)      ; |46| 
||         MVKH    .S2     _$T0$1$1,B4       ; |56| 

           STW     .D2T2   B13,*+SP(92)      ; |46| 
||         MVKH    .S2     RL3,B3            ; |56| 
||         ADD     .L1X    12,SP,A4          ; |56| 
||         MVK     .S1     0x28,A6           ; |56| 

RL3:       ; CALL OCCURS {__strasg}          ; |56| 
;** --------------------------------------------------------------------------*
           CALL    .S1     __strasg          ; |57| 
           MVKL    .S2     RL4,B3            ; |57| 
           MVKL    .S2     _$T1$2$1,B4       ; |57| 
           MVKH    .S2     RL4,B3            ; |57| 
           ADDAW   .D2     SP,13,B5          ; |57| 

           MVKH    .S2     _$T1$2$1,B4       ; |57| 
||         MV      .L1X    B5,A4             ; |57| 

RL4:       ; CALL OCCURS {__strasg}          ; |57| 
           CALL    .S1     _clock            ; |60| 
           MVKL    .S2     RL5,B3            ; |60| 
           MVKH    .S2     RL5,B3            ; |60| 
           NOP             3
RL5:       ; CALL OCCURS {_clock}            ; |60| 
           CALL    .S1     _clock            ; |61| 
           MVKL    .S2     RL6,B3            ; |61| 
           MV      .L1     A4,A10            ; |60| 
           MVKH    .S2     RL6,B3            ; |61| 
           NOP             2
RL6:       ; CALL OCCURS {_clock}            ; |61| 
           CALL    .S1     _clock            ; |64| 
           MVKL    .S2     RL7,B3            ; |64| 
           SUB     .L1     A4,A10,A11        ; |67| 
           MVKH    .S2     RL7,B3            ; |64| 
           NOP             2
RL7:       ; CALL OCCURS {_clock}            ; |64| 
           CALL    .S1     _convolve         ; |65| 
           MVKL    .S2     RL8,B3            ; |65| 
           MVKH    .S2     RL8,B3            ; |65| 
           MV      .D1     A4,A10            ; |64| 
           ADD     .L1X    12,SP,A4          ; |65| 

           MVK     .S1     0xa,A6            ; |65| 
||         ADDAW   .D2     SP,13,B4          ; |65| 

RL8:       ; CALL OCCURS {_convolve}         ; |65| 
           CALL    .S1     _clock            ; |66| 
           STW     .D2T1   A4,*+DP(_out1)    ; |65| 
           NOP             2
           MVKL    .S2     RL9,B3            ; |66| 
           MVKH    .S2     RL9,B3            ; |66| 
RL9:       ; CALL OCCURS {_clock}            ; |66| 
           CALL    .S1     _printf           ; |67| 
           MVKL    .S2     SL1+0,B4          ; |67| 
           SUB     .L1     A4,A10,A3         ; |67| 
           MVKH    .S2     SL1+0,B4          ; |67| 

           STW     .D2T2   B4,*+SP(4)        ; |67| 
||         SUB     .L1     A3,A11,A3         ; |67| 
||         MVKL    .S2     RL10,B3           ; |67| 

           STW     .D2T1   A3,*+SP(8)        ; |67| 
||         MVKH    .S2     RL10,B3           ; |67| 

RL10:      ; CALL OCCURS {_printf}           ; |67| 
           CALL    .S1     _clock            ; |69| 
           MVKL    .S2     RL11,B3           ; |69| 
           MVKH    .S2     RL11,B3           ; |69| 
           NOP             3
RL11:      ; CALL OCCURS {_clock}            ; |69| 
           CALL    .S1     _convolve_opt     ; |70| 
           MVKL    .S2     RL12,B3           ; |70| 
           ADDAW   .D2     SP,13,B4          ; |70| 
           MVKH    .S2     RL12,B3           ; |70| 
           MVK     .S1     0xa,A6            ; |70| 

           MV      .L2X    A4,B10            ; |69| 
||         ADD     .L1X    12,SP,A4          ; |70| 

RL12:      ; CALL OCCURS {_convolve_opt}     ; |70| 
           CALL    .S1     _clock            ; |71| 
           STW     .D2T1   A4,*+DP(_out2)    ; |70| 
           NOP             2
           MVKL    .S2     RL13,B3           ; |71| 
           MVKH    .S2     RL13,B3           ; |71| 
RL13:      ; CALL OCCURS {_clock}            ; |71| 
;** --------------------------------------------------------------------------*
;** 72	-----------------------    printf((const char *)"convovle opt cycles: %d\n", stop-start-C$1);
;** 74	-----------------------    start = clock();
;** 75	-----------------------    out3 = convolve_as_func(&w, &x, 10);
;** 76	-----------------------    stop = clock();
;** 77	-----------------------    printf((const char *)"convovle as cycles: %d\n", stop-start-C$1);
;** 120	-----------------------    exit();
;***	; the preceding call never returns
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
           CALL    .S1     _printf           ; |72| 
           SUB     .L2X    A4,B10,B4         ; |72| 
           SUB     .L2X    B4,A11,B4         ; |72| 
           MVKL    .S1     SL2+0,A3          ; |72| 

           STW     .D2T2   B4,*+SP(8)        ; |72| 
||         MVKH    .S1     SL2+0,A3          ; |72| 
||         MVKL    .S2     RL14,B3           ; |72| 

           STW     .D2T1   A3,*+SP(4)        ; |72| 
||         MVKH    .S2     RL14,B3           ; |72| 

RL14:      ; CALL OCCURS {_printf}           ; |72| 
;** --------------------------------------------------------------------------*
           CALL    .S1     _clock            ; |74| 
           MVKL    .S2     RL15,B3           ; |74| 
           MVKH    .S2     RL15,B3           ; |74| 
           NOP             3
RL15:      ; CALL OCCURS {_clock}            ; |74| 
           CALL    .S1     _convolve_as_func ; |75| 
           MVKL    .S2     RL16,B3           ; |75| 
           ADDAW   .D2     SP,13,B4          ; |75| 
           MVK     .S1     0xa,A6            ; |75| 
           MV      .D1     A4,A10            ; |74| 

           ADD     .L1X    12,SP,A4          ; |75| 
||         MVKH    .S2     RL16,B3           ; |75| 

RL16:      ; CALL OCCURS {_convolve_as_func}  ; |75| 
           CALL    .S1     _clock            ; |76| 
           STW     .D2T1   A4,*+DP(_out3)    ; |75| 
           NOP             2
           MVKL    .S2     RL17,B3           ; |76| 
           MVKH    .S2     RL17,B3           ; |76| 
RL17:      ; CALL OCCURS {_clock}            ; |76| 
           CALL    .S1     _printf           ; |77| 
           MVKL    .S2     SL3+0,B4          ; |77| 
           SUB     .L1     A4,A10,A3         ; |77| 
           MVKH    .S2     SL3+0,B4          ; |77| 

           STW     .D2T2   B4,*+SP(4)        ; |77| 
||         SUB     .L1     A3,A11,A3         ; |77| 
||         MVKL    .S2     RL18,B3           ; |77| 

           STW     .D2T1   A3,*+SP(8)        ; |77| 
||         MVKH    .S2     RL18,B3           ; |77| 

RL18:      ; CALL OCCURS {_printf}           ; |77| 
           CALL    .S1     _exit             ; |120| 
           MVKL    .S2     RL19,B3           ; |120| 
           MVKH    .S2     RL19,B3           ; |120| 
           NOP             3
RL19:      ; CALL OCCURS {_exit}             ; |120| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Bad loop structure
;*----------------------------------------------------------------------------*
L10:    
DW$L$_main$5$B:
;**	-----------------------g2:
;** 120	-----------------------    goto g2;
           B       .S1     L10               ; |120| 
	.dwpsn	"H:\SPH\firmware\lab3\main.c",122,1
           NOP             5
           ; BRANCH OCCURS {L10}             ; |120| 
DW$L$_main$5$E:

DW$48	.dwtag  DW_TAG_loop
	.dwattr DW$48, DW_AT_name("H:\SPH\firmware\lab3\Configuration1cfg_c.asm:L10:1:1351400656")
	.dwattr DW$48, DW_AT_begin_file("H:\SPH\firmware\lab3\main.c")
	.dwattr DW$48, DW_AT_begin_line(0x78)
	.dwattr DW$48, DW_AT_end_line(0x7a)
DW$49	.dwtag  DW_TAG_loop_range
	.dwattr DW$49, DW_AT_low_pc(DW$L$_main$5$B)
	.dwattr DW$49, DW_AT_high_pc(DW$L$_main$5$E)
	.dwendtag DW$48

	.dwattr DW$47, DW_AT_end_file("H:\SPH\firmware\lab3\main.c")
	.dwattr DW$47, DW_AT_end_line(0x7a)
	.dwattr DW$47, DW_AT_end_column(0x01)
	.dwendtag DW$47

	.sect	".text:CSL_cfgInit"
	.global	_CSL_cfgInit

DW$50	.dwtag  DW_TAG_subprogram, DW_AT_name("CSL_cfgInit"), DW_AT_symbol_name("_CSL_cfgInit")
	.dwattr DW$50, DW_AT_low_pc(_CSL_cfgInit)
	.dwattr DW$50, DW_AT_high_pc(0x00)
	.dwattr DW$50, DW_AT_begin_file("H:\SPH\firmware\lab3\Configuration1cfg_c.c")
	.dwattr DW$50, DW_AT_begin_line(0x1e)
	.dwattr DW$50, DW_AT_begin_column(0x06)
	.dwattr DW$50, DW_AT_frame_base[DW_OP_breg31 0]
	.dwattr DW$50, DW_AT_skeletal(0x01)
	.dwpsn	"H:\SPH\firmware\lab3\Configuration1cfg_c.c",31,1

;******************************************************************************
;* FUNCTION NAME: _CSL_cfgInit                                                *
;*                                                                            *
;*   Regs Modified     :                                                      *
;*   Regs Used         : B3                                                   *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
_CSL_cfgInit:
;** --------------------------------------------------------------------------*
;** 31	-----------------------    return;
           RET     .S2     B3                ; |32| 
	.dwpsn	"H:\SPH\firmware\lab3\Configuration1cfg_c.c",32,1
           NOP             5
           ; BRANCH OCCURS {B3}              ; |32| 
	.dwattr DW$50, DW_AT_end_file("H:\SPH\firmware\lab3\Configuration1cfg_c.c")
	.dwattr DW$50, DW_AT_end_line(0x20)
	.dwattr DW$50, DW_AT_end_column(0x01)
	.dwendtag DW$50

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

;******************************************************************************
;* TYPE INFORMATION                                                           *
;******************************************************************************

DW$T$23	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$23, DW_AT_language(DW_LANG_C)

DW$T$25	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$25, DW_AT_language(DW_LANG_C)
DW$51	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$24)
	.dwendtag DW$T$25


DW$T$26	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$26, DW_AT_language(DW_LANG_C)
DW$T$36	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$36, DW_AT_type(*DW$T$35)
DW$T$24	.dwtag  DW_TAG_typedef, DW_AT_name("Int16"), DW_AT_type(*DW$T$8)
	.dwattr DW$T$24, DW_AT_language(DW_LANG_C)

DW$T$40	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$24)
	.dwattr DW$T$40, DW_AT_language(DW_LANG_C)
DW$52	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$38)
DW$53	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$39)
	.dwendtag DW$T$40


DW$T$42	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$24)
	.dwattr DW$T$42, DW_AT_language(DW_LANG_C)
DW$54	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$38)
DW$55	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$41)
	.dwendtag DW$T$42

DW$T$10	.dwtag  DW_TAG_base_type, DW_AT_name("int")
	.dwattr DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr DW$T$10, DW_AT_byte_size(0x04)
DW$T$38	.dwtag  DW_TAG_typedef, DW_AT_name("DSK6713_AIC23_CodecHandle"), DW_AT_type(*DW$T$10)
	.dwattr DW$T$38, DW_AT_language(DW_LANG_C)

DW$T$50	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$50, DW_AT_language(DW_LANG_C)
DW$56	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$49)
DW$57	.dwtag  DW_TAG_unspecified_parameters
	.dwendtag DW$T$50


DW$T$52	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$52, DW_AT_language(DW_LANG_C)
DW$T$54	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$54, DW_AT_address_class(0x20)
DW$T$55	.dwtag  DW_TAG_restrict_type
	.dwattr DW$T$55, DW_AT_type(*DW$T$54)

DW$T$58	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$58, DW_AT_language(DW_LANG_C)
DW$58	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$54)
DW$59	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$54)
DW$60	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$58


DW$T$61	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$60)
	.dwattr DW$T$61, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$61, DW_AT_byte_size(0x28)
DW$61	.dwtag  DW_TAG_subrange_type
	.dwattr DW$61, DW_AT_upper_bound(0x09)
	.dwendtag DW$T$61

DW$T$39	.dwtag  DW_TAG_typedef, DW_AT_name("Uint32"), DW_AT_type(*DW$T$11)
	.dwattr DW$T$39, DW_AT_language(DW_LANG_C)
DW$T$41	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$39)
	.dwattr DW$T$41, DW_AT_address_class(0x20)
DW$T$63	.dwtag  DW_TAG_typedef, DW_AT_name("clock_t"), DW_AT_type(*DW$T$11)
	.dwattr DW$T$63, DW_AT_language(DW_LANG_C)

DW$T$64	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$63)
	.dwattr DW$T$64, DW_AT_language(DW_LANG_C)
DW$T$67	.dwtag  DW_TAG_typedef, DW_AT_name("DSK6713_AIC23_Config"), DW_AT_type(*DW$T$20)
	.dwattr DW$T$67, DW_AT_language(DW_LANG_C)
DW$T$69	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$68)
	.dwattr DW$T$69, DW_AT_address_class(0x20)
DW$T$49	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$48)
	.dwattr DW$T$49, DW_AT_address_class(0x20)
DW$T$35	.dwtag  DW_TAG_typedef, DW_AT_name("Uint8"), DW_AT_type(*DW$T$6)
	.dwattr DW$T$35, DW_AT_language(DW_LANG_C)
DW$T$8	.dwtag  DW_TAG_base_type, DW_AT_name("short")
	.dwattr DW$T$8, DW_AT_encoding(DW_ATE_signed)
	.dwattr DW$T$8, DW_AT_byte_size(0x02)
DW$T$60	.dwtag  DW_TAG_const_type
	.dwattr DW$T$60, DW_AT_type(*DW$T$10)
DW$T$11	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned int")
	.dwattr DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$11, DW_AT_byte_size(0x04)

DW$T$20	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$20, DW_AT_name("DSK6713_AIC23_Config")
	.dwattr DW$T$20, DW_AT_byte_size(0x28)
DW$62	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$62, DW_AT_name("regs"), DW_AT_symbol_name("_regs")
	.dwattr DW$62, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$62, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$20

DW$T$68	.dwtag  DW_TAG_typedef, DW_AT_name("FILE"), DW_AT_type(*DW$T$22)
	.dwattr DW$T$68, DW_AT_language(DW_LANG_C)
DW$T$48	.dwtag  DW_TAG_const_type
	.dwattr DW$T$48, DW_AT_type(*DW$T$47)
DW$T$6	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned char")
	.dwattr DW$T$6, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr DW$T$6, DW_AT_byte_size(0x01)

DW$T$19	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$19, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$19, DW_AT_byte_size(0x28)
DW$63	.dwtag  DW_TAG_subrange_type
	.dwattr DW$63, DW_AT_upper_bound(0x09)
	.dwendtag DW$T$19


DW$T$22	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$22, DW_AT_byte_size(0x1c)
DW$64	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$64, DW_AT_name("fd"), DW_AT_symbol_name("_fd")
	.dwattr DW$64, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$64, DW_AT_accessibility(DW_ACCESS_public)
DW$65	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$65, DW_AT_name("buf"), DW_AT_symbol_name("_buf")
	.dwattr DW$65, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$65, DW_AT_accessibility(DW_ACCESS_public)
DW$66	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$66, DW_AT_name("pos"), DW_AT_symbol_name("_pos")
	.dwattr DW$66, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$66, DW_AT_accessibility(DW_ACCESS_public)
DW$67	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$67, DW_AT_name("bufend"), DW_AT_symbol_name("_bufend")
	.dwattr DW$67, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$67, DW_AT_accessibility(DW_ACCESS_public)
DW$68	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$68, DW_AT_name("buff_stop"), DW_AT_symbol_name("_buff_stop")
	.dwattr DW$68, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$68, DW_AT_accessibility(DW_ACCESS_public)
DW$69	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$69, DW_AT_name("flags"), DW_AT_symbol_name("_flags")
	.dwattr DW$69, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$69, DW_AT_accessibility(DW_ACCESS_public)
DW$70	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$70, DW_AT_name("index"), DW_AT_symbol_name("_index")
	.dwattr DW$70, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$70, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$22

DW$T$47	.dwtag  DW_TAG_base_type, DW_AT_name("signed char")
	.dwattr DW$T$47, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr DW$T$47, DW_AT_byte_size(0x01)
DW$T$21	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$6)
	.dwattr DW$T$21, DW_AT_address_class(0x20)

	.dwattr DW$50, DW_AT_external(0x01)
	.dwattr DW$35, DW_AT_external(0x01)
	.dwattr DW$35, DW_AT_type(*DW$T$10)
	.dwattr DW$41, DW_AT_external(0x01)
	.dwattr DW$41, DW_AT_type(*DW$T$10)
	.dwattr DW$47, DW_AT_external(0x01)
	.dwattr DW$47, DW_AT_type(*DW$T$10)
	.dwattr DW$33, DW_AT_external(0x01)
	.dwattr DW$32, DW_AT_external(0x01)
	.dwattr DW$31, DW_AT_external(0x01)
	.dwattr DW$CU, DW_AT_language(DW_LANG_C)

;***************************************************************
;* DWARF REGISTER MAP                                          *
;***************************************************************

DW$71	.dwtag  DW_TAG_assign_register, DW_AT_name("A0")
	.dwattr DW$71, DW_AT_location[DW_OP_reg0]
DW$72	.dwtag  DW_TAG_assign_register, DW_AT_name("A1")
	.dwattr DW$72, DW_AT_location[DW_OP_reg1]
DW$73	.dwtag  DW_TAG_assign_register, DW_AT_name("A2")
	.dwattr DW$73, DW_AT_location[DW_OP_reg2]
DW$74	.dwtag  DW_TAG_assign_register, DW_AT_name("A3")
	.dwattr DW$74, DW_AT_location[DW_OP_reg3]
DW$75	.dwtag  DW_TAG_assign_register, DW_AT_name("A4")
	.dwattr DW$75, DW_AT_location[DW_OP_reg4]
DW$76	.dwtag  DW_TAG_assign_register, DW_AT_name("A5")
	.dwattr DW$76, DW_AT_location[DW_OP_reg5]
DW$77	.dwtag  DW_TAG_assign_register, DW_AT_name("A6")
	.dwattr DW$77, DW_AT_location[DW_OP_reg6]
DW$78	.dwtag  DW_TAG_assign_register, DW_AT_name("A7")
	.dwattr DW$78, DW_AT_location[DW_OP_reg7]
DW$79	.dwtag  DW_TAG_assign_register, DW_AT_name("A8")
	.dwattr DW$79, DW_AT_location[DW_OP_reg8]
DW$80	.dwtag  DW_TAG_assign_register, DW_AT_name("A9")
	.dwattr DW$80, DW_AT_location[DW_OP_reg9]
DW$81	.dwtag  DW_TAG_assign_register, DW_AT_name("A10")
	.dwattr DW$81, DW_AT_location[DW_OP_reg10]
DW$82	.dwtag  DW_TAG_assign_register, DW_AT_name("A11")
	.dwattr DW$82, DW_AT_location[DW_OP_reg11]
DW$83	.dwtag  DW_TAG_assign_register, DW_AT_name("A12")
	.dwattr DW$83, DW_AT_location[DW_OP_reg12]
DW$84	.dwtag  DW_TAG_assign_register, DW_AT_name("A13")
	.dwattr DW$84, DW_AT_location[DW_OP_reg13]
DW$85	.dwtag  DW_TAG_assign_register, DW_AT_name("A14")
	.dwattr DW$85, DW_AT_location[DW_OP_reg14]
DW$86	.dwtag  DW_TAG_assign_register, DW_AT_name("A15")
	.dwattr DW$86, DW_AT_location[DW_OP_reg15]
DW$87	.dwtag  DW_TAG_assign_register, DW_AT_name("B0")
	.dwattr DW$87, DW_AT_location[DW_OP_reg16]
DW$88	.dwtag  DW_TAG_assign_register, DW_AT_name("B1")
	.dwattr DW$88, DW_AT_location[DW_OP_reg17]
DW$89	.dwtag  DW_TAG_assign_register, DW_AT_name("B2")
	.dwattr DW$89, DW_AT_location[DW_OP_reg18]
DW$90	.dwtag  DW_TAG_assign_register, DW_AT_name("B3")
	.dwattr DW$90, DW_AT_location[DW_OP_reg19]
DW$91	.dwtag  DW_TAG_assign_register, DW_AT_name("B4")
	.dwattr DW$91, DW_AT_location[DW_OP_reg20]
DW$92	.dwtag  DW_TAG_assign_register, DW_AT_name("B5")
	.dwattr DW$92, DW_AT_location[DW_OP_reg21]
DW$93	.dwtag  DW_TAG_assign_register, DW_AT_name("B6")
	.dwattr DW$93, DW_AT_location[DW_OP_reg22]
DW$94	.dwtag  DW_TAG_assign_register, DW_AT_name("B7")
	.dwattr DW$94, DW_AT_location[DW_OP_reg23]
DW$95	.dwtag  DW_TAG_assign_register, DW_AT_name("B8")
	.dwattr DW$95, DW_AT_location[DW_OP_reg24]
DW$96	.dwtag  DW_TAG_assign_register, DW_AT_name("B9")
	.dwattr DW$96, DW_AT_location[DW_OP_reg25]
DW$97	.dwtag  DW_TAG_assign_register, DW_AT_name("B10")
	.dwattr DW$97, DW_AT_location[DW_OP_reg26]
DW$98	.dwtag  DW_TAG_assign_register, DW_AT_name("B11")
	.dwattr DW$98, DW_AT_location[DW_OP_reg27]
DW$99	.dwtag  DW_TAG_assign_register, DW_AT_name("B12")
	.dwattr DW$99, DW_AT_location[DW_OP_reg28]
DW$100	.dwtag  DW_TAG_assign_register, DW_AT_name("B13")
	.dwattr DW$100, DW_AT_location[DW_OP_reg29]
DW$101	.dwtag  DW_TAG_assign_register, DW_AT_name("DP")
	.dwattr DW$101, DW_AT_location[DW_OP_reg30]
DW$102	.dwtag  DW_TAG_assign_register, DW_AT_name("SP")
	.dwattr DW$102, DW_AT_location[DW_OP_reg31]
DW$103	.dwtag  DW_TAG_assign_register, DW_AT_name("FP")
	.dwattr DW$103, DW_AT_location[DW_OP_regx 0x20]
DW$104	.dwtag  DW_TAG_assign_register, DW_AT_name("PC")
	.dwattr DW$104, DW_AT_location[DW_OP_regx 0x21]
DW$105	.dwtag  DW_TAG_assign_register, DW_AT_name("IRP")
	.dwattr DW$105, DW_AT_location[DW_OP_regx 0x22]
DW$106	.dwtag  DW_TAG_assign_register, DW_AT_name("IFR")
	.dwattr DW$106, DW_AT_location[DW_OP_regx 0x23]
DW$107	.dwtag  DW_TAG_assign_register, DW_AT_name("NRP")
	.dwattr DW$107, DW_AT_location[DW_OP_regx 0x24]
DW$108	.dwtag  DW_TAG_assign_register, DW_AT_name("A16")
	.dwattr DW$108, DW_AT_location[DW_OP_regx 0x25]
DW$109	.dwtag  DW_TAG_assign_register, DW_AT_name("A17")
	.dwattr DW$109, DW_AT_location[DW_OP_regx 0x26]
DW$110	.dwtag  DW_TAG_assign_register, DW_AT_name("A18")
	.dwattr DW$110, DW_AT_location[DW_OP_regx 0x27]
DW$111	.dwtag  DW_TAG_assign_register, DW_AT_name("A19")
	.dwattr DW$111, DW_AT_location[DW_OP_regx 0x28]
DW$112	.dwtag  DW_TAG_assign_register, DW_AT_name("A20")
	.dwattr DW$112, DW_AT_location[DW_OP_regx 0x29]
DW$113	.dwtag  DW_TAG_assign_register, DW_AT_name("A21")
	.dwattr DW$113, DW_AT_location[DW_OP_regx 0x2a]
DW$114	.dwtag  DW_TAG_assign_register, DW_AT_name("A22")
	.dwattr DW$114, DW_AT_location[DW_OP_regx 0x2b]
DW$115	.dwtag  DW_TAG_assign_register, DW_AT_name("A23")
	.dwattr DW$115, DW_AT_location[DW_OP_regx 0x2c]
DW$116	.dwtag  DW_TAG_assign_register, DW_AT_name("A24")
	.dwattr DW$116, DW_AT_location[DW_OP_regx 0x2d]
DW$117	.dwtag  DW_TAG_assign_register, DW_AT_name("A25")
	.dwattr DW$117, DW_AT_location[DW_OP_regx 0x2e]
DW$118	.dwtag  DW_TAG_assign_register, DW_AT_name("A26")
	.dwattr DW$118, DW_AT_location[DW_OP_regx 0x2f]
DW$119	.dwtag  DW_TAG_assign_register, DW_AT_name("A27")
	.dwattr DW$119, DW_AT_location[DW_OP_regx 0x30]
DW$120	.dwtag  DW_TAG_assign_register, DW_AT_name("A28")
	.dwattr DW$120, DW_AT_location[DW_OP_regx 0x31]
DW$121	.dwtag  DW_TAG_assign_register, DW_AT_name("A29")
	.dwattr DW$121, DW_AT_location[DW_OP_regx 0x32]
DW$122	.dwtag  DW_TAG_assign_register, DW_AT_name("A30")
	.dwattr DW$122, DW_AT_location[DW_OP_regx 0x33]
DW$123	.dwtag  DW_TAG_assign_register, DW_AT_name("A31")
	.dwattr DW$123, DW_AT_location[DW_OP_regx 0x34]
DW$124	.dwtag  DW_TAG_assign_register, DW_AT_name("B16")
	.dwattr DW$124, DW_AT_location[DW_OP_regx 0x35]
DW$125	.dwtag  DW_TAG_assign_register, DW_AT_name("B17")
	.dwattr DW$125, DW_AT_location[DW_OP_regx 0x36]
DW$126	.dwtag  DW_TAG_assign_register, DW_AT_name("B18")
	.dwattr DW$126, DW_AT_location[DW_OP_regx 0x37]
DW$127	.dwtag  DW_TAG_assign_register, DW_AT_name("B19")
	.dwattr DW$127, DW_AT_location[DW_OP_regx 0x38]
DW$128	.dwtag  DW_TAG_assign_register, DW_AT_name("B20")
	.dwattr DW$128, DW_AT_location[DW_OP_regx 0x39]
DW$129	.dwtag  DW_TAG_assign_register, DW_AT_name("B21")
	.dwattr DW$129, DW_AT_location[DW_OP_regx 0x3a]
DW$130	.dwtag  DW_TAG_assign_register, DW_AT_name("B22")
	.dwattr DW$130, DW_AT_location[DW_OP_regx 0x3b]
DW$131	.dwtag  DW_TAG_assign_register, DW_AT_name("B23")
	.dwattr DW$131, DW_AT_location[DW_OP_regx 0x3c]
DW$132	.dwtag  DW_TAG_assign_register, DW_AT_name("B24")
	.dwattr DW$132, DW_AT_location[DW_OP_regx 0x3d]
DW$133	.dwtag  DW_TAG_assign_register, DW_AT_name("B25")
	.dwattr DW$133, DW_AT_location[DW_OP_regx 0x3e]
DW$134	.dwtag  DW_TAG_assign_register, DW_AT_name("B26")
	.dwattr DW$134, DW_AT_location[DW_OP_regx 0x3f]
DW$135	.dwtag  DW_TAG_assign_register, DW_AT_name("B27")
	.dwattr DW$135, DW_AT_location[DW_OP_regx 0x40]
DW$136	.dwtag  DW_TAG_assign_register, DW_AT_name("B28")
	.dwattr DW$136, DW_AT_location[DW_OP_regx 0x41]
DW$137	.dwtag  DW_TAG_assign_register, DW_AT_name("B29")
	.dwattr DW$137, DW_AT_location[DW_OP_regx 0x42]
DW$138	.dwtag  DW_TAG_assign_register, DW_AT_name("B30")
	.dwattr DW$138, DW_AT_location[DW_OP_regx 0x43]
DW$139	.dwtag  DW_TAG_assign_register, DW_AT_name("B31")
	.dwattr DW$139, DW_AT_location[DW_OP_regx 0x44]
DW$140	.dwtag  DW_TAG_assign_register, DW_AT_name("AMR")
	.dwattr DW$140, DW_AT_location[DW_OP_regx 0x45]
DW$141	.dwtag  DW_TAG_assign_register, DW_AT_name("CSR")
	.dwattr DW$141, DW_AT_location[DW_OP_regx 0x46]
DW$142	.dwtag  DW_TAG_assign_register, DW_AT_name("ISR")
	.dwattr DW$142, DW_AT_location[DW_OP_regx 0x47]
DW$143	.dwtag  DW_TAG_assign_register, DW_AT_name("ICR")
	.dwattr DW$143, DW_AT_location[DW_OP_regx 0x48]
DW$144	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$144, DW_AT_location[DW_OP_regx 0x49]
DW$145	.dwtag  DW_TAG_assign_register, DW_AT_name("ISTP")
	.dwattr DW$145, DW_AT_location[DW_OP_regx 0x4a]
DW$146	.dwtag  DW_TAG_assign_register, DW_AT_name("IN")
	.dwattr DW$146, DW_AT_location[DW_OP_regx 0x4b]
DW$147	.dwtag  DW_TAG_assign_register, DW_AT_name("OUT")
	.dwattr DW$147, DW_AT_location[DW_OP_regx 0x4c]
DW$148	.dwtag  DW_TAG_assign_register, DW_AT_name("ACR")
	.dwattr DW$148, DW_AT_location[DW_OP_regx 0x4d]
DW$149	.dwtag  DW_TAG_assign_register, DW_AT_name("ADR")
	.dwattr DW$149, DW_AT_location[DW_OP_regx 0x4e]
DW$150	.dwtag  DW_TAG_assign_register, DW_AT_name("FADCR")
	.dwattr DW$150, DW_AT_location[DW_OP_regx 0x4f]
DW$151	.dwtag  DW_TAG_assign_register, DW_AT_name("FAUCR")
	.dwattr DW$151, DW_AT_location[DW_OP_regx 0x50]
DW$152	.dwtag  DW_TAG_assign_register, DW_AT_name("FMCR")
	.dwattr DW$152, DW_AT_location[DW_OP_regx 0x51]
DW$153	.dwtag  DW_TAG_assign_register, DW_AT_name("GFPGFR")
	.dwattr DW$153, DW_AT_location[DW_OP_regx 0x52]
DW$154	.dwtag  DW_TAG_assign_register, DW_AT_name("DIER")
	.dwattr DW$154, DW_AT_location[DW_OP_regx 0x53]
DW$155	.dwtag  DW_TAG_assign_register, DW_AT_name("REP")
	.dwattr DW$155, DW_AT_location[DW_OP_regx 0x54]
DW$156	.dwtag  DW_TAG_assign_register, DW_AT_name("TSCL")
	.dwattr DW$156, DW_AT_location[DW_OP_regx 0x55]
DW$157	.dwtag  DW_TAG_assign_register, DW_AT_name("TSCH")
	.dwattr DW$157, DW_AT_location[DW_OP_regx 0x56]
DW$158	.dwtag  DW_TAG_assign_register, DW_AT_name("ARP")
	.dwattr DW$158, DW_AT_location[DW_OP_regx 0x57]
DW$159	.dwtag  DW_TAG_assign_register, DW_AT_name("ILC")
	.dwattr DW$159, DW_AT_location[DW_OP_regx 0x58]
DW$160	.dwtag  DW_TAG_assign_register, DW_AT_name("RILC")
	.dwattr DW$160, DW_AT_location[DW_OP_regx 0x59]
DW$161	.dwtag  DW_TAG_assign_register, DW_AT_name("DNUM")
	.dwattr DW$161, DW_AT_location[DW_OP_regx 0x5a]
DW$162	.dwtag  DW_TAG_assign_register, DW_AT_name("SSR")
	.dwattr DW$162, DW_AT_location[DW_OP_regx 0x5b]
DW$163	.dwtag  DW_TAG_assign_register, DW_AT_name("GPLYA")
	.dwattr DW$163, DW_AT_location[DW_OP_regx 0x5c]
DW$164	.dwtag  DW_TAG_assign_register, DW_AT_name("GPLYB")
	.dwattr DW$164, DW_AT_location[DW_OP_regx 0x5d]
DW$165	.dwtag  DW_TAG_assign_register, DW_AT_name("TSR")
	.dwattr DW$165, DW_AT_location[DW_OP_regx 0x5e]
DW$166	.dwtag  DW_TAG_assign_register, DW_AT_name("ITSR")
	.dwattr DW$166, DW_AT_location[DW_OP_regx 0x5f]
DW$167	.dwtag  DW_TAG_assign_register, DW_AT_name("NTSR")
	.dwattr DW$167, DW_AT_location[DW_OP_regx 0x60]
DW$168	.dwtag  DW_TAG_assign_register, DW_AT_name("EFR")
	.dwattr DW$168, DW_AT_location[DW_OP_regx 0x61]
DW$169	.dwtag  DW_TAG_assign_register, DW_AT_name("ECR")
	.dwattr DW$169, DW_AT_location[DW_OP_regx 0x62]
DW$170	.dwtag  DW_TAG_assign_register, DW_AT_name("IERR")
	.dwattr DW$170, DW_AT_location[DW_OP_regx 0x63]
DW$171	.dwtag  DW_TAG_assign_register, DW_AT_name("DMSG")
	.dwattr DW$171, DW_AT_location[DW_OP_regx 0x64]
DW$172	.dwtag  DW_TAG_assign_register, DW_AT_name("CMSG")
	.dwattr DW$172, DW_AT_location[DW_OP_regx 0x65]
DW$173	.dwtag  DW_TAG_assign_register, DW_AT_name("DT_DMA_ADDR")
	.dwattr DW$173, DW_AT_location[DW_OP_regx 0x66]
DW$174	.dwtag  DW_TAG_assign_register, DW_AT_name("DT_DMA_DATA")
	.dwattr DW$174, DW_AT_location[DW_OP_regx 0x67]
DW$175	.dwtag  DW_TAG_assign_register, DW_AT_name("DT_DMA_CNTL")
	.dwattr DW$175, DW_AT_location[DW_OP_regx 0x68]
DW$176	.dwtag  DW_TAG_assign_register, DW_AT_name("TCU_CNTL")
	.dwattr DW$176, DW_AT_location[DW_OP_regx 0x69]
DW$177	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_REC_CNTL")
	.dwattr DW$177, DW_AT_location[DW_OP_regx 0x6a]
DW$178	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_XMT_CNTL")
	.dwattr DW$178, DW_AT_location[DW_OP_regx 0x6b]
DW$179	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_CFG")
	.dwattr DW$179, DW_AT_location[DW_OP_regx 0x6c]
DW$180	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_RDATA")
	.dwattr DW$180, DW_AT_location[DW_OP_regx 0x6d]
DW$181	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_WDATA")
	.dwattr DW$181, DW_AT_location[DW_OP_regx 0x6e]
DW$182	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_RADDR")
	.dwattr DW$182, DW_AT_location[DW_OP_regx 0x6f]
DW$183	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_WADDR")
	.dwattr DW$183, DW_AT_location[DW_OP_regx 0x70]
DW$184	.dwtag  DW_TAG_assign_register, DW_AT_name("MFREG0")
	.dwattr DW$184, DW_AT_location[DW_OP_regx 0x71]
DW$185	.dwtag  DW_TAG_assign_register, DW_AT_name("DBG_STAT")
	.dwattr DW$185, DW_AT_location[DW_OP_regx 0x72]
DW$186	.dwtag  DW_TAG_assign_register, DW_AT_name("BRK_EN")
	.dwattr DW$186, DW_AT_location[DW_OP_regx 0x73]
DW$187	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP0_CNT")
	.dwattr DW$187, DW_AT_location[DW_OP_regx 0x74]
DW$188	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP0")
	.dwattr DW$188, DW_AT_location[DW_OP_regx 0x75]
DW$189	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP1")
	.dwattr DW$189, DW_AT_location[DW_OP_regx 0x76]
DW$190	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP2")
	.dwattr DW$190, DW_AT_location[DW_OP_regx 0x77]
DW$191	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP3")
	.dwattr DW$191, DW_AT_location[DW_OP_regx 0x78]
DW$192	.dwtag  DW_TAG_assign_register, DW_AT_name("OVERLAY")
	.dwattr DW$192, DW_AT_location[DW_OP_regx 0x79]
DW$193	.dwtag  DW_TAG_assign_register, DW_AT_name("PC_PROF")
	.dwattr DW$193, DW_AT_location[DW_OP_regx 0x7a]
DW$194	.dwtag  DW_TAG_assign_register, DW_AT_name("ATSR")
	.dwattr DW$194, DW_AT_location[DW_OP_regx 0x7b]
DW$195	.dwtag  DW_TAG_assign_register, DW_AT_name("TRR")
	.dwattr DW$195, DW_AT_location[DW_OP_regx 0x7c]
DW$196	.dwtag  DW_TAG_assign_register, DW_AT_name("TCRR")
	.dwattr DW$196, DW_AT_location[DW_OP_regx 0x7d]
DW$197	.dwtag  DW_TAG_assign_register, DW_AT_name("CIE_RETA")
	.dwattr DW$197, DW_AT_location[DW_OP_regx 0x7e]
	.dwendtag DW$CU

