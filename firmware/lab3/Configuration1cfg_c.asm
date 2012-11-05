;******************************************************************************
;* TMS320C6x C/C++ Codegen                                          PC v5.1.0 *
;* Date/Time created: Mon Nov 05 00:29:50 2012                                *
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
	.field  	_error+0,32
	.field  	0,32			; _error @ 0

	.sect	".cinit"
	.align	8
	.field  	2,32
	.field  	_sig_error+0,32
	.field  	0,16			; _sig_error @ 0

	.sect	".cinit"
	.align	8
	.field  	4,32
	.field  	_buffer_index+0,32
	.field  	0,32			; _buffer_index @ 0

	.sect	".cinit"
	.align	8
	.field  	4,32
	.field  	_in_tmp_left+0,32
	.field  	0,32			; _in_tmp_left @ 0

	.sect	".cinit"
	.align	8
	.field  	4,32
	.field  	_in_tmp_right+0,32
	.field  	0,32			; _in_tmp_right @ 0

	.sect	".cinit"
	.align	8
	.field  	2,32
	.field  	_in_left+0,32
	.field  	0,16			; _in_left @ 0

	.sect	".cinit"
	.align	8
	.field  	2,32
	.field  	_in_right+0,32
	.field  	0,16			; _in_right @ 0

	.sect	".cinit"
	.align	8
	.field  	2,32
	.field  	_out_left+0,32
	.field  	0,16			; _out_left @ 0

	.sect	".cinit"
	.align	8
	.field  	2,32
	.field  	_out_right+0,32
	.field  	0,16			; _out_right @ 0

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
	.field  	_in_channel_flag+0,32
	.field  	0,8			; _in_channel_flag @ 0

	.sect	".cinit"
	.align	8
	.field  	1,32
	.field  	_out_channel_flag+0,32
	.field  	0,8			; _out_channel_flag @ 0


DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("DSK6713_init"), DW_AT_symbol_name("_DSK6713_init")
	.dwattr DW$1, DW_AT_declaration(0x01)
	.dwattr DW$1, DW_AT_external(0x01)

DW$2	.dwtag  DW_TAG_subprogram, DW_AT_name("DSK6713_AIC23_openCodec"), DW_AT_symbol_name("_DSK6713_AIC23_openCodec")
	.dwattr DW$2, DW_AT_type(*DW$T$25)
	.dwattr DW$2, DW_AT_declaration(0x01)
	.dwattr DW$2, DW_AT_external(0x01)
DW$3	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$4	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$48)
	.dwendtag DW$2


DW$5	.dwtag  DW_TAG_subprogram, DW_AT_name("DSK6713_AIC23_closeCodec"), DW_AT_symbol_name("_DSK6713_AIC23_closeCodec")
	.dwattr DW$5, DW_AT_declaration(0x01)
	.dwattr DW$5, DW_AT_external(0x01)
DW$6	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$25)
	.dwendtag DW$5


DW$7	.dwtag  DW_TAG_subprogram, DW_AT_name("DSK6713_AIC23_write"), DW_AT_symbol_name("_DSK6713_AIC23_write")
	.dwattr DW$7, DW_AT_type(*DW$T$34)
	.dwattr DW$7, DW_AT_declaration(0x01)
	.dwattr DW$7, DW_AT_external(0x01)
DW$8	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$25)
DW$9	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$23)
	.dwendtag DW$7


DW$10	.dwtag  DW_TAG_subprogram, DW_AT_name("DSK6713_AIC23_read"), DW_AT_symbol_name("_DSK6713_AIC23_read")
	.dwattr DW$10, DW_AT_type(*DW$T$34)
	.dwattr DW$10, DW_AT_declaration(0x01)
	.dwattr DW$10, DW_AT_external(0x01)
DW$11	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$25)
DW$12	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$36)
	.dwendtag DW$10


DW$13	.dwtag  DW_TAG_subprogram, DW_AT_name("DSK6713_AIC23_setFreq"), DW_AT_symbol_name("_DSK6713_AIC23_setFreq")
	.dwattr DW$13, DW_AT_declaration(0x01)
	.dwattr DW$13, DW_AT_external(0x01)
DW$14	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$25)
DW$15	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$23)
	.dwendtag DW$13


DW$16	.dwtag  DW_TAG_subprogram, DW_AT_name("convolve_as_func"), DW_AT_symbol_name("_convolve_as_func")
	.dwattr DW$16, DW_AT_type(*DW$T$10)
	.dwattr DW$16, DW_AT_declaration(0x01)
	.dwattr DW$16, DW_AT_external(0x01)
DW$17	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$51)
DW$18	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$51)
DW$19	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$20	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$16


DW$21	.dwtag  DW_TAG_subprogram, DW_AT_name("exit"), DW_AT_symbol_name("_exit")
	.dwattr DW$21, DW_AT_type(*DW$T$10)
	.dwattr DW$21, DW_AT_declaration(0x01)
	.dwattr DW$21, DW_AT_external(0x01)
DW$22	.dwtag  DW_TAG_variable, DW_AT_name("_IRQ_eventTable"), DW_AT_symbol_name("__IRQ_eventTable")
	.dwattr DW$22, DW_AT_type(*DW$T$63)
	.dwattr DW$22, DW_AT_declaration(0x01)
	.dwattr DW$22, DW_AT_external(0x01)
	.global	_config
_config:	.usect	".far",40,4
DW$23	.dwtag  DW_TAG_variable, DW_AT_name("config"), DW_AT_symbol_name("_config")
	.dwattr DW$23, DW_AT_location[DW_OP_addr _config]
	.dwattr DW$23, DW_AT_type(*DW$T$47)
	.dwattr DW$23, DW_AT_external(0x01)
	.global	_hCodec
	.bss	_hCodec,4,4
DW$24	.dwtag  DW_TAG_variable, DW_AT_name("hCodec"), DW_AT_symbol_name("_hCodec")
	.dwattr DW$24, DW_AT_location[DW_OP_addr _hCodec]
	.dwattr DW$24, DW_AT_type(*DW$T$25)
	.dwattr DW$24, DW_AT_external(0x01)
	.global	_error
	.bss	_error,4,4
DW$25	.dwtag  DW_TAG_variable, DW_AT_name("error"), DW_AT_symbol_name("_error")
	.dwattr DW$25, DW_AT_location[DW_OP_addr _error]
	.dwattr DW$25, DW_AT_type(*DW$T$10)
	.dwattr DW$25, DW_AT_external(0x01)
	.global	_sig_error
	.bss	_sig_error,2,2
DW$26	.dwtag  DW_TAG_variable, DW_AT_name("sig_error"), DW_AT_symbol_name("_sig_error")
	.dwattr DW$26, DW_AT_location[DW_OP_addr _sig_error]
	.dwattr DW$26, DW_AT_type(*DW$T$34)
	.dwattr DW$26, DW_AT_external(0x01)
	.global	_w
_w:	.usect	".far",204,4
DW$27	.dwtag  DW_TAG_variable, DW_AT_name("w"), DW_AT_symbol_name("_w")
	.dwattr DW$27, DW_AT_location[DW_OP_addr _w]
	.dwattr DW$27, DW_AT_type(*DW$T$57)
	.dwattr DW$27, DW_AT_external(0x01)
	.global	_buffer_index
	.bss	_buffer_index,4,4
DW$28	.dwtag  DW_TAG_variable, DW_AT_name("buffer_index"), DW_AT_symbol_name("_buffer_index")
	.dwattr DW$28, DW_AT_location[DW_OP_addr _buffer_index]
	.dwattr DW$28, DW_AT_type(*DW$T$10)
	.dwattr DW$28, DW_AT_external(0x01)
	.global	_buffer
_buffer:	.usect	".far",256,256
DW$29	.dwtag  DW_TAG_variable, DW_AT_name("buffer"), DW_AT_symbol_name("_buffer")
	.dwattr DW$29, DW_AT_location[DW_OP_addr _buffer]
	.dwattr DW$29, DW_AT_type(*DW$T$58)
	.dwattr DW$29, DW_AT_external(0x01)
	.global	_in_tmp_left
	.bss	_in_tmp_left,4,4
DW$30	.dwtag  DW_TAG_variable, DW_AT_name("in_tmp_left"), DW_AT_symbol_name("_in_tmp_left")
	.dwattr DW$30, DW_AT_location[DW_OP_addr _in_tmp_left]
	.dwattr DW$30, DW_AT_type(*DW$T$23)
	.dwattr DW$30, DW_AT_external(0x01)
	.global	_in_tmp_right
	.bss	_in_tmp_right,4,4
DW$31	.dwtag  DW_TAG_variable, DW_AT_name("in_tmp_right"), DW_AT_symbol_name("_in_tmp_right")
	.dwattr DW$31, DW_AT_location[DW_OP_addr _in_tmp_right]
	.dwattr DW$31, DW_AT_type(*DW$T$23)
	.dwattr DW$31, DW_AT_external(0x01)
	.global	_in_left
	.bss	_in_left,2,2
DW$32	.dwtag  DW_TAG_variable, DW_AT_name("in_left"), DW_AT_symbol_name("_in_left")
	.dwattr DW$32, DW_AT_location[DW_OP_addr _in_left]
	.dwattr DW$32, DW_AT_type(*DW$T$34)
	.dwattr DW$32, DW_AT_external(0x01)
	.global	_in_right
	.bss	_in_right,2,2
DW$33	.dwtag  DW_TAG_variable, DW_AT_name("in_right"), DW_AT_symbol_name("_in_right")
	.dwattr DW$33, DW_AT_location[DW_OP_addr _in_right]
	.dwattr DW$33, DW_AT_type(*DW$T$34)
	.dwattr DW$33, DW_AT_external(0x01)
	.global	_out_left
	.bss	_out_left,2,2
DW$34	.dwtag  DW_TAG_variable, DW_AT_name("out_left"), DW_AT_symbol_name("_out_left")
	.dwattr DW$34, DW_AT_location[DW_OP_addr _out_left]
	.dwattr DW$34, DW_AT_type(*DW$T$34)
	.dwattr DW$34, DW_AT_external(0x01)
	.global	_out_right
	.bss	_out_right,2,2
DW$35	.dwtag  DW_TAG_variable, DW_AT_name("out_right"), DW_AT_symbol_name("_out_right")
	.dwattr DW$35, DW_AT_location[DW_OP_addr _out_right]
	.dwattr DW$35, DW_AT_type(*DW$T$34)
	.dwattr DW$35, DW_AT_external(0x01)
	.global	_start
	.bss	_start,4,4
DW$36	.dwtag  DW_TAG_variable, DW_AT_name("start"), DW_AT_symbol_name("_start")
	.dwattr DW$36, DW_AT_location[DW_OP_addr _start]
	.dwattr DW$36, DW_AT_type(*DW$T$65)
	.dwattr DW$36, DW_AT_external(0x01)
	.global	_end
	.bss	_end,4,4
DW$37	.dwtag  DW_TAG_variable, DW_AT_name("end"), DW_AT_symbol_name("_end")
	.dwattr DW$37, DW_AT_location[DW_OP_addr _end]
	.dwattr DW$37, DW_AT_type(*DW$T$65)
	.dwattr DW$37, DW_AT_external(0x01)
	.global	_diff
	.bss	_diff,4,4
DW$38	.dwtag  DW_TAG_variable, DW_AT_name("diff"), DW_AT_symbol_name("_diff")
	.dwattr DW$38, DW_AT_location[DW_OP_addr _diff]
	.dwattr DW$38, DW_AT_type(*DW$T$65)
	.dwattr DW$38, DW_AT_external(0x01)
	.global	_input_ready
	.bss	_input_ready,1,1
DW$39	.dwtag  DW_TAG_variable, DW_AT_name("input_ready"), DW_AT_symbol_name("_input_ready")
	.dwattr DW$39, DW_AT_location[DW_OP_addr _input_ready]
	.dwattr DW$39, DW_AT_type(*DW$T$32)
	.dwattr DW$39, DW_AT_external(0x01)
	.global	_output_ready
	.bss	_output_ready,1,1
DW$40	.dwtag  DW_TAG_variable, DW_AT_name("output_ready"), DW_AT_symbol_name("_output_ready")
	.dwattr DW$40, DW_AT_location[DW_OP_addr _output_ready]
	.dwattr DW$40, DW_AT_type(*DW$T$32)
	.dwattr DW$40, DW_AT_external(0x01)
	.global	_in_channel_flag
	.bss	_in_channel_flag,1,1
DW$41	.dwtag  DW_TAG_variable, DW_AT_name("in_channel_flag"), DW_AT_symbol_name("_in_channel_flag")
	.dwattr DW$41, DW_AT_location[DW_OP_addr _in_channel_flag]
	.dwattr DW$41, DW_AT_type(*DW$T$32)
	.dwattr DW$41, DW_AT_external(0x01)
	.global	_out_channel_flag
	.bss	_out_channel_flag,1,1
DW$42	.dwtag  DW_TAG_variable, DW_AT_name("out_channel_flag"), DW_AT_symbol_name("_out_channel_flag")
	.dwattr DW$42, DW_AT_location[DW_OP_addr _out_channel_flag]
	.dwattr DW$42, DW_AT_type(*DW$T$32)
	.dwattr DW$42, DW_AT_external(0x01)
;	C:\CCStudio_v3.1\C6000\cgtools\bin\opt6x.exe C:\Users\ssalen\AppData\Local\Temp\TI67620 C:\Users\ssalen\AppData\Local\Temp\TI67614 
	.sect	".text"
	.global	_transmit_interrupt

DW$43	.dwtag  DW_TAG_subprogram, DW_AT_name("transmit_interrupt"), DW_AT_symbol_name("_transmit_interrupt")
	.dwattr DW$43, DW_AT_low_pc(_transmit_interrupt)
	.dwattr DW$43, DW_AT_high_pc(0x00)
	.dwattr DW$43, DW_AT_begin_file("H:\SPH\firmware\lab3\main.c")
	.dwattr DW$43, DW_AT_begin_line(0xd3)
	.dwattr DW$43, DW_AT_begin_column(0x06)
	.dwattr DW$43, DW_AT_frame_base[DW_OP_breg31 24]
	.dwattr DW$43, DW_AT_skeletal(0x01)
	.dwpsn	"H:\SPH\firmware\lab3\main.c",211,31

;******************************************************************************
;* FUNCTION NAME: _transmit_interrupt                                         *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,B0,B1,B2,  *
;*                           B3,B4,B5,B6,B7,B8,B9,B10,B11,SP                  *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,B0,B1,B2,  *
;*                           B3,B4,B5,B6,B7,B8,B9,B10,B11,DP,SP               *
;*   Local Frame Size  : 0 Args + 0 Auto + 20 Save = 20 byte                  *
;******************************************************************************
_transmit_interrupt:
;** --------------------------------------------------------------------------*
;** 212	-----------------------    v$2 = hCodec;
;** 212	-----------------------    v$3 = (int)out_left;
;** 212	-----------------------    if ( out_channel_flag ) goto g3;

           STW     .D2T1   A12,*SP--(24)     ; |211| 
||         MVK     .S1     1,A12             ; |221| 

           LDBU    .D2T2   *+DP(_out_channel_flag),B0 ; |212| 
           LDH     .D2T2   *+DP(_out_left),B4 ; |212| 
           LDW     .D2T1   *+DP(_hCodec),A4  ; |212| 

           STW     .D2T2   B11,*+SP(20)      ; |211| 
||         MV      .L2     B3,B11            ; |211| 
||         MVKL    .S2     RL0,B3            ; |218| 

           MVKH    .S2     RL0,B3            ; |218| 
||         STW     .D2T2   B10,*+SP(16)      ; |211| 

           STW     .D2T1   A11,*+SP(12)      ; |211| 
||         ZERO    .L1     A11               ; |215| 
|| [ B0]   B       .S1     L1                ; |212| 
|| [ B0]   MVKL    .S2     RL1,B3            ; |213| 

           LDHU    .D2T2   *+DP(_out_right),B4 ; |218| 
|| [!B0]   CALL    .S1     _DSK6713_AIC23_write ; |218| 
||         EXTU    .S2     B4,16,16,B5       ; |213| 

           STW     .D2T1   A10,*+SP(8)       ; |211| 
||         MVK     .S1     1,A10             ; |216| 
|| [ B0]   CALL    .S2     _DSK6713_AIC23_write ; |213| 

           NOP             2
           MVK     .S2     1,B10             ; |220| 
           ; BRANCHCC OCCURS {L1}            ; |212| 
;** --------------------------------------------------------------------------*
;** 218	-----------------------    DSK6713_AIC23_write(v$2, (unsigned)(unsigned short)out_right);
;** 220	-----------------------    out_channel_flag = 1u;
;** 221	-----------------------    output_ready = 1u;
;** 221	-----------------------    goto g4;
           NOP             1
RL0:       ; CALL OCCURS {_DSK6713_AIC23_write}  ; |218| 
;** --------------------------------------------------------------------------*
           STB     .D2T2   B10,*+DP(_out_channel_flag) ; |220| 
           LDDW    .D2T1   *+SP(8),A11:A10   ; |223| 

           STB     .D2T1   A12,*+DP(_output_ready) ; |221| 
||         MV      .L2     B11,B3            ; |223| 

           RET     .S2     B3                ; |223| 
||         LDDW    .D2T2   *+SP(16),B11:B10  ; |223| 

           LDW     .D2T1   *++SP(24),A12     ; |223| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |223| 
;** --------------------------------------------------------------------------*
L1:    
;**	-----------------------g3:
;** 213	-----------------------    DSK6713_AIC23_write(v$2, (unsigned)(unsigned short)v$3);
;** 215	-----------------------    out_channel_flag = 0u;
;** 216	-----------------------    output_ready = 1u;
;**	-----------------------g4:
;**  	-----------------------    return;
           MVKH    .S2     RL1,B3            ; |213| 
           MV      .L2     B5,B4             ; |213| 
RL1:       ; CALL OCCURS {_DSK6713_AIC23_write}  ; |213| 
;** --------------------------------------------------------------------------*
           STB     .D2T1   A11,*+DP(_out_channel_flag) ; |215| 
           STB     .D2T1   A10,*+DP(_output_ready) ; |216| 

           LDDW    .D2T2   *+SP(16),B11:B10  ; |223| 
||         MV      .L2     B11,B3            ; |223| 

           RET     .S2     B3                ; |223| 
||         LDDW    .D2T1   *+SP(8),A11:A10   ; |223| 

           LDW     .D2T1   *++SP(24),A12     ; |223| 
	.dwpsn	"H:\SPH\firmware\lab3\main.c",223,1
           NOP             4
           ; BRANCH OCCURS {B3}              ; |223| 
	.dwattr DW$43, DW_AT_end_file("H:\SPH\firmware\lab3\main.c")
	.dwattr DW$43, DW_AT_end_line(0xdf)
	.dwattr DW$43, DW_AT_end_column(0x01)
	.dwendtag DW$43

	.sect	".text"
	.global	_reset

DW$44	.dwtag  DW_TAG_subprogram, DW_AT_name("reset"), DW_AT_symbol_name("_reset")
	.dwattr DW$44, DW_AT_low_pc(_reset)
	.dwattr DW$44, DW_AT_high_pc(0x00)
	.dwattr DW$44, DW_AT_begin_file("H:\SPH\firmware\lab3\main.c")
	.dwattr DW$44, DW_AT_begin_line(0x6f)
	.dwattr DW$44, DW_AT_begin_column(0x06)
	.dwattr DW$44, DW_AT_frame_base[DW_OP_breg31 0]
	.dwattr DW$44, DW_AT_skeletal(0x01)
	.dwpsn	"H:\SPH\firmware\lab3\main.c",111,18

;******************************************************************************
;* FUNCTION NAME: _reset                                                      *
;*                                                                            *
;*   Regs Modified     : A3,B0,B1,B4,B5,B6,B7,B8,B9                           *
;*   Regs Used         : A3,B0,B1,B3,B4,B5,B6,B7,B8,B9,DP,SP                  *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
_reset:
;** --------------------------------------------------------------------------*
;**  	-----------------------    K$5 = 0;
;**  	-----------------------    K$9 = &w[0];
;**  	-----------------------    K$2 = 51;
;**  	-----------------------    Q$1 = &buffer[0];
;** 114	-----------------------    L$1 = 64;
;** 114	-----------------------    i = 0;
;**  	-----------------------    #pragma MUST_ITERATE(64, 64, 64)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
;**	-----------------------g2:
;** 115	-----------------------    if ( i >= K$2 ) goto g4;
;** 115	-----------------------    K$9[i] = K$5;
;**	-----------------------g4:
;** 116	-----------------------    Q$1[i] = K$5;
;** 114	-----------------------    ++i;
;** 114	-----------------------    if ( --L$1 ) goto g2;
;**  	-----------------------    return;
           MVC     .S2     CSR,B9
           AND     .L2     -2,B9,B0

           MVC     .S2     B0,CSR            ; interrupts off
||         MVKL    .S1     _buffer,A3

;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 114
;*      Loop opening brace source line   : 114
;*      Loop closing brace source line   : 117
;*      Known Minimum Trip Count         : 64                    
;*      Known Maximum Trip Count         : 64                    
;*      Known Max Trip Count Factor      : 64
;*      Loop Carried Dependency Bound(^) : 2
;*      Unpartitioned Resource Bound     : 1
;*      Partitioned Resource Bound(*)    : 2
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        1     
;*      .S units                     1        0     
;*      .D units                     0        2*    
;*      .M units                     0        0     
;*      .X cross paths               0        0     
;*      .T address paths             0        2*    
;*      Long read paths              0        2*    
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          0        2     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1        1     
;*      Bound(.L .S .D .LS .LSD)     1        2*    
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 2  Schedule found with 4 iterations in parallel
;*
;*      Register Usage Table:
;*          +---------------------------------+
;*          |AAAAAAAAAAAAAAAA|BBBBBBBBBBBBBBBB|
;*          |0000000000111111|0000000000111111|
;*          |0123456789012345|0123456789012345|
;*          |----------------+----------------|
;*       0: |                | *  *****       |
;*       1: |                |**  *****       |
;*          +---------------------------------+
;*
;*      Done
;*
;*      Epilog not removed
;*      Collapsed epilog stages     : 0
;*      Collapsed prolog stages     : 0
;*      Minimum required memory pad : 0 bytes
;*
;*      Minimum safe trip count     : 4
;*----------------------------------------------------------------------------*
;*        SINGLE SCHEDULED ITERATION
;*
;*        C60:
;*   0      [ B1]   SUB     .S2     B1,1,B1           ; |114| 
;*   1      [ B1]   B       .S1     C60               ; |114| 
;*   2              NOP             3
;*   5              CMPLT   .L2     B7,B4,B0          ; |115|  ^ 
;*     ||           STW     .D2T2   B5,*+B8[B7]       ; |116| 
;*   6      [ B0]   STW     .D2T2   B5,*+B6[B7]       ; |115|  ^ 
;*     ||           ADD     .L2     1,B7,B7           ; |114|  ^ 
;*   7              ; BRANCHCC OCCURS {C60}           ; |114| 
;*----------------------------------------------------------------------------*
L2:    ; PIPED LOOP PROLOG

           MVK     .S2     58,B1             ; |114| 
||         B       .S1     L3                ; |114| (P) <0,1> 

           MVK     .S2     0x33,B4
||         MVKH    .S1     _buffer,A3

           ZERO    .L2     B7                ; |114| 
||         MVKL    .S2     _w,B6
||         B       .S1     L3                ; |114| (P) <1,1> 

	.dwpsn	"H:\SPH\firmware\lab3\main.c",114,0

           ZERO    .D2     B5
||         MVKH    .S2     _w,B6
||         MV      .L2X    A3,B8

;** --------------------------------------------------------------------------*
L3:    ; PIPED LOOP KERNEL
DW$L$_reset$3$B:

           STW     .D2T2   B5,*+B8[B7]       ; |116| <0,5> 
||         CMPLT   .L2     B7,B4,B0          ; |115| <0,5>  ^ 
|| [ B1]   B       .S1     L3                ; |114| <2,1> 

	.dwpsn	"H:\SPH\firmware\lab3\main.c",117,0

           ADD     .L2     1,B7,B7           ; |114| <0,6>  ^ 
|| [ B0]   STW     .D2T2   B5,*+B6[B7]       ; |115| <0,6>  ^ 
|| [ B1]   SUB     .S2     B1,1,B1           ; |114| <3,0> 

DW$L$_reset$3$E:
;** --------------------------------------------------------------------------*
L4:    ; PIPED LOOP EPILOG

           RET     .S2     B3                ; |118| 
||         CMPLT   .L2     B7,B4,B0          ; |115| (E) <1,5>  ^ 
||         STW     .D2T2   B5,*+B8[B7]       ; |116| (E) <1,5> 

           MVC     .S2     B9,CSR            ; interrupts on
||         ADD     .L2     1,B7,B7           ; |114| (E) <1,6>  ^ 
|| [ B0]   STW     .D2T2   B5,*+B6[B7]       ; |115| (E) <1,6>  ^ 

           CMPLT   .L2     B7,B4,B0          ; |115| (E) <2,5>  ^ 
||         STW     .D2T2   B5,*+B8[B7]       ; |116| (E) <2,5> 

           ADD     .L2     1,B7,B7           ; |114| (E) <2,6>  ^ 
|| [ B0]   STW     .D2T2   B5,*+B6[B7]       ; |115| (E) <2,6>  ^ 

           CMPLT   .L2     B7,B4,B0          ; |115| (E) <3,5>  ^ 
||         STW     .D2T2   B5,*+B8[B7]       ; |116| (E) <3,5> 

	.dwpsn	"H:\SPH\firmware\lab3\main.c",118,1
   [ B0]   STW     .D2T2   B5,*+B6[B7]       ; |115| (E) <3,6>  ^ 
           ; BRANCH OCCURS {B3}              ; |118| 

DW$45	.dwtag  DW_TAG_loop
	.dwattr DW$45, DW_AT_name("H:\SPH\firmware\lab3\Configuration1cfg_c.asm:L3:1:1352093390")
	.dwattr DW$45, DW_AT_begin_file("H:\SPH\firmware\lab3\main.c")
	.dwattr DW$45, DW_AT_begin_line(0x72)
	.dwattr DW$45, DW_AT_end_line(0x75)
DW$46	.dwtag  DW_TAG_loop_range
	.dwattr DW$46, DW_AT_low_pc(DW$L$_reset$3$B)
	.dwattr DW$46, DW_AT_high_pc(DW$L$_reset$3$E)
	.dwendtag DW$45

	.dwattr DW$44, DW_AT_end_file("H:\SPH\firmware\lab3\main.c")
	.dwattr DW$44, DW_AT_end_line(0x76)
	.dwattr DW$44, DW_AT_end_column(0x01)
	.dwendtag DW$44

	.sect	".text"
	.global	_receive_interrupt

DW$47	.dwtag  DW_TAG_subprogram, DW_AT_name("receive_interrupt"), DW_AT_symbol_name("_receive_interrupt")
	.dwattr DW$47, DW_AT_low_pc(_receive_interrupt)
	.dwattr DW$47, DW_AT_high_pc(0x00)
	.dwattr DW$47, DW_AT_begin_file("H:\SPH\firmware\lab3\main.c")
	.dwattr DW$47, DW_AT_begin_line(0xbe)
	.dwattr DW$47, DW_AT_begin_column(0x06)
	.dwattr DW$47, DW_AT_frame_base[DW_OP_breg31 24]
	.dwattr DW$47, DW_AT_skeletal(0x01)
	.dwpsn	"H:\SPH\firmware\lab3\main.c",190,30

;******************************************************************************
;* FUNCTION NAME: _receive_interrupt                                          *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,B0,B1,B2,  *
;*                           B3,B4,B5,B6,B7,B8,B9,B10,B11,SP                  *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,B0,B1,B2,  *
;*                           B3,B4,B5,B6,B7,B8,B9,B10,B11,DP,SP               *
;*   Local Frame Size  : 0 Args + 0 Auto + 20 Save = 20 byte                  *
;******************************************************************************
_receive_interrupt:
;** --------------------------------------------------------------------------*
;** 191	-----------------------    v$1 = hCodec;
;** 191	-----------------------    if ( in_channel_flag ) goto g3;

           STW     .D2T1   A12,*SP--(24)     ; |190| 
||         MVK     .S2     (_in_tmp_left-$bss),B4 ; |192| 
||         MVK     .S1     (_in_tmp_right-$bss),A3 ; |199| 

           LDBU    .D2T2   *+DP(_in_channel_flag),B0 ; |191| 
||         ADD     .L2     DP,B4,B5          ; |192| 
||         ADD     .S2X    DP,A3,B4          ; |199| 
||         MVK     .S1     1,A12             ; |204| 

           LDW     .D2T1   *+DP(_hCodec),A4  ; |191| 

           STW     .D2T2   B11,*+SP(20)      ; |190| 
||         MV      .L2     B3,B11            ; |190| 
||         MVKL    .S2     RL2,B3            ; |199| 

           MVKH    .S2     RL2,B3            ; |199| 
||         STW     .D2T2   B10,*+SP(16)      ; |190| 

           STW     .D2T1   A11,*+SP(12)      ; |190| 
||         MVK     .S2     1,B10             ; |203| 
||         ZERO    .L1     A11               ; |196| 

           STW     .D2T1   A10,*+SP(8)       ; |190| 
||         MVK     .S1     1,A10             ; |197| 
|| [ B0]   B       .S2     L5                ; |191| 
|| [ B0]   MV      .L2     B5,B4             ; |192| 

   [!B0]   CALL    .S1     _DSK6713_AIC23_read ; |199| 
|| [ B0]   MVKL    .S2     RL3,B3            ; |192| 

   [ B0]   CALL    .S1     _DSK6713_AIC23_read ; |192| 
|| [ B0]   MVKH    .S2     RL3,B3            ; |192| 

           NOP             3
           ; BRANCHCC OCCURS {L5}            ; |191| 
;** --------------------------------------------------------------------------*
;** 199	-----------------------    DSK6713_AIC23_read(v$1, &in_tmp_right);
;** 201	-----------------------    in_right = in_tmp_right;
;** 203	-----------------------    in_channel_flag = 1u;
;** 204	-----------------------    input_ready = 1u;
;** 204	-----------------------    goto g4;
           NOP             1
RL2:       ; CALL OCCURS {_DSK6713_AIC23_read}  ; |199| 
;** --------------------------------------------------------------------------*
           LDH     .D2T2   *+DP(_in_tmp_right),B4 ; |201| 
           STB     .D2T2   B10,*+DP(_in_channel_flag) ; |203| 
           LDDW    .D2T1   *+SP(8),A11:A10   ; |206| 

           LDDW    .D2T2   *+SP(16),B11:B10  ; |206| 
||         MV      .L2     B11,B3            ; |206| 

           STB     .D2T1   A12,*+DP(_input_ready) ; |204| 

           RET     .S2     B3                ; |206| 
||         STH     .D2T2   B4,*+DP(_in_right) ; |201| 

           LDW     .D2T1   *++SP(24),A12     ; |206| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |206| 
;** --------------------------------------------------------------------------*
L5:    
;**	-----------------------g3:
;** 192	-----------------------    DSK6713_AIC23_read(v$1, &in_tmp_left);
;** 194	-----------------------    in_left = in_tmp_left;
;** 196	-----------------------    in_channel_flag = 0u;
;** 197	-----------------------    input_ready = 1u;
;**	-----------------------g4:
;**  	-----------------------    return;
           NOP             2
RL3:       ; CALL OCCURS {_DSK6713_AIC23_read}  ; |192| 
;** --------------------------------------------------------------------------*
           LDH     .D2T2   *+DP(_in_tmp_left),B4 ; |194| 
           STB     .D2T1   A11,*+DP(_in_channel_flag) ; |196| 
           STB     .D2T1   A10,*+DP(_input_ready) ; |197| 

           LDDW    .D2T2   *+SP(16),B11:B10  ; |206| 
||         MV      .L2     B11,B3            ; |206| 

           LDDW    .D2T1   *+SP(8),A11:A10   ; |206| 

           RET     .S2     B3                ; |206| 
||         STH     .D2T2   B4,*+DP(_in_left) ; |194| 

           LDW     .D2T1   *++SP(24),A12     ; |206| 
	.dwpsn	"H:\SPH\firmware\lab3\main.c",206,1
           NOP             4
           ; BRANCH OCCURS {B3}              ; |206| 
	.dwattr DW$47, DW_AT_end_file("H:\SPH\firmware\lab3\main.c")
	.dwattr DW$47, DW_AT_end_line(0xce)
	.dwattr DW$47, DW_AT_end_column(0x01)
	.dwendtag DW$47

	.sect	".text"
	.global	_multiply

DW$48	.dwtag  DW_TAG_subprogram, DW_AT_name("multiply"), DW_AT_symbol_name("_multiply")
	.dwattr DW$48, DW_AT_low_pc(_multiply)
	.dwattr DW$48, DW_AT_high_pc(0x00)
	.dwattr DW$48, DW_AT_begin_file("H:\SPH\firmware\lab3\main.c")
	.dwattr DW$48, DW_AT_begin_line(0xb1)
	.dwattr DW$48, DW_AT_begin_column(0x05)
	.dwattr DW$48, DW_AT_frame_base[DW_OP_breg31 8]
	.dwattr DW$48, DW_AT_skeletal(0x01)
	.dwpsn	"H:\SPH\firmware\lab3\main.c",177,28

;******************************************************************************
;* FUNCTION NAME: _multiply                                                   *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP                                      *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP                                      *
;*   Local Frame Size  : 0 Args + 0 Auto + 4 Save = 4 byte                    *
;******************************************************************************
_multiply:
;** --------------------------------------------------------------------------*
DW$49	.dwtag  DW_TAG_formal_parameter, DW_AT_name("a"), DW_AT_symbol_name("_a")
	.dwattr DW$49, DW_AT_type(*DW$T$10)
	.dwattr DW$49, DW_AT_location[DW_OP_reg4]
DW$50	.dwtag  DW_TAG_formal_parameter, DW_AT_name("b"), DW_AT_symbol_name("_b")
	.dwattr DW$50, DW_AT_type(*DW$T$10)
	.dwattr DW$50, DW_AT_location[DW_OP_reg20]
;** 182	-----------------------    return (int)((long long)a*(long long)b>>31);
           CALL    .S1     __mpyll           ; |182| 
           STW     .D2T2   B3,*SP--(8)       ; |177| 
           MVKL    .S2     RL4,B3            ; |182| 
           SHR     .S2     B4,31,B5          ; |182| 
           MVKH    .S2     RL4,B3            ; |182| 
           SHR     .S1     A4,31,A5          ; |182| 
RL4:       ; CALL OCCURS {__mpyll}           ; |182| 
;** --------------------------------------------------------------------------*
           LDW     .D2T2   *++SP(8),B3       ; |183| 
           SHL     .S2X    A5,0x1,B4         ; |182| 
           SHRU    .S1     A4,0x1f,A3        ; |182| 
           OR      .L1X    B4,A3,A4          ; |182| 
           NOP             1
           RET     .S2     B3                ; |183| 
	.dwpsn	"H:\SPH\firmware\lab3\main.c",183,1
           NOP             5
           ; BRANCH OCCURS {B3}              ; |183| 
	.dwattr DW$48, DW_AT_end_file("H:\SPH\firmware\lab3\main.c")
	.dwattr DW$48, DW_AT_end_line(0xb7)
	.dwattr DW$48, DW_AT_end_column(0x01)
	.dwendtag DW$48

	.sect	".text"
	.global	_grad_desc

DW$51	.dwtag  DW_TAG_subprogram, DW_AT_name("grad_desc"), DW_AT_symbol_name("_grad_desc")
	.dwattr DW$51, DW_AT_low_pc(_grad_desc)
	.dwattr DW$51, DW_AT_high_pc(0x00)
	.dwattr DW$51, DW_AT_begin_file("H:\SPH\firmware\lab3\main.c")
	.dwattr DW$51, DW_AT_begin_line(0x96)
	.dwattr DW$51, DW_AT_begin_column(0x06)
	.dwattr DW$51, DW_AT_frame_base[DW_OP_breg31 32]
	.dwattr DW$51, DW_AT_skeletal(0x01)
	.dwpsn	"H:\SPH\firmware\lab3\main.c",150,22

;******************************************************************************
;* FUNCTION NAME: _grad_desc                                                  *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,B0,*
;*                           B1,B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,B13,SP        *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,B0,*
;*                           B1,B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,B13,DP,SP     *
;*   Local Frame Size  : 0 Args + 0 Auto + 32 Save = 32 byte                  *
;******************************************************************************
_grad_desc:
;** --------------------------------------------------------------------------*
;** 156	-----------------------    tmp_b_index = buffer_index-1;
;**  	-----------------------    K$10 = 63;
;**  	-----------------------    K$26 = &buffer[0];
;**  	-----------------------    U$23 = (int)((long long)error*25460875LL>>26);
;** 158	-----------------------    L$1 = 51;
;**  	-----------------------    U$15 = &w[0];
;**  	-----------------------    #pragma MUST_ITERATE(51, 51, 51)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)

           STW     .D2T1   A14,*SP--(32)     ; |150| 
||         MV      .L1X    SP,A9             ; |150| 

           LDW     .D2T2   *+DP(_error),B5

           CALL    .S1     __mpyll
||         STW     .D2T1   A10,*+SP(8)

           LDW     .D2T1   *+DP(_buffer_index),A10 ; |156| 

           STW     .D2T2   B13,*+SP(4)
||         MVKL    .S2     0x184808b,B4

           STW     .D2T1   A11,*+SP(12)
||         MVKH    .S2     0x184808b,B4

           STW     .D1T1   A12,*-A9(16)
||         SHR     .S1X    B5,31,A5
||         MVKL    .S2     RL5,B3
||         MV      .L2     B3,B13
||         STW     .D2T2   B10,*+SP(24)

           ZERO    .L2     B5
||         MV      .L1X    B5,A4
||         MVKH    .S2     RL5,B3
||         STW     .D1T1   A13,*-A9(12)
||         STW     .D2T2   B11,*+SP(28)

RL5:       ; CALL OCCURS {__mpyll} 
;** --------------------------------------------------------------------------*
           MVKL    .S1     _buffer,A3
           MVKL    .S1     _w,A6

           MVK     .S1     0x3f,A13
||         SUB     .L1     A10,1,A10         ; |156| 

           MVKH    .S1     _buffer,A3
||         CMPLT   .L2X    A10,0,B0          ; |160| 

   [ B0]   MV      .L1     A13,A10           ; |160| 
||         MV      .D1     A3,A12
||         MVKH    .S1     _w,A6
||         SHL     .S2X    A5,0x6,B4

           CALL    .S2     __mpyll           ; |164| 
||         LDW     .D1T1   *+A12[A10],A4     ; |164| 
||         SHRU    .S1     A4,0x1a,A3

           MVK     .S1     0x33,A3           ; |158| 
||         OR      .L2X    B4,A3,B4
||         MVKL    .S2     RL6,B3            ; |164| 

	.dwpsn	"H:\SPH\firmware\lab3\main.c",158,0

           MV      .L1     A3,A11
||         MV      .S1X    B4,A14
||         SHR     .S2     B4,31,B11
||         MV      .L2X    A6,B10

;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*----------------------------------------------------------------------------*
L6:    
DW$L$_grad_desc$3$B:
;**	-----------------------g2:
;** 160	-----------------------    if ( tmp_b_index >= 0 ) goto g4;
;** 160	-----------------------    tmp_b_index = K$10;
;**	-----------------------g4:
;** 164	-----------------------    A$1 = *U$15+(int)((long long)K$26[tmp_b_index]*U$23>>31)*2;
;** 164	-----------------------    *U$15++ = A$1;
;** 169	-----------------------    --tmp_b_index;
;** 158	-----------------------    if ( --L$1 ) goto g2;
;**  	-----------------------    return;
           MV      .L2X    A14,B4            ; |164| 
           MVKH    .S2     RL6,B3            ; |164| 

           SHR     .S1     A4,31,A5          ; |164| 
||         MV      .D2     B11,B5            ; |164| 

RL6:       ; CALL OCCURS {__mpyll}           ; |164| 
DW$L$_grad_desc$3$E:
;** --------------------------------------------------------------------------*
DW$L$_grad_desc$4$B:

           LDW     .D2T2   *B10,B5           ; |164| 
||         SUB     .L1     A11,1,A1          ; |158| 
||         SUB     .D1     A10,1,A10         ; |169| 
||         SHL     .S2X    A5,0x1,B4         ; |164| 
||         SHRU    .S1     A4,0x1f,A3        ; |164| 

           CMPLT   .L2X    A10,0,B0          ; |160| 
|| [ A1]   MVKL    .S2     RL6,B3            ; |164| 
||         SUB     .D1     A11,1,A11         ; |158| 
|| [!A1]   MV      .D2     B13,B3            ; |171| 
|| [!A1]   MV      .L1X    SP,A9             ; |171| 
|| [ A1]   B       .S1     L6                ; |158| 

   [ B0]   MV      .L1     A13,A10           ; |160| 
||         OR      .L2X    B4,A3,B4          ; |164| 

   [ A1]   LDW     .D1T1   *+A12[A10],A4     ; |164| 
   [ A1]   CALL    .S1     __mpyll           ; |164| 
           ADDAH   .D2     B5,B4,B4          ; |164| 
	.dwpsn	"H:\SPH\firmware\lab3\main.c",170,0
           STW     .D2T2   B4,*B10++         ; |164| 
           ; BRANCHCC OCCURS {L6}            ; |158| 
DW$L$_grad_desc$4$E:
;** --------------------------------------------------------------------------*

           LDDW    .D2T2   *+SP(24),B11:B10  ; |171| 
||         LDDW    .D1T1   *+A9(16),A13:A12  ; |171| 

           LDDW    .D1T1   *+A9(8),A11:A10   ; |171| 
||         LDW     .D2T2   *+SP(4),B13       ; |171| 
||         RET     .S2     B3                ; |171| 

           LDW     .D2T1   *++SP(32),A14     ; |171| 
	.dwpsn	"H:\SPH\firmware\lab3\main.c",171,1
           NOP             4
           ; BRANCH OCCURS {B3}              ; |171| 

DW$52	.dwtag  DW_TAG_loop
	.dwattr DW$52, DW_AT_name("H:\SPH\firmware\lab3\Configuration1cfg_c.asm:L6:1:1352093390")
	.dwattr DW$52, DW_AT_begin_file("H:\SPH\firmware\lab3\main.c")
	.dwattr DW$52, DW_AT_begin_line(0x9e)
	.dwattr DW$52, DW_AT_end_line(0xaa)
DW$53	.dwtag  DW_TAG_loop_range
	.dwattr DW$53, DW_AT_low_pc(DW$L$_grad_desc$3$B)
	.dwattr DW$53, DW_AT_high_pc(DW$L$_grad_desc$3$E)
DW$54	.dwtag  DW_TAG_loop_range
	.dwattr DW$54, DW_AT_low_pc(DW$L$_grad_desc$4$B)
	.dwattr DW$54, DW_AT_high_pc(DW$L$_grad_desc$4$E)
	.dwendtag DW$52

	.dwattr DW$51, DW_AT_end_file("H:\SPH\firmware\lab3\main.c")
	.dwattr DW$51, DW_AT_end_line(0xab)
	.dwattr DW$51, DW_AT_end_column(0x01)
	.dwendtag DW$51

	.sect	".text"
	.global	_process_sample

DW$55	.dwtag  DW_TAG_subprogram, DW_AT_name("process_sample"), DW_AT_symbol_name("_process_sample")
	.dwattr DW$55, DW_AT_low_pc(_process_sample)
	.dwattr DW$55, DW_AT_high_pc(0x00)
	.dwattr DW$55, DW_AT_begin_file("H:\SPH\firmware\lab3\main.c")
	.dwattr DW$55, DW_AT_begin_line(0x7d)
	.dwattr DW$55, DW_AT_begin_column(0x07)
	.dwattr DW$55, DW_AT_frame_base[DW_OP_breg31 8]
	.dwattr DW$55, DW_AT_skeletal(0x01)
	.dwpsn	"H:\SPH\firmware\lab3\main.c",125,47

;******************************************************************************
;* FUNCTION NAME: _process_sample                                             *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,B0,B1,B2,B3,B4,B5, *
;*                           B6,B7,B8,B9,B13,SP                               *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,B0,B1,B2,B3,B4,B5, *
;*                           B6,B7,B8,B9,B13,DP,SP                            *
;*   Local Frame Size  : 0 Args + 0 Auto + 8 Save = 8 byte                    *
;******************************************************************************
_process_sample:
;** --------------------------------------------------------------------------*
DW$56	.dwtag  DW_TAG_formal_parameter, DW_AT_name("clean"), DW_AT_symbol_name("_clean")
	.dwattr DW$56, DW_AT_type(*DW$T$34)
	.dwattr DW$56, DW_AT_location[DW_OP_reg4]
DW$57	.dwtag  DW_TAG_formal_parameter, DW_AT_name("echo"), DW_AT_symbol_name("_echo")
	.dwattr DW$57, DW_AT_type(*DW$T$34)
	.dwattr DW$57, DW_AT_location[DW_OP_reg20]
;** 128	-----------------------    C$12 = buffer_index;
;** 128	-----------------------    C$11 = &buffer[0];
;** 128	-----------------------    C$11[C$12] = (int)clean<<16;
;** 131	-----------------------    yw = convolve_as_func(C$11, &w, C$12, 51);
;** 137	-----------------------    if ( (C$10 = buffer_index) >= 63 ) goto g3;
;**  	-----------------------    buffer_index = C$10+1;
;**  	-----------------------    goto g4;
;**	-----------------------g3:
;** 137	-----------------------    buffer_index = 0;
;**	-----------------------g4:
;** 139	-----------------------    error = ((int)echo<<16)-yw;
;** 141	-----------------------    grad_desc();
;** 143	-----------------------    return error>>16;
           STW     .D2T1   A10,*SP--(8)      ; |125| 

           CALL    .S1     _convolve_as_func ; |131| 
||         LDW     .D2T2   *+DP(_buffer_index),B7 ; |128| 

           MVKL    .S2     _buffer,B5        ; |128| 

           MVK     .S2     0x33,B6           ; |131| 
||         MVKL    .S1     _w,A5             ; |131| 

           MV      .L1X    B4,A10            ; |125| 
||         MVKH    .S2     _buffer,B5        ; |128| 
||         SHL     .S1     A4,16,A3          ; |128| 

           MV      .L1X    B5,A4             ; |128| 
||         MVKL    .S2     RL7,B3            ; |131| 
||         MV      .L2     B3,B13            ; |125| 
||         STW     .D2T2   B13,*+SP(4)       ; |125| 
||         MVKH    .S1     _w,A5             ; |131| 

           STW     .D2T1   A3,*+B5[B7]       ; |128| 
||         MV      .L1X    B7,A6             ; |131| 
||         MVKH    .S2     RL7,B3            ; |131| 
||         MV      .L2X    A5,B4             ; |131| 

RL7:       ; CALL OCCURS {_convolve_as_func}  ; |131| 
;** --------------------------------------------------------------------------*
           LDW     .D2T2   *+DP(_buffer_index),B4 ; |137| 
           SHL     .S1     A10,16,A3         ; |139| 
           CALL    .S1     _grad_desc        ; |141| 
           SUB     .L1     A3,A4,A3          ; |139| 
           MVK     .S2     63,B5             ; |137| 

           ADD     .S2     1,B4,B4
||         CMPLT   .L2     B4,B5,B0          ; |137| 
||         STW     .D2T1   A3,*+DP(_error)   ; |139| 

           ZERO    .L2     B4                ; |137| 
|| [ B0]   STW     .D2T2   B4,*+DP(_buffer_index)
||         MVKL    .S2     RL8,B3            ; |141| 

   [!B0]   STW     .D2T2   B4,*+DP(_buffer_index) ; |137| 
||         MVKH    .S2     RL8,B3            ; |141| 

RL8:       ; CALL OCCURS {_grad_desc}        ; |141| 
;** --------------------------------------------------------------------------*

           LDW     .D2T1   *+DP(_error),A3   ; |143| 
||         MV      .L2     B13,B3            ; |144| 

           RET     .S2     B3                ; |144| 
||         LDW     .D2T2   *+SP(4),B13       ; |144| 

           LDW     .D2T1   *++SP(8),A10      ; |144| 
           NOP             3
	.dwpsn	"H:\SPH\firmware\lab3\main.c",144,1
           SHR     .S1     A3,16,A4          ; |143| 
           ; BRANCH OCCURS {B3}              ; |144| 
	.dwattr DW$55, DW_AT_end_file("H:\SPH\firmware\lab3\main.c")
	.dwattr DW$55, DW_AT_end_line(0x90)
	.dwattr DW$55, DW_AT_end_column(0x01)
	.dwendtag DW$55

	.sect	".text"
	.global	_main

DW$58	.dwtag  DW_TAG_subprogram, DW_AT_name("main"), DW_AT_symbol_name("_main")
	.dwattr DW$58, DW_AT_low_pc(_main)
	.dwattr DW$58, DW_AT_high_pc(0x00)
	.dwattr DW$58, DW_AT_begin_file("H:\SPH\firmware\lab3\main.c")
	.dwattr DW$58, DW_AT_begin_line(0x3a)
	.dwattr DW$58, DW_AT_begin_column(0x05)
	.dwattr DW$58, DW_AT_frame_base[DW_OP_breg31 8]
	.dwattr DW$58, DW_AT_skeletal(0x01)
	.dwpsn	"H:\SPH\firmware\lab3\main.c",58,12

;******************************************************************************
;* FUNCTION NAME: _main                                                       *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP                                      *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,DP,SP                                   *
;*   Local Frame Size  : 0 Args + 0 Auto + 4 Save = 4 byte                    *
;******************************************************************************
_main:
;** --------------------------------------------------------------------------*
;** 62	-----------------------    DSK6713_init();
;** 63	-----------------------    hCodec = v$1 = DSK6713_AIC23_openCodec(0, &config);
;** 64	-----------------------    DSK6713_AIC23_setFreq(v$1, 1u);
;** 350	-----------------------    CSR = CSR|1u;  // [2]
;** 320	-----------------------    C$1 = &_IRQ_eventTable[0];  // [1]
;** 320	-----------------------    IER = IER|C$1[15];  // [1]
;** 320	-----------------------    IER = IER|C$1[14];  // [1]
;** 320	-----------------------    reset();  // [1]
;** 81	-----------------------    if ( DSK6713_AIC23_write(hCodec, 0u) ) goto g4;
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)
           CALL    .S1     _DSK6713_init     ; |62| 
           STW     .D2T2   B3,*SP--(8)       ; |58| 
           MVKL    .S2     RL9,B3            ; |62| 
           MVKH    .S2     RL9,B3            ; |62| 
           NOP             2
RL9:       ; CALL OCCURS {_DSK6713_init}     ; |62| 
;** --------------------------------------------------------------------------*
           CALL    .S1     _DSK6713_AIC23_openCodec ; |63| 
           MVKL    .S2     RL10,B3           ; |63| 
           MVKL    .S2     _config,B4        ; |63| 
           MVKH    .S2     RL10,B3           ; |63| 
           MVKH    .S2     _config,B4        ; |63| 
           ZERO    .L1     A4                ; |63| 
RL10:      ; CALL OCCURS {_DSK6713_AIC23_openCodec}  ; |63| 
           CALL    .S1     _DSK6713_AIC23_setFreq ; |64| 
           STW     .D2T1   A4,*+DP(_hCodec)  ; |63| 
           NOP             1
           MVKL    .S2     RL11,B3           ; |64| 
           MVK     .S2     0x1,B4            ; |64| 
           MVKH    .S2     RL11,B3           ; |64| 
RL11:      ; CALL OCCURS {_DSK6713_AIC23_setFreq}  ; |64| 
           MVC     .S2     CSR,B4            ; |350| 
           OR      .L2     1,B4,B4           ; |350| 
           MVC     .S2     B4,CSR            ; |350| 
           MVKL    .S1     __IRQ_eventTable,A3 ; |320| 

           MVC     .S2     IER,B4            ; |320| 
||         MVKH    .S1     __IRQ_eventTable,A3 ; |320| 

           LDW     .D1T1   *+A3(60),A4       ; |320| 
           NOP             4
           OR      .L2X    A4,B4,B4          ; |320| 
           MVC     .S2     B4,IER            ; |320| 
           MVC     .S2     IER,B4            ; |320| 
           LDW     .D1T1   *+A3(56),A3       ; |320| 
           NOP             4
           OR      .L2X    A3,B4,B4          ; |320| 
           MVC     .S2     B4,IER            ; |320| 
           CALL    .S1     _reset            ; |320| 
           MVKL    .S2     RL12,B3           ; |320| 
           MVKH    .S2     RL12,B3           ; |320| 
           NOP             3
RL12:      ; CALL OCCURS {_reset}            ; |320| 
           CALL    .S1     _DSK6713_AIC23_write ; |81| 
           LDW     .D2T1   *+DP(_hCodec),A4  ; |81| 
           MVKL    .S2     RL13,B3           ; |81| 
           ZERO    .L2     B4                ; |81| 
           MVKH    .S2     RL13,B3           ; |81| 
           NOP             1
RL13:      ; CALL OCCURS {_DSK6713_AIC23_write}  ; |81| 
;** --------------------------------------------------------------------------*
           MV      .L1     A4,A1             ; |81| 

   [ A1]   B       .S1     L8                ; |81| 
|| [ A1]   MVK     .S2     1,B6              ; |83| 
|| [ A1]   LDH     .D2T2   *+DP(_in_right),B4

   [ A1]   MVK     .S1     1,A3              ; |82| 
   [ A1]   LDH     .D2T2   *+DP(_in_left),B5
   [ A1]   STB     .D2T1   A3,*+DP(_in_channel_flag) ; |82| 
   [ A1]   STB     .D2T2   B6,*+DP(_out_channel_flag) ; |83| 
           NOP             1
           ; BRANCHCC OCCURS {L8}            ; |81| 
;** --------------------------------------------------------------------------*

           CALL    .S1     _DSK6713_AIC23_write ; |81| 
||         LDW     .D2T1   *+DP(_hCodec),A4  ; |81| 
||         MVKL    .S2     RL14,B3           ; |81| 
||         ZERO    .L2     B4                ; |81| 

           MVKH    .S2     RL14,B3           ; |81| 
	.dwpsn	"H:\SPH\firmware\lab3\main.c",81,0
           NOP             3
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*----------------------------------------------------------------------------*
L7:    
DW$L$_main$5$B:
;**	-----------------------g3:
;** 81	-----------------------    if ( !DSK6713_AIC23_write(hCodec, 0u) ) goto g3;
           NOP             1
RL14:      ; CALL OCCURS {_DSK6713_AIC23_write}  ; |81| 
DW$L$_main$5$E:
;** --------------------------------------------------------------------------*
DW$L$_main$6$B:
           MV      .L1     A4,A1             ; |81| 

   [!A1]   B       .S1     L7                ; |81| 
|| [!A1]   LDW     .D2T1   *+DP(_hCodec),A4  ; |81| 
|| [!A1]   MVKL    .S2     RL14,B3           ; |81| 
|| [!A1]   ZERO    .L2     B4                ; |81| 

   [!A1]   CALL    .S1     _DSK6713_AIC23_write ; |81| 
|| [ A1]   MVK     .S2     1,B6              ; |83| 
|| [ A1]   LDH     .D2T2   *+DP(_in_right),B4

   [!A1]   MVKH    .S2     RL14,B3           ; |81| 
|| [ A1]   MVK     .S1     1,A3              ; |82| 
|| [ A1]   LDH     .D2T2   *+DP(_in_left),B5

   [ A1]   STB     .D2T1   A3,*+DP(_in_channel_flag) ; |82| 
   [ A1]   STB     .D2T2   B6,*+DP(_out_channel_flag) ; |83| 
           NOP             1
           ; BRANCHCC OCCURS {L7}            ; |81| 
;**	-----------------------g4:
;** 82	-----------------------    in_channel_flag = 1u;
;** 83	-----------------------    out_channel_flag = 1u;
;**  	-----------------------    v$2 = (int)in_right;
;**  	-----------------------    v$3 = (int)in_left;
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)
;**	-----------------------g5:
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)
DW$L$_main$6$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains control code
;*----------------------------------------------------------------------------*
L8:    
DW$L$_main$7$B:
	.dwpsn	"H:\SPH\firmware\lab3\main.c",85,0
;**	-----------------------g6:
;** 86	-----------------------    if ( !input_ready ) goto g8;
           LDBU    .D2T2   *+DP(_input_ready),B0 ; |86| 
           NOP             4

   [!B0]   B       .S1     L9                ; |86| 
||         MV      .L2     B0,B1             ; guard predicate rewrite
|| [ B0]   MVKL    .S2     RL15,B3           ; |88| 

   [!B1]   ZERO    .L2     B7                ; |96| 
|| [!B1]   LDH     .D2T2   *+DP(_sig_error),B6 ; |95| 
|| [ B0]   EXT     .S2     B5,16,16,B5       ; |88| 
|| [ B0]   CALL    .S1     _process_sample   ; |88| 

   [ B0]   MV      .L1X    B5,A4             ; |88| 
|| [ B0]   MVKH    .S2     RL15,B3           ; |88| 

   [!B0]   LDBU    .D2T2   *+DP(_output_ready),B0 ; |93| 
|| [ B0]   EXT     .S2     B4,16,16,B4       ; |88| 

           NOP             1
   [!B1]   B       .S1     L8                ; |96| 
           ; BRANCHCC OCCURS {L9}            ; |86| 
DW$L$_main$7$E:
;** --------------------------------------------------------------------------*
DW$L$_main$8$B:
;** 88	-----------------------    sig_error = process_sample((short)v$3, (short)v$2);
;** 89	-----------------------    input_ready = 0u;
;** 89	-----------------------    v$2 = (int)in_right;
;** 89	-----------------------    v$3 = (int)in_left;
           NOP             1
RL15:      ; CALL OCCURS {_process_sample}   ; |88| 
DW$L$_main$8$E:
;** --------------------------------------------------------------------------*
DW$L$_main$9$B:

           STH     .D2T1   A4,*+DP(_sig_error) ; |88| 
||         ZERO    .L2     B6                ; |89| 

           STB     .D2T2   B6,*+DP(_input_ready) ; |89| 
           LDBU    .D2T2   *+DP(_output_ready),B0 ; |93| 
           LDH     .D2T2   *+DP(_sig_error),B6 ; |95| 
           LDH     .D2T2   *+DP(_in_left),B5 ; |89| 

           B       .S1     L8                ; |96| 
||         ZERO    .L2     B7                ; |96| 
||         LDH     .D2T2   *+DP(_in_right),B4 ; |89| 

DW$L$_main$9$E:
;** --------------------------------------------------------------------------*
L9:    
DW$L$_main$10$B:
;**	-----------------------g8:
;** 93	-----------------------    if ( !output_ready ) goto g6;
;** 94	-----------------------    out_left = v$3;
;** 95	-----------------------    out_right = sig_error;
;** 96	-----------------------    output_ready = 0u;
;** 96	-----------------------    goto g5;
           NOP             2
   [ B0]   STH     .D2T2   B6,*+DP(_out_right) ; |95| 
   [ B0]   STB     .D2T2   B7,*+DP(_output_ready) ; |96| 
	.dwpsn	"H:\SPH\firmware\lab3\main.c",98,0
   [ B0]   STH     .D2T2   B5,*+DP(_out_left) ; |94| 
           ; BRANCH OCCURS {L8}              ; |96| 
DW$L$_main$10$E:

DW$59	.dwtag  DW_TAG_loop
	.dwattr DW$59, DW_AT_name("H:\SPH\firmware\lab3\Configuration1cfg_c.asm:L8:1:1352093390")
	.dwattr DW$59, DW_AT_begin_file("H:\SPH\firmware\lab3\main.c")
	.dwattr DW$59, DW_AT_begin_line(0x55)
	.dwattr DW$59, DW_AT_end_line(0x62)
DW$60	.dwtag  DW_TAG_loop_range
	.dwattr DW$60, DW_AT_low_pc(DW$L$_main$7$B)
	.dwattr DW$60, DW_AT_high_pc(DW$L$_main$7$E)
DW$61	.dwtag  DW_TAG_loop_range
	.dwattr DW$61, DW_AT_low_pc(DW$L$_main$8$B)
	.dwattr DW$61, DW_AT_high_pc(DW$L$_main$8$E)
DW$62	.dwtag  DW_TAG_loop_range
	.dwattr DW$62, DW_AT_low_pc(DW$L$_main$9$B)
	.dwattr DW$62, DW_AT_high_pc(DW$L$_main$9$E)
DW$63	.dwtag  DW_TAG_loop_range
	.dwattr DW$63, DW_AT_low_pc(DW$L$_main$10$B)
	.dwattr DW$63, DW_AT_high_pc(DW$L$_main$10$E)
	.dwendtag DW$59


DW$64	.dwtag  DW_TAG_loop
	.dwattr DW$64, DW_AT_name("H:\SPH\firmware\lab3\Configuration1cfg_c.asm:L7:1:1352093390")
	.dwattr DW$64, DW_AT_begin_file("H:\SPH\firmware\lab3\main.c")
	.dwattr DW$64, DW_AT_begin_line(0x51)
	.dwattr DW$64, DW_AT_end_line(0x53)
DW$65	.dwtag  DW_TAG_loop_range
	.dwattr DW$65, DW_AT_low_pc(DW$L$_main$5$B)
	.dwattr DW$65, DW_AT_high_pc(DW$L$_main$5$E)
DW$66	.dwtag  DW_TAG_loop_range
	.dwattr DW$66, DW_AT_low_pc(DW$L$_main$6$B)
	.dwattr DW$66, DW_AT_high_pc(DW$L$_main$6$E)
	.dwendtag DW$64

	.dwattr DW$58, DW_AT_end_file("H:\SPH\firmware\lab3\main.c")
	.dwattr DW$58, DW_AT_end_line(0x6a)
	.dwattr DW$58, DW_AT_end_column(0x01)
	.dwendtag DW$58

	.sect	".text"
	.global	_convolve_c

DW$67	.dwtag  DW_TAG_subprogram, DW_AT_name("convolve_c"), DW_AT_symbol_name("_convolve_c")
	.dwattr DW$67, DW_AT_low_pc(_convolve_c)
	.dwattr DW$67, DW_AT_high_pc(0x00)
	.dwattr DW$67, DW_AT_begin_file("H:\SPH\firmware\lab3\main.c")
	.dwattr DW$67, DW_AT_begin_line(0xec)
	.dwattr DW$67, DW_AT_begin_column(0x05)
	.dwattr DW$67, DW_AT_frame_base[DW_OP_breg31 32]
	.dwattr DW$67, DW_AT_skeletal(0x01)
	.dwpsn	"H:\SPH\firmware\lab3\main.c",236,75

;******************************************************************************
;* FUNCTION NAME: _convolve_c                                                 *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,B0,*
;*                           B1,B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,SP            *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,B0,*
;*                           B1,B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,SP            *
;*   Local Frame Size  : 0 Args + 0 Auto + 28 Save = 28 byte                  *
;******************************************************************************
_convolve_c:
;** --------------------------------------------------------------------------*
DW$68	.dwtag  DW_TAG_formal_parameter, DW_AT_name("x"), DW_AT_symbol_name("_x")
	.dwattr DW$68, DW_AT_type(*DW$T$52)
	.dwattr DW$68, DW_AT_location[DW_OP_reg4]
DW$69	.dwtag  DW_TAG_formal_parameter, DW_AT_name("w"), DW_AT_symbol_name("_w")
	.dwattr DW$69, DW_AT_type(*DW$T$52)
	.dwattr DW$69, DW_AT_location[DW_OP_reg20]
DW$70	.dwtag  DW_TAG_formal_parameter, DW_AT_name("x_idx"), DW_AT_symbol_name("_x_idx")
	.dwattr DW$70, DW_AT_type(*DW$T$10)
	.dwattr DW$70, DW_AT_location[DW_OP_reg6]
DW$71	.dwtag  DW_TAG_formal_parameter, DW_AT_name("w_length"), DW_AT_symbol_name("_w_length")
	.dwattr DW$71, DW_AT_type(*DW$T$10)
	.dwattr DW$71, DW_AT_location[DW_OP_reg22]
;** 236	-----------------------    x = x;
;** 236	-----------------------    w = w;
;** 236	-----------------------    x_idx = x_idx;
;**  	-----------------------    K$13 = 63;
;**  	-----------------------    U$16 = w;
;** 244	-----------------------    L$1 = w_length;
;** 238	-----------------------    result = 0;
;**  	-----------------------    #pragma MUST_ITERATE(51, 4294967295, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
           STW     .D2T1   A14,*SP--(32)     ; |236| 
           STW     .D2T1   A12,*+SP(16)      ; |236| 
           STW     .D2T1   A13,*+SP(20)      ; |236| 
           STW     .D2T2   B10,*+SP(24)      ; |236| 

           STW     .D2T2   B11,*+SP(28)      ; |236| 
||         MV      .L1     A6,A12            ; |236| 

           STW     .D2T1   A11,*+SP(12)      ; |236| 
||         CMPLT   .L2X    A12,0,B0          ; |244| 
||         MVK     .S1     0x3f,A14

   [ B0]   MV      .L1     A14,A12           ; |244| 
||         MV      .S1     A4,A13            ; |236| 
||         STW     .D2T1   A10,*+SP(8)       ; |236| 

           LDW     .D1T1   *+A13[A12],A3     ; |245| 
||         MV      .L1X    B4,A10            ; |236| 

           CALL    .S1     __mpyll           ; |245| 
||         LDW     .D1T1   *A10++,A4         ; |245| 

	.dwpsn	"H:\SPH\firmware\lab3\main.c",242,0

           MV      .L1X    B6,A11            ; |236| 
||         MVKL    .S2     RL16,B3           ; |245| 
||         ZERO    .L2     B10               ; |238| 
||         MV      .D2     B3,B11            ; |236| 

;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*----------------------------------------------------------------------------*
L10:    
DW$L$_convolve_c$2$B:
;**	-----------------------g2:
;** 244	-----------------------    if ( x_idx >= 0 ) goto g4;
;** 244	-----------------------    x_idx = K$13;
;**	-----------------------g4:
;** 245	-----------------------    result += (int)((long long)*U$16++*(long long)x[x_idx]>>31);
;** 246	-----------------------    --x_idx;
;** 242	-----------------------    if ( --L$1 ) goto g2;
;** 249	-----------------------    return result;
           MVKH    .S2     RL16,B3           ; |245| 
           NOP             1
           MV      .L2X    A3,B4             ; |245| 

           SHR     .S1     A4,31,A5          ; |245| 
||         SHR     .S2X    A3,31,B5          ; |245| 

RL16:      ; CALL OCCURS {__mpyll}           ; |245| 
DW$L$_convolve_c$2$E:
;** --------------------------------------------------------------------------*
DW$L$_convolve_c$3$B:

           SUB     .L1     A11,1,A1          ; |242| 
||         SUB     .D1     A12,1,A12         ; |246| 
||         SHL     .S2X    A5,0x1,B4         ; |245| 
||         SHRU    .S1     A4,0x1f,A3        ; |245| 

   [ A1]   B       .S1     L10               ; |242| 
||         CMPLT   .L2X    A12,0,B0          ; |244| 
|| [ A1]   MVKL    .S2     RL16,B3           ; |245| 
||         SUB     .L1     A11,1,A11         ; |242| 
|| [!A1]   MV      .D2     B11,B3            ; |250| 
|| [ A1]   LDW     .D1T1   *A10++,A4         ; |245| 

   [ B0]   MV      .L1     A14,A12           ; |244| 
||         OR      .L2X    B4,A3,B4          ; |245| 
|| [!A1]   LDDW    .D2T1   *+SP(16),A13:A12  ; |250| 

   [!A1]   LDDW    .D2T1   *+SP(8),A11:A10   ; |250| 
||         ADD     .L2     B4,B10,B10        ; |245| 

   [!A1]   MV      .L1X    B10,A4            ; |249| 
|| [ A1]   LDW     .D1T1   *+A13[A12],A3     ; |245| 
|| [!A1]   LDDW    .D2T2   *+SP(24),B11:B10  ; |250| 
|| [!A1]   RET     .S2     B3                ; |250| 

   [ A1]   CALL    .S1     __mpyll           ; |245| 
|| [!A1]   LDW     .D2T1   *++SP(32),A14     ; |250| 

	.dwpsn	"H:\SPH\firmware\lab3\main.c",247,0
           NOP             1
           ; BRANCHCC OCCURS {L10}           ; |242| 
DW$L$_convolve_c$3$E:
;** --------------------------------------------------------------------------*
	.dwpsn	"H:\SPH\firmware\lab3\main.c",250,1
           NOP             3
           ; BRANCH OCCURS {B3}              ; |250| 

DW$72	.dwtag  DW_TAG_loop
	.dwattr DW$72, DW_AT_name("H:\SPH\firmware\lab3\Configuration1cfg_c.asm:L10:1:1352093390")
	.dwattr DW$72, DW_AT_begin_file("H:\SPH\firmware\lab3\main.c")
	.dwattr DW$72, DW_AT_begin_line(0xf2)
	.dwattr DW$72, DW_AT_end_line(0xf7)
DW$73	.dwtag  DW_TAG_loop_range
	.dwattr DW$73, DW_AT_low_pc(DW$L$_convolve_c$2$B)
	.dwattr DW$73, DW_AT_high_pc(DW$L$_convolve_c$2$E)
DW$74	.dwtag  DW_TAG_loop_range
	.dwattr DW$74, DW_AT_low_pc(DW$L$_convolve_c$3$B)
	.dwattr DW$74, DW_AT_high_pc(DW$L$_convolve_c$3$E)
	.dwendtag DW$72

	.dwattr DW$67, DW_AT_end_file("H:\SPH\firmware\lab3\main.c")
	.dwattr DW$67, DW_AT_end_line(0xfa)
	.dwattr DW$67, DW_AT_end_column(0x01)
	.dwendtag DW$67

	.sect	".text:CSL_cfgInit"
	.global	_CSL_cfgInit

DW$75	.dwtag  DW_TAG_subprogram, DW_AT_name("CSL_cfgInit"), DW_AT_symbol_name("_CSL_cfgInit")
	.dwattr DW$75, DW_AT_low_pc(_CSL_cfgInit)
	.dwattr DW$75, DW_AT_high_pc(0x00)
	.dwattr DW$75, DW_AT_begin_file("H:\SPH\firmware\lab3\Configuration1cfg_c.c")
	.dwattr DW$75, DW_AT_begin_line(0x1e)
	.dwattr DW$75, DW_AT_begin_column(0x06)
	.dwattr DW$75, DW_AT_frame_base[DW_OP_breg31 0]
	.dwattr DW$75, DW_AT_skeletal(0x01)
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
	.dwattr DW$75, DW_AT_end_file("H:\SPH\firmware\lab3\Configuration1cfg_c.c")
	.dwattr DW$75, DW_AT_end_line(0x20)
	.dwattr DW$75, DW_AT_end_column(0x01)
	.dwendtag DW$75

;; Inlined function references:
;; [  1] IRQ_enable
;; [  2] IRQ_globalEnable
;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************
	.global	_DSK6713_init
	.global	_DSK6713_AIC23_openCodec
	.global	_DSK6713_AIC23_write
	.global	_DSK6713_AIC23_read
	.global	_DSK6713_AIC23_setFreq
	.global	_convolve_as_func
	.global	__IRQ_eventTable
	.global	__mpyll

;******************************************************************************
;* TYPE INFORMATION                                                           *
;******************************************************************************

DW$T$21	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$21, DW_AT_language(DW_LANG_C)

DW$T$24	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$24, DW_AT_language(DW_LANG_C)
DW$76	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$23)
	.dwendtag DW$T$24


DW$T$26	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$26, DW_AT_language(DW_LANG_C)
DW$77	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$25)
	.dwendtag DW$T$26


DW$T$27	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$27, DW_AT_language(DW_LANG_C)
DW$78	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$25)
DW$79	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$23)
	.dwendtag DW$T$27


DW$T$29	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$29, DW_AT_language(DW_LANG_C)
DW$T$32	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$32, DW_AT_type(*DW$T$31)
DW$T$34	.dwtag  DW_TAG_typedef, DW_AT_name("Int16"), DW_AT_type(*DW$T$8)
	.dwattr DW$T$34, DW_AT_language(DW_LANG_C)

DW$T$35	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$34)
	.dwattr DW$T$35, DW_AT_language(DW_LANG_C)
DW$80	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$25)
DW$81	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$23)
	.dwendtag DW$T$35


DW$T$37	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$34)
	.dwattr DW$T$37, DW_AT_language(DW_LANG_C)
DW$82	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$25)
DW$83	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$36)
	.dwendtag DW$T$37


DW$T$38	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$34)
	.dwattr DW$T$38, DW_AT_language(DW_LANG_C)
DW$84	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$34)
DW$85	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$34)
	.dwendtag DW$T$38

DW$T$10	.dwtag  DW_TAG_base_type, DW_AT_name("int")
	.dwattr DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr DW$T$10, DW_AT_byte_size(0x04)
DW$T$25	.dwtag  DW_TAG_typedef, DW_AT_name("DSK6713_AIC23_CodecHandle"), DW_AT_type(*DW$T$10)
	.dwattr DW$T$25, DW_AT_language(DW_LANG_C)

DW$T$49	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$25)
	.dwattr DW$T$49, DW_AT_language(DW_LANG_C)
DW$86	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$87	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$48)
	.dwendtag DW$T$49


DW$T$50	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$50, DW_AT_language(DW_LANG_C)
DW$T$51	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$51, DW_AT_address_class(0x20)
DW$T$52	.dwtag  DW_TAG_restrict_type
	.dwattr DW$T$52, DW_AT_type(*DW$T$51)

DW$T$54	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$54, DW_AT_language(DW_LANG_C)
DW$88	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$51)
DW$89	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$51)
DW$90	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$91	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$54


DW$T$56	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$56, DW_AT_language(DW_LANG_C)
DW$92	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$93	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$56


DW$T$57	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$57, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$57, DW_AT_byte_size(0xcc)
DW$94	.dwtag  DW_TAG_subrange_type
	.dwattr DW$94, DW_AT_upper_bound(0x32)
	.dwendtag DW$T$57


DW$T$58	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$58, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$58, DW_AT_byte_size(0x100)
DW$95	.dwtag  DW_TAG_subrange_type
	.dwattr DW$95, DW_AT_upper_bound(0x3f)
	.dwendtag DW$T$58

DW$T$23	.dwtag  DW_TAG_typedef, DW_AT_name("Uint32"), DW_AT_type(*DW$T$11)
	.dwattr DW$T$23, DW_AT_language(DW_LANG_C)
DW$T$36	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$23)
	.dwattr DW$T$36, DW_AT_address_class(0x20)

DW$T$63	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$23)
	.dwattr DW$T$63, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$63, DW_AT_byte_size(0x84)
DW$96	.dwtag  DW_TAG_subrange_type
	.dwattr DW$96, DW_AT_upper_bound(0x20)
	.dwendtag DW$T$63

DW$T$64	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$64, DW_AT_type(*DW$T$11)
DW$T$65	.dwtag  DW_TAG_typedef, DW_AT_name("clock_t"), DW_AT_type(*DW$T$11)
	.dwattr DW$T$65, DW_AT_language(DW_LANG_C)
DW$T$47	.dwtag  DW_TAG_typedef, DW_AT_name("DSK6713_AIC23_Config"), DW_AT_type(*DW$T$20)
	.dwattr DW$T$47, DW_AT_language(DW_LANG_C)
DW$T$48	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$47)
	.dwattr DW$T$48, DW_AT_address_class(0x20)
DW$T$31	.dwtag  DW_TAG_typedef, DW_AT_name("Uint8"), DW_AT_type(*DW$T$6)
	.dwattr DW$T$31, DW_AT_language(DW_LANG_C)
DW$T$8	.dwtag  DW_TAG_base_type, DW_AT_name("short")
	.dwattr DW$T$8, DW_AT_encoding(DW_ATE_signed)
	.dwattr DW$T$8, DW_AT_byte_size(0x02)
DW$T$11	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned int")
	.dwattr DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$11, DW_AT_byte_size(0x04)

DW$T$20	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$20, DW_AT_name("DSK6713_AIC23_Config")
	.dwattr DW$T$20, DW_AT_byte_size(0x28)
DW$97	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$97, DW_AT_name("regs"), DW_AT_symbol_name("_regs")
	.dwattr DW$97, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$97, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$20

DW$T$6	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned char")
	.dwattr DW$T$6, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr DW$T$6, DW_AT_byte_size(0x01)

DW$T$19	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$19, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$19, DW_AT_byte_size(0x28)
DW$98	.dwtag  DW_TAG_subrange_type
	.dwattr DW$98, DW_AT_upper_bound(0x09)
	.dwendtag DW$T$19


	.dwattr DW$75, DW_AT_external(0x01)
	.dwattr DW$67, DW_AT_external(0x01)
	.dwattr DW$67, DW_AT_type(*DW$T$10)
	.dwattr DW$51, DW_AT_external(0x01)
	.dwattr DW$58, DW_AT_external(0x01)
	.dwattr DW$58, DW_AT_type(*DW$T$10)
	.dwattr DW$48, DW_AT_external(0x01)
	.dwattr DW$48, DW_AT_type(*DW$T$10)
	.dwattr DW$55, DW_AT_external(0x01)
	.dwattr DW$55, DW_AT_type(*DW$T$34)
	.dwattr DW$47, DW_AT_external(0x01)
	.dwattr DW$44, DW_AT_external(0x01)
	.dwattr DW$43, DW_AT_external(0x01)
	.dwattr DW$CU, DW_AT_language(DW_LANG_C)

;***************************************************************
;* DWARF REGISTER MAP                                          *
;***************************************************************

DW$99	.dwtag  DW_TAG_assign_register, DW_AT_name("A0")
	.dwattr DW$99, DW_AT_location[DW_OP_reg0]
DW$100	.dwtag  DW_TAG_assign_register, DW_AT_name("A1")
	.dwattr DW$100, DW_AT_location[DW_OP_reg1]
DW$101	.dwtag  DW_TAG_assign_register, DW_AT_name("A2")
	.dwattr DW$101, DW_AT_location[DW_OP_reg2]
DW$102	.dwtag  DW_TAG_assign_register, DW_AT_name("A3")
	.dwattr DW$102, DW_AT_location[DW_OP_reg3]
DW$103	.dwtag  DW_TAG_assign_register, DW_AT_name("A4")
	.dwattr DW$103, DW_AT_location[DW_OP_reg4]
DW$104	.dwtag  DW_TAG_assign_register, DW_AT_name("A5")
	.dwattr DW$104, DW_AT_location[DW_OP_reg5]
DW$105	.dwtag  DW_TAG_assign_register, DW_AT_name("A6")
	.dwattr DW$105, DW_AT_location[DW_OP_reg6]
DW$106	.dwtag  DW_TAG_assign_register, DW_AT_name("A7")
	.dwattr DW$106, DW_AT_location[DW_OP_reg7]
DW$107	.dwtag  DW_TAG_assign_register, DW_AT_name("A8")
	.dwattr DW$107, DW_AT_location[DW_OP_reg8]
DW$108	.dwtag  DW_TAG_assign_register, DW_AT_name("A9")
	.dwattr DW$108, DW_AT_location[DW_OP_reg9]
DW$109	.dwtag  DW_TAG_assign_register, DW_AT_name("A10")
	.dwattr DW$109, DW_AT_location[DW_OP_reg10]
DW$110	.dwtag  DW_TAG_assign_register, DW_AT_name("A11")
	.dwattr DW$110, DW_AT_location[DW_OP_reg11]
DW$111	.dwtag  DW_TAG_assign_register, DW_AT_name("A12")
	.dwattr DW$111, DW_AT_location[DW_OP_reg12]
DW$112	.dwtag  DW_TAG_assign_register, DW_AT_name("A13")
	.dwattr DW$112, DW_AT_location[DW_OP_reg13]
DW$113	.dwtag  DW_TAG_assign_register, DW_AT_name("A14")
	.dwattr DW$113, DW_AT_location[DW_OP_reg14]
DW$114	.dwtag  DW_TAG_assign_register, DW_AT_name("A15")
	.dwattr DW$114, DW_AT_location[DW_OP_reg15]
DW$115	.dwtag  DW_TAG_assign_register, DW_AT_name("B0")
	.dwattr DW$115, DW_AT_location[DW_OP_reg16]
DW$116	.dwtag  DW_TAG_assign_register, DW_AT_name("B1")
	.dwattr DW$116, DW_AT_location[DW_OP_reg17]
DW$117	.dwtag  DW_TAG_assign_register, DW_AT_name("B2")
	.dwattr DW$117, DW_AT_location[DW_OP_reg18]
DW$118	.dwtag  DW_TAG_assign_register, DW_AT_name("B3")
	.dwattr DW$118, DW_AT_location[DW_OP_reg19]
DW$119	.dwtag  DW_TAG_assign_register, DW_AT_name("B4")
	.dwattr DW$119, DW_AT_location[DW_OP_reg20]
DW$120	.dwtag  DW_TAG_assign_register, DW_AT_name("B5")
	.dwattr DW$120, DW_AT_location[DW_OP_reg21]
DW$121	.dwtag  DW_TAG_assign_register, DW_AT_name("B6")
	.dwattr DW$121, DW_AT_location[DW_OP_reg22]
DW$122	.dwtag  DW_TAG_assign_register, DW_AT_name("B7")
	.dwattr DW$122, DW_AT_location[DW_OP_reg23]
DW$123	.dwtag  DW_TAG_assign_register, DW_AT_name("B8")
	.dwattr DW$123, DW_AT_location[DW_OP_reg24]
DW$124	.dwtag  DW_TAG_assign_register, DW_AT_name("B9")
	.dwattr DW$124, DW_AT_location[DW_OP_reg25]
DW$125	.dwtag  DW_TAG_assign_register, DW_AT_name("B10")
	.dwattr DW$125, DW_AT_location[DW_OP_reg26]
DW$126	.dwtag  DW_TAG_assign_register, DW_AT_name("B11")
	.dwattr DW$126, DW_AT_location[DW_OP_reg27]
DW$127	.dwtag  DW_TAG_assign_register, DW_AT_name("B12")
	.dwattr DW$127, DW_AT_location[DW_OP_reg28]
DW$128	.dwtag  DW_TAG_assign_register, DW_AT_name("B13")
	.dwattr DW$128, DW_AT_location[DW_OP_reg29]
DW$129	.dwtag  DW_TAG_assign_register, DW_AT_name("DP")
	.dwattr DW$129, DW_AT_location[DW_OP_reg30]
DW$130	.dwtag  DW_TAG_assign_register, DW_AT_name("SP")
	.dwattr DW$130, DW_AT_location[DW_OP_reg31]
DW$131	.dwtag  DW_TAG_assign_register, DW_AT_name("FP")
	.dwattr DW$131, DW_AT_location[DW_OP_regx 0x20]
DW$132	.dwtag  DW_TAG_assign_register, DW_AT_name("PC")
	.dwattr DW$132, DW_AT_location[DW_OP_regx 0x21]
DW$133	.dwtag  DW_TAG_assign_register, DW_AT_name("IRP")
	.dwattr DW$133, DW_AT_location[DW_OP_regx 0x22]
DW$134	.dwtag  DW_TAG_assign_register, DW_AT_name("IFR")
	.dwattr DW$134, DW_AT_location[DW_OP_regx 0x23]
DW$135	.dwtag  DW_TAG_assign_register, DW_AT_name("NRP")
	.dwattr DW$135, DW_AT_location[DW_OP_regx 0x24]
DW$136	.dwtag  DW_TAG_assign_register, DW_AT_name("A16")
	.dwattr DW$136, DW_AT_location[DW_OP_regx 0x25]
DW$137	.dwtag  DW_TAG_assign_register, DW_AT_name("A17")
	.dwattr DW$137, DW_AT_location[DW_OP_regx 0x26]
DW$138	.dwtag  DW_TAG_assign_register, DW_AT_name("A18")
	.dwattr DW$138, DW_AT_location[DW_OP_regx 0x27]
DW$139	.dwtag  DW_TAG_assign_register, DW_AT_name("A19")
	.dwattr DW$139, DW_AT_location[DW_OP_regx 0x28]
DW$140	.dwtag  DW_TAG_assign_register, DW_AT_name("A20")
	.dwattr DW$140, DW_AT_location[DW_OP_regx 0x29]
DW$141	.dwtag  DW_TAG_assign_register, DW_AT_name("A21")
	.dwattr DW$141, DW_AT_location[DW_OP_regx 0x2a]
DW$142	.dwtag  DW_TAG_assign_register, DW_AT_name("A22")
	.dwattr DW$142, DW_AT_location[DW_OP_regx 0x2b]
DW$143	.dwtag  DW_TAG_assign_register, DW_AT_name("A23")
	.dwattr DW$143, DW_AT_location[DW_OP_regx 0x2c]
DW$144	.dwtag  DW_TAG_assign_register, DW_AT_name("A24")
	.dwattr DW$144, DW_AT_location[DW_OP_regx 0x2d]
DW$145	.dwtag  DW_TAG_assign_register, DW_AT_name("A25")
	.dwattr DW$145, DW_AT_location[DW_OP_regx 0x2e]
DW$146	.dwtag  DW_TAG_assign_register, DW_AT_name("A26")
	.dwattr DW$146, DW_AT_location[DW_OP_regx 0x2f]
DW$147	.dwtag  DW_TAG_assign_register, DW_AT_name("A27")
	.dwattr DW$147, DW_AT_location[DW_OP_regx 0x30]
DW$148	.dwtag  DW_TAG_assign_register, DW_AT_name("A28")
	.dwattr DW$148, DW_AT_location[DW_OP_regx 0x31]
DW$149	.dwtag  DW_TAG_assign_register, DW_AT_name("A29")
	.dwattr DW$149, DW_AT_location[DW_OP_regx 0x32]
DW$150	.dwtag  DW_TAG_assign_register, DW_AT_name("A30")
	.dwattr DW$150, DW_AT_location[DW_OP_regx 0x33]
DW$151	.dwtag  DW_TAG_assign_register, DW_AT_name("A31")
	.dwattr DW$151, DW_AT_location[DW_OP_regx 0x34]
DW$152	.dwtag  DW_TAG_assign_register, DW_AT_name("B16")
	.dwattr DW$152, DW_AT_location[DW_OP_regx 0x35]
DW$153	.dwtag  DW_TAG_assign_register, DW_AT_name("B17")
	.dwattr DW$153, DW_AT_location[DW_OP_regx 0x36]
DW$154	.dwtag  DW_TAG_assign_register, DW_AT_name("B18")
	.dwattr DW$154, DW_AT_location[DW_OP_regx 0x37]
DW$155	.dwtag  DW_TAG_assign_register, DW_AT_name("B19")
	.dwattr DW$155, DW_AT_location[DW_OP_regx 0x38]
DW$156	.dwtag  DW_TAG_assign_register, DW_AT_name("B20")
	.dwattr DW$156, DW_AT_location[DW_OP_regx 0x39]
DW$157	.dwtag  DW_TAG_assign_register, DW_AT_name("B21")
	.dwattr DW$157, DW_AT_location[DW_OP_regx 0x3a]
DW$158	.dwtag  DW_TAG_assign_register, DW_AT_name("B22")
	.dwattr DW$158, DW_AT_location[DW_OP_regx 0x3b]
DW$159	.dwtag  DW_TAG_assign_register, DW_AT_name("B23")
	.dwattr DW$159, DW_AT_location[DW_OP_regx 0x3c]
DW$160	.dwtag  DW_TAG_assign_register, DW_AT_name("B24")
	.dwattr DW$160, DW_AT_location[DW_OP_regx 0x3d]
DW$161	.dwtag  DW_TAG_assign_register, DW_AT_name("B25")
	.dwattr DW$161, DW_AT_location[DW_OP_regx 0x3e]
DW$162	.dwtag  DW_TAG_assign_register, DW_AT_name("B26")
	.dwattr DW$162, DW_AT_location[DW_OP_regx 0x3f]
DW$163	.dwtag  DW_TAG_assign_register, DW_AT_name("B27")
	.dwattr DW$163, DW_AT_location[DW_OP_regx 0x40]
DW$164	.dwtag  DW_TAG_assign_register, DW_AT_name("B28")
	.dwattr DW$164, DW_AT_location[DW_OP_regx 0x41]
DW$165	.dwtag  DW_TAG_assign_register, DW_AT_name("B29")
	.dwattr DW$165, DW_AT_location[DW_OP_regx 0x42]
DW$166	.dwtag  DW_TAG_assign_register, DW_AT_name("B30")
	.dwattr DW$166, DW_AT_location[DW_OP_regx 0x43]
DW$167	.dwtag  DW_TAG_assign_register, DW_AT_name("B31")
	.dwattr DW$167, DW_AT_location[DW_OP_regx 0x44]
DW$168	.dwtag  DW_TAG_assign_register, DW_AT_name("AMR")
	.dwattr DW$168, DW_AT_location[DW_OP_regx 0x45]
DW$169	.dwtag  DW_TAG_assign_register, DW_AT_name("CSR")
	.dwattr DW$169, DW_AT_location[DW_OP_regx 0x46]
DW$170	.dwtag  DW_TAG_assign_register, DW_AT_name("ISR")
	.dwattr DW$170, DW_AT_location[DW_OP_regx 0x47]
DW$171	.dwtag  DW_TAG_assign_register, DW_AT_name("ICR")
	.dwattr DW$171, DW_AT_location[DW_OP_regx 0x48]
DW$172	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$172, DW_AT_location[DW_OP_regx 0x49]
DW$173	.dwtag  DW_TAG_assign_register, DW_AT_name("ISTP")
	.dwattr DW$173, DW_AT_location[DW_OP_regx 0x4a]
DW$174	.dwtag  DW_TAG_assign_register, DW_AT_name("IN")
	.dwattr DW$174, DW_AT_location[DW_OP_regx 0x4b]
DW$175	.dwtag  DW_TAG_assign_register, DW_AT_name("OUT")
	.dwattr DW$175, DW_AT_location[DW_OP_regx 0x4c]
DW$176	.dwtag  DW_TAG_assign_register, DW_AT_name("ACR")
	.dwattr DW$176, DW_AT_location[DW_OP_regx 0x4d]
DW$177	.dwtag  DW_TAG_assign_register, DW_AT_name("ADR")
	.dwattr DW$177, DW_AT_location[DW_OP_regx 0x4e]
DW$178	.dwtag  DW_TAG_assign_register, DW_AT_name("FADCR")
	.dwattr DW$178, DW_AT_location[DW_OP_regx 0x4f]
DW$179	.dwtag  DW_TAG_assign_register, DW_AT_name("FAUCR")
	.dwattr DW$179, DW_AT_location[DW_OP_regx 0x50]
DW$180	.dwtag  DW_TAG_assign_register, DW_AT_name("FMCR")
	.dwattr DW$180, DW_AT_location[DW_OP_regx 0x51]
DW$181	.dwtag  DW_TAG_assign_register, DW_AT_name("GFPGFR")
	.dwattr DW$181, DW_AT_location[DW_OP_regx 0x52]
DW$182	.dwtag  DW_TAG_assign_register, DW_AT_name("DIER")
	.dwattr DW$182, DW_AT_location[DW_OP_regx 0x53]
DW$183	.dwtag  DW_TAG_assign_register, DW_AT_name("REP")
	.dwattr DW$183, DW_AT_location[DW_OP_regx 0x54]
DW$184	.dwtag  DW_TAG_assign_register, DW_AT_name("TSCL")
	.dwattr DW$184, DW_AT_location[DW_OP_regx 0x55]
DW$185	.dwtag  DW_TAG_assign_register, DW_AT_name("TSCH")
	.dwattr DW$185, DW_AT_location[DW_OP_regx 0x56]
DW$186	.dwtag  DW_TAG_assign_register, DW_AT_name("ARP")
	.dwattr DW$186, DW_AT_location[DW_OP_regx 0x57]
DW$187	.dwtag  DW_TAG_assign_register, DW_AT_name("ILC")
	.dwattr DW$187, DW_AT_location[DW_OP_regx 0x58]
DW$188	.dwtag  DW_TAG_assign_register, DW_AT_name("RILC")
	.dwattr DW$188, DW_AT_location[DW_OP_regx 0x59]
DW$189	.dwtag  DW_TAG_assign_register, DW_AT_name("DNUM")
	.dwattr DW$189, DW_AT_location[DW_OP_regx 0x5a]
DW$190	.dwtag  DW_TAG_assign_register, DW_AT_name("SSR")
	.dwattr DW$190, DW_AT_location[DW_OP_regx 0x5b]
DW$191	.dwtag  DW_TAG_assign_register, DW_AT_name("GPLYA")
	.dwattr DW$191, DW_AT_location[DW_OP_regx 0x5c]
DW$192	.dwtag  DW_TAG_assign_register, DW_AT_name("GPLYB")
	.dwattr DW$192, DW_AT_location[DW_OP_regx 0x5d]
DW$193	.dwtag  DW_TAG_assign_register, DW_AT_name("TSR")
	.dwattr DW$193, DW_AT_location[DW_OP_regx 0x5e]
DW$194	.dwtag  DW_TAG_assign_register, DW_AT_name("ITSR")
	.dwattr DW$194, DW_AT_location[DW_OP_regx 0x5f]
DW$195	.dwtag  DW_TAG_assign_register, DW_AT_name("NTSR")
	.dwattr DW$195, DW_AT_location[DW_OP_regx 0x60]
DW$196	.dwtag  DW_TAG_assign_register, DW_AT_name("EFR")
	.dwattr DW$196, DW_AT_location[DW_OP_regx 0x61]
DW$197	.dwtag  DW_TAG_assign_register, DW_AT_name("ECR")
	.dwattr DW$197, DW_AT_location[DW_OP_regx 0x62]
DW$198	.dwtag  DW_TAG_assign_register, DW_AT_name("IERR")
	.dwattr DW$198, DW_AT_location[DW_OP_regx 0x63]
DW$199	.dwtag  DW_TAG_assign_register, DW_AT_name("DMSG")
	.dwattr DW$199, DW_AT_location[DW_OP_regx 0x64]
DW$200	.dwtag  DW_TAG_assign_register, DW_AT_name("CMSG")
	.dwattr DW$200, DW_AT_location[DW_OP_regx 0x65]
DW$201	.dwtag  DW_TAG_assign_register, DW_AT_name("DT_DMA_ADDR")
	.dwattr DW$201, DW_AT_location[DW_OP_regx 0x66]
DW$202	.dwtag  DW_TAG_assign_register, DW_AT_name("DT_DMA_DATA")
	.dwattr DW$202, DW_AT_location[DW_OP_regx 0x67]
DW$203	.dwtag  DW_TAG_assign_register, DW_AT_name("DT_DMA_CNTL")
	.dwattr DW$203, DW_AT_location[DW_OP_regx 0x68]
DW$204	.dwtag  DW_TAG_assign_register, DW_AT_name("TCU_CNTL")
	.dwattr DW$204, DW_AT_location[DW_OP_regx 0x69]
DW$205	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_REC_CNTL")
	.dwattr DW$205, DW_AT_location[DW_OP_regx 0x6a]
DW$206	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_XMT_CNTL")
	.dwattr DW$206, DW_AT_location[DW_OP_regx 0x6b]
DW$207	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_CFG")
	.dwattr DW$207, DW_AT_location[DW_OP_regx 0x6c]
DW$208	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_RDATA")
	.dwattr DW$208, DW_AT_location[DW_OP_regx 0x6d]
DW$209	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_WDATA")
	.dwattr DW$209, DW_AT_location[DW_OP_regx 0x6e]
DW$210	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_RADDR")
	.dwattr DW$210, DW_AT_location[DW_OP_regx 0x6f]
DW$211	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_WADDR")
	.dwattr DW$211, DW_AT_location[DW_OP_regx 0x70]
DW$212	.dwtag  DW_TAG_assign_register, DW_AT_name("MFREG0")
	.dwattr DW$212, DW_AT_location[DW_OP_regx 0x71]
DW$213	.dwtag  DW_TAG_assign_register, DW_AT_name("DBG_STAT")
	.dwattr DW$213, DW_AT_location[DW_OP_regx 0x72]
DW$214	.dwtag  DW_TAG_assign_register, DW_AT_name("BRK_EN")
	.dwattr DW$214, DW_AT_location[DW_OP_regx 0x73]
DW$215	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP0_CNT")
	.dwattr DW$215, DW_AT_location[DW_OP_regx 0x74]
DW$216	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP0")
	.dwattr DW$216, DW_AT_location[DW_OP_regx 0x75]
DW$217	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP1")
	.dwattr DW$217, DW_AT_location[DW_OP_regx 0x76]
DW$218	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP2")
	.dwattr DW$218, DW_AT_location[DW_OP_regx 0x77]
DW$219	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP3")
	.dwattr DW$219, DW_AT_location[DW_OP_regx 0x78]
DW$220	.dwtag  DW_TAG_assign_register, DW_AT_name("OVERLAY")
	.dwattr DW$220, DW_AT_location[DW_OP_regx 0x79]
DW$221	.dwtag  DW_TAG_assign_register, DW_AT_name("PC_PROF")
	.dwattr DW$221, DW_AT_location[DW_OP_regx 0x7a]
DW$222	.dwtag  DW_TAG_assign_register, DW_AT_name("ATSR")
	.dwattr DW$222, DW_AT_location[DW_OP_regx 0x7b]
DW$223	.dwtag  DW_TAG_assign_register, DW_AT_name("TRR")
	.dwattr DW$223, DW_AT_location[DW_OP_regx 0x7c]
DW$224	.dwtag  DW_TAG_assign_register, DW_AT_name("TCRR")
	.dwattr DW$224, DW_AT_location[DW_OP_regx 0x7d]
DW$225	.dwtag  DW_TAG_assign_register, DW_AT_name("CIE_RETA")
	.dwattr DW$225, DW_AT_location[DW_OP_regx 0x7e]
	.dwendtag DW$CU

