;******************************************************************************
;* TMS320C6x C/C++ Codegen                                          PC v5.1.0 *
;* Date/Time created: Sun Oct 28 19:53:15 2012                                *
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
DW$8	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$52)
DW$9	.dwtag  DW_TAG_unspecified_parameters
	.dwendtag DW$7


DW$10	.dwtag  DW_TAG_subprogram, DW_AT_name("clock"), DW_AT_symbol_name("_clock")
	.dwattr DW$10, DW_AT_type(*DW$T$64)
	.dwattr DW$10, DW_AT_declaration(0x01)
	.dwattr DW$10, DW_AT_external(0x01)

DW$11	.dwtag  DW_TAG_subprogram, DW_AT_name("convolve_as_func"), DW_AT_symbol_name("_convolve_as_func")
	.dwattr DW$11, DW_AT_type(*DW$T$14)
	.dwattr DW$11, DW_AT_declaration(0x01)
	.dwattr DW$11, DW_AT_external(0x01)
DW$12	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$57)
DW$13	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$57)
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
	.dwattr DW$16, DW_AT_type(*DW$T$70)
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
	.dwattr DW$18, DW_AT_type(*DW$T$72)
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
	.dwattr DW$29, DW_AT_type(*DW$T$62)
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
	.dwattr DW$30, DW_AT_type(*DW$T$62)
	.dwattr DW$30, DW_AT_location[DW_OP_addr _$T1$2$1]
	.sect	".const"
	.align	4
_$T2$3$1:
	.field  	57810,16			; _$T2$3$1[0] @ 0
	.field  	59992,16			; _$T2$3$1[1] @ 16
	.field  	61731,16			; _$T2$3$1[2] @ 32
	.field  	64617,16			; _$T2$3$1[3] @ 48
	.field  	60481,16			; _$T2$3$1[4] @ 64
	.field  	3105,16			; _$T2$3$1[5] @ 80
	.field  	57104,16			; _$T2$3$1[6] @ 96
	.field  	7087,16			; _$T2$3$1[7] @ 112
	.field  	6867,16			; _$T2$3$1[8] @ 128
	.field  	4660,16			; _$T2$3$1[9] @ 144

DW$31	.dwtag  DW_TAG_variable, DW_AT_name("$T2$3$1"), DW_AT_symbol_name("_$T2$3$1")
	.dwattr DW$31, DW_AT_type(*DW$T$45)
	.dwattr DW$31, DW_AT_location[DW_OP_addr _$T2$3$1]
	.sect	".const"
	.align	4
_$T3$4$1:
	.field  	1439,16			; _$T3$4$1[0] @ 0
	.field  	9921,16			; _$T3$4$1[1] @ 16
	.field  	64064,16			; _$T3$4$1[2] @ 32
	.field  	55736,16			; _$T3$4$1[3] @ 48
	.field  	62145,16			; _$T3$4$1[4] @ 64
	.field  	5708,16			; _$T3$4$1[5] @ 80
	.field  	6408,16			; _$T3$4$1[6] @ 96
	.field  	1202,16			; _$T3$4$1[7] @ 112
	.field  	62968,16			; _$T3$4$1[8] @ 128
	.field  	3993,16			; _$T3$4$1[9] @ 144

DW$32	.dwtag  DW_TAG_variable, DW_AT_name("$T3$4$1"), DW_AT_symbol_name("_$T3$4$1")
	.dwattr DW$32, DW_AT_type(*DW$T$45)
	.dwattr DW$32, DW_AT_location[DW_OP_addr _$T3$4$1]
;	C:\CCStudio_v3.1\C6000\cgtools\bin\opt6x.exe C:\Users\ssalen\AppData\Local\Temp\TI60820 C:\Users\ssalen\AppData\Local\Temp\TI60814 
	.sect	".text"
	.global	_transmit_interrupt

DW$33	.dwtag  DW_TAG_subprogram, DW_AT_name("transmit_interrupt"), DW_AT_symbol_name("_transmit_interrupt")
	.dwattr DW$33, DW_AT_low_pc(_transmit_interrupt)
	.dwattr DW$33, DW_AT_high_pc(0x00)
	.dwattr DW$33, DW_AT_begin_file("H:\SPH\firmware\lab3\main.c")
	.dwattr DW$33, DW_AT_begin_line(0x92)
	.dwattr DW$33, DW_AT_begin_column(0x06)
	.dwattr DW$33, DW_AT_frame_base[DW_OP_breg31 8]
	.dwattr DW$33, DW_AT_skeletal(0x01)
	.dwpsn	"H:\SPH\firmware\lab3\main.c",146,31

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
;** 147	-----------------------    DSK6713_AIC23_write(hCodec, (unsigned)(unsigned short)audio_out);
;** 148	-----------------------    if ( output_ready >= 2 ) goto g3;
;** 148	-----------------------    ++output_ready;
;**	-----------------------g3:
;**  	-----------------------    return;
           STW     .D2T2   B3,*SP--(8)       ; |146| 

           CALL    .S1     _DSK6713_AIC23_write ; |147| 
||         LDW     .D2T1   *+DP(_hCodec),A4  ; |147| 

           LDHU    .D2T2   *+DP(_audio_out),B4 ; |147| 
           MVKL    .S2     RL0,B3            ; |147| 
           MVKH    .S2     RL0,B3            ; |147| 
           NOP             2
RL0:       ; CALL OCCURS {_DSK6713_AIC23_write}  ; |147| 
;** --------------------------------------------------------------------------*
           LDBU    .D2T2   *+DP(_output_ready),B4 ; |148| 
           NOP             4
           CMPLTU  .L2     B4,2,B0           ; |148| 
   [ B0]   LDBU    .D2T2   *+DP(_output_ready),B4 ; |148| 
           NOP             4
   [ B0]   ADD     .L2     1,B4,B4           ; |148| 
   [ B0]   STB     .D2T2   B4,*+DP(_output_ready) ; |148| 
           LDW     .D2T2   *++SP(8),B3       ; |149| 
           NOP             4
           RET     .S2     B3                ; |149| 
	.dwpsn	"H:\SPH\firmware\lab3\main.c",149,1
           NOP             5
           ; BRANCH OCCURS {B3}              ; |149| 
	.dwattr DW$33, DW_AT_end_file("H:\SPH\firmware\lab3\main.c")
	.dwattr DW$33, DW_AT_end_line(0x95)
	.dwattr DW$33, DW_AT_end_column(0x01)
	.dwendtag DW$33

	.sect	".text"
	.global	_receive_interrupt

DW$34	.dwtag  DW_TAG_subprogram, DW_AT_name("receive_interrupt"), DW_AT_symbol_name("_receive_interrupt")
	.dwattr DW$34, DW_AT_low_pc(_receive_interrupt)
	.dwattr DW$34, DW_AT_high_pc(0x00)
	.dwattr DW$34, DW_AT_begin_file("H:\SPH\firmware\lab3\main.c")
	.dwattr DW$34, DW_AT_begin_line(0x85)
	.dwattr DW$34, DW_AT_begin_column(0x06)
	.dwattr DW$34, DW_AT_frame_base[DW_OP_breg31 24]
	.dwattr DW$34, DW_AT_skeletal(0x01)
	.dwpsn	"H:\SPH\firmware\lab3\main.c",133,30

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
;** 134	-----------------------    v$1 = hCodec;
;** 134	-----------------------    if ( channel_flag ) goto g3;

           STW     .D2T1   A13,*SP--(24)     ; |133| 
||         ZERO    .L1     A13               ; |139| 
||         MVK     .S1     (_right-$bss),A3  ; |138| 
||         MVK     .S2     (_left-$bss),B4   ; |135| 

           LDBU    .D2T2   *+DP(_channel_flag),B0 ; |134| 
||         MVKH    .S1     0x3fe00000,A13    ; |139| 
||         ADD     .L2     DP,B4,B5          ; |135| 
||         ADD     .S2X    DP,A3,B4          ; |138| 

           LDW     .D2T1   *+DP(_hCodec),A4  ; |134| 

           STW     .D2T2   B13,*+SP(20)      ; |133| 
||         MV      .L2     B3,B13            ; |133| 
||         MVKL    .S2     RL1,B3            ; |138| 

           MVKH    .S2     RL1,B3            ; |138| 
||         STW     .D2T1   A12,*+SP(16)      ; |133| 
||         ZERO    .L1     A12               ; |139| 

           STW     .D2T1   A11,*+SP(12)      ; |133| 
||         MVK     .S1     1,A11             ; |140| 

           STW     .D2T1   A10,*+SP(8)       ; |133| 
||         ZERO    .L1     A10               ; |136| 
|| [ B0]   B       .S1     L1                ; |134| 
|| [ B0]   MVKL    .S2     RL2,B3            ; |135| 
|| [ B0]   MV      .L2     B5,B4             ; |135| 

   [!B0]   CALL    .S1     _DSK6713_AIC23_read ; |138| 
|| [ B0]   MVKH    .S2     RL2,B3            ; |135| 

   [ B0]   CALL    .S1     _DSK6713_AIC23_read ; |135| 
           NOP             3
           ; BRANCHCC OCCURS {L1}            ; |134| 
;** --------------------------------------------------------------------------*
;** 138	-----------------------    DSK6713_AIC23_read(v$1, &right);
;** 139	-----------------------    mix = (short)((double)((short)left+(short)right)*0.5);
;** 140	-----------------------    channel_flag = 1u;
;** 140	-----------------------    goto g4;
           NOP             1
RL1:       ; CALL OCCURS {_DSK6713_AIC23_read}  ; |138| 
;** --------------------------------------------------------------------------*

           LDH     .D2T2   *+DP(_right),B5   ; |139| 
||         MV      .L2     B13,B3            ; |144| 

           LDH     .D2T2   *+DP(_left),B4    ; |139| 
           STB     .D2T1   A11,*+DP(_channel_flag) ; |140| 
           LDDW    .D2T1   *+SP(8),A11:A10   ; |144| 
           LDW     .D2T2   *+SP(20),B13      ; |144| 
           NOP             1
           ADD     .L2     B5,B4,B4          ; |139| 
           INTDP   .L2     B4,B5:B4          ; |139| 
           NOP             4

           MPYDP   .M1X    A13:A12,B5:B4,A5:A4 ; |139| 
||         LDW     .D2T1   *+SP(16),A12      ; |144| 

           NOP             2
           MVK     .S2     1,B4              ; |143| 
           STB     .D2T2   B4,*+DP(_input_ready) ; |143| 
           NOP             4
           B       .S1     L2                ; |140| 
           DPTRUNC .L1     A5:A4,A3          ; |139| 
           NOP             3

           STH     .D2T1   A3,*+DP(_mix)     ; |139| 
||         RET     .S2     B3                ; |144| 

           ; BRANCH OCCURS {L2}              ; |140| 
;** --------------------------------------------------------------------------*
L1:    
;**	-----------------------g3:
;** 135	-----------------------    DSK6713_AIC23_read(v$1, &left);
;** 136	-----------------------    channel_flag = 0u;
           NOP             2
RL2:       ; CALL OCCURS {_DSK6713_AIC23_read}  ; |135| 
;** --------------------------------------------------------------------------*
           STB     .D2T1   A10,*+DP(_channel_flag) ; |136| 
           LDW     .D2T1   *+SP(16),A12      ; |144| 
           LDDW    .D2T1   *+SP(8),A11:A10   ; |144| 

           LDW     .D2T2   *+SP(20),B13      ; |144| 
||         MVK     .S2     1,B4              ; |143| 
||         MV      .L2     B13,B3            ; |144| 

           RET     .S2     B3                ; |144| 
||         STB     .D2T2   B4,*+DP(_input_ready) ; |143| 

;** --------------------------------------------------------------------------*
L2:    
;**	-----------------------g4:
;** 143	-----------------------    input_ready = 1u;
;** 143	-----------------------    return;
           LDW     .D2T1   *++SP(24),A13     ; |144| 
	.dwpsn	"H:\SPH\firmware\lab3\main.c",144,1
           NOP             4
           ; BRANCH OCCURS {B3}              ; |144| 
	.dwattr DW$34, DW_AT_end_file("H:\SPH\firmware\lab3\main.c")
	.dwattr DW$34, DW_AT_end_line(0x90)
	.dwattr DW$34, DW_AT_end_column(0x01)
	.dwendtag DW$34

	.sect	".text"
	.global	_process_sample

DW$35	.dwtag  DW_TAG_subprogram, DW_AT_name("process_sample"), DW_AT_symbol_name("_process_sample")
	.dwattr DW$35, DW_AT_low_pc(_process_sample)
	.dwattr DW$35, DW_AT_high_pc(0x00)
	.dwattr DW$35, DW_AT_begin_file("H:\SPH\firmware\lab3\main.c")
	.dwattr DW$35, DW_AT_begin_line(0x7f)
	.dwattr DW$35, DW_AT_begin_column(0x06)
	.dwattr DW$35, DW_AT_frame_base[DW_OP_breg31 0]
	.dwattr DW$35, DW_AT_skeletal(0x01)
	.dwpsn	"H:\SPH\firmware\lab3\main.c",127,30

;******************************************************************************
;* FUNCTION NAME: _process_sample                                             *
;*                                                                            *
;*   Regs Modified     :                                                      *
;*   Regs Used         : B3                                                   *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
_process_sample:
;** --------------------------------------------------------------------------*
DW$36	.dwtag  DW_TAG_formal_parameter, DW_AT_name("x"), DW_AT_symbol_name("_x")
	.dwattr DW$36, DW_AT_type(*DW$T$24)
	.dwattr DW$36, DW_AT_location[DW_OP_reg4]
;** 127	-----------------------    return;
           RET     .S2     B3                ; |129| 
	.dwpsn	"H:\SPH\firmware\lab3\main.c",129,1
           NOP             5
           ; BRANCH OCCURS {B3}              ; |129| 
	.dwattr DW$35, DW_AT_end_file("H:\SPH\firmware\lab3\main.c")
	.dwattr DW$35, DW_AT_end_line(0x81)
	.dwattr DW$35, DW_AT_end_column(0x01)
	.dwendtag DW$35

	.sect	".text"
	.global	_convolve

DW$37	.dwtag  DW_TAG_subprogram, DW_AT_name("convolve"), DW_AT_symbol_name("_convolve")
	.dwattr DW$37, DW_AT_low_pc(_convolve)
	.dwattr DW$37, DW_AT_high_pc(0x00)
	.dwattr DW$37, DW_AT_begin_file("H:\SPH\firmware\lab3\main.c")
	.dwattr DW$37, DW_AT_begin_line(0x97)
	.dwattr DW$37, DW_AT_begin_column(0x0b)
	.dwattr DW$37, DW_AT_frame_base[DW_OP_breg31 0]
	.dwattr DW$37, DW_AT_skeletal(0x01)
	.dwpsn	"H:\SPH\firmware\lab3\main.c",151,45

;******************************************************************************
;* FUNCTION NAME: _convolve                                                   *
;*                                                                            *
;*   Regs Modified     : A1,A3,A4,A5,A6,A7,B0,B1,B4,B5,B6                     *
;*   Regs Used         : A1,A3,A4,A5,A6,A7,B0,B1,B3,B4,B5,B6,DP,SP            *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
_convolve:
;** --------------------------------------------------------------------------*
DW$38	.dwtag  DW_TAG_formal_parameter, DW_AT_name("w"), DW_AT_symbol_name("_w")
	.dwattr DW$38, DW_AT_type(*DW$T$57)
	.dwattr DW$38, DW_AT_location[DW_OP_reg4]
DW$39	.dwtag  DW_TAG_formal_parameter, DW_AT_name("x"), DW_AT_symbol_name("_x")
	.dwattr DW$39, DW_AT_type(*DW$T$57)
	.dwattr DW$39, DW_AT_location[DW_OP_reg20]
DW$40	.dwtag  DW_TAG_formal_parameter, DW_AT_name("n"), DW_AT_symbol_name("_n")
	.dwattr DW$40, DW_AT_type(*DW$T$10)
	.dwattr DW$40, DW_AT_location[DW_OP_reg6]
;** 153	-----------------------    result = 0;
;** 155	-----------------------    if ( n <= 0 ) goto g4;
;**  	-----------------------    U$11 = w;
;**  	-----------------------    U$17 = &x[n-1];
;**  	-----------------------    L$1 = n;
;**  	-----------------------    #pragma MUST_ITERATE(1, 1099511627775, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)

           CMPGT   .L1     A6,0,A1           ; |155| 
||         MV      .S1X    B4,A3             ; |151| 
||         MV      .D1     A4,A5             ; |151| 

   [!A1]   B       .S2     L6                ; |155| 
||         ADDAW   .D1     A3,A6,A3
||         ZERO    .L1     A4                ; |153| 
||         MV      .S1     A6,A7             ; |151| 

           SUB     .L1     A3,4,A3
           NOP             4
           ; BRANCHCC OCCURS {L6}            ; |155| 
;** --------------------------------------------------------------------------*
;**	-----------------------g3:
;** 156	-----------------------    result += *U$11++**U$17--;
;** 155	-----------------------    if ( --L$1 ) goto g3;

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
;*      Loop source line                 : 155
;*      Loop opening brace source line   : 155
;*      Loop closing brace source line   : 157
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
;*   0              LDW     .D1T1   *A5++,A4          ; |156| 
;*     ||           LDW     .D2T2   *B4--,B5          ; |156| 
;*   1              NOP             4
;*   5              MPYI    .M1X    B5,A4,A3          ; |156| 
;*   6              NOP             2
;*   8      [ B0]   SUB     .L2     B0,1,B0           ; |155| 
;*   9      [ B0]   B       .S2     C58               ; |155| 
;*  10              NOP             4
;*  14              ADD     .S1     A3,A6,A6          ; |156| 
;*  15              ; BRANCHCC OCCURS {C58}           ; |155| 
;*----------------------------------------------------------------------------*
L3:    ; PIPED LOOP PROLOG
;** --------------------------------------------------------------------------*
L4:    ; PIPED LOOP KERNEL
DW$L$_convolve$4$B:
	.dwpsn	"H:\SPH\firmware\lab3\main.c",155,0
   [ B0]   SUB     .L2     B0,1,B0           ; |155| <0,8> 
   [ B0]   B       .S2     L4                ; |155| <0,9> 
           NOP             2
           MPYI    .M1X    B5,A4,A3          ; |156| <1,5> 
           NOP             1
	.dwpsn	"H:\SPH\firmware\lab3\main.c",157,0

   [ B1]   SUB     .L2     B1,1,B1           ; <0,14> 
|| [ A1]   SUB     .L1     A1,1,A1           ; <0,14> 
|| [!B1]   ADD     .S1     A3,A6,A6          ; |156| <0,14> 
|| [ A1]   LDW     .D1T1   *A5++,A4          ; |156| <2,0> 
|| [ A1]   LDW     .D2T2   *B4--,B5          ; |156| <2,0> 

DW$L$_convolve$4$E:
;** --------------------------------------------------------------------------*
L5:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*
           MVC     .S2     B6,CSR            ; interrupts on
           NOP             3
           MV      .L1     A6,A4
;** --------------------------------------------------------------------------*
L6:    
;**	-----------------------g4:
;** 159	-----------------------    return (long long)result;
           RET     .S2     B3                ; |160| 
           SHR     .S1     A4,31,A5          ; |159| 
	.dwpsn	"H:\SPH\firmware\lab3\main.c",160,1
           NOP             4
           ; BRANCH OCCURS {B3}              ; |160| 

DW$41	.dwtag  DW_TAG_loop
	.dwattr DW$41, DW_AT_name("H:\SPH\firmware\lab3\Configuration1cfg_c.asm:L4:1:1351468395")
	.dwattr DW$41, DW_AT_begin_file("H:\SPH\firmware\lab3\main.c")
	.dwattr DW$41, DW_AT_begin_line(0x9b)
	.dwattr DW$41, DW_AT_end_line(0x9d)
DW$42	.dwtag  DW_TAG_loop_range
	.dwattr DW$42, DW_AT_low_pc(DW$L$_convolve$4$B)
	.dwattr DW$42, DW_AT_high_pc(DW$L$_convolve$4$E)
	.dwendtag DW$41

	.dwattr DW$37, DW_AT_end_file("H:\SPH\firmware\lab3\main.c")
	.dwattr DW$37, DW_AT_end_line(0xa0)
	.dwattr DW$37, DW_AT_end_column(0x01)
	.dwendtag DW$37

	.sect	".text"
	.global	_convolve_opt

DW$43	.dwtag  DW_TAG_subprogram, DW_AT_name("convolve_opt"), DW_AT_symbol_name("_convolve_opt")
	.dwattr DW$43, DW_AT_low_pc(_convolve_opt)
	.dwattr DW$43, DW_AT_high_pc(0x00)
	.dwattr DW$43, DW_AT_begin_file("H:\SPH\firmware\lab3\main.c")
	.dwattr DW$43, DW_AT_begin_line(0xa2)
	.dwattr DW$43, DW_AT_begin_column(0x0b)
	.dwattr DW$43, DW_AT_frame_base[DW_OP_breg31 0]
	.dwattr DW$43, DW_AT_skeletal(0x01)
	.dwpsn	"H:\SPH\firmware\lab3\main.c",162,65

;******************************************************************************
;* FUNCTION NAME: _convolve_opt                                               *
;*                                                                            *
;*   Regs Modified     : A1,A3,A4,A5,A6,B0,B1,B4,B5,B6                        *
;*   Regs Used         : A1,A3,A4,A5,A6,B0,B1,B3,B4,B5,B6,DP,SP               *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
_convolve_opt:
;** --------------------------------------------------------------------------*
DW$44	.dwtag  DW_TAG_formal_parameter, DW_AT_name("w"), DW_AT_symbol_name("_w")
	.dwattr DW$44, DW_AT_type(*DW$T$58)
	.dwattr DW$44, DW_AT_location[DW_OP_reg4]
DW$45	.dwtag  DW_TAG_formal_parameter, DW_AT_name("x"), DW_AT_symbol_name("_x")
	.dwattr DW$45, DW_AT_type(*DW$T$58)
	.dwattr DW$45, DW_AT_location[DW_OP_reg20]
DW$46	.dwtag  DW_TAG_formal_parameter, DW_AT_name("n"), DW_AT_symbol_name("_n")
	.dwattr DW$46, DW_AT_type(*DW$T$10)
	.dwattr DW$46, DW_AT_location[DW_OP_reg6]
;** 162	-----------------------    w = w;
;** 162	-----------------------    x = x;
;**  	-----------------------    U$11 = w;
;**  	-----------------------    U$17 = &x[n-1];
;** 168	-----------------------    L$1 = n;
;** 164	-----------------------    result = 0;
;**  	-----------------------    #pragma MUST_ITERATE(10, 4294967295, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
;**	-----------------------g2:
;** 168	-----------------------    result += *U$11++**U$17--;
;** 167	-----------------------    if ( --L$1 ) goto g2;
;** 171	-----------------------    return (long long)result;

           ADD     .L2X    1,A6,B0
||         MV      .L1X    B4,A3             ; |162| 
||         MVC     .S2     CSR,B6

           AND     .L2     -2,B6,B5
||         ADDAW   .D1     A3,A6,A3
||         MVK     .S2     0x2,B1            ; init prolog collapse predicate

           MVC     .S2     B5,CSR            ; interrupts off
||         SUB     .L2X    A3,4,B4
||         ZERO    .L1     A6                ; |164| 
||         SUB     .S1X    B0,1,A1
||         MV      .D1     A4,A5             ; |162| 

;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 167
;*      Loop opening brace source line   : 167
;*      Loop closing brace source line   : 169
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
;*   0              LDW     .D1T1   *A5++,A4          ; |168| 
;*     ||           LDW     .D2T2   *B4--,B5          ; |168| 
;*   1              NOP             4
;*   5              MPYI    .M1X    B5,A4,A3          ; |168| 
;*   6              NOP             2
;*   8      [ B0]   SUB     .L2     B0,1,B0           ; |167| 
;*   9      [ B0]   B       .S2     C128              ; |167| 
;*  10              NOP             4
;*  14              ADD     .S1     A3,A6,A6          ; |168| 
;*  15              ; BRANCHCC OCCURS {C128}          ; |167| 
;*----------------------------------------------------------------------------*
L7:    ; PIPED LOOP PROLOG
;** --------------------------------------------------------------------------*
L8:    ; PIPED LOOP KERNEL
DW$L$_convolve_opt$3$B:
	.dwpsn	"H:\SPH\firmware\lab3\main.c",167,0
   [ B0]   SUB     .L2     B0,1,B0           ; |167| <0,8> 
   [ B0]   B       .S2     L8                ; |167| <0,9> 
           NOP             2
           MPYI    .M1X    B5,A4,A3          ; |168| <1,5> 
           NOP             1
	.dwpsn	"H:\SPH\firmware\lab3\main.c",169,0

   [ B1]   SUB     .L2     B1,1,B1           ; <0,14> 
|| [ A1]   SUB     .L1     A1,1,A1           ; <0,14> 
|| [!B1]   ADD     .S1     A3,A6,A6          ; |168| <0,14> 
|| [ A1]   LDW     .D1T1   *A5++,A4          ; |168| <2,0> 
|| [ A1]   LDW     .D2T2   *B4--,B5          ; |168| <2,0> 

DW$L$_convolve_opt$3$E:
;** --------------------------------------------------------------------------*
L9:    ; PIPED LOOP EPILOG
           NOP             2
           RET     .S2     B3                ; |172| 
           NOP             2
           MVC     .S2     B6,CSR            ; interrupts on
           ADD     .L1     A3,A6,A4          ; |168| 
	.dwpsn	"H:\SPH\firmware\lab3\main.c",172,1
           SHR     .S1     A4,31,A5          ; |171| 
           ; BRANCH OCCURS {B3}              ; |172| 

DW$47	.dwtag  DW_TAG_loop
	.dwattr DW$47, DW_AT_name("H:\SPH\firmware\lab3\Configuration1cfg_c.asm:L8:1:1351468395")
	.dwattr DW$47, DW_AT_begin_file("H:\SPH\firmware\lab3\main.c")
	.dwattr DW$47, DW_AT_begin_line(0xa7)
	.dwattr DW$47, DW_AT_end_line(0xa9)
DW$48	.dwtag  DW_TAG_loop_range
	.dwattr DW$48, DW_AT_low_pc(DW$L$_convolve_opt$3$B)
	.dwattr DW$48, DW_AT_high_pc(DW$L$_convolve_opt$3$E)
	.dwendtag DW$47

	.dwattr DW$43, DW_AT_end_file("H:\SPH\firmware\lab3\main.c")
	.dwattr DW$43, DW_AT_end_line(0xac)
	.dwattr DW$43, DW_AT_end_column(0x01)
	.dwendtag DW$43

	.sect	".text"
	.global	_main

DW$49	.dwtag  DW_TAG_subprogram, DW_AT_name("main"), DW_AT_symbol_name("_main")
	.dwattr DW$49, DW_AT_low_pc(_main)
	.dwattr DW$49, DW_AT_high_pc(0x00)
	.dwattr DW$49, DW_AT_begin_file("H:\SPH\firmware\lab3\main.c")
	.dwattr DW$49, DW_AT_begin_line(0x2e)
	.dwattr DW$49, DW_AT_begin_column(0x05)
	.dwattr DW$49, DW_AT_frame_base[DW_OP_breg31 144]
	.dwattr DW$49, DW_AT_skeletal(0x01)
	.dwpsn	"H:\SPH\firmware\lab3\main.c",46,12

;******************************************************************************
;* FUNCTION NAME: _main                                                       *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,B0,B1,B2,B3,B4,*
;*                           B5,B6,B7,B8,B9,B10,SP                            *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,B0,B1,B2,B3,B4,*
;*                           B5,B6,B7,B8,B9,B10,B13,DP,SP                     *
;*   Local Frame Size  : 8 Args + 120 Auto + 16 Save = 144 byte               *
;******************************************************************************
_main:
;** --------------------------------------------------------------------------*
;** 56	-----------------------    w[] = {...};
;** 57	-----------------------    x[] = {...};
;** 58	-----------------------    y[] = {...};
;** 59	-----------------------    z[] = {...};
;** 62	-----------------------    start = clock();
;** 63	-----------------------    stop = clock();
;** 66	-----------------------    start = clock();
;** 67	-----------------------    out1 = convolve(&w, &x, 10);
;** 68	-----------------------    stop = clock();
;** 69	-----------------------    C$1 = stop-start;
;** 69	-----------------------    printf((const char *)"convovle no opt cycles: %d\n", stop-start-C$1);
;** 71	-----------------------    start = clock();
;** 72	-----------------------    out2 = convolve_opt(&w, &x, 10);
;** 73	-----------------------    stop = clock();
           CALL    .S1     __strasg          ; |56| 
           ADDK    .S2     -144,SP           ; |46| 

           STW     .D2T1   A10,*+SP(136)     ; |46| 
||         MVKL    .S2     _$T0$1$1,B4       ; |56| 

           STW     .D2T2   B13,*+SP(132)     ; |46| 
||         MVKL    .S2     RL3,B3            ; |56| 

           MVKH    .S2     _$T0$1$1,B4       ; |56| 
||         STW     .D2T1   A11,*+SP(140)     ; |46| 

           ADD     .L1X    12,SP,A4          ; |56| 
||         STW     .D2T2   B10,*+SP(144)     ; |46| 
||         MVKH    .S2     RL3,B3            ; |56| 
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
           MVKL    .S2     _$T2$3$1,B4       ; |58| 
           MVKH    .S2     _$T2$3$1,B4       ; |58| 
           LDW     .D2T2   *B4,B9            ; |58| 
           LDW     .D2T2   *+B4(4),B8        ; |58| 
           LDW     .D2T2   *+B4(8),B7        ; |58| 
           LDW     .D2T2   *+B4(12),B6       ; |58| 
           ADDAW   .D2     SP,23,B5          ; |58| 
           LDW     .D2T2   *+B4(16),B4       ; |58| 
           STW     .D2T2   B9,*B5            ; |58| 
           STW     .D2T2   B8,*+B5(4)        ; |58| 
           STW     .D2T2   B7,*+B5(8)        ; |58| 

           STW     .D2T2   B6,*+B5(12)       ; |58| 
||         MVKL    .S1     _$T3$4$1,A6       ; |59| 

           STW     .D2T2   B4,*+B5(16)       ; |58| 
||         MVKH    .S1     _$T3$4$1,A6       ; |59| 

           LDW     .D1T1   *A6,A7            ; |59| 
           LDW     .D1T1   *+A6(12),A5       ; |59| 
           LDW     .D1T1   *+A6(4),A3        ; |59| 
           LDW     .D1T1   *+A6(8),A4        ; |59| 

           CALL    .S1     _clock            ; |62| 
||         LDW     .D1T1   *+A6(16),A6       ; |59| 
||         ADDAD   .D2     SP,14,B4          ; |59| 

           STW     .D2T1   A7,*B4            ; |59| 
           STW     .D2T1   A5,*+B4(12)       ; |59| 
           STW     .D2T1   A3,*+B4(4)        ; |59| 

           STW     .D2T1   A4,*+B4(8)        ; |59| 
||         MVKL    .S2     RL5,B3            ; |62| 

           STW     .D2T1   A6,*+B4(16)       ; |59| 
||         MVKH    .S2     RL5,B3            ; |62| 

RL5:       ; CALL OCCURS {_clock}            ; |62| 
           CALL    .S1     _clock            ; |63| 
           MVKL    .S2     RL6,B3            ; |63| 
           MVKH    .S2     RL6,B3            ; |63| 
           MV      .L1     A4,A10            ; |62| 
           NOP             2
RL6:       ; CALL OCCURS {_clock}            ; |63| 
           CALL    .S1     _clock            ; |66| 
           MVKL    .S2     RL7,B3            ; |66| 
           MVKH    .S2     RL7,B3            ; |66| 
           SUB     .L1     A4,A10,A11        ; |69| 
           NOP             2
RL7:       ; CALL OCCURS {_clock}            ; |66| 
           CALL    .S1     _convolve         ; |67| 
           MVKL    .S2     RL8,B3            ; |67| 
           ADDAW   .D2     SP,13,B4          ; |67| 
           MVK     .S1     0xa,A6            ; |67| 
           MV      .D1     A4,A10            ; |66| 

           ADD     .L1X    12,SP,A4          ; |67| 
||         MVKH    .S2     RL8,B3            ; |67| 

RL8:       ; CALL OCCURS {_convolve}         ; |67| 
           CALL    .S1     _clock            ; |68| 
           STW     .D2T1   A4,*+DP(_out1)    ; |67| 
           NOP             2
           MVKL    .S2     RL9,B3            ; |68| 
           MVKH    .S2     RL9,B3            ; |68| 
RL9:       ; CALL OCCURS {_clock}            ; |68| 
           CALL    .S1     _printf           ; |69| 
           MVKL    .S1     SL1+0,A3          ; |69| 
           SUB     .L1     A4,A10,A4         ; |69| 
           MVKH    .S1     SL1+0,A3          ; |69| 

           SUB     .L1     A4,A11,A3         ; |69| 
||         MVKL    .S2     RL10,B3           ; |69| 
||         STW     .D2T1   A3,*+SP(4)        ; |69| 

           MVKH    .S2     RL10,B3           ; |69| 
||         STW     .D2T1   A3,*+SP(8)        ; |69| 

RL10:      ; CALL OCCURS {_printf}           ; |69| 
           CALL    .S1     _clock            ; |71| 
           MVKL    .S2     RL11,B3           ; |71| 
           MVKH    .S2     RL11,B3           ; |71| 
           NOP             3
RL11:      ; CALL OCCURS {_clock}            ; |71| 
           CALL    .S1     _convolve_opt     ; |72| 
           MVKL    .S2     RL12,B3           ; |72| 
           MV      .L2X    A4,B10            ; |71| 
           MVK     .S1     0xa,A6            ; |72| 
           ADDAW   .D2     SP,13,B4          ; |72| 

           MVKH    .S2     RL12,B3           ; |72| 
||         ADD     .L1X    12,SP,A4          ; |72| 

RL12:      ; CALL OCCURS {_convolve_opt}     ; |72| 
           CALL    .S1     _clock            ; |73| 
           STW     .D2T1   A4,*+DP(_out2)    ; |72| 
           NOP             2
           MVKL    .S2     RL13,B3           ; |73| 
           MVKH    .S2     RL13,B3           ; |73| 
RL13:      ; CALL OCCURS {_clock}            ; |73| 
;** --------------------------------------------------------------------------*
;** 74	-----------------------    printf((const char *)"convovle opt cycles: %d\n", stop-start-C$1);
;** 76	-----------------------    start = clock();
;** 77	-----------------------    out3 = convolve_as_func(&w, &x, 10);
;** 78	-----------------------    stop = clock();
;** 79	-----------------------    printf((const char *)"convovle as cycles: %d\n", stop-start-C$1);
;** 122	-----------------------    exit();
;***	; the preceding call never returns
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
           CALL    .S1     _printf           ; |74| 
           SUB     .L2X    A4,B10,B4         ; |74| 
           SUB     .L2X    B4,A11,B4         ; |74| 
           MVKL    .S1     SL2+0,A3          ; |74| 

           STW     .D2T2   B4,*+SP(8)        ; |74| 
||         MVKH    .S1     SL2+0,A3          ; |74| 
||         MVKL    .S2     RL14,B3           ; |74| 

           STW     .D2T1   A3,*+SP(4)        ; |74| 
||         MVKH    .S2     RL14,B3           ; |74| 

RL14:      ; CALL OCCURS {_printf}           ; |74| 
;** --------------------------------------------------------------------------*
           CALL    .S1     _clock            ; |76| 
           MVKL    .S2     RL15,B3           ; |76| 
           MVKH    .S2     RL15,B3           ; |76| 
           NOP             3
RL15:      ; CALL OCCURS {_clock}            ; |76| 
           CALL    .S1     _convolve_as_func ; |77| 
           MVKL    .S2     RL16,B3           ; |77| 
           ADDAW   .D2     SP,13,B4          ; |77| 
           MVK     .S1     0xa,A6            ; |77| 
           MV      .D1     A4,A10            ; |76| 

           ADD     .L1X    12,SP,A4          ; |77| 
||         MVKH    .S2     RL16,B3           ; |77| 

RL16:      ; CALL OCCURS {_convolve_as_func}  ; |77| 
           CALL    .S1     _clock            ; |78| 
           STW     .D2T1   A4,*+DP(_out3)    ; |77| 
           NOP             2
           MVKL    .S2     RL17,B3           ; |78| 
           MVKH    .S2     RL17,B3           ; |78| 
RL17:      ; CALL OCCURS {_clock}            ; |78| 
           CALL    .S1     _printf           ; |79| 
           MVKL    .S2     SL3+0,B4          ; |79| 
           SUB     .L1     A4,A10,A3         ; |79| 
           MVKH    .S2     SL3+0,B4          ; |79| 

           STW     .D2T2   B4,*+SP(4)        ; |79| 
||         SUB     .L1     A3,A11,A3         ; |79| 
||         MVKL    .S2     RL18,B3           ; |79| 

           STW     .D2T1   A3,*+SP(8)        ; |79| 
||         MVKH    .S2     RL18,B3           ; |79| 

RL18:      ; CALL OCCURS {_printf}           ; |79| 
           CALL    .S1     _exit             ; |122| 
           MVKL    .S2     RL19,B3           ; |122| 
           MVKH    .S2     RL19,B3           ; |122| 
           NOP             3
RL19:      ; CALL OCCURS {_exit}             ; |122| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Bad loop structure
;*----------------------------------------------------------------------------*
L10:    
DW$L$_main$5$B:
;**	-----------------------g2:
;** 122	-----------------------    goto g2;
           B       .S1     L10               ; |122| 
	.dwpsn	"H:\SPH\firmware\lab3\main.c",124,1
           NOP             5
           ; BRANCH OCCURS {L10}             ; |122| 
DW$L$_main$5$E:

DW$50	.dwtag  DW_TAG_loop
	.dwattr DW$50, DW_AT_name("H:\SPH\firmware\lab3\Configuration1cfg_c.asm:L10:1:1351468395")
	.dwattr DW$50, DW_AT_begin_file("H:\SPH\firmware\lab3\main.c")
	.dwattr DW$50, DW_AT_begin_line(0x7a)
	.dwattr DW$50, DW_AT_end_line(0x7c)
DW$51	.dwtag  DW_TAG_loop_range
	.dwattr DW$51, DW_AT_low_pc(DW$L$_main$5$B)
	.dwattr DW$51, DW_AT_high_pc(DW$L$_main$5$E)
	.dwendtag DW$50

	.dwattr DW$49, DW_AT_end_file("H:\SPH\firmware\lab3\main.c")
	.dwattr DW$49, DW_AT_end_line(0x7c)
	.dwattr DW$49, DW_AT_end_column(0x01)
	.dwendtag DW$49

	.sect	".text:CSL_cfgInit"
	.global	_CSL_cfgInit

DW$52	.dwtag  DW_TAG_subprogram, DW_AT_name("CSL_cfgInit"), DW_AT_symbol_name("_CSL_cfgInit")
	.dwattr DW$52, DW_AT_low_pc(_CSL_cfgInit)
	.dwattr DW$52, DW_AT_high_pc(0x00)
	.dwattr DW$52, DW_AT_begin_file("H:\SPH\firmware\lab3\Configuration1cfg_c.c")
	.dwattr DW$52, DW_AT_begin_line(0x1e)
	.dwattr DW$52, DW_AT_begin_column(0x06)
	.dwattr DW$52, DW_AT_frame_base[DW_OP_breg31 0]
	.dwattr DW$52, DW_AT_skeletal(0x01)
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
	.dwattr DW$52, DW_AT_end_file("H:\SPH\firmware\lab3\Configuration1cfg_c.c")
	.dwattr DW$52, DW_AT_end_line(0x20)
	.dwattr DW$52, DW_AT_end_column(0x01)
	.dwendtag DW$52

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
DW$53	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$24)
	.dwendtag DW$T$25


DW$T$26	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$26, DW_AT_language(DW_LANG_C)
DW$T$36	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$36, DW_AT_type(*DW$T$35)
DW$T$24	.dwtag  DW_TAG_typedef, DW_AT_name("Int16"), DW_AT_type(*DW$T$8)
	.dwattr DW$T$24, DW_AT_language(DW_LANG_C)

DW$T$40	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$24)
	.dwattr DW$T$40, DW_AT_language(DW_LANG_C)
DW$54	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$38)
DW$55	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$39)
	.dwendtag DW$T$40


DW$T$42	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$24)
	.dwattr DW$T$42, DW_AT_language(DW_LANG_C)
DW$56	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$38)
DW$57	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$41)
	.dwendtag DW$T$42


DW$T$45	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$44)
	.dwattr DW$T$45, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$45, DW_AT_byte_size(0x14)
DW$58	.dwtag  DW_TAG_subrange_type
	.dwattr DW$58, DW_AT_upper_bound(0x09)
	.dwendtag DW$T$45

DW$T$10	.dwtag  DW_TAG_base_type, DW_AT_name("int")
	.dwattr DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr DW$T$10, DW_AT_byte_size(0x04)
DW$T$38	.dwtag  DW_TAG_typedef, DW_AT_name("DSK6713_AIC23_CodecHandle"), DW_AT_type(*DW$T$10)
	.dwattr DW$T$38, DW_AT_language(DW_LANG_C)

DW$T$53	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$53, DW_AT_language(DW_LANG_C)
DW$59	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$52)
DW$60	.dwtag  DW_TAG_unspecified_parameters
	.dwendtag DW$T$53


DW$T$55	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$55, DW_AT_language(DW_LANG_C)
DW$T$57	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$57, DW_AT_address_class(0x20)
DW$T$58	.dwtag  DW_TAG_restrict_type
	.dwattr DW$T$58, DW_AT_type(*DW$T$57)

DW$T$62	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$61)
	.dwattr DW$T$62, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$62, DW_AT_byte_size(0x28)
DW$61	.dwtag  DW_TAG_subrange_type
	.dwattr DW$61, DW_AT_upper_bound(0x09)
	.dwendtag DW$T$62

DW$T$39	.dwtag  DW_TAG_typedef, DW_AT_name("Uint32"), DW_AT_type(*DW$T$11)
	.dwattr DW$T$39, DW_AT_language(DW_LANG_C)
DW$T$41	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$39)
	.dwattr DW$T$41, DW_AT_address_class(0x20)
DW$T$64	.dwtag  DW_TAG_typedef, DW_AT_name("clock_t"), DW_AT_type(*DW$T$11)
	.dwattr DW$T$64, DW_AT_language(DW_LANG_C)

DW$T$65	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$64)
	.dwattr DW$T$65, DW_AT_language(DW_LANG_C)
DW$T$14	.dwtag  DW_TAG_base_type, DW_AT_name("long long")
	.dwattr DW$T$14, DW_AT_encoding(DW_ATE_signed)
	.dwattr DW$T$14, DW_AT_byte_size(0x08)

DW$T$68	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$14)
	.dwattr DW$T$68, DW_AT_language(DW_LANG_C)
DW$62	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$57)
DW$63	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$57)
DW$64	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$68

DW$T$70	.dwtag  DW_TAG_typedef, DW_AT_name("DSK6713_AIC23_Config"), DW_AT_type(*DW$T$20)
	.dwattr DW$T$70, DW_AT_language(DW_LANG_C)
DW$T$72	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$71)
	.dwattr DW$T$72, DW_AT_address_class(0x20)
DW$T$52	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$51)
	.dwattr DW$T$52, DW_AT_address_class(0x20)
DW$T$35	.dwtag  DW_TAG_typedef, DW_AT_name("Uint8"), DW_AT_type(*DW$T$6)
	.dwattr DW$T$35, DW_AT_language(DW_LANG_C)
DW$T$8	.dwtag  DW_TAG_base_type, DW_AT_name("short")
	.dwattr DW$T$8, DW_AT_encoding(DW_ATE_signed)
	.dwattr DW$T$8, DW_AT_byte_size(0x02)
DW$T$44	.dwtag  DW_TAG_const_type
	.dwattr DW$T$44, DW_AT_type(*DW$T$8)
DW$T$61	.dwtag  DW_TAG_const_type
	.dwattr DW$T$61, DW_AT_type(*DW$T$10)
DW$T$11	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned int")
	.dwattr DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$11, DW_AT_byte_size(0x04)

DW$T$20	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$20, DW_AT_name("DSK6713_AIC23_Config")
	.dwattr DW$T$20, DW_AT_byte_size(0x28)
DW$65	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$65, DW_AT_name("regs"), DW_AT_symbol_name("_regs")
	.dwattr DW$65, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$65, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$20

DW$T$71	.dwtag  DW_TAG_typedef, DW_AT_name("FILE"), DW_AT_type(*DW$T$22)
	.dwattr DW$T$71, DW_AT_language(DW_LANG_C)
DW$T$51	.dwtag  DW_TAG_const_type
	.dwattr DW$T$51, DW_AT_type(*DW$T$50)
DW$T$6	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned char")
	.dwattr DW$T$6, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr DW$T$6, DW_AT_byte_size(0x01)

DW$T$19	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$19, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$19, DW_AT_byte_size(0x28)
DW$66	.dwtag  DW_TAG_subrange_type
	.dwattr DW$66, DW_AT_upper_bound(0x09)
	.dwendtag DW$T$19


DW$T$22	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$22, DW_AT_byte_size(0x1c)
DW$67	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$67, DW_AT_name("fd"), DW_AT_symbol_name("_fd")
	.dwattr DW$67, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$67, DW_AT_accessibility(DW_ACCESS_public)
DW$68	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$68, DW_AT_name("buf"), DW_AT_symbol_name("_buf")
	.dwattr DW$68, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$68, DW_AT_accessibility(DW_ACCESS_public)
DW$69	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$69, DW_AT_name("pos"), DW_AT_symbol_name("_pos")
	.dwattr DW$69, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$69, DW_AT_accessibility(DW_ACCESS_public)
DW$70	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$70, DW_AT_name("bufend"), DW_AT_symbol_name("_bufend")
	.dwattr DW$70, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$70, DW_AT_accessibility(DW_ACCESS_public)
DW$71	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$71, DW_AT_name("buff_stop"), DW_AT_symbol_name("_buff_stop")
	.dwattr DW$71, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$71, DW_AT_accessibility(DW_ACCESS_public)
DW$72	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$72, DW_AT_name("flags"), DW_AT_symbol_name("_flags")
	.dwattr DW$72, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$72, DW_AT_accessibility(DW_ACCESS_public)
DW$73	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$73, DW_AT_name("index"), DW_AT_symbol_name("_index")
	.dwattr DW$73, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$73, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$22

DW$T$50	.dwtag  DW_TAG_base_type, DW_AT_name("signed char")
	.dwattr DW$T$50, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr DW$T$50, DW_AT_byte_size(0x01)
DW$T$21	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$6)
	.dwattr DW$T$21, DW_AT_address_class(0x20)

	.dwattr DW$52, DW_AT_external(0x01)
	.dwattr DW$37, DW_AT_external(0x01)
	.dwattr DW$37, DW_AT_type(*DW$T$14)
	.dwattr DW$43, DW_AT_external(0x01)
	.dwattr DW$43, DW_AT_type(*DW$T$14)
	.dwattr DW$49, DW_AT_external(0x01)
	.dwattr DW$49, DW_AT_type(*DW$T$10)
	.dwattr DW$35, DW_AT_external(0x01)
	.dwattr DW$34, DW_AT_external(0x01)
	.dwattr DW$33, DW_AT_external(0x01)
	.dwattr DW$CU, DW_AT_language(DW_LANG_C)

;***************************************************************
;* DWARF REGISTER MAP                                          *
;***************************************************************

DW$74	.dwtag  DW_TAG_assign_register, DW_AT_name("A0")
	.dwattr DW$74, DW_AT_location[DW_OP_reg0]
DW$75	.dwtag  DW_TAG_assign_register, DW_AT_name("A1")
	.dwattr DW$75, DW_AT_location[DW_OP_reg1]
DW$76	.dwtag  DW_TAG_assign_register, DW_AT_name("A2")
	.dwattr DW$76, DW_AT_location[DW_OP_reg2]
DW$77	.dwtag  DW_TAG_assign_register, DW_AT_name("A3")
	.dwattr DW$77, DW_AT_location[DW_OP_reg3]
DW$78	.dwtag  DW_TAG_assign_register, DW_AT_name("A4")
	.dwattr DW$78, DW_AT_location[DW_OP_reg4]
DW$79	.dwtag  DW_TAG_assign_register, DW_AT_name("A5")
	.dwattr DW$79, DW_AT_location[DW_OP_reg5]
DW$80	.dwtag  DW_TAG_assign_register, DW_AT_name("A6")
	.dwattr DW$80, DW_AT_location[DW_OP_reg6]
DW$81	.dwtag  DW_TAG_assign_register, DW_AT_name("A7")
	.dwattr DW$81, DW_AT_location[DW_OP_reg7]
DW$82	.dwtag  DW_TAG_assign_register, DW_AT_name("A8")
	.dwattr DW$82, DW_AT_location[DW_OP_reg8]
DW$83	.dwtag  DW_TAG_assign_register, DW_AT_name("A9")
	.dwattr DW$83, DW_AT_location[DW_OP_reg9]
DW$84	.dwtag  DW_TAG_assign_register, DW_AT_name("A10")
	.dwattr DW$84, DW_AT_location[DW_OP_reg10]
DW$85	.dwtag  DW_TAG_assign_register, DW_AT_name("A11")
	.dwattr DW$85, DW_AT_location[DW_OP_reg11]
DW$86	.dwtag  DW_TAG_assign_register, DW_AT_name("A12")
	.dwattr DW$86, DW_AT_location[DW_OP_reg12]
DW$87	.dwtag  DW_TAG_assign_register, DW_AT_name("A13")
	.dwattr DW$87, DW_AT_location[DW_OP_reg13]
DW$88	.dwtag  DW_TAG_assign_register, DW_AT_name("A14")
	.dwattr DW$88, DW_AT_location[DW_OP_reg14]
DW$89	.dwtag  DW_TAG_assign_register, DW_AT_name("A15")
	.dwattr DW$89, DW_AT_location[DW_OP_reg15]
DW$90	.dwtag  DW_TAG_assign_register, DW_AT_name("B0")
	.dwattr DW$90, DW_AT_location[DW_OP_reg16]
DW$91	.dwtag  DW_TAG_assign_register, DW_AT_name("B1")
	.dwattr DW$91, DW_AT_location[DW_OP_reg17]
DW$92	.dwtag  DW_TAG_assign_register, DW_AT_name("B2")
	.dwattr DW$92, DW_AT_location[DW_OP_reg18]
DW$93	.dwtag  DW_TAG_assign_register, DW_AT_name("B3")
	.dwattr DW$93, DW_AT_location[DW_OP_reg19]
DW$94	.dwtag  DW_TAG_assign_register, DW_AT_name("B4")
	.dwattr DW$94, DW_AT_location[DW_OP_reg20]
DW$95	.dwtag  DW_TAG_assign_register, DW_AT_name("B5")
	.dwattr DW$95, DW_AT_location[DW_OP_reg21]
DW$96	.dwtag  DW_TAG_assign_register, DW_AT_name("B6")
	.dwattr DW$96, DW_AT_location[DW_OP_reg22]
DW$97	.dwtag  DW_TAG_assign_register, DW_AT_name("B7")
	.dwattr DW$97, DW_AT_location[DW_OP_reg23]
DW$98	.dwtag  DW_TAG_assign_register, DW_AT_name("B8")
	.dwattr DW$98, DW_AT_location[DW_OP_reg24]
DW$99	.dwtag  DW_TAG_assign_register, DW_AT_name("B9")
	.dwattr DW$99, DW_AT_location[DW_OP_reg25]
DW$100	.dwtag  DW_TAG_assign_register, DW_AT_name("B10")
	.dwattr DW$100, DW_AT_location[DW_OP_reg26]
DW$101	.dwtag  DW_TAG_assign_register, DW_AT_name("B11")
	.dwattr DW$101, DW_AT_location[DW_OP_reg27]
DW$102	.dwtag  DW_TAG_assign_register, DW_AT_name("B12")
	.dwattr DW$102, DW_AT_location[DW_OP_reg28]
DW$103	.dwtag  DW_TAG_assign_register, DW_AT_name("B13")
	.dwattr DW$103, DW_AT_location[DW_OP_reg29]
DW$104	.dwtag  DW_TAG_assign_register, DW_AT_name("DP")
	.dwattr DW$104, DW_AT_location[DW_OP_reg30]
DW$105	.dwtag  DW_TAG_assign_register, DW_AT_name("SP")
	.dwattr DW$105, DW_AT_location[DW_OP_reg31]
DW$106	.dwtag  DW_TAG_assign_register, DW_AT_name("FP")
	.dwattr DW$106, DW_AT_location[DW_OP_regx 0x20]
DW$107	.dwtag  DW_TAG_assign_register, DW_AT_name("PC")
	.dwattr DW$107, DW_AT_location[DW_OP_regx 0x21]
DW$108	.dwtag  DW_TAG_assign_register, DW_AT_name("IRP")
	.dwattr DW$108, DW_AT_location[DW_OP_regx 0x22]
DW$109	.dwtag  DW_TAG_assign_register, DW_AT_name("IFR")
	.dwattr DW$109, DW_AT_location[DW_OP_regx 0x23]
DW$110	.dwtag  DW_TAG_assign_register, DW_AT_name("NRP")
	.dwattr DW$110, DW_AT_location[DW_OP_regx 0x24]
DW$111	.dwtag  DW_TAG_assign_register, DW_AT_name("A16")
	.dwattr DW$111, DW_AT_location[DW_OP_regx 0x25]
DW$112	.dwtag  DW_TAG_assign_register, DW_AT_name("A17")
	.dwattr DW$112, DW_AT_location[DW_OP_regx 0x26]
DW$113	.dwtag  DW_TAG_assign_register, DW_AT_name("A18")
	.dwattr DW$113, DW_AT_location[DW_OP_regx 0x27]
DW$114	.dwtag  DW_TAG_assign_register, DW_AT_name("A19")
	.dwattr DW$114, DW_AT_location[DW_OP_regx 0x28]
DW$115	.dwtag  DW_TAG_assign_register, DW_AT_name("A20")
	.dwattr DW$115, DW_AT_location[DW_OP_regx 0x29]
DW$116	.dwtag  DW_TAG_assign_register, DW_AT_name("A21")
	.dwattr DW$116, DW_AT_location[DW_OP_regx 0x2a]
DW$117	.dwtag  DW_TAG_assign_register, DW_AT_name("A22")
	.dwattr DW$117, DW_AT_location[DW_OP_regx 0x2b]
DW$118	.dwtag  DW_TAG_assign_register, DW_AT_name("A23")
	.dwattr DW$118, DW_AT_location[DW_OP_regx 0x2c]
DW$119	.dwtag  DW_TAG_assign_register, DW_AT_name("A24")
	.dwattr DW$119, DW_AT_location[DW_OP_regx 0x2d]
DW$120	.dwtag  DW_TAG_assign_register, DW_AT_name("A25")
	.dwattr DW$120, DW_AT_location[DW_OP_regx 0x2e]
DW$121	.dwtag  DW_TAG_assign_register, DW_AT_name("A26")
	.dwattr DW$121, DW_AT_location[DW_OP_regx 0x2f]
DW$122	.dwtag  DW_TAG_assign_register, DW_AT_name("A27")
	.dwattr DW$122, DW_AT_location[DW_OP_regx 0x30]
DW$123	.dwtag  DW_TAG_assign_register, DW_AT_name("A28")
	.dwattr DW$123, DW_AT_location[DW_OP_regx 0x31]
DW$124	.dwtag  DW_TAG_assign_register, DW_AT_name("A29")
	.dwattr DW$124, DW_AT_location[DW_OP_regx 0x32]
DW$125	.dwtag  DW_TAG_assign_register, DW_AT_name("A30")
	.dwattr DW$125, DW_AT_location[DW_OP_regx 0x33]
DW$126	.dwtag  DW_TAG_assign_register, DW_AT_name("A31")
	.dwattr DW$126, DW_AT_location[DW_OP_regx 0x34]
DW$127	.dwtag  DW_TAG_assign_register, DW_AT_name("B16")
	.dwattr DW$127, DW_AT_location[DW_OP_regx 0x35]
DW$128	.dwtag  DW_TAG_assign_register, DW_AT_name("B17")
	.dwattr DW$128, DW_AT_location[DW_OP_regx 0x36]
DW$129	.dwtag  DW_TAG_assign_register, DW_AT_name("B18")
	.dwattr DW$129, DW_AT_location[DW_OP_regx 0x37]
DW$130	.dwtag  DW_TAG_assign_register, DW_AT_name("B19")
	.dwattr DW$130, DW_AT_location[DW_OP_regx 0x38]
DW$131	.dwtag  DW_TAG_assign_register, DW_AT_name("B20")
	.dwattr DW$131, DW_AT_location[DW_OP_regx 0x39]
DW$132	.dwtag  DW_TAG_assign_register, DW_AT_name("B21")
	.dwattr DW$132, DW_AT_location[DW_OP_regx 0x3a]
DW$133	.dwtag  DW_TAG_assign_register, DW_AT_name("B22")
	.dwattr DW$133, DW_AT_location[DW_OP_regx 0x3b]
DW$134	.dwtag  DW_TAG_assign_register, DW_AT_name("B23")
	.dwattr DW$134, DW_AT_location[DW_OP_regx 0x3c]
DW$135	.dwtag  DW_TAG_assign_register, DW_AT_name("B24")
	.dwattr DW$135, DW_AT_location[DW_OP_regx 0x3d]
DW$136	.dwtag  DW_TAG_assign_register, DW_AT_name("B25")
	.dwattr DW$136, DW_AT_location[DW_OP_regx 0x3e]
DW$137	.dwtag  DW_TAG_assign_register, DW_AT_name("B26")
	.dwattr DW$137, DW_AT_location[DW_OP_regx 0x3f]
DW$138	.dwtag  DW_TAG_assign_register, DW_AT_name("B27")
	.dwattr DW$138, DW_AT_location[DW_OP_regx 0x40]
DW$139	.dwtag  DW_TAG_assign_register, DW_AT_name("B28")
	.dwattr DW$139, DW_AT_location[DW_OP_regx 0x41]
DW$140	.dwtag  DW_TAG_assign_register, DW_AT_name("B29")
	.dwattr DW$140, DW_AT_location[DW_OP_regx 0x42]
DW$141	.dwtag  DW_TAG_assign_register, DW_AT_name("B30")
	.dwattr DW$141, DW_AT_location[DW_OP_regx 0x43]
DW$142	.dwtag  DW_TAG_assign_register, DW_AT_name("B31")
	.dwattr DW$142, DW_AT_location[DW_OP_regx 0x44]
DW$143	.dwtag  DW_TAG_assign_register, DW_AT_name("AMR")
	.dwattr DW$143, DW_AT_location[DW_OP_regx 0x45]
DW$144	.dwtag  DW_TAG_assign_register, DW_AT_name("CSR")
	.dwattr DW$144, DW_AT_location[DW_OP_regx 0x46]
DW$145	.dwtag  DW_TAG_assign_register, DW_AT_name("ISR")
	.dwattr DW$145, DW_AT_location[DW_OP_regx 0x47]
DW$146	.dwtag  DW_TAG_assign_register, DW_AT_name("ICR")
	.dwattr DW$146, DW_AT_location[DW_OP_regx 0x48]
DW$147	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$147, DW_AT_location[DW_OP_regx 0x49]
DW$148	.dwtag  DW_TAG_assign_register, DW_AT_name("ISTP")
	.dwattr DW$148, DW_AT_location[DW_OP_regx 0x4a]
DW$149	.dwtag  DW_TAG_assign_register, DW_AT_name("IN")
	.dwattr DW$149, DW_AT_location[DW_OP_regx 0x4b]
DW$150	.dwtag  DW_TAG_assign_register, DW_AT_name("OUT")
	.dwattr DW$150, DW_AT_location[DW_OP_regx 0x4c]
DW$151	.dwtag  DW_TAG_assign_register, DW_AT_name("ACR")
	.dwattr DW$151, DW_AT_location[DW_OP_regx 0x4d]
DW$152	.dwtag  DW_TAG_assign_register, DW_AT_name("ADR")
	.dwattr DW$152, DW_AT_location[DW_OP_regx 0x4e]
DW$153	.dwtag  DW_TAG_assign_register, DW_AT_name("FADCR")
	.dwattr DW$153, DW_AT_location[DW_OP_regx 0x4f]
DW$154	.dwtag  DW_TAG_assign_register, DW_AT_name("FAUCR")
	.dwattr DW$154, DW_AT_location[DW_OP_regx 0x50]
DW$155	.dwtag  DW_TAG_assign_register, DW_AT_name("FMCR")
	.dwattr DW$155, DW_AT_location[DW_OP_regx 0x51]
DW$156	.dwtag  DW_TAG_assign_register, DW_AT_name("GFPGFR")
	.dwattr DW$156, DW_AT_location[DW_OP_regx 0x52]
DW$157	.dwtag  DW_TAG_assign_register, DW_AT_name("DIER")
	.dwattr DW$157, DW_AT_location[DW_OP_regx 0x53]
DW$158	.dwtag  DW_TAG_assign_register, DW_AT_name("REP")
	.dwattr DW$158, DW_AT_location[DW_OP_regx 0x54]
DW$159	.dwtag  DW_TAG_assign_register, DW_AT_name("TSCL")
	.dwattr DW$159, DW_AT_location[DW_OP_regx 0x55]
DW$160	.dwtag  DW_TAG_assign_register, DW_AT_name("TSCH")
	.dwattr DW$160, DW_AT_location[DW_OP_regx 0x56]
DW$161	.dwtag  DW_TAG_assign_register, DW_AT_name("ARP")
	.dwattr DW$161, DW_AT_location[DW_OP_regx 0x57]
DW$162	.dwtag  DW_TAG_assign_register, DW_AT_name("ILC")
	.dwattr DW$162, DW_AT_location[DW_OP_regx 0x58]
DW$163	.dwtag  DW_TAG_assign_register, DW_AT_name("RILC")
	.dwattr DW$163, DW_AT_location[DW_OP_regx 0x59]
DW$164	.dwtag  DW_TAG_assign_register, DW_AT_name("DNUM")
	.dwattr DW$164, DW_AT_location[DW_OP_regx 0x5a]
DW$165	.dwtag  DW_TAG_assign_register, DW_AT_name("SSR")
	.dwattr DW$165, DW_AT_location[DW_OP_regx 0x5b]
DW$166	.dwtag  DW_TAG_assign_register, DW_AT_name("GPLYA")
	.dwattr DW$166, DW_AT_location[DW_OP_regx 0x5c]
DW$167	.dwtag  DW_TAG_assign_register, DW_AT_name("GPLYB")
	.dwattr DW$167, DW_AT_location[DW_OP_regx 0x5d]
DW$168	.dwtag  DW_TAG_assign_register, DW_AT_name("TSR")
	.dwattr DW$168, DW_AT_location[DW_OP_regx 0x5e]
DW$169	.dwtag  DW_TAG_assign_register, DW_AT_name("ITSR")
	.dwattr DW$169, DW_AT_location[DW_OP_regx 0x5f]
DW$170	.dwtag  DW_TAG_assign_register, DW_AT_name("NTSR")
	.dwattr DW$170, DW_AT_location[DW_OP_regx 0x60]
DW$171	.dwtag  DW_TAG_assign_register, DW_AT_name("EFR")
	.dwattr DW$171, DW_AT_location[DW_OP_regx 0x61]
DW$172	.dwtag  DW_TAG_assign_register, DW_AT_name("ECR")
	.dwattr DW$172, DW_AT_location[DW_OP_regx 0x62]
DW$173	.dwtag  DW_TAG_assign_register, DW_AT_name("IERR")
	.dwattr DW$173, DW_AT_location[DW_OP_regx 0x63]
DW$174	.dwtag  DW_TAG_assign_register, DW_AT_name("DMSG")
	.dwattr DW$174, DW_AT_location[DW_OP_regx 0x64]
DW$175	.dwtag  DW_TAG_assign_register, DW_AT_name("CMSG")
	.dwattr DW$175, DW_AT_location[DW_OP_regx 0x65]
DW$176	.dwtag  DW_TAG_assign_register, DW_AT_name("DT_DMA_ADDR")
	.dwattr DW$176, DW_AT_location[DW_OP_regx 0x66]
DW$177	.dwtag  DW_TAG_assign_register, DW_AT_name("DT_DMA_DATA")
	.dwattr DW$177, DW_AT_location[DW_OP_regx 0x67]
DW$178	.dwtag  DW_TAG_assign_register, DW_AT_name("DT_DMA_CNTL")
	.dwattr DW$178, DW_AT_location[DW_OP_regx 0x68]
DW$179	.dwtag  DW_TAG_assign_register, DW_AT_name("TCU_CNTL")
	.dwattr DW$179, DW_AT_location[DW_OP_regx 0x69]
DW$180	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_REC_CNTL")
	.dwattr DW$180, DW_AT_location[DW_OP_regx 0x6a]
DW$181	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_XMT_CNTL")
	.dwattr DW$181, DW_AT_location[DW_OP_regx 0x6b]
DW$182	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_CFG")
	.dwattr DW$182, DW_AT_location[DW_OP_regx 0x6c]
DW$183	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_RDATA")
	.dwattr DW$183, DW_AT_location[DW_OP_regx 0x6d]
DW$184	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_WDATA")
	.dwattr DW$184, DW_AT_location[DW_OP_regx 0x6e]
DW$185	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_RADDR")
	.dwattr DW$185, DW_AT_location[DW_OP_regx 0x6f]
DW$186	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_WADDR")
	.dwattr DW$186, DW_AT_location[DW_OP_regx 0x70]
DW$187	.dwtag  DW_TAG_assign_register, DW_AT_name("MFREG0")
	.dwattr DW$187, DW_AT_location[DW_OP_regx 0x71]
DW$188	.dwtag  DW_TAG_assign_register, DW_AT_name("DBG_STAT")
	.dwattr DW$188, DW_AT_location[DW_OP_regx 0x72]
DW$189	.dwtag  DW_TAG_assign_register, DW_AT_name("BRK_EN")
	.dwattr DW$189, DW_AT_location[DW_OP_regx 0x73]
DW$190	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP0_CNT")
	.dwattr DW$190, DW_AT_location[DW_OP_regx 0x74]
DW$191	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP0")
	.dwattr DW$191, DW_AT_location[DW_OP_regx 0x75]
DW$192	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP1")
	.dwattr DW$192, DW_AT_location[DW_OP_regx 0x76]
DW$193	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP2")
	.dwattr DW$193, DW_AT_location[DW_OP_regx 0x77]
DW$194	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP3")
	.dwattr DW$194, DW_AT_location[DW_OP_regx 0x78]
DW$195	.dwtag  DW_TAG_assign_register, DW_AT_name("OVERLAY")
	.dwattr DW$195, DW_AT_location[DW_OP_regx 0x79]
DW$196	.dwtag  DW_TAG_assign_register, DW_AT_name("PC_PROF")
	.dwattr DW$196, DW_AT_location[DW_OP_regx 0x7a]
DW$197	.dwtag  DW_TAG_assign_register, DW_AT_name("ATSR")
	.dwattr DW$197, DW_AT_location[DW_OP_regx 0x7b]
DW$198	.dwtag  DW_TAG_assign_register, DW_AT_name("TRR")
	.dwattr DW$198, DW_AT_location[DW_OP_regx 0x7c]
DW$199	.dwtag  DW_TAG_assign_register, DW_AT_name("TCRR")
	.dwattr DW$199, DW_AT_location[DW_OP_regx 0x7d]
DW$200	.dwtag  DW_TAG_assign_register, DW_AT_name("CIE_RETA")
	.dwattr DW$200, DW_AT_location[DW_OP_regx 0x7e]
	.dwendtag DW$CU

