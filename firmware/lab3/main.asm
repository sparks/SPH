;******************************************************************************
;* TMS320C6x C/C++ Codegen                                          PC v5.1.0 *
;* Date/Time created: Mon Oct 29 05:45:31 2012                                *
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


DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("IRQ_enable"), DW_AT_symbol_name("_IRQ_enable")
	.dwattr DW$1, DW_AT_declaration(0x01)
	.dwattr DW$1, DW_AT_external(0x01)
DW$2	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$21)
	.dwendtag DW$1


DW$3	.dwtag  DW_TAG_subprogram, DW_AT_name("IRQ_globalEnable"), DW_AT_symbol_name("_IRQ_globalEnable")
	.dwattr DW$3, DW_AT_declaration(0x01)
	.dwattr DW$3, DW_AT_external(0x01)

DW$4	.dwtag  DW_TAG_subprogram, DW_AT_name("DSK6713_init"), DW_AT_symbol_name("_DSK6713_init")
	.dwattr DW$4, DW_AT_declaration(0x01)
	.dwattr DW$4, DW_AT_external(0x01)

DW$5	.dwtag  DW_TAG_subprogram, DW_AT_name("DSK6713_AIC23_openCodec"), DW_AT_symbol_name("_DSK6713_AIC23_openCodec")
	.dwattr DW$5, DW_AT_type(*DW$T$26)
	.dwattr DW$5, DW_AT_declaration(0x01)
	.dwattr DW$5, DW_AT_external(0x01)
DW$6	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$7	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$46)
	.dwendtag DW$5


DW$8	.dwtag  DW_TAG_subprogram, DW_AT_name("DSK6713_AIC23_closeCodec"), DW_AT_symbol_name("_DSK6713_AIC23_closeCodec")
	.dwattr DW$8, DW_AT_declaration(0x01)
	.dwattr DW$8, DW_AT_external(0x01)
DW$9	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$26)
	.dwendtag DW$8


DW$10	.dwtag  DW_TAG_subprogram, DW_AT_name("DSK6713_AIC23_write"), DW_AT_symbol_name("_DSK6713_AIC23_write")
	.dwattr DW$10, DW_AT_type(*DW$T$35)
	.dwattr DW$10, DW_AT_declaration(0x01)
	.dwattr DW$10, DW_AT_external(0x01)
DW$11	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$26)
DW$12	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$21)
	.dwendtag DW$10


DW$13	.dwtag  DW_TAG_subprogram, DW_AT_name("DSK6713_AIC23_read"), DW_AT_symbol_name("_DSK6713_AIC23_read")
	.dwattr DW$13, DW_AT_type(*DW$T$35)
	.dwattr DW$13, DW_AT_declaration(0x01)
	.dwattr DW$13, DW_AT_external(0x01)
DW$14	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$26)
DW$15	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$38)
	.dwendtag DW$13


DW$16	.dwtag  DW_TAG_subprogram, DW_AT_name("DSK6713_AIC23_setFreq"), DW_AT_symbol_name("_DSK6713_AIC23_setFreq")
	.dwattr DW$16, DW_AT_declaration(0x01)
	.dwattr DW$16, DW_AT_external(0x01)
DW$17	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$26)
DW$18	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$21)
	.dwendtag DW$16


DW$19	.dwtag  DW_TAG_subprogram, DW_AT_name("convolve_as_func"), DW_AT_symbol_name("_convolve_as_func")
	.dwattr DW$19, DW_AT_type(*DW$T$10)
	.dwattr DW$19, DW_AT_declaration(0x01)
	.dwattr DW$19, DW_AT_external(0x01)
DW$20	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$51)
DW$21	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$51)
DW$22	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$23	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$19


DW$24	.dwtag  DW_TAG_subprogram, DW_AT_name("exit"), DW_AT_symbol_name("_exit")
	.dwattr DW$24, DW_AT_type(*DW$T$10)
	.dwattr DW$24, DW_AT_declaration(0x01)
	.dwattr DW$24, DW_AT_external(0x01)
	.global	_config
_config:	.usect	".far",40,4
DW$25	.dwtag  DW_TAG_variable, DW_AT_name("config"), DW_AT_symbol_name("_config")
	.dwattr DW$25, DW_AT_location[DW_OP_addr _config]
	.dwattr DW$25, DW_AT_type(*DW$T$45)
	.dwattr DW$25, DW_AT_external(0x01)
	.global	_hCodec
	.bss	_hCodec,4,4
DW$26	.dwtag  DW_TAG_variable, DW_AT_name("hCodec"), DW_AT_symbol_name("_hCodec")
	.dwattr DW$26, DW_AT_location[DW_OP_addr _hCodec]
	.dwattr DW$26, DW_AT_type(*DW$T$26)
	.dwattr DW$26, DW_AT_external(0x01)
	.global	_error
	.bss	_error,4,4
DW$27	.dwtag  DW_TAG_variable, DW_AT_name("error"), DW_AT_symbol_name("_error")
	.dwattr DW$27, DW_AT_location[DW_OP_addr _error]
	.dwattr DW$27, DW_AT_type(*DW$T$10)
	.dwattr DW$27, DW_AT_external(0x01)
	.global	_sig_error
	.bss	_sig_error,2,2
DW$28	.dwtag  DW_TAG_variable, DW_AT_name("sig_error"), DW_AT_symbol_name("_sig_error")
	.dwattr DW$28, DW_AT_location[DW_OP_addr _sig_error]
	.dwattr DW$28, DW_AT_type(*DW$T$35)
	.dwattr DW$28, DW_AT_external(0x01)
	.global	_w
_w:	.usect	".far",204,4
DW$29	.dwtag  DW_TAG_variable, DW_AT_name("w"), DW_AT_symbol_name("_w")
	.dwattr DW$29, DW_AT_location[DW_OP_addr _w]
	.dwattr DW$29, DW_AT_type(*DW$T$56)
	.dwattr DW$29, DW_AT_external(0x01)
	.global	_buffer_index
	.bss	_buffer_index,4,4
DW$30	.dwtag  DW_TAG_variable, DW_AT_name("buffer_index"), DW_AT_symbol_name("_buffer_index")
	.dwattr DW$30, DW_AT_location[DW_OP_addr _buffer_index]
	.dwattr DW$30, DW_AT_type(*DW$T$10)
	.dwattr DW$30, DW_AT_external(0x01)
	.global	_buffer
_buffer:	.usect	".far",256,256
DW$31	.dwtag  DW_TAG_variable, DW_AT_name("buffer"), DW_AT_symbol_name("_buffer")
	.dwattr DW$31, DW_AT_location[DW_OP_addr _buffer]
	.dwattr DW$31, DW_AT_type(*DW$T$57)
	.dwattr DW$31, DW_AT_external(0x01)
	.global	_in_tmp_left
	.bss	_in_tmp_left,4,4
DW$32	.dwtag  DW_TAG_variable, DW_AT_name("in_tmp_left"), DW_AT_symbol_name("_in_tmp_left")
	.dwattr DW$32, DW_AT_location[DW_OP_addr _in_tmp_left]
	.dwattr DW$32, DW_AT_type(*DW$T$21)
	.dwattr DW$32, DW_AT_external(0x01)
	.global	_in_tmp_right
	.bss	_in_tmp_right,4,4
DW$33	.dwtag  DW_TAG_variable, DW_AT_name("in_tmp_right"), DW_AT_symbol_name("_in_tmp_right")
	.dwattr DW$33, DW_AT_location[DW_OP_addr _in_tmp_right]
	.dwattr DW$33, DW_AT_type(*DW$T$21)
	.dwattr DW$33, DW_AT_external(0x01)
	.global	_in_left
	.bss	_in_left,2,2
DW$34	.dwtag  DW_TAG_variable, DW_AT_name("in_left"), DW_AT_symbol_name("_in_left")
	.dwattr DW$34, DW_AT_location[DW_OP_addr _in_left]
	.dwattr DW$34, DW_AT_type(*DW$T$35)
	.dwattr DW$34, DW_AT_external(0x01)
	.global	_in_right
	.bss	_in_right,2,2
DW$35	.dwtag  DW_TAG_variable, DW_AT_name("in_right"), DW_AT_symbol_name("_in_right")
	.dwattr DW$35, DW_AT_location[DW_OP_addr _in_right]
	.dwattr DW$35, DW_AT_type(*DW$T$35)
	.dwattr DW$35, DW_AT_external(0x01)
	.global	_out_left
	.bss	_out_left,2,2
DW$36	.dwtag  DW_TAG_variable, DW_AT_name("out_left"), DW_AT_symbol_name("_out_left")
	.dwattr DW$36, DW_AT_location[DW_OP_addr _out_left]
	.dwattr DW$36, DW_AT_type(*DW$T$35)
	.dwattr DW$36, DW_AT_external(0x01)
	.global	_out_right
	.bss	_out_right,2,2
DW$37	.dwtag  DW_TAG_variable, DW_AT_name("out_right"), DW_AT_symbol_name("_out_right")
	.dwattr DW$37, DW_AT_location[DW_OP_addr _out_right]
	.dwattr DW$37, DW_AT_type(*DW$T$35)
	.dwattr DW$37, DW_AT_external(0x01)
	.global	_input_ready
	.bss	_input_ready,1,1
DW$38	.dwtag  DW_TAG_variable, DW_AT_name("input_ready"), DW_AT_symbol_name("_input_ready")
	.dwattr DW$38, DW_AT_location[DW_OP_addr _input_ready]
	.dwattr DW$38, DW_AT_type(*DW$T$34)
	.dwattr DW$38, DW_AT_external(0x01)
	.global	_output_ready
	.bss	_output_ready,1,1
DW$39	.dwtag  DW_TAG_variable, DW_AT_name("output_ready"), DW_AT_symbol_name("_output_ready")
	.dwattr DW$39, DW_AT_location[DW_OP_addr _output_ready]
	.dwattr DW$39, DW_AT_type(*DW$T$34)
	.dwattr DW$39, DW_AT_external(0x01)
	.global	_in_channel_flag
	.bss	_in_channel_flag,1,1
DW$40	.dwtag  DW_TAG_variable, DW_AT_name("in_channel_flag"), DW_AT_symbol_name("_in_channel_flag")
	.dwattr DW$40, DW_AT_location[DW_OP_addr _in_channel_flag]
	.dwattr DW$40, DW_AT_type(*DW$T$34)
	.dwattr DW$40, DW_AT_external(0x01)
	.global	_out_channel_flag
	.bss	_out_channel_flag,1,1
DW$41	.dwtag  DW_TAG_variable, DW_AT_name("out_channel_flag"), DW_AT_symbol_name("_out_channel_flag")
	.dwattr DW$41, DW_AT_location[DW_OP_addr _out_channel_flag]
	.dwattr DW$41, DW_AT_type(*DW$T$34)
	.dwattr DW$41, DW_AT_external(0x01)
;	C:\CCStudio_v3.1\C6000\cgtools\bin\acp6x.exe --keep_unneeded_types -D_DEBUG -DCHIP_6713 -IH:/SPH/firmware/lib/dsk6713/include -IC:/CCStudio_v3.1/C6000/rtdx/include -IC:/CCStudio_v3.1/C6000/csl/include -IC:/CCStudio_v3.1/C6000/xdais/include -IC:/CCStudio_v3.1/c6000/bios/include -IC:/CCStudio_v3.1/C6000/cgtools/include --version=6700 --mem_model:code=near --mem_model:data=far_aggregates -m --i_output_file C:\Users\ssmith67\AppData\Local\Temp\TI1482 --template_info_file 
	.sect	".text"
	.global	_main

DW$42	.dwtag  DW_TAG_subprogram, DW_AT_name("main"), DW_AT_symbol_name("_main")
	.dwattr DW$42, DW_AT_low_pc(_main)
	.dwattr DW$42, DW_AT_high_pc(0x00)
	.dwattr DW$42, DW_AT_begin_file("main.c")
	.dwattr DW$42, DW_AT_begin_line(0x31)
	.dwattr DW$42, DW_AT_begin_column(0x05)
	.dwpsn	"main.c",49,12

	.dwfde DW$CIE

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
	.dwcfa	0x0e, 0
	.dwcfa	0x09, 126, 19
           STW     .D2T2   B3,*SP--(8)       ; |49| 
           NOP             2
	.dwcfa	0x0e, 8
	.dwcfa	0x80, 19, 0
	.dwpsn	"main.c",52,2
           CALL    .S1     _DSK6713_init     ; |52| 
           MVKL    .S2     RL0,B3            ; |52| 
           MVKH    .S2     RL0,B3            ; |52| 
           NOP             3
RL0:       ; CALL OCCURS {_DSK6713_init}     ; |52| 
	.dwpsn	"main.c",53,2
           CALL    .S1     _DSK6713_AIC23_openCodec ; |53| 
           MVKL    .S1     _config,A3        ; |53| 
           MVKH    .S1     _config,A3        ; |53| 
           MVKL    .S2     RL1,B3            ; |53| 
           MV      .L2X    A3,B4             ; |53| 

           MVKH    .S2     RL1,B3            ; |53| 
||         ZERO    .L1     A4                ; |53| 

RL1:       ; CALL OCCURS {_DSK6713_AIC23_openCodec}  ; |53| 
           STW     .D2T1   A4,*+DP(_hCodec)  ; |53| 
           NOP             2
	.dwpsn	"main.c",54,2
           CALL    .S1     _DSK6713_AIC23_setFreq ; |54| 
           MVKL    .S2     RL2,B3            ; |54| 
           MVK     .S2     0x1,B4            ; |54| 
           MVKH    .S2     RL2,B3            ; |54| 
           NOP             2
RL2:       ; CALL OCCURS {_DSK6713_AIC23_setFreq}  ; |54| 
	.dwpsn	"main.c",57,2
           MVKL    .S1     _IRQ_globalEnable,A3 ; |57| 
           MVKH    .S1     _IRQ_globalEnable,A3 ; |57| 
           CALL    .S2X    A3                ; |57| 
           MVKL    .S2     RL3,B3            ; |57| 
           MVKH    .S2     RL3,B3            ; |57| 
           NOP             3
RL3:       ; CALL OCCURS {_IRQ_globalEnable}  ; |57| 
	.dwpsn	"main.c",58,2
           MVKL    .S1     _IRQ_enable,A3    ; |58| 
           MVKH    .S1     _IRQ_enable,A3    ; |58| 
           CALL    .S2X    A3                ; |58| 
           MVKL    .S2     RL4,B3            ; |58| 
           MVK     .S1     0xf,A4            ; |58| 
           MVKH    .S2     RL4,B3            ; |58| 
           NOP             2
RL4:       ; CALL OCCURS {_IRQ_enable}       ; |58| 
	.dwpsn	"main.c",59,2
           MVKL    .S2     _IRQ_enable,B4    ; |59| 
           MVKH    .S2     _IRQ_enable,B4    ; |59| 
           CALL    .S2     B4                ; |59| 
           MVKL    .S2     RL5,B3            ; |59| 
           MVKH    .S2     RL5,B3            ; |59| 
           MVK     .S1     0xe,A4            ; |59| 
           NOP             2
RL5:       ; CALL OCCURS {_IRQ_enable}       ; |59| 
	.dwpsn	"main.c",61,2
           CALL    .S1     _reset            ; |61| 
           MVKL    .S2     RL6,B3            ; |61| 
           MVKH    .S2     RL6,B3            ; |61| 
           NOP             3
RL6:       ; CALL OCCURS {_reset}            ; |61| 
	.dwpsn	"main.c",64,8
           CALL    .S1     _DSK6713_AIC23_write ; |64| 
           LDW     .D2T1   *+DP(_hCodec),A4  ; |64| 
           MVKL    .S2     RL7,B3            ; |64| 
           ZERO    .L2     B4                ; |64| 
           MVKH    .S2     RL7,B3            ; |64| 
           NOP             1
RL7:       ; CALL OCCURS {_DSK6713_AIC23_write}  ; |64| 
           MV      .L1     A4,A1             ; |64| 
   [ A1]   B       .S1     L2                ; |64| 
           NOP             5
           ; BRANCHCC OCCURS {L2}            ; |64| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Software pipelining disabled
;*----------------------------------------------------------------------------*
L1:    
DW$L$_main$2$B:
           CALL    .S1     _DSK6713_AIC23_write ; |64| 
           LDW     .D2T1   *+DP(_hCodec),A4  ; |64| 
           MVKL    .S2     RL8,B3            ; |64| 
           MVKH    .S2     RL8,B3            ; |64| 
           ZERO    .L2     B4                ; |64| 
           NOP             1
RL8:       ; CALL OCCURS {_DSK6713_AIC23_write}  ; |64| 
           MV      .L1     A4,A1             ; |64| 
   [!A1]   B       .S1     L1                ; |64| 
           NOP             5
           ; BRANCHCC OCCURS {L1}            ; |64| 
DW$L$_main$2$E:
;** --------------------------------------------------------------------------*
L2:    
	.dwpsn	"main.c",65,2
           MVK     .S1     1,A3              ; |65| 
           STB     .D2T1   A3,*+DP(_in_channel_flag) ; |65| 
           NOP             2
	.dwpsn	"main.c",66,2
           MVK     .S2     1,B4              ; |66| 
           STB     .D2T2   B4,*+DP(_out_channel_flag) ; |66| 
           NOP             1
	.dwpsn	"main.c",68,8
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Software pipelining disabled
;*----------------------------------------------------------------------------*
L3:    
DW$L$_main$4$B:
	.dwpsn	"main.c",69,3
           LDBU    .D2T2   *+DP(_input_ready),B0 ; |69| 
           NOP             4
   [!B0]   B       .S1     L4                ; |69| 
           NOP             5
           ; BRANCHCC OCCURS {L4}            ; |69| 
DW$L$_main$4$E:
;** --------------------------------------------------------------------------*
DW$L$_main$5$B:
	.dwpsn	"main.c",70,4

           CALL    .S1     _process_sample   ; |70| 
||         LDH     .D2T2   *+DP(_in_right),B4 ; |70| 

           LDH     .D2T1   *+DP(_in_left),A4 ; |70| 
           NOP             2
           MVKL    .S2     RL9,B3            ; |70| 
           MVKH    .S2     RL9,B3            ; |70| 
RL9:       ; CALL OCCURS {_process_sample}   ; |70| 
           STH     .D2T1   A4,*+DP(_sig_error) ; |70| 
           NOP             2
	.dwpsn	"main.c",71,4
           ZERO    .L2     B4                ; |71| 
           STB     .D2T2   B4,*+DP(_input_ready) ; |71| 
DW$L$_main$5$E:
;** --------------------------------------------------------------------------*
L4:    
DW$L$_main$6$B:
	.dwpsn	"main.c",74,3
           LDBU    .D2T2   *+DP(_output_ready),B0 ; |74| 
           NOP             4
   [!B0]   B       .S1     L3                ; |74| 
           NOP             5
           ; BRANCHCC OCCURS {L3}            ; |74| 
DW$L$_main$6$E:
;** --------------------------------------------------------------------------*
DW$L$_main$7$B:
	.dwpsn	"main.c",75,4
           LDH     .D2T2   *+DP(_in_left),B4 ; |75| 
           NOP             4
           STH     .D2T2   B4,*+DP(_out_left) ; |75| 
           NOP             2
	.dwpsn	"main.c",76,4
           LDH     .D2T2   *+DP(_sig_error),B4 ; |76| 
           NOP             4
           STH     .D2T2   B4,*+DP(_out_right) ; |76| 
           NOP             2
	.dwpsn	"main.c",77,4
           ZERO    .L2     B4                ; |77| 
           STB     .D2T2   B4,*+DP(_output_ready) ; |77| 
           NOP             2
	.dwpsn	"main.c",68,8
           B       .S1     L3                ; |68| 
           NOP             5
           ; BRANCH OCCURS {L3}              ; |68| 
DW$L$_main$7$E:
;** --------------------------------------------------------------------------*
	.dwcfa	0xc0, 19
	.dwcfa	0x0e, 0

DW$43	.dwtag  DW_TAG_loop
	.dwattr DW$43, DW_AT_name("H:\SPH\firmware\lab3\main.asm:L3:1:1351503931")
	.dwattr DW$43, DW_AT_begin_file("main.c")
	.dwattr DW$43, DW_AT_begin_line(0x44)
	.dwattr DW$43, DW_AT_end_line(0x4f)
DW$44	.dwtag  DW_TAG_loop_range
	.dwattr DW$44, DW_AT_low_pc(DW$L$_main$4$B)
	.dwattr DW$44, DW_AT_high_pc(DW$L$_main$4$E)
DW$45	.dwtag  DW_TAG_loop_range
	.dwattr DW$45, DW_AT_low_pc(DW$L$_main$5$B)
	.dwattr DW$45, DW_AT_high_pc(DW$L$_main$5$E)
DW$46	.dwtag  DW_TAG_loop_range
	.dwattr DW$46, DW_AT_low_pc(DW$L$_main$7$B)
	.dwattr DW$46, DW_AT_high_pc(DW$L$_main$7$E)
DW$47	.dwtag  DW_TAG_loop_range
	.dwattr DW$47, DW_AT_low_pc(DW$L$_main$6$B)
	.dwattr DW$47, DW_AT_high_pc(DW$L$_main$6$E)
	.dwendtag DW$43


DW$48	.dwtag  DW_TAG_loop
	.dwattr DW$48, DW_AT_name("H:\SPH\firmware\lab3\main.asm:L1:1:1351503931")
	.dwattr DW$48, DW_AT_begin_file("main.c")
	.dwattr DW$48, DW_AT_begin_line(0x40)
	.dwattr DW$48, DW_AT_end_line(0x40)
DW$49	.dwtag  DW_TAG_loop_range
	.dwattr DW$49, DW_AT_low_pc(DW$L$_main$2$B)
	.dwattr DW$49, DW_AT_high_pc(DW$L$_main$2$E)
	.dwendtag DW$48

	.dwattr DW$42, DW_AT_end_file("main.c")
	.dwattr DW$42, DW_AT_end_line(0x57)
	.dwattr DW$42, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$42

	.sect	".text"
	.global	_reset

DW$50	.dwtag  DW_TAG_subprogram, DW_AT_name("reset"), DW_AT_symbol_name("_reset")
	.dwattr DW$50, DW_AT_low_pc(_reset)
	.dwattr DW$50, DW_AT_high_pc(0x00)
	.dwattr DW$50, DW_AT_begin_file("main.c")
	.dwattr DW$50, DW_AT_begin_line(0x59)
	.dwattr DW$50, DW_AT_begin_column(0x06)
	.dwpsn	"main.c",89,18

	.dwfde DW$CIE

;******************************************************************************
;* FUNCTION NAME: _reset                                                      *
;*                                                                            *
;*   Regs Modified     : B0,B4,B5,B6,SP                                       *
;*   Regs Used         : B0,B3,B4,B5,B6,SP                                    *
;*   Local Frame Size  : 0 Args + 4 Auto + 0 Save = 4 byte                    *
;******************************************************************************
_reset:
;** --------------------------------------------------------------------------*
	.dwcfa	0x0e, 0
	.dwcfa	0x09, 126, 19
           SUB     .L2     SP,8,SP           ; |89| 
	.dwcfa	0x0e, 8
DW$51	.dwtag  DW_TAG_variable, DW_AT_name("i"), DW_AT_symbol_name("_i")
	.dwattr DW$51, DW_AT_type(*DW$T$10)
	.dwattr DW$51, DW_AT_location[DW_OP_breg31 4]
	.dwpsn	"main.c",92,6
           ZERO    .L2     B4                ; |92| 
           STW     .D2T2   B4,*+SP(4)        ; |92| 
           NOP             2
	.dwpsn	"main.c",92,12
           MVK     .S2     64,B5             ; |92| 
           CMPLT   .L2     B4,B5,B0          ; |92| 
   [!B0]   B       .S1     L7                ; |92| 
           NOP             5
           ; BRANCHCC OCCURS {L7}            ; |92| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Software pipelining disabled
;*----------------------------------------------------------------------------*
L5:    
DW$L$_reset$2$B:
	.dwpsn	"main.c",93,3
           LDW     .D2T2   *+SP(4),B4        ; |93| 
           MVK     .S2     51,B5             ; |93| 
           NOP             3
           CMPLT   .L2     B4,B5,B0          ; |93| 
   [!B0]   B       .S1     L6                ; |93| 
           NOP             5
           ; BRANCHCC OCCURS {L6}            ; |93| 
DW$L$_reset$2$E:
;** --------------------------------------------------------------------------*
DW$L$_reset$3$B:
	.dwpsn	"main.c",93,13

           MVKL    .S2     _w,B4             ; |93| 
||         MV      .L2     B4,B5

           MVKH    .S2     _w,B4             ; |93| 
||         ZERO    .L2     B6                ; |93| 

           STW     .D2T2   B6,*+B4[B5]       ; |93| 
DW$L$_reset$3$E:
;** --------------------------------------------------------------------------*
L6:    
DW$L$_reset$4$B:
	.dwpsn	"main.c",94,3
           LDW     .D2T2   *+SP(4),B6        ; |94| 
           MVKL    .S2     _buffer,B4        ; |94| 
           MVKH    .S2     _buffer,B4        ; |94| 
           ZERO    .L2     B5                ; |94| 
           NOP             1
           STW     .D2T2   B5,*+B4[B6]       ; |94| 
           NOP             2
	.dwpsn	"main.c",92,19
           LDW     .D2T2   *+SP(4),B4        ; |92| 
           NOP             4
           ADD     .L2     1,B4,B4           ; |92| 
           STW     .D2T2   B4,*+SP(4)        ; |92| 
           NOP             2
	.dwpsn	"main.c",92,12

           MVK     .S2     64,B4             ; |92| 
||         MV      .L2     B4,B5

           CMPLT   .L2     B5,B4,B0          ; |92| 
   [ B0]   B       .S1     L5                ; |92| 
           NOP             5
           ; BRANCHCC OCCURS {L5}            ; |92| 
DW$L$_reset$4$E:
;** --------------------------------------------------------------------------*
L7:    
	.dwpsn	"main.c",96,1
           ADD     .L2     8,SP,SP           ; |96| 
	.dwcfa	0x0e, 0
           RET     .S2     B3                ; |96| 
           NOP             5
           ; BRANCH OCCURS {B3}              ; |96| 

DW$52	.dwtag  DW_TAG_loop
	.dwattr DW$52, DW_AT_name("H:\SPH\firmware\lab3\main.asm:L5:1:1351503931")
	.dwattr DW$52, DW_AT_begin_file("main.c")
	.dwattr DW$52, DW_AT_begin_line(0x5c)
	.dwattr DW$52, DW_AT_end_line(0x5f)
DW$53	.dwtag  DW_TAG_loop_range
	.dwattr DW$53, DW_AT_low_pc(DW$L$_reset$2$B)
	.dwattr DW$53, DW_AT_high_pc(DW$L$_reset$2$E)
DW$54	.dwtag  DW_TAG_loop_range
	.dwattr DW$54, DW_AT_low_pc(DW$L$_reset$3$B)
	.dwattr DW$54, DW_AT_high_pc(DW$L$_reset$3$E)
DW$55	.dwtag  DW_TAG_loop_range
	.dwattr DW$55, DW_AT_low_pc(DW$L$_reset$4$B)
	.dwattr DW$55, DW_AT_high_pc(DW$L$_reset$4$E)
	.dwendtag DW$52

	.dwattr DW$50, DW_AT_end_file("main.c")
	.dwattr DW$50, DW_AT_end_line(0x60)
	.dwattr DW$50, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$50

	.sect	".text"
	.global	_process_sample

DW$56	.dwtag  DW_TAG_subprogram, DW_AT_name("process_sample"), DW_AT_symbol_name("_process_sample")
	.dwattr DW$56, DW_AT_low_pc(_process_sample)
	.dwattr DW$56, DW_AT_high_pc(0x00)
	.dwattr DW$56, DW_AT_begin_file("main.c")
	.dwattr DW$56, DW_AT_begin_line(0x62)
	.dwattr DW$56, DW_AT_begin_column(0x07)
	.dwpsn	"main.c",98,47

	.dwfde DW$CIE

;******************************************************************************
;* FUNCTION NAME: _process_sample                                             *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP                                      *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,DP,SP                                   *
;*   Local Frame Size  : 0 Args + 8 Auto + 4 Save = 12 byte                   *
;******************************************************************************
_process_sample:
;** --------------------------------------------------------------------------*
	.dwcfa	0x0e, 0
	.dwcfa	0x09, 126, 19
           STW     .D2T2   B3,*SP--(16)      ; |98| 
           NOP             2
	.dwcfa	0x0e, 16
	.dwcfa	0x80, 19, 0
DW$57	.dwtag  DW_TAG_formal_parameter, DW_AT_name("clean"), DW_AT_symbol_name("_clean")
	.dwattr DW$57, DW_AT_type(*DW$T$35)
	.dwattr DW$57, DW_AT_location[DW_OP_reg4]
DW$58	.dwtag  DW_TAG_formal_parameter, DW_AT_name("echo"), DW_AT_symbol_name("_echo")
	.dwattr DW$58, DW_AT_type(*DW$T$35)
	.dwattr DW$58, DW_AT_location[DW_OP_reg20]
DW$59	.dwtag  DW_TAG_variable, DW_AT_name("clean"), DW_AT_symbol_name("_clean")
	.dwattr DW$59, DW_AT_type(*DW$T$35)
	.dwattr DW$59, DW_AT_location[DW_OP_breg31 4]
DW$60	.dwtag  DW_TAG_variable, DW_AT_name("echo"), DW_AT_symbol_name("_echo")
	.dwattr DW$60, DW_AT_type(*DW$T$35)
	.dwattr DW$60, DW_AT_location[DW_OP_breg31 6]
DW$61	.dwtag  DW_TAG_variable, DW_AT_name("yw"), DW_AT_symbol_name("_yw")
	.dwattr DW$61, DW_AT_type(*DW$T$10)
	.dwattr DW$61, DW_AT_location[DW_OP_breg31 8]
           STH     .D2T2   B4,*+SP(6)        ; |98| 
           STH     .D2T1   A4,*+SP(4)        ; |98| 
           NOP             2
	.dwpsn	"main.c",101,2
           LDH     .D2T2   *+SP(4),B5        ; |101| 
           LDW     .D2T2   *+DP(_buffer_index),B6 ; |101| 
           MVKL    .S2     _buffer,B4        ; |101| 
           MVKH    .S2     _buffer,B4        ; |101| 
           NOP             1
           SHL     .S2     B5,16,B5          ; |101| 
           STW     .D2T2   B5,*+B4[B6]       ; |101| 
           NOP             2
	.dwpsn	"main.c",103,2
           CALL    .S1     _convolve_as_func ; |103| 

           LDW     .D2T1   *+DP(_buffer_index),A6 ; |103| 
||         MVKL    .S2     _buffer,B5        ; |103| 

           MVKL    .S2     RL12,B3           ; |103| 

           MVKH    .S2     _buffer,B5        ; |103| 
||         MVKL    .S1     _w,A3             ; |103| 

           MVKH    .S2     RL12,B3           ; |103| 
||         MVKH    .S1     _w,A3             ; |103| 

           MV      .L1X    B5,A4             ; |103| 
||         MV      .L2X    A3,B4             ; |103| 
||         MVK     .S2     0x33,B6           ; |103| 

RL12:      ; CALL OCCURS {_convolve_as_func}  ; |103| 
           STW     .D2T1   A4,*+SP(8)        ; |103| 
           NOP             2
	.dwpsn	"main.c",105,2
           LDW     .D2T2   *+DP(_buffer_index),B4 ; |105| 
           NOP             4
           ADD     .L2     1,B4,B4           ; |105| 
           STW     .D2T2   B4,*+DP(_buffer_index) ; |105| 
           NOP             2
	.dwpsn	"main.c",106,2
           MVK     .S1     64,A3             ; |106| 
           CMPLT   .L1X    B4,A3,A1          ; |106| 
   [ A1]   B       .S1     L8                ; |106| 
           NOP             5
           ; BRANCHCC OCCURS {L8}            ; |106| 
;** --------------------------------------------------------------------------*
	.dwpsn	"main.c",106,25
           ZERO    .L2     B4                ; |106| 
           STW     .D2T2   B4,*+DP(_buffer_index) ; |106| 
;** --------------------------------------------------------------------------*
L8:    
	.dwpsn	"main.c",108,2
           LDH     .D2T2   *+SP(6),B5        ; |108| 
           NOP             4
           SHL     .S2     B5,16,B5          ; |108| 
           SUB     .L2X    B5,A4,B4          ; |108| 
           STW     .D2T2   B4,*+DP(_error)   ; |108| 
           NOP             2
	.dwpsn	"main.c",110,2
           CALL    .S1     _grad_desc        ; |110| 
           MVKL    .S2     RL13,B3           ; |110| 
           MVKH    .S2     RL13,B3           ; |110| 
           NOP             3
RL13:      ; CALL OCCURS {_grad_desc}        ; |110| 
	.dwpsn	"main.c",112,2
           LDW     .D2T2   *+DP(_error),B4   ; |112| 
           NOP             4
           SHR     .S1X    B4,16,A4          ; |112| 
	.dwpsn	"main.c",113,1
           LDW     .D2T2   *++SP(16),B3      ; |113| 
           NOP             4
	.dwcfa	0xc0, 19
	.dwcfa	0x0e, 0
           RET     .S2     B3                ; |113| 
           NOP             5
           ; BRANCH OCCURS {B3}              ; |113| 
	.dwattr DW$56, DW_AT_end_file("main.c")
	.dwattr DW$56, DW_AT_end_line(0x71)
	.dwattr DW$56, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$56

	.sect	".text"
	.global	_grad_desc

DW$62	.dwtag  DW_TAG_subprogram, DW_AT_name("grad_desc"), DW_AT_symbol_name("_grad_desc")
	.dwattr DW$62, DW_AT_low_pc(_grad_desc)
	.dwattr DW$62, DW_AT_high_pc(0x00)
	.dwattr DW$62, DW_AT_begin_file("main.c")
	.dwattr DW$62, DW_AT_begin_line(0x73)
	.dwattr DW$62, DW_AT_begin_column(0x06)
	.dwpsn	"main.c",115,22

	.dwfde DW$CIE

;******************************************************************************
;* FUNCTION NAME: _grad_desc                                                  *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP                                      *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,DP,SP                                   *
;*   Local Frame Size  : 0 Args + 12 Auto + 4 Save = 16 byte                  *
;******************************************************************************
_grad_desc:
;** --------------------------------------------------------------------------*
	.dwcfa	0x0e, 0
	.dwcfa	0x09, 126, 19
           STW     .D2T2   B3,*SP--(16)      ; |115| 
           NOP             2
	.dwcfa	0x0e, 16
	.dwcfa	0x80, 19, 0
DW$63	.dwtag  DW_TAG_variable, DW_AT_name("tmp"), DW_AT_symbol_name("_tmp")
	.dwattr DW$63, DW_AT_type(*DW$T$10)
	.dwattr DW$63, DW_AT_location[DW_OP_breg31 4]
DW$64	.dwtag  DW_TAG_variable, DW_AT_name("i"), DW_AT_symbol_name("_i")
	.dwattr DW$64, DW_AT_type(*DW$T$10)
	.dwattr DW$64, DW_AT_location[DW_OP_breg31 8]
DW$65	.dwtag  DW_TAG_variable, DW_AT_name("tmp_b_index"), DW_AT_symbol_name("_tmp_b_index")
	.dwattr DW$65, DW_AT_type(*DW$T$10)
	.dwattr DW$65, DW_AT_location[DW_OP_breg31 12]
	.dwpsn	"main.c",119,2
           LDW     .D2T2   *+DP(_buffer_index),B4 ; |119| 
           NOP             4
           SUB     .L2     B4,1,B4           ; |119| 
           STW     .D2T2   B4,*+SP(12)       ; |119| 
           NOP             2
	.dwpsn	"main.c",121,6
           ZERO    .L2     B4                ; |121| 
           STW     .D2T2   B4,*+SP(8)        ; |121| 
           NOP             2
	.dwpsn	"main.c",121,12
           MVK     .S2     51,B5             ; |121| 
           CMPLT   .L2     B4,B5,B0          ; |121| 
   [!B0]   B       .S1     L11               ; |121| 
           NOP             5
           ; BRANCHCC OCCURS {L11}           ; |121| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Software pipelining disabled
;*----------------------------------------------------------------------------*
L9:    
DW$L$_grad_desc$2$B:
	.dwpsn	"main.c",122,3
           LDW     .D2T2   *+SP(12),B4       ; |122| 
           NOP             4
           CMPLT   .L2     B4,0,B0           ; |122| 
   [!B0]   B       .S1     L10               ; |122| 
           NOP             5
           ; BRANCHCC OCCURS {L10}           ; |122| 
DW$L$_grad_desc$2$E:
;** --------------------------------------------------------------------------*
DW$L$_grad_desc$3$B:
	.dwpsn	"main.c",122,23
           ZERO    .L2     B4                ; |122| 
           STW     .D2T2   B4,*+SP(12)       ; |122| 
DW$L$_grad_desc$3$E:
;** --------------------------------------------------------------------------*
L10:    
DW$L$_grad_desc$4$B:
	.dwpsn	"main.c",124,3
           CALL    .S1     _multiply         ; |124| 
           LDW     .D2T2   *+DP(_error),B4   ; |124| 
           MVKL    .S2     RL14,B3           ; |124| 
           MVKL    .S1     0x30901160,A4     ; |124| 
           MVKH    .S2     RL14,B3           ; |124| 
           MVKH    .S1     0x30901160,A4     ; |124| 
RL14:      ; CALL OCCURS {_multiply}         ; |124| 
           STW     .D2T1   A4,*+SP(4)        ; |124| 
           NOP             2
	.dwpsn	"main.c",125,3
           LDW     .D2T2   *+SP(12),B5       ; |125| 
           MVKL    .S2     _buffer,B4        ; |125| 
           MVKH    .S2     _buffer,B4        ; |125| 
           MVKL    .S2     RL15,B3           ; |125| 
           CALL    .S1     _multiply         ; |125| 
           LDW     .D2T2   *+B4[B5],B4       ; |125| 
           MVKH    .S2     RL15,B3           ; |125| 
           NOP             3
RL15:      ; CALL OCCURS {_multiply}         ; |125| 
           STW     .D2T1   A4,*+SP(4)        ; |125| 
           NOP             2
	.dwpsn	"main.c",126,3
           LDW     .D2T2   *+SP(8),B6        ; |126| 
           MVKL    .S2     _w,B4             ; |126| 
           MVKH    .S2     _w,B4             ; |126| 
           NOP             2
           LDW     .D2T2   *+B4[B6],B4       ; |126| 
           NOP             4
           ADD     .L2X    B4,A4,B4          ; |126| 
           ADD     .L2X    A4,B4,B4          ; |126| 
           STW     .D2T2   B4,*+SP(4)        ; |126| 
           NOP             2
	.dwpsn	"main.c",127,3
           LDW     .D2T1   *+SP(8),A5        ; |127| 
           MVKL    .S1     _w,A4             ; |127| 
           MVKH    .S1     _w,A4             ; |127| 
           MV      .L1X    B4,A3             ; |127| 
           NOP             1
           STW     .D1T1   A3,*+A4[A5]       ; |127| 
           NOP             2
	.dwpsn	"main.c",129,3
           LDW     .D2T2   *+SP(12),B4       ; |129| 
           NOP             4
           SUB     .L2     B4,1,B4           ; |129| 
           STW     .D2T2   B4,*+SP(12)       ; |129| 
           NOP             2
	.dwpsn	"main.c",121,18
           LDW     .D2T2   *+SP(8),B4        ; |121| 
           NOP             4
           ADD     .L2     1,B4,B4           ; |121| 
           STW     .D2T2   B4,*+SP(8)        ; |121| 
           NOP             2
	.dwpsn	"main.c",121,12
           MVK     .S1     51,A3             ; |121| 
           CMPLT   .L1X    B4,A3,A1          ; |121| 
   [ A1]   B       .S1     L9                ; |121| 
           NOP             5
           ; BRANCHCC OCCURS {L9}            ; |121| 
DW$L$_grad_desc$4$E:
;** --------------------------------------------------------------------------*
L11:    
	.dwpsn	"main.c",131,1
           LDW     .D2T2   *++SP(16),B3      ; |131| 
           NOP             4
	.dwcfa	0xc0, 19
	.dwcfa	0x0e, 0
           RET     .S2     B3                ; |131| 
           NOP             5
           ; BRANCH OCCURS {B3}              ; |131| 

DW$66	.dwtag  DW_TAG_loop
	.dwattr DW$66, DW_AT_name("H:\SPH\firmware\lab3\main.asm:L9:1:1351503931")
	.dwattr DW$66, DW_AT_begin_file("main.c")
	.dwattr DW$66, DW_AT_begin_line(0x79)
	.dwattr DW$66, DW_AT_end_line(0x82)
DW$67	.dwtag  DW_TAG_loop_range
	.dwattr DW$67, DW_AT_low_pc(DW$L$_grad_desc$2$B)
	.dwattr DW$67, DW_AT_high_pc(DW$L$_grad_desc$2$E)
DW$68	.dwtag  DW_TAG_loop_range
	.dwattr DW$68, DW_AT_low_pc(DW$L$_grad_desc$3$B)
	.dwattr DW$68, DW_AT_high_pc(DW$L$_grad_desc$3$E)
DW$69	.dwtag  DW_TAG_loop_range
	.dwattr DW$69, DW_AT_low_pc(DW$L$_grad_desc$4$B)
	.dwattr DW$69, DW_AT_high_pc(DW$L$_grad_desc$4$E)
	.dwendtag DW$66

	.dwattr DW$62, DW_AT_end_file("main.c")
	.dwattr DW$62, DW_AT_end_line(0x83)
	.dwattr DW$62, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$62

	.sect	".text"
	.global	_multiply

DW$70	.dwtag  DW_TAG_subprogram, DW_AT_name("multiply"), DW_AT_symbol_name("_multiply")
	.dwattr DW$70, DW_AT_low_pc(_multiply)
	.dwattr DW$70, DW_AT_high_pc(0x00)
	.dwattr DW$70, DW_AT_begin_file("main.c")
	.dwattr DW$70, DW_AT_begin_line(0x85)
	.dwattr DW$70, DW_AT_begin_column(0x05)
	.dwpsn	"main.c",133,28

	.dwfde DW$CIE

;******************************************************************************
;* FUNCTION NAME: _multiply                                                   *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP                                      *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP                                      *
;*   Local Frame Size  : 0 Args + 28 Auto + 4 Save = 32 byte                  *
;******************************************************************************
_multiply:
;** --------------------------------------------------------------------------*
	.dwcfa	0x0e, 0
	.dwcfa	0x09, 126, 19
           STW     .D2T2   B3,*SP--(32)      ; |133| 
           NOP             2
	.dwcfa	0x0e, 32
	.dwcfa	0x80, 19, 0
DW$71	.dwtag  DW_TAG_formal_parameter, DW_AT_name("a"), DW_AT_symbol_name("_a")
	.dwattr DW$71, DW_AT_type(*DW$T$10)
	.dwattr DW$71, DW_AT_location[DW_OP_reg4]
DW$72	.dwtag  DW_TAG_formal_parameter, DW_AT_name("b"), DW_AT_symbol_name("_b")
	.dwattr DW$72, DW_AT_type(*DW$T$10)
	.dwattr DW$72, DW_AT_location[DW_OP_reg20]
DW$73	.dwtag  DW_TAG_variable, DW_AT_name("a"), DW_AT_symbol_name("_a")
	.dwattr DW$73, DW_AT_type(*DW$T$10)
	.dwattr DW$73, DW_AT_location[DW_OP_breg31 4]
DW$74	.dwtag  DW_TAG_variable, DW_AT_name("b"), DW_AT_symbol_name("_b")
	.dwattr DW$74, DW_AT_type(*DW$T$10)
	.dwattr DW$74, DW_AT_location[DW_OP_breg31 8]
DW$75	.dwtag  DW_TAG_variable, DW_AT_name("t1"), DW_AT_symbol_name("_t1")
	.dwattr DW$75, DW_AT_type(*DW$T$14)
	.dwattr DW$75, DW_AT_location[DW_OP_breg31 16]
DW$76	.dwtag  DW_TAG_variable, DW_AT_name("t2"), DW_AT_symbol_name("_t2")
	.dwattr DW$76, DW_AT_type(*DW$T$14)
	.dwattr DW$76, DW_AT_location[DW_OP_breg31 24]
           STW     .D2T2   B4,*+SP(8)        ; |133| 
           STW     .D2T1   A4,*+SP(4)        ; |133| 
           NOP             2
	.dwpsn	"main.c",135,2
           MV      .L2X    A4,B4

           STW     .D2T2   B4,*+SP(16)       ; |135| 
||         SHR     .S2     B4,31,B5          ; |135| 

           STW     .D2T2   B5,*+SP(20)       ; |135| 
           NOP             2
	.dwpsn	"main.c",136,2
           LDW     .D2T2   *+SP(8),B4        ; |136| 
           NOP             4

           SHR     .S2     B4,31,B5          ; |136| 
||         STW     .D2T2   B4,*+SP(24)       ; |136| 

           STW     .D2T2   B5,*+SP(28)       ; |136| 
           NOP             2
	.dwpsn	"main.c",138,2
           LDDW    .D2T2   *+SP(16),B7:B6    ; |138| 
           CALL    .S1     __mpyll           ; |138| 
           LDDW    .D2T2   *+SP(24),B5:B4    ; |138| 
           MVKL    .S2     RL16,B3           ; |138| 
           MVKH    .S2     RL16,B3           ; |138| 
           MV      .L1X    B7,A5             ; |138| 
           MV      .L1X    B6,A4             ; |138| 
RL16:      ; CALL OCCURS {__mpyll}           ; |138| 

           SHL     .S2X    A5,0x1,B4         ; |138| 
||         SHRU    .S1     A4,0x1f,A3        ; |138| 

           OR      .L1X    B4,A3,A4          ; |138| 
	.dwpsn	"main.c",139,1
           LDW     .D2T2   *++SP(32),B3      ; |139| 
           NOP             4
	.dwcfa	0xc0, 19
	.dwcfa	0x0e, 0
           RET     .S2     B3                ; |139| 
           NOP             5
           ; BRANCH OCCURS {B3}              ; |139| 
	.dwattr DW$70, DW_AT_end_file("main.c")
	.dwattr DW$70, DW_AT_end_line(0x8b)
	.dwattr DW$70, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$70

	.sect	".text"
	.global	_receive_interrupt

DW$77	.dwtag  DW_TAG_subprogram, DW_AT_name("receive_interrupt"), DW_AT_symbol_name("_receive_interrupt")
	.dwattr DW$77, DW_AT_low_pc(_receive_interrupt)
	.dwattr DW$77, DW_AT_high_pc(0x00)
	.dwattr DW$77, DW_AT_begin_file("main.c")
	.dwattr DW$77, DW_AT_begin_line(0x8f)
	.dwattr DW$77, DW_AT_begin_column(0x06)
	.dwpsn	"main.c",143,30

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
           STW     .D2T2   B3,*SP--(8)       ; |143| 
           NOP             2
	.dwcfa	0x0e, 8
	.dwcfa	0x80, 19, 0
	.dwpsn	"main.c",144,2
           LDBU    .D2T2   *+DP(_in_channel_flag),B0 ; |144| 
           NOP             4
   [!B0]   B       .S1     L12               ; |144| 
           NOP             5
           ; BRANCHCC OCCURS {L12}           ; |144| 
;** --------------------------------------------------------------------------*
	.dwpsn	"main.c",145,3
           CALL    .S1     _DSK6713_AIC23_read ; |145| 
           LDW     .D2T1   *+DP(_hCodec),A4  ; |145| 
           MVKL    .S2     RL17,B3           ; |145| 
           MVK     .S2     (_in_tmp_left-$bss),B4 ; |145| 
           ADD     .L2     DP,B4,B4          ; |145| 
           MVKH    .S2     RL17,B3           ; |145| 
RL17:      ; CALL OCCURS {_DSK6713_AIC23_read}  ; |145| 
	.dwpsn	"main.c",147,3
           LDH     .D2T2   *+DP(_in_tmp_left),B4 ; |147| 
           NOP             4
           STH     .D2T2   B4,*+DP(_in_left) ; |147| 
           NOP             2
	.dwpsn	"main.c",149,3
           ZERO    .L2     B4                ; |149| 
           STB     .D2T2   B4,*+DP(_in_channel_flag) ; |149| 
           NOP             2
	.dwpsn	"main.c",150,3
           MVK     .S1     1,A3              ; |150| 
           STB     .D2T1   A3,*+DP(_input_ready) ; |150| 
           NOP             2
	.dwpsn	"main.c",151,2
           B       .S1     L13               ; |151| 
           NOP             5
           ; BRANCH OCCURS {L13}             ; |151| 
;** --------------------------------------------------------------------------*
L12:    
	.dwpsn	"main.c",152,3
           CALL    .S1     _DSK6713_AIC23_read ; |152| 
           LDW     .D2T1   *+DP(_hCodec),A4  ; |152| 
           MVKL    .S2     RL18,B3           ; |152| 
           MVK     .S2     (_in_tmp_right-$bss),B4 ; |152| 
           ADD     .L2     DP,B4,B4          ; |152| 
           MVKH    .S2     RL18,B3           ; |152| 
RL18:      ; CALL OCCURS {_DSK6713_AIC23_read}  ; |152| 
	.dwpsn	"main.c",154,3
           LDH     .D2T2   *+DP(_in_tmp_right),B4 ; |154| 
           NOP             4
           STH     .D2T2   B4,*+DP(_in_right) ; |154| 
           NOP             2
	.dwpsn	"main.c",156,3
           MVK     .S2     1,B4              ; |156| 
           STB     .D2T2   B4,*+DP(_in_channel_flag) ; |156| 
           NOP             2
	.dwpsn	"main.c",157,3
           MVK     .S1     1,A3              ; |157| 
           STB     .D2T1   A3,*+DP(_input_ready) ; |157| 
           NOP             1
	.dwpsn	"main.c",158,2
;** --------------------------------------------------------------------------*
L13:    
	.dwpsn	"main.c",159,1
           LDW     .D2T2   *++SP(8),B3       ; |159| 
           NOP             4
	.dwcfa	0xc0, 19
	.dwcfa	0x0e, 0
           RET     .S2     B3                ; |159| 
           NOP             5
           ; BRANCH OCCURS {B3}              ; |159| 
	.dwattr DW$77, DW_AT_end_file("main.c")
	.dwattr DW$77, DW_AT_end_line(0x9f)
	.dwattr DW$77, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$77

	.sect	".text"
	.global	_transmit_interrupt

DW$78	.dwtag  DW_TAG_subprogram, DW_AT_name("transmit_interrupt"), DW_AT_symbol_name("_transmit_interrupt")
	.dwattr DW$78, DW_AT_low_pc(_transmit_interrupt)
	.dwattr DW$78, DW_AT_high_pc(0x00)
	.dwattr DW$78, DW_AT_begin_file("main.c")
	.dwattr DW$78, DW_AT_begin_line(0xa1)
	.dwattr DW$78, DW_AT_begin_column(0x06)
	.dwpsn	"main.c",161,31

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
           STW     .D2T2   B3,*SP--(8)       ; |161| 
           NOP             2
	.dwcfa	0x0e, 8
	.dwcfa	0x80, 19, 0
	.dwpsn	"main.c",162,2
           LDBU    .D2T2   *+DP(_out_channel_flag),B0 ; |162| 
           NOP             4
   [!B0]   B       .S1     L14               ; |162| 
           NOP             5
           ; BRANCHCC OCCURS {L14}           ; |162| 
;** --------------------------------------------------------------------------*
	.dwpsn	"main.c",163,3

           CALL    .S1     _DSK6713_AIC23_write ; |163| 
||         LDH     .D2T2   *+DP(_out_left),B4 ; |163| 

           LDW     .D2T1   *+DP(_hCodec),A4  ; |163| 
           MVKL    .S2     RL19,B3           ; |163| 
           MVKH    .S2     RL19,B3           ; |163| 
           NOP             1
           EXTU    .S2     B4,16,16,B4       ; |163| 
RL19:      ; CALL OCCURS {_DSK6713_AIC23_write}  ; |163| 
	.dwpsn	"main.c",165,3
           ZERO    .L2     B4                ; |165| 
           STB     .D2T2   B4,*+DP(_out_channel_flag) ; |165| 
           NOP             2
	.dwpsn	"main.c",166,3
           MVK     .S2     1,B4              ; |166| 
           STB     .D2T2   B4,*+DP(_output_ready) ; |166| 
           NOP             2
	.dwpsn	"main.c",167,2
           B       .S1     L15               ; |167| 
           NOP             5
           ; BRANCH OCCURS {L15}             ; |167| 
;** --------------------------------------------------------------------------*
L14:    
	.dwpsn	"main.c",168,3

           CALL    .S1     _DSK6713_AIC23_write ; |168| 
||         LDH     .D2T2   *+DP(_out_right),B4 ; |168| 

           LDW     .D2T1   *+DP(_hCodec),A4  ; |168| 
           MVKL    .S2     RL20,B3           ; |168| 
           MVKH    .S2     RL20,B3           ; |168| 
           NOP             1
           EXTU    .S2     B4,16,16,B4       ; |168| 
RL20:      ; CALL OCCURS {_DSK6713_AIC23_write}  ; |168| 
	.dwpsn	"main.c",170,3
           MVK     .S1     1,A3              ; |170| 
           STB     .D2T1   A3,*+DP(_out_channel_flag) ; |170| 
           NOP             2
	.dwpsn	"main.c",171,3
           MVK     .S2     1,B4              ; |171| 
           STB     .D2T2   B4,*+DP(_output_ready) ; |171| 
           NOP             1
	.dwpsn	"main.c",172,2
;** --------------------------------------------------------------------------*
L15:    
	.dwpsn	"main.c",173,1
           LDW     .D2T2   *++SP(8),B3       ; |173| 
           NOP             4
	.dwcfa	0xc0, 19
	.dwcfa	0x0e, 0
           RET     .S2     B3                ; |173| 
           NOP             5
           ; BRANCH OCCURS {B3}              ; |173| 
	.dwattr DW$78, DW_AT_end_file("main.c")
	.dwattr DW$78, DW_AT_end_line(0xad)
	.dwattr DW$78, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$78

	.sect	".text"
	.global	_convolve

DW$79	.dwtag  DW_TAG_subprogram, DW_AT_name("convolve"), DW_AT_symbol_name("_convolve")
	.dwattr DW$79, DW_AT_low_pc(_convolve)
	.dwattr DW$79, DW_AT_high_pc(0x00)
	.dwattr DW$79, DW_AT_begin_file("main.c")
	.dwattr DW$79, DW_AT_begin_line(0xb1)
	.dwattr DW$79, DW_AT_begin_column(0x05)
	.dwpsn	"main.c",177,57

	.dwfde DW$CIE

;******************************************************************************
;* FUNCTION NAME: _convolve                                                   *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP                                      *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP                                      *
;*   Local Frame Size  : 0 Args + 60 Auto + 4 Save = 64 byte                  *
;******************************************************************************
_convolve:
;** --------------------------------------------------------------------------*
	.dwcfa	0x0e, 0
	.dwcfa	0x09, 126, 19
           STW     .D2T2   B3,*SP--(64)      ; |177| 
           NOP             2
	.dwcfa	0x0e, 64
	.dwcfa	0x80, 19, 0
DW$80	.dwtag  DW_TAG_formal_parameter, DW_AT_name("x"), DW_AT_symbol_name("_x")
	.dwattr DW$80, DW_AT_type(*DW$T$51)
	.dwattr DW$80, DW_AT_location[DW_OP_reg4]
DW$81	.dwtag  DW_TAG_formal_parameter, DW_AT_name("w"), DW_AT_symbol_name("_w")
	.dwattr DW$81, DW_AT_type(*DW$T$51)
	.dwattr DW$81, DW_AT_location[DW_OP_reg20]
DW$82	.dwtag  DW_TAG_formal_parameter, DW_AT_name("x_idx"), DW_AT_symbol_name("_x_idx")
	.dwattr DW$82, DW_AT_type(*DW$T$10)
	.dwattr DW$82, DW_AT_location[DW_OP_reg6]
DW$83	.dwtag  DW_TAG_formal_parameter, DW_AT_name("w_length"), DW_AT_symbol_name("_w_length")
	.dwattr DW$83, DW_AT_type(*DW$T$10)
	.dwattr DW$83, DW_AT_location[DW_OP_reg22]
DW$84	.dwtag  DW_TAG_variable, DW_AT_name("x"), DW_AT_symbol_name("_x")
	.dwattr DW$84, DW_AT_type(*DW$T$51)
	.dwattr DW$84, DW_AT_location[DW_OP_breg31 4]
DW$85	.dwtag  DW_TAG_variable, DW_AT_name("w"), DW_AT_symbol_name("_w")
	.dwattr DW$85, DW_AT_type(*DW$T$51)
	.dwattr DW$85, DW_AT_location[DW_OP_breg31 8]
DW$86	.dwtag  DW_TAG_variable, DW_AT_name("x_idx"), DW_AT_symbol_name("_x_idx")
	.dwattr DW$86, DW_AT_type(*DW$T$10)
	.dwattr DW$86, DW_AT_location[DW_OP_breg31 12]
DW$87	.dwtag  DW_TAG_variable, DW_AT_name("w_length"), DW_AT_symbol_name("_w_length")
	.dwattr DW$87, DW_AT_type(*DW$T$10)
	.dwattr DW$87, DW_AT_location[DW_OP_breg31 16]
DW$88	.dwtag  DW_TAG_variable, DW_AT_name("i"), DW_AT_symbol_name("_i")
	.dwattr DW$88, DW_AT_type(*DW$T$10)
	.dwattr DW$88, DW_AT_location[DW_OP_breg31 20]
DW$89	.dwtag  DW_TAG_variable, DW_AT_name("a"), DW_AT_symbol_name("_a")
	.dwattr DW$89, DW_AT_type(*DW$T$10)
	.dwattr DW$89, DW_AT_location[DW_OP_breg31 24]
DW$90	.dwtag  DW_TAG_variable, DW_AT_name("b"), DW_AT_symbol_name("_b")
	.dwattr DW$90, DW_AT_type(*DW$T$10)
	.dwattr DW$90, DW_AT_location[DW_OP_breg31 28]
DW$91	.dwtag  DW_TAG_variable, DW_AT_name("_a"), DW_AT_symbol_name("__a")
	.dwattr DW$91, DW_AT_type(*DW$T$14)
	.dwattr DW$91, DW_AT_location[DW_OP_breg31 32]
DW$92	.dwtag  DW_TAG_variable, DW_AT_name("_b"), DW_AT_symbol_name("__b")
	.dwattr DW$92, DW_AT_type(*DW$T$14)
	.dwattr DW$92, DW_AT_location[DW_OP_breg31 40]
DW$93	.dwtag  DW_TAG_variable, DW_AT_name("product"), DW_AT_symbol_name("_product")
	.dwattr DW$93, DW_AT_type(*DW$T$14)
	.dwattr DW$93, DW_AT_location[DW_OP_breg31 48]
DW$94	.dwtag  DW_TAG_variable, DW_AT_name("prd"), DW_AT_symbol_name("_prd")
	.dwattr DW$94, DW_AT_type(*DW$T$10)
	.dwattr DW$94, DW_AT_location[DW_OP_breg31 56]
DW$95	.dwtag  DW_TAG_variable, DW_AT_name("result"), DW_AT_symbol_name("_result")
	.dwattr DW$95, DW_AT_type(*DW$T$10)
	.dwattr DW$95, DW_AT_location[DW_OP_breg31 60]
           STW     .D2T2   B6,*+SP(16)       ; |177| 
           STW     .D2T1   A6,*+SP(12)       ; |177| 

           STW     .D2T1   A4,*+SP(4)        ; |177| 
||         MV      .L1X    B4,A3             ; |177| 

           STW     .D2T1   A3,*+SP(8)        ; |177| 
           NOP             2
	.dwpsn	"main.c",178,6
           ZERO    .L2     B4                ; |178| 
           STW     .D2T2   B4,*+SP(20)       ; |178| 
           NOP             2
	.dwpsn	"main.c",183,6
           STW     .D2T2   B4,*+SP(60)       ; |183| 
           NOP             2
	.dwpsn	"main.c",185,8
           LDW     .D2T2   *+SP(20),B5       ; |185| 
           NOP             4
           CMPLT   .L2     B5,B6,B0          ; |185| 
   [!B0]   B       .S1     L18               ; |185| 
           NOP             5
           ; BRANCHCC OCCURS {L18}           ; |185| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Software pipelining disabled
;*----------------------------------------------------------------------------*
L16:    
DW$L$_convolve$2$B:
	.dwpsn	"main.c",186,3
           LDW     .D2T2   *+SP(20),B4       ; |186| 
           LDW     .D2T2   *+SP(8),B5        ; |186| 
           NOP             4
           LDW     .D2T2   *+B5[B4],B4       ; |186| 
           NOP             4
           STW     .D2T2   B4,*+SP(24)       ; |186| 
           NOP             2
	.dwpsn	"main.c",187,3
           LDW     .D2T2   *+SP(12),B4       ; |187| 
           LDW     .D2T2   *+SP(4),B5        ; |187| 
           NOP             4
           LDW     .D2T2   *+B5[B4],B4       ; |187| 
           NOP             4
           STW     .D2T2   B4,*+SP(28)       ; |187| 
           NOP             2
	.dwpsn	"main.c",188,3
           LDW     .D2T2   *+SP(24),B4       ; |188| 
           NOP             4

           SHR     .S2     B4,31,B5          ; |188| 
||         STW     .D2T2   B4,*+SP(32)       ; |188| 

           STW     .D2T2   B5,*+SP(36)       ; |188| 
           NOP             2
	.dwpsn	"main.c",189,3
           LDW     .D2T2   *+SP(28),B4       ; |189| 
           NOP             4

           SHR     .S2     B4,31,B5          ; |189| 
||         STW     .D2T2   B4,*+SP(40)       ; |189| 

           STW     .D2T2   B5,*+SP(44)       ; |189| 
           NOP             2
	.dwpsn	"main.c",190,3
           LDDW    .D2T2   *+SP(32),B7:B6    ; |190| 
           CALL    .S1     __mpyll           ; |190| 
           LDDW    .D2T2   *+SP(40),B5:B4    ; |190| 
           MVKL    .S2     RL21,B3           ; |190| 
           MVKH    .S2     RL21,B3           ; |190| 
           MV      .L1X    B7,A5             ; |190| 
           MV      .L1X    B6,A4             ; |190| 
RL21:      ; CALL OCCURS {__mpyll}           ; |190| 
           STW     .D2T1   A4,*+SP(48)       ; |190| 
           STW     .D2T1   A5,*+SP(52)       ; |190| 
           NOP             2
	.dwpsn	"main.c",191,3
           LDDW    .D2T2   *+SP(48),B5:B4    ; |191| 
           NOP             4

           SHRU    .S2     B4,0x1f,B4        ; |191| 
||         SHL     .S1X    B5,0x1,A3         ; |191| 

           OR      .L2X    A3,B4,B4          ; |191| 
           STW     .D2T2   B4,*+SP(56)       ; |191| 
           NOP             2
	.dwpsn	"main.c",192,3
           LDW     .D2T2   *+SP(60),B4       ; |192| 
           LDW     .D2T2   *+SP(56),B5       ; |192| 
           NOP             4
           ADD     .L2     B5,B4,B4          ; |192| 
           STW     .D2T2   B4,*+SP(60)       ; |192| 
           NOP             2
	.dwpsn	"main.c",193,3
           LDW     .D2T2   *+SP(12),B4       ; |193| 
           NOP             4
           SUB     .L2     B4,1,B4           ; |193| 
           STW     .D2T2   B4,*+SP(12)       ; |193| 
           NOP             2
	.dwpsn	"main.c",194,3
           CMPLT   .L2     B4,0,B0           ; |194| 
   [!B0]   B       .S1     L17               ; |194| 
           NOP             5
           ; BRANCHCC OCCURS {L17}           ; |194| 
DW$L$_convolve$2$E:
;** --------------------------------------------------------------------------*
DW$L$_convolve$3$B:
	.dwpsn	"main.c",194,16
           MVK     .S2     15,B4             ; |194| 
           STW     .D2T2   B4,*+SP(12)       ; |194| 
DW$L$_convolve$3$E:
;** --------------------------------------------------------------------------*
L17:    
DW$L$_convolve$4$B:
	.dwpsn	"main.c",185,22
           LDW     .D2T2   *+SP(20),B4       ; |185| 
           NOP             4
           ADD     .L2     1,B4,B4           ; |185| 
           STW     .D2T2   B4,*+SP(20)       ; |185| 
           NOP             2
	.dwpsn	"main.c",185,8
           LDW     .D2T2   *+SP(16),B5       ; |185| 
           NOP             4
           CMPLT   .L2     B4,B5,B0          ; |185| 
   [ B0]   B       .S1     L16               ; |185| 
           NOP             5
           ; BRANCHCC OCCURS {L16}           ; |185| 
DW$L$_convolve$4$E:
;** --------------------------------------------------------------------------*
L18:    
	.dwpsn	"main.c",197,2
           LDW     .D2T1   *+SP(60),A4       ; |197| 
           NOP             4
	.dwpsn	"main.c",198,1
           LDW     .D2T2   *++SP(64),B3      ; |198| 
           NOP             4
	.dwcfa	0xc0, 19
	.dwcfa	0x0e, 0
           RET     .S2     B3                ; |198| 
           NOP             5
           ; BRANCH OCCURS {B3}              ; |198| 

DW$96	.dwtag  DW_TAG_loop
	.dwattr DW$96, DW_AT_name("H:\SPH\firmware\lab3\main.asm:L16:1:1351503931")
	.dwattr DW$96, DW_AT_begin_file("main.c")
	.dwattr DW$96, DW_AT_begin_line(0xb9)
	.dwattr DW$96, DW_AT_end_line(0xc3)
DW$97	.dwtag  DW_TAG_loop_range
	.dwattr DW$97, DW_AT_low_pc(DW$L$_convolve$2$B)
	.dwattr DW$97, DW_AT_high_pc(DW$L$_convolve$2$E)
DW$98	.dwtag  DW_TAG_loop_range
	.dwattr DW$98, DW_AT_low_pc(DW$L$_convolve$3$B)
	.dwattr DW$98, DW_AT_high_pc(DW$L$_convolve$3$E)
DW$99	.dwtag  DW_TAG_loop_range
	.dwattr DW$99, DW_AT_low_pc(DW$L$_convolve$4$B)
	.dwattr DW$99, DW_AT_high_pc(DW$L$_convolve$4$E)
	.dwendtag DW$96

	.dwattr DW$79, DW_AT_end_file("main.c")
	.dwattr DW$79, DW_AT_end_line(0xc6)
	.dwattr DW$79, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$79

	.sect	".text"
	.global	_convolve_opt

DW$100	.dwtag  DW_TAG_subprogram, DW_AT_name("convolve_opt"), DW_AT_symbol_name("_convolve_opt")
	.dwattr DW$100, DW_AT_low_pc(_convolve_opt)
	.dwattr DW$100, DW_AT_high_pc(0x00)
	.dwattr DW$100, DW_AT_begin_file("main.c")
	.dwattr DW$100, DW_AT_begin_line(0xc8)
	.dwattr DW$100, DW_AT_begin_column(0x05)
	.dwpsn	"main.c",200,63

	.dwfde DW$CIE

;******************************************************************************
;* FUNCTION NAME: _convolve_opt                                               *
;*                                                                            *
;*   Regs Modified     : A3,A4,B0,B4,B5,B6,B7,B9,SP                           *
;*   Regs Used         : A3,A4,A6,B0,B3,B4,B5,B6,B7,B9,SP                     *
;*   Local Frame Size  : 0 Args + 20 Auto + 0 Save = 20 byte                  *
;******************************************************************************
_convolve_opt:
;** --------------------------------------------------------------------------*
	.dwcfa	0x0e, 0
	.dwcfa	0x09, 126, 19
           SUB     .D2     SP,24,SP          ; |200| 
	.dwcfa	0x0e, 24
DW$101	.dwtag  DW_TAG_formal_parameter, DW_AT_name("w"), DW_AT_symbol_name("_w")
	.dwattr DW$101, DW_AT_type(*DW$T$44)
	.dwattr DW$101, DW_AT_location[DW_OP_reg4]
DW$102	.dwtag  DW_TAG_formal_parameter, DW_AT_name("x"), DW_AT_symbol_name("_x")
	.dwattr DW$102, DW_AT_type(*DW$T$44)
	.dwattr DW$102, DW_AT_location[DW_OP_reg20]
DW$103	.dwtag  DW_TAG_formal_parameter, DW_AT_name("n"), DW_AT_symbol_name("_n")
	.dwattr DW$103, DW_AT_type(*DW$T$10)
	.dwattr DW$103, DW_AT_location[DW_OP_reg6]
DW$104	.dwtag  DW_TAG_variable, DW_AT_name("w"), DW_AT_symbol_name("_w")
	.dwattr DW$104, DW_AT_type(*DW$T$44)
	.dwattr DW$104, DW_AT_location[DW_OP_breg31 4]
DW$105	.dwtag  DW_TAG_variable, DW_AT_name("x"), DW_AT_symbol_name("_x")
	.dwattr DW$105, DW_AT_type(*DW$T$44)
	.dwattr DW$105, DW_AT_location[DW_OP_breg31 8]
DW$106	.dwtag  DW_TAG_variable, DW_AT_name("n"), DW_AT_symbol_name("_n")
	.dwattr DW$106, DW_AT_type(*DW$T$10)
	.dwattr DW$106, DW_AT_location[DW_OP_breg31 12]
DW$107	.dwtag  DW_TAG_variable, DW_AT_name("i"), DW_AT_symbol_name("_i")
	.dwattr DW$107, DW_AT_type(*DW$T$10)
	.dwattr DW$107, DW_AT_location[DW_OP_breg31 16]
DW$108	.dwtag  DW_TAG_variable, DW_AT_name("result"), DW_AT_symbol_name("_result")
	.dwattr DW$108, DW_AT_type(*DW$T$10)
	.dwattr DW$108, DW_AT_location[DW_OP_breg31 20]
           STW     .D2T1   A6,*+SP(12)       ; |200| 

           STW     .D2T1   A4,*+SP(4)        ; |200| 
||         MV      .L1X    B4,A3             ; |200| 

           STW     .D2T1   A3,*+SP(8)        ; |200| 
           NOP             2
	.dwpsn	"main.c",201,6
           ZERO    .L2     B4                ; |201| 
           STW     .D2T2   B4,*+SP(16)       ; |201| 
           NOP             2
	.dwpsn	"main.c",202,6
           STW     .D2T2   B4,*+SP(20)       ; |202| 
           NOP             2
	.dwpsn	"main.c",205,8
           LDW     .D2T2   *+SP(16),B5       ; |205| 
           NOP             4
           CMPLT   .L2X    B5,A6,B0          ; |205| 
   [!B0]   B       .S1     L20               ; |205| 
           NOP             5
           ; BRANCHCC OCCURS {L20}           ; |205| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Software pipelining disabled
;*----------------------------------------------------------------------------*
L19:    
DW$L$_convolve_opt$2$B:
	.dwpsn	"main.c",206,3
           SUB     .L2X    A6,B5,B7          ; |206| 
           MV      .L2X    A4,B6

           SUB     .L2     B7,1,B6           ; |206| 
||         LDH     .D2T2   *+B6[B5],B5       ; |206| 
||         MV      .S2X    A3,B4

           LDH     .D2T2   *+B4[B6],B6       ; |206| 
           LDW     .D2T2   *+SP(20),B9       ; |206| 
           NOP             3
           MPY     .M2     B6,B5,B5          ; |206| 
           NOP             1
           ADD     .L2     B5,B9,B4          ; |206| 
           STW     .D2T2   B4,*+SP(20)       ; |206| 
           NOP             2
	.dwpsn	"main.c",205,15
           LDW     .D2T2   *+SP(16),B4       ; |205| 
           NOP             4
           ADD     .L2     1,B4,B4           ; |205| 
           STW     .D2T2   B4,*+SP(16)       ; |205| 
           NOP             2
	.dwpsn	"main.c",205,8
           LDW     .D2T2   *+SP(16),B5       ; |205| 
           NOP             4
           CMPLT   .L2X    B5,A6,B0          ; |205| 
   [ B0]   B       .S1     L19               ; |205| 
           NOP             5
           ; BRANCHCC OCCURS {L19}           ; |205| 
DW$L$_convolve_opt$2$E:
;** --------------------------------------------------------------------------*
L20:    
	.dwpsn	"main.c",209,2
           LDW     .D2T1   *+SP(20),A4       ; |209| 
           NOP             4
	.dwpsn	"main.c",210,1
           ADDK    .S2     24,SP             ; |210| 
	.dwcfa	0x0e, 0
           RET     .S2     B3                ; |210| 
           NOP             5
           ; BRANCH OCCURS {B3}              ; |210| 

DW$109	.dwtag  DW_TAG_loop
	.dwattr DW$109, DW_AT_name("H:\SPH\firmware\lab3\main.asm:L19:1:1351503931")
	.dwattr DW$109, DW_AT_begin_file("main.c")
	.dwattr DW$109, DW_AT_begin_line(0xcd)
	.dwattr DW$109, DW_AT_end_line(0xcf)
DW$110	.dwtag  DW_TAG_loop_range
	.dwattr DW$110, DW_AT_low_pc(DW$L$_convolve_opt$2$B)
	.dwattr DW$110, DW_AT_high_pc(DW$L$_convolve_opt$2$E)
	.dwendtag DW$109

	.dwattr DW$100, DW_AT_end_file("main.c")
	.dwattr DW$100, DW_AT_end_line(0xd2)
	.dwattr DW$100, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$100

	.sect	".text"
	.global	_convolve_c

DW$111	.dwtag  DW_TAG_subprogram, DW_AT_name("convolve_c"), DW_AT_symbol_name("_convolve_c")
	.dwattr DW$111, DW_AT_low_pc(_convolve_c)
	.dwattr DW$111, DW_AT_high_pc(0x00)
	.dwattr DW$111, DW_AT_begin_file("main.c")
	.dwattr DW$111, DW_AT_begin_line(0xd4)
	.dwattr DW$111, DW_AT_begin_column(0x05)
	.dwpsn	"main.c",212,55

	.dwfde DW$CIE

;******************************************************************************
;* FUNCTION NAME: _convolve_c                                                 *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP                                      *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP                                      *
;*   Local Frame Size  : 0 Args + 24 Auto + 4 Save = 28 byte                  *
;******************************************************************************
_convolve_c:
;** --------------------------------------------------------------------------*
	.dwcfa	0x0e, 0
	.dwcfa	0x09, 126, 19
           STW     .D2T2   B3,*SP--(32)      ; |212| 
           NOP             2
	.dwcfa	0x0e, 32
	.dwcfa	0x80, 19, 0
DW$112	.dwtag  DW_TAG_formal_parameter, DW_AT_name("a"), DW_AT_symbol_name("_a")
	.dwattr DW$112, DW_AT_type(*DW$T$51)
	.dwattr DW$112, DW_AT_location[DW_OP_reg4]
DW$113	.dwtag  DW_TAG_formal_parameter, DW_AT_name("b"), DW_AT_symbol_name("_b")
	.dwattr DW$113, DW_AT_type(*DW$T$51)
	.dwattr DW$113, DW_AT_location[DW_OP_reg20]
DW$114	.dwtag  DW_TAG_formal_parameter, DW_AT_name("b_offset"), DW_AT_symbol_name("_b_offset")
	.dwattr DW$114, DW_AT_type(*DW$T$10)
	.dwattr DW$114, DW_AT_location[DW_OP_reg6]
DW$115	.dwtag  DW_TAG_formal_parameter, DW_AT_name("len"), DW_AT_symbol_name("_len")
	.dwattr DW$115, DW_AT_type(*DW$T$10)
	.dwattr DW$115, DW_AT_location[DW_OP_reg22]
DW$116	.dwtag  DW_TAG_variable, DW_AT_name("a"), DW_AT_symbol_name("_a")
	.dwattr DW$116, DW_AT_type(*DW$T$51)
	.dwattr DW$116, DW_AT_location[DW_OP_breg31 4]
DW$117	.dwtag  DW_TAG_variable, DW_AT_name("b"), DW_AT_symbol_name("_b")
	.dwattr DW$117, DW_AT_type(*DW$T$51)
	.dwattr DW$117, DW_AT_location[DW_OP_breg31 8]
DW$118	.dwtag  DW_TAG_variable, DW_AT_name("b_offset"), DW_AT_symbol_name("_b_offset")
	.dwattr DW$118, DW_AT_type(*DW$T$10)
	.dwattr DW$118, DW_AT_location[DW_OP_breg31 12]
DW$119	.dwtag  DW_TAG_variable, DW_AT_name("len"), DW_AT_symbol_name("_len")
	.dwattr DW$119, DW_AT_type(*DW$T$10)
	.dwattr DW$119, DW_AT_location[DW_OP_breg31 16]
DW$120	.dwtag  DW_TAG_variable, DW_AT_name("i"), DW_AT_symbol_name("_i")
	.dwattr DW$120, DW_AT_type(*DW$T$10)
	.dwattr DW$120, DW_AT_location[DW_OP_breg31 20]
DW$121	.dwtag  DW_TAG_variable, DW_AT_name("result"), DW_AT_symbol_name("_result")
	.dwattr DW$121, DW_AT_type(*DW$T$10)
	.dwattr DW$121, DW_AT_location[DW_OP_breg31 24]
           STW     .D2T2   B6,*+SP(16)       ; |212| 
           STW     .D2T1   A6,*+SP(12)       ; |212| 

           STW     .D2T1   A4,*+SP(4)        ; |212| 
||         MV      .L1X    B4,A3             ; |212| 

           STW     .D2T1   A3,*+SP(8)        ; |212| 
           NOP             2
	.dwpsn	"main.c",216,2
           ZERO    .L2     B4                ; |216| 
           STW     .D2T2   B4,*+SP(24)       ; |216| 
           NOP             2
	.dwpsn	"main.c",218,6
           STW     .D2T2   B4,*+SP(20)       ; |218| 
           NOP             2
	.dwpsn	"main.c",218,12
           LDW     .D2T2   *+SP(20),B5       ; |218| 
           MV      .L2     B6,B4
           NOP             3
           CMPLT   .L2     B5,B6,B0          ; |218| 
   [!B0]   B       .S1     L23               ; |218| 
           NOP             5
           ; BRANCHCC OCCURS {L23}           ; |218| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Software pipelining disabled
;*----------------------------------------------------------------------------*
L21:    
DW$L$_convolve_c$2$B:
	.dwpsn	"main.c",219,3
           LDW     .D2T2   *+SP(12),B5       ; |219| 
           NOP             4
           CMPLT   .L2     B5,B4,B0          ; |219| 
   [ B0]   B       .S1     L22               ; |219| 
           NOP             5
           ; BRANCHCC OCCURS {L22}           ; |219| 
DW$L$_convolve_c$2$E:
;** --------------------------------------------------------------------------*
DW$L$_convolve_c$3$B:
	.dwpsn	"main.c",219,23
           ZERO    .L2     B4                ; |219| 
           STW     .D2T2   B4,*+SP(12)       ; |219| 
DW$L$_convolve_c$3$E:
;** --------------------------------------------------------------------------*
L22:    
DW$L$_convolve_c$4$B:
	.dwpsn	"main.c",220,3
           LDW     .D2T2   *+SP(20),B7       ; |220| 
           LDW     .D2T2   *+SP(16),B8       ; |220| 
           LDW     .D2T2   *+SP(8),B5        ; |220| 
           LDW     .D2T2   *+SP(12),B4       ; |220| 
           LDW     .D2T2   *+SP(4),B6        ; |220| 
           MVKL    .S2     RL22,B3           ; |220| 
           MVKH    .S2     RL22,B3           ; |220| 
           SUB     .L2     B8,B7,B7          ; |220| 

           SUB     .L2     B7,1,B5           ; |220| 
||         LDW     .D2T2   *+B5[B4],B4       ; |220| 
||         CALL    .S1     _multiply         ; |220| 

           LDW     .D2T1   *+B6[B5],A4       ; |220| 
           NOP             4
RL22:      ; CALL OCCURS {_multiply}         ; |220| 
           LDW     .D2T2   *+SP(24),B4       ; |220| 
           NOP             4
           ADD     .L2X    A4,B4,B4          ; |220| 
           STW     .D2T2   B4,*+SP(24)       ; |220| 
           NOP             2
	.dwpsn	"main.c",221,3
           LDW     .D2T2   *+SP(12),B4       ; |221| 
           NOP             4
           ADD     .L2     1,B4,B4           ; |221| 
           STW     .D2T2   B4,*+SP(12)       ; |221| 
           NOP             2
	.dwpsn	"main.c",218,20
           LDW     .D2T2   *+SP(20),B4       ; |218| 
           NOP             4
           ADD     .L2     1,B4,B4           ; |218| 
           STW     .D2T2   B4,*+SP(20)       ; |218| 
           NOP             2
	.dwpsn	"main.c",218,12
           LDW     .D2T2   *+SP(16),B4       ; |218| 
           LDW     .D2T2   *+SP(20),B5       ; |218| 
           NOP             4
           CMPLT   .L2     B5,B4,B0          ; |218| 
   [ B0]   B       .S1     L21               ; |218| 
           NOP             5
           ; BRANCHCC OCCURS {L21}           ; |218| 
DW$L$_convolve_c$4$E:
;** --------------------------------------------------------------------------*
L23:    
	.dwpsn	"main.c",224,2
           LDW     .D2T1   *+SP(24),A4       ; |224| 
           NOP             4
	.dwpsn	"main.c",225,1
           LDW     .D2T2   *++SP(32),B3      ; |225| 
           NOP             4
	.dwcfa	0xc0, 19
	.dwcfa	0x0e, 0
           RET     .S2     B3                ; |225| 
           NOP             5
           ; BRANCH OCCURS {B3}              ; |225| 

DW$122	.dwtag  DW_TAG_loop
	.dwattr DW$122, DW_AT_name("H:\SPH\firmware\lab3\main.asm:L21:1:1351503931")
	.dwattr DW$122, DW_AT_begin_file("main.c")
	.dwattr DW$122, DW_AT_begin_line(0xda)
	.dwattr DW$122, DW_AT_end_line(0xde)
DW$123	.dwtag  DW_TAG_loop_range
	.dwattr DW$123, DW_AT_low_pc(DW$L$_convolve_c$2$B)
	.dwattr DW$123, DW_AT_high_pc(DW$L$_convolve_c$2$E)
DW$124	.dwtag  DW_TAG_loop_range
	.dwattr DW$124, DW_AT_low_pc(DW$L$_convolve_c$3$B)
	.dwattr DW$124, DW_AT_high_pc(DW$L$_convolve_c$3$E)
DW$125	.dwtag  DW_TAG_loop_range
	.dwattr DW$125, DW_AT_low_pc(DW$L$_convolve_c$4$B)
	.dwattr DW$125, DW_AT_high_pc(DW$L$_convolve_c$4$E)
	.dwendtag DW$122

	.dwattr DW$111, DW_AT_end_file("main.c")
	.dwattr DW$111, DW_AT_end_line(0xe1)
	.dwattr DW$111, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$111

;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************
	.global	_IRQ_enable
	.global	_IRQ_globalEnable
	.global	_DSK6713_init
	.global	_DSK6713_AIC23_openCodec
	.global	_DSK6713_AIC23_closeCodec
	.global	_DSK6713_AIC23_write
	.global	_DSK6713_AIC23_read
	.global	_DSK6713_AIC23_setFreq
	.global	_convolve_as_func
	.global	_exit
	.global	__mpyll

;******************************************************************************
;* TYPE INFORMATION                                                           *
;******************************************************************************

DW$T$22	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$22, DW_AT_language(DW_LANG_C)
DW$126	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$21)
	.dwendtag DW$T$22


DW$T$24	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$24, DW_AT_language(DW_LANG_C)

DW$T$27	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$27, DW_AT_language(DW_LANG_C)
DW$127	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$26)
	.dwendtag DW$T$27


DW$T$29	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$29, DW_AT_language(DW_LANG_C)
DW$128	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$26)
DW$129	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$21)
	.dwendtag DW$T$29


DW$T$31	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$31, DW_AT_language(DW_LANG_C)
DW$T$34	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$34, DW_AT_type(*DW$T$33)
DW$T$35	.dwtag  DW_TAG_typedef, DW_AT_name("Int16"), DW_AT_type(*DW$T$8)
	.dwattr DW$T$35, DW_AT_language(DW_LANG_C)

DW$T$36	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$35)
	.dwattr DW$T$36, DW_AT_language(DW_LANG_C)
DW$130	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$26)
DW$131	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$21)
	.dwendtag DW$T$36


DW$T$39	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$35)
	.dwattr DW$T$39, DW_AT_language(DW_LANG_C)
DW$132	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$26)
DW$133	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$38)
	.dwendtag DW$T$39


DW$T$41	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$35)
	.dwattr DW$T$41, DW_AT_language(DW_LANG_C)
DW$134	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$35)
DW$135	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$35)
	.dwendtag DW$T$41

DW$T$44	.dwtag  DW_TAG_restrict_type
	.dwattr DW$T$44, DW_AT_type(*DW$T$43)
DW$T$10	.dwtag  DW_TAG_base_type, DW_AT_name("int")
	.dwattr DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr DW$T$10, DW_AT_byte_size(0x04)
DW$T$26	.dwtag  DW_TAG_typedef, DW_AT_name("DSK6713_AIC23_CodecHandle"), DW_AT_type(*DW$T$10)
	.dwattr DW$T$26, DW_AT_language(DW_LANG_C)

DW$T$47	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$26)
	.dwattr DW$T$47, DW_AT_language(DW_LANG_C)
DW$136	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$137	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$46)
	.dwendtag DW$T$47


DW$T$49	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$49, DW_AT_language(DW_LANG_C)
DW$T$51	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$51, DW_AT_address_class(0x20)

DW$T$52	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$52, DW_AT_language(DW_LANG_C)
DW$138	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$51)
DW$139	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$51)
DW$140	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$141	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$52


DW$T$53	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$53, DW_AT_language(DW_LANG_C)
DW$142	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$143	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$53


DW$T$55	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$55, DW_AT_language(DW_LANG_C)
DW$144	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$43)
DW$145	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$43)
DW$146	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$55


DW$T$56	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$56, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$56, DW_AT_byte_size(0xcc)
DW$147	.dwtag  DW_TAG_subrange_type
	.dwattr DW$147, DW_AT_upper_bound(0x32)
	.dwendtag DW$T$56


DW$T$57	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$57, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$57, DW_AT_byte_size(0x100)
DW$148	.dwtag  DW_TAG_subrange_type
	.dwattr DW$148, DW_AT_upper_bound(0x3f)
	.dwendtag DW$T$57

DW$T$21	.dwtag  DW_TAG_typedef, DW_AT_name("Uint32"), DW_AT_type(*DW$T$11)
	.dwattr DW$T$21, DW_AT_language(DW_LANG_C)
DW$T$38	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$21)
	.dwattr DW$T$38, DW_AT_address_class(0x20)
DW$T$14	.dwtag  DW_TAG_base_type, DW_AT_name("long long")
	.dwattr DW$T$14, DW_AT_encoding(DW_ATE_signed)
	.dwattr DW$T$14, DW_AT_byte_size(0x08)
DW$T$45	.dwtag  DW_TAG_typedef, DW_AT_name("DSK6713_AIC23_Config"), DW_AT_type(*DW$T$20)
	.dwattr DW$T$45, DW_AT_language(DW_LANG_C)
DW$T$46	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$45)
	.dwattr DW$T$46, DW_AT_address_class(0x20)
DW$T$33	.dwtag  DW_TAG_typedef, DW_AT_name("Uint8"), DW_AT_type(*DW$T$6)
	.dwattr DW$T$33, DW_AT_language(DW_LANG_C)
DW$T$8	.dwtag  DW_TAG_base_type, DW_AT_name("short")
	.dwattr DW$T$8, DW_AT_encoding(DW_ATE_signed)
	.dwattr DW$T$8, DW_AT_byte_size(0x02)
DW$T$43	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$35)
	.dwattr DW$T$43, DW_AT_address_class(0x20)
DW$T$11	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned int")
	.dwattr DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$11, DW_AT_byte_size(0x04)

DW$T$20	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$20, DW_AT_name("DSK6713_AIC23_Config")
	.dwattr DW$T$20, DW_AT_byte_size(0x28)
DW$149	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$149, DW_AT_name("regs"), DW_AT_symbol_name("_regs")
	.dwattr DW$149, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$149, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$20

DW$T$6	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned char")
	.dwattr DW$T$6, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr DW$T$6, DW_AT_byte_size(0x01)

DW$T$19	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$19, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$19, DW_AT_byte_size(0x28)
DW$150	.dwtag  DW_TAG_subrange_type
	.dwattr DW$150, DW_AT_upper_bound(0x09)
	.dwendtag DW$T$19


	.dwattr DW$79, DW_AT_external(0x01)
	.dwattr DW$79, DW_AT_type(*DW$T$10)
	.dwattr DW$111, DW_AT_external(0x01)
	.dwattr DW$111, DW_AT_type(*DW$T$10)
	.dwattr DW$100, DW_AT_external(0x01)
	.dwattr DW$100, DW_AT_type(*DW$T$10)
	.dwattr DW$62, DW_AT_external(0x01)
	.dwattr DW$42, DW_AT_external(0x01)
	.dwattr DW$42, DW_AT_type(*DW$T$10)
	.dwattr DW$70, DW_AT_external(0x01)
	.dwattr DW$70, DW_AT_type(*DW$T$10)
	.dwattr DW$56, DW_AT_external(0x01)
	.dwattr DW$56, DW_AT_type(*DW$T$35)
	.dwattr DW$77, DW_AT_external(0x01)
	.dwattr DW$50, DW_AT_external(0x01)
	.dwattr DW$78, DW_AT_external(0x01)
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

DW$151	.dwtag  DW_TAG_assign_register, DW_AT_name("A0")
	.dwattr DW$151, DW_AT_location[DW_OP_reg0]
DW$152	.dwtag  DW_TAG_assign_register, DW_AT_name("A1")
	.dwattr DW$152, DW_AT_location[DW_OP_reg1]
DW$153	.dwtag  DW_TAG_assign_register, DW_AT_name("A2")
	.dwattr DW$153, DW_AT_location[DW_OP_reg2]
DW$154	.dwtag  DW_TAG_assign_register, DW_AT_name("A3")
	.dwattr DW$154, DW_AT_location[DW_OP_reg3]
DW$155	.dwtag  DW_TAG_assign_register, DW_AT_name("A4")
	.dwattr DW$155, DW_AT_location[DW_OP_reg4]
DW$156	.dwtag  DW_TAG_assign_register, DW_AT_name("A5")
	.dwattr DW$156, DW_AT_location[DW_OP_reg5]
DW$157	.dwtag  DW_TAG_assign_register, DW_AT_name("A6")
	.dwattr DW$157, DW_AT_location[DW_OP_reg6]
DW$158	.dwtag  DW_TAG_assign_register, DW_AT_name("A7")
	.dwattr DW$158, DW_AT_location[DW_OP_reg7]
DW$159	.dwtag  DW_TAG_assign_register, DW_AT_name("A8")
	.dwattr DW$159, DW_AT_location[DW_OP_reg8]
DW$160	.dwtag  DW_TAG_assign_register, DW_AT_name("A9")
	.dwattr DW$160, DW_AT_location[DW_OP_reg9]
DW$161	.dwtag  DW_TAG_assign_register, DW_AT_name("A10")
	.dwattr DW$161, DW_AT_location[DW_OP_reg10]
DW$162	.dwtag  DW_TAG_assign_register, DW_AT_name("A11")
	.dwattr DW$162, DW_AT_location[DW_OP_reg11]
DW$163	.dwtag  DW_TAG_assign_register, DW_AT_name("A12")
	.dwattr DW$163, DW_AT_location[DW_OP_reg12]
DW$164	.dwtag  DW_TAG_assign_register, DW_AT_name("A13")
	.dwattr DW$164, DW_AT_location[DW_OP_reg13]
DW$165	.dwtag  DW_TAG_assign_register, DW_AT_name("A14")
	.dwattr DW$165, DW_AT_location[DW_OP_reg14]
DW$166	.dwtag  DW_TAG_assign_register, DW_AT_name("A15")
	.dwattr DW$166, DW_AT_location[DW_OP_reg15]
DW$167	.dwtag  DW_TAG_assign_register, DW_AT_name("B0")
	.dwattr DW$167, DW_AT_location[DW_OP_reg16]
DW$168	.dwtag  DW_TAG_assign_register, DW_AT_name("B1")
	.dwattr DW$168, DW_AT_location[DW_OP_reg17]
DW$169	.dwtag  DW_TAG_assign_register, DW_AT_name("B2")
	.dwattr DW$169, DW_AT_location[DW_OP_reg18]
DW$170	.dwtag  DW_TAG_assign_register, DW_AT_name("B3")
	.dwattr DW$170, DW_AT_location[DW_OP_reg19]
DW$171	.dwtag  DW_TAG_assign_register, DW_AT_name("B4")
	.dwattr DW$171, DW_AT_location[DW_OP_reg20]
DW$172	.dwtag  DW_TAG_assign_register, DW_AT_name("B5")
	.dwattr DW$172, DW_AT_location[DW_OP_reg21]
DW$173	.dwtag  DW_TAG_assign_register, DW_AT_name("B6")
	.dwattr DW$173, DW_AT_location[DW_OP_reg22]
DW$174	.dwtag  DW_TAG_assign_register, DW_AT_name("B7")
	.dwattr DW$174, DW_AT_location[DW_OP_reg23]
DW$175	.dwtag  DW_TAG_assign_register, DW_AT_name("B8")
	.dwattr DW$175, DW_AT_location[DW_OP_reg24]
DW$176	.dwtag  DW_TAG_assign_register, DW_AT_name("B9")
	.dwattr DW$176, DW_AT_location[DW_OP_reg25]
DW$177	.dwtag  DW_TAG_assign_register, DW_AT_name("B10")
	.dwattr DW$177, DW_AT_location[DW_OP_reg26]
DW$178	.dwtag  DW_TAG_assign_register, DW_AT_name("B11")
	.dwattr DW$178, DW_AT_location[DW_OP_reg27]
DW$179	.dwtag  DW_TAG_assign_register, DW_AT_name("B12")
	.dwattr DW$179, DW_AT_location[DW_OP_reg28]
DW$180	.dwtag  DW_TAG_assign_register, DW_AT_name("B13")
	.dwattr DW$180, DW_AT_location[DW_OP_reg29]
DW$181	.dwtag  DW_TAG_assign_register, DW_AT_name("DP")
	.dwattr DW$181, DW_AT_location[DW_OP_reg30]
DW$182	.dwtag  DW_TAG_assign_register, DW_AT_name("SP")
	.dwattr DW$182, DW_AT_location[DW_OP_reg31]
DW$183	.dwtag  DW_TAG_assign_register, DW_AT_name("FP")
	.dwattr DW$183, DW_AT_location[DW_OP_regx 0x20]
DW$184	.dwtag  DW_TAG_assign_register, DW_AT_name("PC")
	.dwattr DW$184, DW_AT_location[DW_OP_regx 0x21]
DW$185	.dwtag  DW_TAG_assign_register, DW_AT_name("IRP")
	.dwattr DW$185, DW_AT_location[DW_OP_regx 0x22]
DW$186	.dwtag  DW_TAG_assign_register, DW_AT_name("IFR")
	.dwattr DW$186, DW_AT_location[DW_OP_regx 0x23]
DW$187	.dwtag  DW_TAG_assign_register, DW_AT_name("NRP")
	.dwattr DW$187, DW_AT_location[DW_OP_regx 0x24]
DW$188	.dwtag  DW_TAG_assign_register, DW_AT_name("A16")
	.dwattr DW$188, DW_AT_location[DW_OP_regx 0x25]
DW$189	.dwtag  DW_TAG_assign_register, DW_AT_name("A17")
	.dwattr DW$189, DW_AT_location[DW_OP_regx 0x26]
DW$190	.dwtag  DW_TAG_assign_register, DW_AT_name("A18")
	.dwattr DW$190, DW_AT_location[DW_OP_regx 0x27]
DW$191	.dwtag  DW_TAG_assign_register, DW_AT_name("A19")
	.dwattr DW$191, DW_AT_location[DW_OP_regx 0x28]
DW$192	.dwtag  DW_TAG_assign_register, DW_AT_name("A20")
	.dwattr DW$192, DW_AT_location[DW_OP_regx 0x29]
DW$193	.dwtag  DW_TAG_assign_register, DW_AT_name("A21")
	.dwattr DW$193, DW_AT_location[DW_OP_regx 0x2a]
DW$194	.dwtag  DW_TAG_assign_register, DW_AT_name("A22")
	.dwattr DW$194, DW_AT_location[DW_OP_regx 0x2b]
DW$195	.dwtag  DW_TAG_assign_register, DW_AT_name("A23")
	.dwattr DW$195, DW_AT_location[DW_OP_regx 0x2c]
DW$196	.dwtag  DW_TAG_assign_register, DW_AT_name("A24")
	.dwattr DW$196, DW_AT_location[DW_OP_regx 0x2d]
DW$197	.dwtag  DW_TAG_assign_register, DW_AT_name("A25")
	.dwattr DW$197, DW_AT_location[DW_OP_regx 0x2e]
DW$198	.dwtag  DW_TAG_assign_register, DW_AT_name("A26")
	.dwattr DW$198, DW_AT_location[DW_OP_regx 0x2f]
DW$199	.dwtag  DW_TAG_assign_register, DW_AT_name("A27")
	.dwattr DW$199, DW_AT_location[DW_OP_regx 0x30]
DW$200	.dwtag  DW_TAG_assign_register, DW_AT_name("A28")
	.dwattr DW$200, DW_AT_location[DW_OP_regx 0x31]
DW$201	.dwtag  DW_TAG_assign_register, DW_AT_name("A29")
	.dwattr DW$201, DW_AT_location[DW_OP_regx 0x32]
DW$202	.dwtag  DW_TAG_assign_register, DW_AT_name("A30")
	.dwattr DW$202, DW_AT_location[DW_OP_regx 0x33]
DW$203	.dwtag  DW_TAG_assign_register, DW_AT_name("A31")
	.dwattr DW$203, DW_AT_location[DW_OP_regx 0x34]
DW$204	.dwtag  DW_TAG_assign_register, DW_AT_name("B16")
	.dwattr DW$204, DW_AT_location[DW_OP_regx 0x35]
DW$205	.dwtag  DW_TAG_assign_register, DW_AT_name("B17")
	.dwattr DW$205, DW_AT_location[DW_OP_regx 0x36]
DW$206	.dwtag  DW_TAG_assign_register, DW_AT_name("B18")
	.dwattr DW$206, DW_AT_location[DW_OP_regx 0x37]
DW$207	.dwtag  DW_TAG_assign_register, DW_AT_name("B19")
	.dwattr DW$207, DW_AT_location[DW_OP_regx 0x38]
DW$208	.dwtag  DW_TAG_assign_register, DW_AT_name("B20")
	.dwattr DW$208, DW_AT_location[DW_OP_regx 0x39]
DW$209	.dwtag  DW_TAG_assign_register, DW_AT_name("B21")
	.dwattr DW$209, DW_AT_location[DW_OP_regx 0x3a]
DW$210	.dwtag  DW_TAG_assign_register, DW_AT_name("B22")
	.dwattr DW$210, DW_AT_location[DW_OP_regx 0x3b]
DW$211	.dwtag  DW_TAG_assign_register, DW_AT_name("B23")
	.dwattr DW$211, DW_AT_location[DW_OP_regx 0x3c]
DW$212	.dwtag  DW_TAG_assign_register, DW_AT_name("B24")
	.dwattr DW$212, DW_AT_location[DW_OP_regx 0x3d]
DW$213	.dwtag  DW_TAG_assign_register, DW_AT_name("B25")
	.dwattr DW$213, DW_AT_location[DW_OP_regx 0x3e]
DW$214	.dwtag  DW_TAG_assign_register, DW_AT_name("B26")
	.dwattr DW$214, DW_AT_location[DW_OP_regx 0x3f]
DW$215	.dwtag  DW_TAG_assign_register, DW_AT_name("B27")
	.dwattr DW$215, DW_AT_location[DW_OP_regx 0x40]
DW$216	.dwtag  DW_TAG_assign_register, DW_AT_name("B28")
	.dwattr DW$216, DW_AT_location[DW_OP_regx 0x41]
DW$217	.dwtag  DW_TAG_assign_register, DW_AT_name("B29")
	.dwattr DW$217, DW_AT_location[DW_OP_regx 0x42]
DW$218	.dwtag  DW_TAG_assign_register, DW_AT_name("B30")
	.dwattr DW$218, DW_AT_location[DW_OP_regx 0x43]
DW$219	.dwtag  DW_TAG_assign_register, DW_AT_name("B31")
	.dwattr DW$219, DW_AT_location[DW_OP_regx 0x44]
DW$220	.dwtag  DW_TAG_assign_register, DW_AT_name("AMR")
	.dwattr DW$220, DW_AT_location[DW_OP_regx 0x45]
DW$221	.dwtag  DW_TAG_assign_register, DW_AT_name("CSR")
	.dwattr DW$221, DW_AT_location[DW_OP_regx 0x46]
DW$222	.dwtag  DW_TAG_assign_register, DW_AT_name("ISR")
	.dwattr DW$222, DW_AT_location[DW_OP_regx 0x47]
DW$223	.dwtag  DW_TAG_assign_register, DW_AT_name("ICR")
	.dwattr DW$223, DW_AT_location[DW_OP_regx 0x48]
DW$224	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$224, DW_AT_location[DW_OP_regx 0x49]
DW$225	.dwtag  DW_TAG_assign_register, DW_AT_name("ISTP")
	.dwattr DW$225, DW_AT_location[DW_OP_regx 0x4a]
DW$226	.dwtag  DW_TAG_assign_register, DW_AT_name("IN")
	.dwattr DW$226, DW_AT_location[DW_OP_regx 0x4b]
DW$227	.dwtag  DW_TAG_assign_register, DW_AT_name("OUT")
	.dwattr DW$227, DW_AT_location[DW_OP_regx 0x4c]
DW$228	.dwtag  DW_TAG_assign_register, DW_AT_name("ACR")
	.dwattr DW$228, DW_AT_location[DW_OP_regx 0x4d]
DW$229	.dwtag  DW_TAG_assign_register, DW_AT_name("ADR")
	.dwattr DW$229, DW_AT_location[DW_OP_regx 0x4e]
DW$230	.dwtag  DW_TAG_assign_register, DW_AT_name("FADCR")
	.dwattr DW$230, DW_AT_location[DW_OP_regx 0x4f]
DW$231	.dwtag  DW_TAG_assign_register, DW_AT_name("FAUCR")
	.dwattr DW$231, DW_AT_location[DW_OP_regx 0x50]
DW$232	.dwtag  DW_TAG_assign_register, DW_AT_name("FMCR")
	.dwattr DW$232, DW_AT_location[DW_OP_regx 0x51]
DW$233	.dwtag  DW_TAG_assign_register, DW_AT_name("GFPGFR")
	.dwattr DW$233, DW_AT_location[DW_OP_regx 0x52]
DW$234	.dwtag  DW_TAG_assign_register, DW_AT_name("DIER")
	.dwattr DW$234, DW_AT_location[DW_OP_regx 0x53]
DW$235	.dwtag  DW_TAG_assign_register, DW_AT_name("REP")
	.dwattr DW$235, DW_AT_location[DW_OP_regx 0x54]
DW$236	.dwtag  DW_TAG_assign_register, DW_AT_name("TSCL")
	.dwattr DW$236, DW_AT_location[DW_OP_regx 0x55]
DW$237	.dwtag  DW_TAG_assign_register, DW_AT_name("TSCH")
	.dwattr DW$237, DW_AT_location[DW_OP_regx 0x56]
DW$238	.dwtag  DW_TAG_assign_register, DW_AT_name("ARP")
	.dwattr DW$238, DW_AT_location[DW_OP_regx 0x57]
DW$239	.dwtag  DW_TAG_assign_register, DW_AT_name("ILC")
	.dwattr DW$239, DW_AT_location[DW_OP_regx 0x58]
DW$240	.dwtag  DW_TAG_assign_register, DW_AT_name("RILC")
	.dwattr DW$240, DW_AT_location[DW_OP_regx 0x59]
DW$241	.dwtag  DW_TAG_assign_register, DW_AT_name("DNUM")
	.dwattr DW$241, DW_AT_location[DW_OP_regx 0x5a]
DW$242	.dwtag  DW_TAG_assign_register, DW_AT_name("SSR")
	.dwattr DW$242, DW_AT_location[DW_OP_regx 0x5b]
DW$243	.dwtag  DW_TAG_assign_register, DW_AT_name("GPLYA")
	.dwattr DW$243, DW_AT_location[DW_OP_regx 0x5c]
DW$244	.dwtag  DW_TAG_assign_register, DW_AT_name("GPLYB")
	.dwattr DW$244, DW_AT_location[DW_OP_regx 0x5d]
DW$245	.dwtag  DW_TAG_assign_register, DW_AT_name("TSR")
	.dwattr DW$245, DW_AT_location[DW_OP_regx 0x5e]
DW$246	.dwtag  DW_TAG_assign_register, DW_AT_name("ITSR")
	.dwattr DW$246, DW_AT_location[DW_OP_regx 0x5f]
DW$247	.dwtag  DW_TAG_assign_register, DW_AT_name("NTSR")
	.dwattr DW$247, DW_AT_location[DW_OP_regx 0x60]
DW$248	.dwtag  DW_TAG_assign_register, DW_AT_name("EFR")
	.dwattr DW$248, DW_AT_location[DW_OP_regx 0x61]
DW$249	.dwtag  DW_TAG_assign_register, DW_AT_name("ECR")
	.dwattr DW$249, DW_AT_location[DW_OP_regx 0x62]
DW$250	.dwtag  DW_TAG_assign_register, DW_AT_name("IERR")
	.dwattr DW$250, DW_AT_location[DW_OP_regx 0x63]
DW$251	.dwtag  DW_TAG_assign_register, DW_AT_name("DMSG")
	.dwattr DW$251, DW_AT_location[DW_OP_regx 0x64]
DW$252	.dwtag  DW_TAG_assign_register, DW_AT_name("CMSG")
	.dwattr DW$252, DW_AT_location[DW_OP_regx 0x65]
DW$253	.dwtag  DW_TAG_assign_register, DW_AT_name("DT_DMA_ADDR")
	.dwattr DW$253, DW_AT_location[DW_OP_regx 0x66]
DW$254	.dwtag  DW_TAG_assign_register, DW_AT_name("DT_DMA_DATA")
	.dwattr DW$254, DW_AT_location[DW_OP_regx 0x67]
DW$255	.dwtag  DW_TAG_assign_register, DW_AT_name("DT_DMA_CNTL")
	.dwattr DW$255, DW_AT_location[DW_OP_regx 0x68]
DW$256	.dwtag  DW_TAG_assign_register, DW_AT_name("TCU_CNTL")
	.dwattr DW$256, DW_AT_location[DW_OP_regx 0x69]
DW$257	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_REC_CNTL")
	.dwattr DW$257, DW_AT_location[DW_OP_regx 0x6a]
DW$258	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_XMT_CNTL")
	.dwattr DW$258, DW_AT_location[DW_OP_regx 0x6b]
DW$259	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_CFG")
	.dwattr DW$259, DW_AT_location[DW_OP_regx 0x6c]
DW$260	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_RDATA")
	.dwattr DW$260, DW_AT_location[DW_OP_regx 0x6d]
DW$261	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_WDATA")
	.dwattr DW$261, DW_AT_location[DW_OP_regx 0x6e]
DW$262	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_RADDR")
	.dwattr DW$262, DW_AT_location[DW_OP_regx 0x6f]
DW$263	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_WADDR")
	.dwattr DW$263, DW_AT_location[DW_OP_regx 0x70]
DW$264	.dwtag  DW_TAG_assign_register, DW_AT_name("MFREG0")
	.dwattr DW$264, DW_AT_location[DW_OP_regx 0x71]
DW$265	.dwtag  DW_TAG_assign_register, DW_AT_name("DBG_STAT")
	.dwattr DW$265, DW_AT_location[DW_OP_regx 0x72]
DW$266	.dwtag  DW_TAG_assign_register, DW_AT_name("BRK_EN")
	.dwattr DW$266, DW_AT_location[DW_OP_regx 0x73]
DW$267	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP0_CNT")
	.dwattr DW$267, DW_AT_location[DW_OP_regx 0x74]
DW$268	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP0")
	.dwattr DW$268, DW_AT_location[DW_OP_regx 0x75]
DW$269	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP1")
	.dwattr DW$269, DW_AT_location[DW_OP_regx 0x76]
DW$270	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP2")
	.dwattr DW$270, DW_AT_location[DW_OP_regx 0x77]
DW$271	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP3")
	.dwattr DW$271, DW_AT_location[DW_OP_regx 0x78]
DW$272	.dwtag  DW_TAG_assign_register, DW_AT_name("OVERLAY")
	.dwattr DW$272, DW_AT_location[DW_OP_regx 0x79]
DW$273	.dwtag  DW_TAG_assign_register, DW_AT_name("PC_PROF")
	.dwattr DW$273, DW_AT_location[DW_OP_regx 0x7a]
DW$274	.dwtag  DW_TAG_assign_register, DW_AT_name("ATSR")
	.dwattr DW$274, DW_AT_location[DW_OP_regx 0x7b]
DW$275	.dwtag  DW_TAG_assign_register, DW_AT_name("TRR")
	.dwattr DW$275, DW_AT_location[DW_OP_regx 0x7c]
DW$276	.dwtag  DW_TAG_assign_register, DW_AT_name("TCRR")
	.dwattr DW$276, DW_AT_location[DW_OP_regx 0x7d]
DW$277	.dwtag  DW_TAG_assign_register, DW_AT_name("CIE_RETA")
	.dwattr DW$277, DW_AT_location[DW_OP_regx 0x7e]
	.dwendtag DW$CU

