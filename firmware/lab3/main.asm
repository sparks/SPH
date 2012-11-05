;******************************************************************************
;* TMS320C6x C/C++ Codegen                                          PC v5.1.0 *
;* Date/Time created: Mon Nov 05 00:12:43 2012                                *
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
DW$7	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$44)
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
DW$20	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$49)
DW$21	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$49)
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
	.dwattr DW$25, DW_AT_type(*DW$T$43)
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
	.dwattr DW$29, DW_AT_type(*DW$T$54)
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
	.dwattr DW$31, DW_AT_type(*DW$T$55)
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
	.global	_start
	.bss	_start,4,4
DW$38	.dwtag  DW_TAG_variable, DW_AT_name("start"), DW_AT_symbol_name("_start")
	.dwattr DW$38, DW_AT_location[DW_OP_addr _start]
	.dwattr DW$38, DW_AT_type(*DW$T$56)
	.dwattr DW$38, DW_AT_external(0x01)
	.global	_end
	.bss	_end,4,4
DW$39	.dwtag  DW_TAG_variable, DW_AT_name("end"), DW_AT_symbol_name("_end")
	.dwattr DW$39, DW_AT_location[DW_OP_addr _end]
	.dwattr DW$39, DW_AT_type(*DW$T$56)
	.dwattr DW$39, DW_AT_external(0x01)
	.global	_diff
	.bss	_diff,4,4
DW$40	.dwtag  DW_TAG_variable, DW_AT_name("diff"), DW_AT_symbol_name("_diff")
	.dwattr DW$40, DW_AT_location[DW_OP_addr _diff]
	.dwattr DW$40, DW_AT_type(*DW$T$56)
	.dwattr DW$40, DW_AT_external(0x01)
	.global	_input_ready
	.bss	_input_ready,1,1
DW$41	.dwtag  DW_TAG_variable, DW_AT_name("input_ready"), DW_AT_symbol_name("_input_ready")
	.dwattr DW$41, DW_AT_location[DW_OP_addr _input_ready]
	.dwattr DW$41, DW_AT_type(*DW$T$34)
	.dwattr DW$41, DW_AT_external(0x01)
	.global	_output_ready
	.bss	_output_ready,1,1
DW$42	.dwtag  DW_TAG_variable, DW_AT_name("output_ready"), DW_AT_symbol_name("_output_ready")
	.dwattr DW$42, DW_AT_location[DW_OP_addr _output_ready]
	.dwattr DW$42, DW_AT_type(*DW$T$34)
	.dwattr DW$42, DW_AT_external(0x01)
	.global	_in_channel_flag
	.bss	_in_channel_flag,1,1
DW$43	.dwtag  DW_TAG_variable, DW_AT_name("in_channel_flag"), DW_AT_symbol_name("_in_channel_flag")
	.dwattr DW$43, DW_AT_location[DW_OP_addr _in_channel_flag]
	.dwattr DW$43, DW_AT_type(*DW$T$34)
	.dwattr DW$43, DW_AT_external(0x01)
	.global	_out_channel_flag
	.bss	_out_channel_flag,1,1
DW$44	.dwtag  DW_TAG_variable, DW_AT_name("out_channel_flag"), DW_AT_symbol_name("_out_channel_flag")
	.dwattr DW$44, DW_AT_location[DW_OP_addr _out_channel_flag]
	.dwattr DW$44, DW_AT_type(*DW$T$34)
	.dwattr DW$44, DW_AT_external(0x01)
;	C:\CCStudio_v3.1\C6000\cgtools\bin\acp6x.exe -DCHIP_6713 -IH:/SPH/firmware/lib/dsk6713/include -IC:/CCStudio_v3.1/C6000/rtdx/include -IC:/CCStudio_v3.1/C6000/csl/include -IC:/CCStudio_v3.1/C6000/xdais/include -IC:/CCStudio_v3.1/c6000/bios/include -IC:/CCStudio_v3.1/C6000/cgtools/include --version=6700 --mem_model:code=near --mem_model:data=far_aggregates -m --i_output_file C:\Users\ssalen\AppData\Local\Temp\TI9842 --template_info_file C:\Users\ssalen\AppData\Local\Temp\TI9846 --object_file 
	.sect	".text"
	.global	_main

DW$45	.dwtag  DW_TAG_subprogram, DW_AT_name("main"), DW_AT_symbol_name("_main")
	.dwattr DW$45, DW_AT_low_pc(_main)
	.dwattr DW$45, DW_AT_high_pc(0x00)
	.dwattr DW$45, DW_AT_begin_file("main.c")
	.dwattr DW$45, DW_AT_begin_line(0x3a)
	.dwattr DW$45, DW_AT_begin_column(0x05)
	.dwattr DW$45, DW_AT_frame_base[DW_OP_breg31 8]
	.dwattr DW$45, DW_AT_skeletal(0x01)
	.dwpsn	"main.c",58,12

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
           CALL    .S1     _DSK6713_init     ; |62| 
           STW     .D2T2   B3,*SP--(8)       ; |58| 
           MVKL    .S2     RL0,B3            ; |62| 
           MVKH    .S2     RL0,B3            ; |62| 
           NOP             2
RL0:       ; CALL OCCURS {_DSK6713_init}     ; |62| 
;** --------------------------------------------------------------------------*
           CALL    .S1     _DSK6713_AIC23_openCodec ; |63| 
           MVKL    .S1     _config,A3        ; |63| 
           MVKH    .S1     _config,A3        ; |63| 
           MVKL    .S2     RL1,B3            ; |63| 
           MV      .L2X    A3,B4             ; |63| 

           MVKH    .S2     RL1,B3            ; |63| 
||         ZERO    .L1     A4                ; |63| 

RL1:       ; CALL OCCURS {_DSK6713_AIC23_openCodec}  ; |63| 
           CALL    .S1     _DSK6713_AIC23_setFreq ; |64| 
           STW     .D2T1   A4,*+DP(_hCodec)  ; |63| 
           NOP             1
           MVKL    .S2     RL2,B3            ; |64| 
           MVK     .S2     0x1,B4            ; |64| 
           MVKH    .S2     RL2,B3            ; |64| 
RL2:       ; CALL OCCURS {_DSK6713_AIC23_setFreq}  ; |64| 
           MVKL    .S1     _IRQ_globalEnable,A3 ; |67| 
           MVKH    .S1     _IRQ_globalEnable,A3 ; |67| 
           CALL    .S2X    A3                ; |67| 
           MVKL    .S2     RL3,B3            ; |67| 
           MVKH    .S2     RL3,B3            ; |67| 
           NOP             3
RL3:       ; CALL OCCURS {_IRQ_globalEnable}  ; |67| 
           MVKL    .S1     _IRQ_enable,A3    ; |68| 
           MVKH    .S1     _IRQ_enable,A3    ; |68| 
           CALL    .S2X    A3                ; |68| 
           MVKL    .S2     RL4,B3            ; |68| 
           MVK     .S1     0xf,A4            ; |68| 
           MVKH    .S2     RL4,B3            ; |68| 
           NOP             2
RL4:       ; CALL OCCURS {_IRQ_enable}       ; |68| 
           MVKL    .S2     _IRQ_enable,B4    ; |69| 
           MVKH    .S2     _IRQ_enable,B4    ; |69| 
           CALL    .S2     B4                ; |69| 
           MVKL    .S2     RL5,B3            ; |69| 
           MVK     .S1     0xe,A4            ; |69| 
           MVKH    .S2     RL5,B3            ; |69| 
           NOP             2
RL5:       ; CALL OCCURS {_IRQ_enable}       ; |69| 
           CALL    .S1     _reset            ; |71| 
           MVKL    .S2     RL6,B3            ; |71| 
           MVKH    .S2     RL6,B3            ; |71| 
           NOP             3
RL6:       ; CALL OCCURS {_reset}            ; |71| 
           CALL    .S1     _DSK6713_AIC23_write ; |81| 
           LDW     .D2T1   *+DP(_hCodec),A4  ; |81| 
           MVKL    .S2     RL7,B3            ; |81| 
           MVKH    .S2     RL7,B3            ; |81| 
           ZERO    .L2     B4                ; |81| 
           NOP             1
RL7:       ; CALL OCCURS {_DSK6713_AIC23_write}  ; |81| 
;** --------------------------------------------------------------------------*
           MV      .L1     A4,A1             ; |81| 

   [ A1]   B       .S2     L3                ; |81| 
|| [ A1]   MVK     .S1     1,A3              ; |82| 

   [ A1]   MVK     .S2     1,B4              ; |83| 
|| [ A1]   STB     .D2T1   A3,*+DP(_in_channel_flag) ; |82| 

   [ A1]   STB     .D2T2   B4,*+DP(_out_channel_flag) ; |83| 
   [ A1]   LDBU    .D2T2   *+DP(_input_ready),B0 ; |86| 
           NOP             2
           ; BRANCHCC OCCURS {L3}            ; |81| 
;** --------------------------------------------------------------------------*

           CALL    .S1     _DSK6713_AIC23_write ; |81| 
||         LDW     .D2T1   *+DP(_hCodec),A4  ; |81| 
||         MVKL    .S2     RL8,B3            ; |81| 
||         ZERO    .L2     B4                ; |81| 

           MVKH    .S2     RL8,B3            ; |81| 
	.dwpsn	"main.c",81,0
           NOP             3
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Software pipelining disabled
;*----------------------------------------------------------------------------*
L1:    
DW$L$_main$5$B:
           NOP             1
RL8:       ; CALL OCCURS {_DSK6713_AIC23_write}  ; |81| 
DW$L$_main$5$E:
;** --------------------------------------------------------------------------*
DW$L$_main$6$B:
           MV      .L1     A4,A1             ; |81| 

   [!A1]   B       .S1     L1                ; |81| 
|| [!A1]   LDW     .D2T1   *+DP(_hCodec),A4  ; |81| 
|| [!A1]   MVKL    .S2     RL8,B3            ; |81| 
|| [!A1]   ZERO    .L2     B4                ; |81| 

   [!A1]   CALL    .S1     _DSK6713_AIC23_write ; |81| 
|| [ A1]   MVK     .S2     1,B4              ; |83| 

   [!A1]   MVKH    .S2     RL8,B3            ; |81| 
|| [ A1]   MVK     .S1     1,A3              ; |82| 

   [ A1]   STB     .D2T1   A3,*+DP(_in_channel_flag) ; |82| 
   [ A1]   STB     .D2T2   B4,*+DP(_out_channel_flag) ; |83| 
           NOP             1
           ; BRANCHCC OCCURS {L1}            ; |81| 
DW$L$_main$6$E:
;** --------------------------------------------------------------------------*
L2:    
           LDBU    .D2T2   *+DP(_input_ready),B0 ; |86| 
           NOP             2
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Software pipelining disabled
;*----------------------------------------------------------------------------*
L3:    
           NOP             2

   [ B0]   LDH     .D2T1   *+DP(_in_left),A4 ; |88| 
|| [ B0]   MVKL    .S2     RL9,B3            ; |88| 
|| [!B0]   B       .S1     L4                ; |86| 

   [ B0]   LDH     .D2T2   *+DP(_in_right),B4 ; |88| 
|| [ B0]   MVKH    .S2     RL9,B3            ; |88| 
|| [ B0]   CALL    .S1     _process_sample   ; |88| 

   [!B0]   LDBU    .D2T2   *+DP(_output_ready),B0 ; |93| 
||         MV      .L2     B0,B1             ; guard predicate rewrite

   [!B1]   ZERO    .L2     B6                ; |96| 
|| [!B1]   LDH     .D2T2   *+DP(_in_left),B5 ; |94| 

   [!B1]   LDH     .D2T2   *+DP(_sig_error),B4 ; |95| 
|| [!B1]   B       .S1     L2                ; |85| 

           NOP             1
           ; BRANCHCC OCCURS {L4}            ; |86| 
;** --------------------------------------------------------------------------*
           NOP             1
RL9:       ; CALL OCCURS {_process_sample}   ; |88| 
;** --------------------------------------------------------------------------*
           ZERO    .L2     B4                ; |89| 
           STB     .D2T2   B4,*+DP(_input_ready) ; |89| 
           STH     .D2T1   A4,*+DP(_sig_error) ; |88| 
           LDBU    .D2T2   *+DP(_output_ready),B0 ; |93| 
           LDH     .D2T2   *+DP(_in_left),B5 ; |94| 

           B       .S1     L2                ; |85| 
||         LDH     .D2T2   *+DP(_sig_error),B4 ; |95| 

           ZERO    .L2     B6                ; |96| 
;** --------------------------------------------------------------------------*
L4:    
           NOP             1
   [ B0]   STB     .D2T2   B6,*+DP(_output_ready) ; |96| 
   [ B0]   STH     .D2T2   B5,*+DP(_out_left) ; |94| 
	.dwpsn	"main.c",106,1
   [ B0]   STH     .D2T2   B4,*+DP(_out_right) ; |95| 
           ; BRANCH OCCURS {L2}              ; |85| 

DW$46	.dwtag  DW_TAG_loop
	.dwattr DW$46, DW_AT_name("H:\SPH\firmware\lab3\main.asm:L1:1:1352092363")
	.dwattr DW$46, DW_AT_begin_file("main.c")
	.dwattr DW$46, DW_AT_begin_line(0x51)
	.dwattr DW$46, DW_AT_end_line(0x53)
DW$47	.dwtag  DW_TAG_loop_range
	.dwattr DW$47, DW_AT_low_pc(DW$L$_main$5$B)
	.dwattr DW$47, DW_AT_high_pc(DW$L$_main$5$E)
DW$48	.dwtag  DW_TAG_loop_range
	.dwattr DW$48, DW_AT_low_pc(DW$L$_main$6$B)
	.dwattr DW$48, DW_AT_high_pc(DW$L$_main$6$E)
	.dwendtag DW$46

	.dwattr DW$45, DW_AT_end_file("main.c")
	.dwattr DW$45, DW_AT_end_line(0x6a)
	.dwattr DW$45, DW_AT_end_column(0x01)
	.dwendtag DW$45

	.sect	".text"
	.global	_reset

DW$49	.dwtag  DW_TAG_subprogram, DW_AT_name("reset"), DW_AT_symbol_name("_reset")
	.dwattr DW$49, DW_AT_low_pc(_reset)
	.dwattr DW$49, DW_AT_high_pc(0x00)
	.dwattr DW$49, DW_AT_begin_file("main.c")
	.dwattr DW$49, DW_AT_begin_line(0x6f)
	.dwattr DW$49, DW_AT_begin_column(0x06)
	.dwattr DW$49, DW_AT_frame_base[DW_OP_breg31 8]
	.dwattr DW$49, DW_AT_skeletal(0x01)
	.dwpsn	"main.c",111,18

;******************************************************************************
;* FUNCTION NAME: _reset                                                      *
;*                                                                            *
;*   Regs Modified     : A1,A3,A9,B0,B4,B5,B6,B8,B9,SP                        *
;*   Regs Used         : A1,A3,A9,B0,B3,B4,B5,B6,B8,B9,SP                     *
;*   Local Frame Size  : 0 Args + 4 Auto + 0 Save = 4 byte                    *
;******************************************************************************
_reset:
;** --------------------------------------------------------------------------*

           ZERO    .L2     B4                ; |114| 
||         MVK     .S2     64,B5             ; |114| 

           CMPLT   .L2     B4,B5,B0          ; |114| 
   [!B0]   B       .S1     L6                ; |114| 
           SUB     .L2     SP,8,SP           ; |111| 
           STW     .D2T2   B4,*+SP(4)        ; |114| 
           NOP             3
           ; BRANCHCC OCCURS {L6}            ; |114| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Software pipelining disabled
;*----------------------------------------------------------------------------*
L5:    
DW$L$_reset$2$B:
	.dwpsn	"main.c",114,0

           MVK     .S1     51,A3             ; |115| 
||         MV      .L2     B4,B5
||         ZERO    .L1     A9                ; |115| 
||         MVKL    .S2     _buffer,B9        ; |116| 
||         ZERO    .D2     B6                ; |116| 

           CMPLT   .L1X    B4,A3,A1          ; |115| 
||         MVKH    .S2     _buffer,B9        ; |116| 

   [ A1]   MVKL    .S2     _w,B4             ; |115| 
   [ A1]   MVKH    .S2     _w,B4             ; |115| 

   [ A1]   STW     .D2T1   A9,*+B4[B5]       ; |115| 
||         MVK     .S2     64,B8             ; |114| 

           LDW     .D2T2   *+SP(4),B5        ; |116| 
           NOP             4
           STW     .D2T2   B6,*+B9[B5]       ; |116| 
           LDW     .D2T2   *+SP(4),B4        ; |114| 
           NOP             4
           ADD     .L2     1,B4,B4           ; |114| 

           CMPLT   .L2     B4,B8,B0          ; |114| 
||         STW     .D2T2   B4,*+SP(4)        ; |114| 

   [ B0]   B       .S1     L5                ; |114| 
	.dwpsn	"main.c",117,0
           NOP             5
           ; BRANCHCC OCCURS {L5}            ; |114| 
DW$L$_reset$2$E:
;** --------------------------------------------------------------------------*
L6:    
           RET     .S2     B3                ; |118| 
           ADD     .L2     8,SP,SP           ; |118| 
	.dwpsn	"main.c",118,1
           NOP             4
           ; BRANCH OCCURS {B3}              ; |118| 

DW$50	.dwtag  DW_TAG_loop
	.dwattr DW$50, DW_AT_name("H:\SPH\firmware\lab3\main.asm:L5:1:1352092363")
	.dwattr DW$50, DW_AT_begin_file("main.c")
	.dwattr DW$50, DW_AT_begin_line(0x72)
	.dwattr DW$50, DW_AT_end_line(0x75)
DW$51	.dwtag  DW_TAG_loop_range
	.dwattr DW$51, DW_AT_low_pc(DW$L$_reset$2$B)
	.dwattr DW$51, DW_AT_high_pc(DW$L$_reset$2$E)
	.dwendtag DW$50

	.dwattr DW$49, DW_AT_end_file("main.c")
	.dwattr DW$49, DW_AT_end_line(0x76)
	.dwattr DW$49, DW_AT_end_column(0x01)
	.dwendtag DW$49

	.sect	".text"
	.global	_process_sample

DW$52	.dwtag  DW_TAG_subprogram, DW_AT_name("process_sample"), DW_AT_symbol_name("_process_sample")
	.dwattr DW$52, DW_AT_low_pc(_process_sample)
	.dwattr DW$52, DW_AT_high_pc(0x00)
	.dwattr DW$52, DW_AT_begin_file("main.c")
	.dwattr DW$52, DW_AT_begin_line(0x7d)
	.dwattr DW$52, DW_AT_begin_column(0x07)
	.dwattr DW$52, DW_AT_frame_base[DW_OP_breg31 16]
	.dwattr DW$52, DW_AT_skeletal(0x01)
	.dwpsn	"main.c",125,47

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
DW$53	.dwtag  DW_TAG_formal_parameter, DW_AT_name("clean"), DW_AT_symbol_name("_clean")
	.dwattr DW$53, DW_AT_type(*DW$T$35)
	.dwattr DW$53, DW_AT_location[DW_OP_reg4]
DW$54	.dwtag  DW_TAG_formal_parameter, DW_AT_name("echo"), DW_AT_symbol_name("_echo")
	.dwattr DW$54, DW_AT_type(*DW$T$35)
	.dwattr DW$54, DW_AT_location[DW_OP_reg20]
           STW     .D2T2   B3,*SP--(16)      ; |125| 
           STH     .D2T1   A4,*+SP(4)        ; |125| 
           LDH     .D2T2   *+SP(4),B7        ; |128| 

           LDW     .D2T2   *+DP(_buffer_index),B4 ; |128| 
||         MV      .L1X    B4,A3             ; |125| 

           MVKL    .S2     _buffer,B6        ; |128| 
           MVKH    .S2     _buffer,B6        ; |128| 
           STH     .D2T1   A3,*+SP(6)        ; |125| 
           SHL     .S2     B7,16,B7          ; |128| 

           CALL    .S1     _convolve_as_func ; |131| 
||         STW     .D2T2   B7,*+B6[B4]       ; |128| 

           LDW     .D2T1   *+DP(_buffer_index),A6 ; |131| 
||         MVKL    .S2     _buffer,B5        ; |131| 

           MVKL    .S2     RL12,B3           ; |131| 

           MVKL    .S1     _w,A3             ; |131| 
||         MVKH    .S2     _buffer,B5        ; |131| 

           MVKH    .S1     _w,A3             ; |131| 
||         MVKH    .S2     RL12,B3           ; |131| 

           MV      .L2X    A3,B4             ; |131| 
||         MVK     .S2     0x33,B6           ; |131| 
||         MV      .L1X    B5,A4             ; |131| 

RL12:      ; CALL OCCURS {_convolve_as_func}  ; |131| 
;** --------------------------------------------------------------------------*
           LDW     .D2T2   *+DP(_buffer_index),B4 ; |136| 
           LDH     .D2T2   *+SP(6),B5        ; |139| 
           STW     .D2T1   A4,*+SP(8)        ; |131| 
           MVK     .S1     64,A3             ; |137| 
           MVKL    .S2     RL13,B3           ; |141| 
           ADD     .L2     1,B4,B4           ; |136| 
           STW     .D2T2   B4,*+DP(_buffer_index) ; |136| 
           LDW     .D2T2   *+DP(_buffer_index),B6 ; |137| 
           CALL    .S1     _grad_desc        ; |141| 
           SHL     .S2     B5,16,B5          ; |139| 
           SUB     .L2X    B5,A4,B4          ; |139| 
           STW     .D2T2   B4,*+DP(_error)   ; |139| 

           CMPLT   .L1X    B6,A3,A1          ; |137| 
||         ZERO    .L2     B4                ; |137| 

   [!A1]   STW     .D2T2   B4,*+DP(_buffer_index) ; |137| 
||         MVKH    .S2     RL13,B3           ; |141| 

RL13:      ; CALL OCCURS {_grad_desc}        ; |141| 
;** --------------------------------------------------------------------------*
           LDW     .D2T2   *++SP(16),B3      ; |144| 
           LDW     .D2T2   *+DP(_error),B4   ; |143| 
           NOP             3
           RET     .S2     B3                ; |144| 
           SHR     .S1X    B4,16,A4          ; |143| 
	.dwpsn	"main.c",144,1
           NOP             4
           ; BRANCH OCCURS {B3}              ; |144| 
	.dwattr DW$52, DW_AT_end_file("main.c")
	.dwattr DW$52, DW_AT_end_line(0x90)
	.dwattr DW$52, DW_AT_end_column(0x01)
	.dwendtag DW$52

	.sect	".text"
	.global	_grad_desc

DW$55	.dwtag  DW_TAG_subprogram, DW_AT_name("grad_desc"), DW_AT_symbol_name("_grad_desc")
	.dwattr DW$55, DW_AT_low_pc(_grad_desc)
	.dwattr DW$55, DW_AT_high_pc(0x00)
	.dwattr DW$55, DW_AT_begin_file("main.c")
	.dwattr DW$55, DW_AT_begin_line(0x96)
	.dwattr DW$55, DW_AT_begin_column(0x06)
	.dwattr DW$55, DW_AT_frame_base[DW_OP_breg31 16]
	.dwattr DW$55, DW_AT_skeletal(0x01)
	.dwpsn	"main.c",150,22

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

           ZERO    .L2     B4                ; |156| 
||         STW     .D2T2   B3,*SP--(16)      ; |150| 
||         MVK     .S2     51,B6             ; |156| 

           STW     .D2T2   B4,*+SP(8)        ; |156| 
           LDW     .D2T2   *+SP(8),B5        ; |156| 
           LDW     .D2T2   *+DP(_buffer_index),B4 ; |154| 
           NOP             3
           CMPLT   .L2     B5,B6,B0          ; |156| 

           SUB     .L2     B4,1,B4           ; |154| 
|| [!B0]   B       .S1     L8                ; |156| 

           STW     .D2T2   B4,*+SP(12)       ; |154| 
           NOP             4
           ; BRANCHCC OCCURS {L8}            ; |156| 
;** --------------------------------------------------------------------------*

           CALL    .S2     _multiply         ; |159| 
||         CMPLT   .L2     B4,0,B0           ; |157| 
||         LDW     .D2T2   *+DP(_error),B4   ; |159| 
||         MVKL    .S1     0x30901160,A4     ; |159| 

           ZERO    .L2     B5                ; |157| 
||         MVKL    .S2     RL14,B3           ; |159| 

	.dwpsn	"main.c",156,0
           NOP             3
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Software pipelining disabled
;*----------------------------------------------------------------------------*
L7:    
DW$L$_grad_desc$3$B:

           MVKH    .S2     RL14,B3           ; |159| 
||         MVKH    .S1     0x30901160,A4     ; |159| 
|| [ B0]   STW     .D2T2   B5,*+SP(12)       ; |157| 

RL14:      ; CALL OCCURS {_multiply}         ; |159| 
DW$L$_grad_desc$3$E:
;** --------------------------------------------------------------------------*
DW$L$_grad_desc$4$B:
           LDW     .D2T2   *+SP(12),B5       ; |160| 
           MVKL    .S2     _buffer,B4        ; |160| 
           MVKH    .S2     _buffer,B4        ; |160| 
           STW     .D2T1   A4,*+SP(4)        ; |159| 
           CALL    .S1     _multiply         ; |160| 
           LDW     .D2T2   *+B4[B5],B4       ; |160| 
           MVKL    .S2     RL15,B3           ; |160| 
           MVKH    .S2     RL15,B3           ; |160| 
           NOP             2
RL15:      ; CALL OCCURS {_multiply}         ; |160| 
DW$L$_grad_desc$4$E:
;** --------------------------------------------------------------------------*
DW$L$_grad_desc$5$B:

           LDW     .D2T2   *+SP(8),B6        ; |161| 
||         MVKL    .S2     _w,B4             ; |161| 
||         MVKL    .S1     _w,A3             ; |162| 

           MVKH    .S2     _w,B4             ; |161| 
           STW     .D2T1   A4,*+SP(4)        ; |160| 
           MVKH    .S1     _w,A3             ; |162| 

           LDW     .D2T1   *+SP(8),A5        ; |162| 
||         MVK     .S1     51,A9             ; |156| 

           LDW     .D2T2   *+B4[B6],B4       ; |161| 
           NOP             4
           ADD     .L2X    B4,A4,B4          ; |161| 
           ADD     .L2X    A4,B4,B4          ; |161| 

           MV      .L1X    B4,A4             ; |162| 
||         STW     .D2T2   B4,*+SP(4)        ; |161| 

           STW     .D1T1   A4,*+A3[A5]       ; |162| 
           LDW     .D2T2   *+SP(8),B4        ; |156| 
           LDW     .D2T2   *+SP(12),B9       ; |164| 
           NOP             3
           ADD     .L2     1,B4,B4           ; |156| 

           SUB     .L2     B9,1,B4           ; |164| 
||         STW     .D2T2   B4,*+SP(8)        ; |156| 

           LDW     .D2T2   *+SP(8),B5        ; |156| 
           STW     .D2T2   B4,*+SP(12)       ; |164| 
           NOP             3
           CMPLT   .L1X    B5,A9,A1          ; |156| 

   [ A1]   MVKL    .S1     0x30901160,A4     ; |159| 
|| [ A1]   LDW     .D2T2   *+DP(_error),B4   ; |159| 
|| [ A1]   CMPLT   .L2     B4,0,B0           ; |157| 
|| [ A1]   B       .S2     L7                ; |156| 

   [ A1]   MVKL    .S2     RL14,B3           ; |159| 
|| [ A1]   ZERO    .L2     B5                ; |157| 
|| [ A1]   CALL    .S1     _multiply         ; |159| 

	.dwpsn	"main.c",165,0
           NOP             4
           ; BRANCHCC OCCURS {L7}            ; |156| 
DW$L$_grad_desc$5$E:
;** --------------------------------------------------------------------------*
L8:    
           LDW     .D2T2   *++SP(16),B3      ; |166| 
           NOP             4
           RET     .S2     B3                ; |166| 
	.dwpsn	"main.c",166,1
           NOP             5
           ; BRANCH OCCURS {B3}              ; |166| 

DW$56	.dwtag  DW_TAG_loop
	.dwattr DW$56, DW_AT_name("H:\SPH\firmware\lab3\main.asm:L7:1:1352092363")
	.dwattr DW$56, DW_AT_begin_file("main.c")
	.dwattr DW$56, DW_AT_begin_line(0x9c)
	.dwattr DW$56, DW_AT_end_line(0xa5)
DW$57	.dwtag  DW_TAG_loop_range
	.dwattr DW$57, DW_AT_low_pc(DW$L$_grad_desc$3$B)
	.dwattr DW$57, DW_AT_high_pc(DW$L$_grad_desc$3$E)
DW$58	.dwtag  DW_TAG_loop_range
	.dwattr DW$58, DW_AT_low_pc(DW$L$_grad_desc$4$B)
	.dwattr DW$58, DW_AT_high_pc(DW$L$_grad_desc$4$E)
DW$59	.dwtag  DW_TAG_loop_range
	.dwattr DW$59, DW_AT_low_pc(DW$L$_grad_desc$5$B)
	.dwattr DW$59, DW_AT_high_pc(DW$L$_grad_desc$5$E)
	.dwendtag DW$56

	.dwattr DW$55, DW_AT_end_file("main.c")
	.dwattr DW$55, DW_AT_end_line(0xa6)
	.dwattr DW$55, DW_AT_end_column(0x01)
	.dwendtag DW$55

	.sect	".text"
	.global	_multiply

DW$60	.dwtag  DW_TAG_subprogram, DW_AT_name("multiply"), DW_AT_symbol_name("_multiply")
	.dwattr DW$60, DW_AT_low_pc(_multiply)
	.dwattr DW$60, DW_AT_high_pc(0x00)
	.dwattr DW$60, DW_AT_begin_file("main.c")
	.dwattr DW$60, DW_AT_begin_line(0xac)
	.dwattr DW$60, DW_AT_begin_column(0x05)
	.dwattr DW$60, DW_AT_frame_base[DW_OP_breg31 32]
	.dwattr DW$60, DW_AT_skeletal(0x01)
	.dwpsn	"main.c",172,28

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
DW$61	.dwtag  DW_TAG_formal_parameter, DW_AT_name("a"), DW_AT_symbol_name("_a")
	.dwattr DW$61, DW_AT_type(*DW$T$10)
	.dwattr DW$61, DW_AT_location[DW_OP_reg4]
DW$62	.dwtag  DW_TAG_formal_parameter, DW_AT_name("b"), DW_AT_symbol_name("_b")
	.dwattr DW$62, DW_AT_type(*DW$T$10)
	.dwattr DW$62, DW_AT_location[DW_OP_reg20]
           STW     .D2T2   B3,*SP--(32)      ; |172| 
           STW     .D2T2   B4,*+SP(8)        ; |172| 

           STW     .D2T2   B4,*+SP(24)       ; |175| 
||         MV      .L2X    A4,B5             ; |172| 

           STW     .D2T2   B5,*+SP(16)       ; |174| 
||         SHR     .S2     B4,31,B4          ; |175| 

           SHR     .S2     B5,31,B4          ; |174| 
||         STW     .D2T2   B4,*+SP(28)       ; |175| 

           STW     .D2T2   B4,*+SP(20)       ; |174| 
           LDDW    .D2T2   *+SP(16),B7:B6    ; |177| 
           CALL    .S1     __mpyll           ; |177| 
           LDDW    .D2T2   *+SP(24),B5:B4    ; |177| 
           MVKL    .S2     RL16,B3           ; |177| 
           STW     .D2T1   A4,*+SP(4)        ; |172| 
           MV      .L1X    B7,A5             ; |177| 

           MVKH    .S2     RL16,B3           ; |177| 
||         MV      .L1X    B6,A4             ; |177| 

RL16:      ; CALL OCCURS {__mpyll}           ; |177| 
;** --------------------------------------------------------------------------*
           LDW     .D2T2   *++SP(32),B3      ; |178| 
           SHL     .S2X    A5,0x1,B4         ; |177| 
           SHRU    .S1     A4,0x1f,A3        ; |177| 
           OR      .L1X    B4,A3,A4          ; |177| 
           NOP             1
           RET     .S2     B3                ; |178| 
	.dwpsn	"main.c",178,1
           NOP             5
           ; BRANCH OCCURS {B3}              ; |178| 
	.dwattr DW$60, DW_AT_end_file("main.c")
	.dwattr DW$60, DW_AT_end_line(0xb2)
	.dwattr DW$60, DW_AT_end_column(0x01)
	.dwendtag DW$60

	.sect	".text"
	.global	_receive_interrupt

DW$63	.dwtag  DW_TAG_subprogram, DW_AT_name("receive_interrupt"), DW_AT_symbol_name("_receive_interrupt")
	.dwattr DW$63, DW_AT_low_pc(_receive_interrupt)
	.dwattr DW$63, DW_AT_high_pc(0x00)
	.dwattr DW$63, DW_AT_begin_file("main.c")
	.dwattr DW$63, DW_AT_begin_line(0xb9)
	.dwattr DW$63, DW_AT_begin_column(0x06)
	.dwattr DW$63, DW_AT_frame_base[DW_OP_breg31 24]
	.dwattr DW$63, DW_AT_skeletal(0x01)
	.dwpsn	"main.c",185,30

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

           STW     .D2T1   A12,*SP--(24)     ; |185| 
||         MVK     .S2     (_in_tmp_right-$bss),B4 ; |194| 
||         MVK     .S1     (_in_tmp_left-$bss),A3 ; |187| 

           LDBU    .D2T2   *+DP(_in_channel_flag),B0 ; |186| 
||         ADD     .L2     DP,B4,B5          ; |194| 
||         ADD     .S2X    DP,A3,B4          ; |187| 
||         MVK     .S1     1,A12             ; |198| 

           LDW     .D2T1   *+DP(_hCodec),A4  ; |187| 

           STW     .D2T2   B11,*+SP(20)      ; |185| 
||         MV      .L2     B3,B11            ; |185| 
||         MVKL    .S2     RL17,B3           ; |187| 

           MVKH    .S2     RL17,B3           ; |187| 
||         STW     .D2T2   B10,*+SP(16)      ; |185| 

           STW     .D2T1   A11,*+SP(12)      ; |185| 
||         MVK     .S2     1,B10             ; |192| 
||         ZERO    .L1     A11               ; |191| 

           STW     .D2T1   A10,*+SP(8)       ; |185| 
||         MVK     .S1     1,A10             ; |199| 
|| [!B0]   B       .S2     L9                ; |186| 
|| [!B0]   MV      .L2     B5,B4             ; |194| 

   [ B0]   CALL    .S1     _DSK6713_AIC23_read ; |187| 
|| [!B0]   MVKL    .S2     RL18,B3           ; |194| 

   [!B0]   CALL    .S1     _DSK6713_AIC23_read ; |194| 
|| [!B0]   MVKH    .S2     RL18,B3           ; |194| 

           NOP             3
           ; BRANCHCC OCCURS {L9}            ; |186| 
;** --------------------------------------------------------------------------*
           NOP             1
RL17:      ; CALL OCCURS {_DSK6713_AIC23_read}  ; |187| 
;** --------------------------------------------------------------------------*
           LDH     .D2T2   *+DP(_in_tmp_left),B4 ; |189| 
           STB     .D2T1   A11,*+DP(_in_channel_flag) ; |191| 
           STB     .D2T2   B10,*+DP(_input_ready) ; |192| 
           LDDW    .D2T1   *+SP(8),A11:A10   ; |201| 

           LDDW    .D2T2   *+SP(16),B11:B10  ; |201| 
||         MV      .L2     B11,B3            ; |201| 

           RET     .S2     B3                ; |201| 
||         STH     .D2T2   B4,*+DP(_in_left) ; |189| 

           LDW     .D2T1   *++SP(24),A12     ; |201| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |201| 
;** --------------------------------------------------------------------------*
L9:    
           NOP             2
RL18:      ; CALL OCCURS {_DSK6713_AIC23_read}  ; |194| 
;** --------------------------------------------------------------------------*
           LDH     .D2T2   *+DP(_in_tmp_right),B4 ; |196| 
           STB     .D2T1   A12,*+DP(_in_channel_flag) ; |198| 
           STB     .D2T1   A10,*+DP(_input_ready) ; |199| 

           LDDW    .D2T2   *+SP(16),B11:B10  ; |201| 
||         MV      .L2     B11,B3            ; |201| 

           LDDW    .D2T1   *+SP(8),A11:A10   ; |201| 

           RET     .S2     B3                ; |201| 
||         STH     .D2T2   B4,*+DP(_in_right) ; |196| 

           LDW     .D2T1   *++SP(24),A12     ; |201| 
	.dwpsn	"main.c",201,1
           NOP             4
           ; BRANCH OCCURS {B3}              ; |201| 
	.dwattr DW$63, DW_AT_end_file("main.c")
	.dwattr DW$63, DW_AT_end_line(0xc9)
	.dwattr DW$63, DW_AT_end_column(0x01)
	.dwendtag DW$63

	.sect	".text"
	.global	_transmit_interrupt

DW$64	.dwtag  DW_TAG_subprogram, DW_AT_name("transmit_interrupt"), DW_AT_symbol_name("_transmit_interrupt")
	.dwattr DW$64, DW_AT_low_pc(_transmit_interrupt)
	.dwattr DW$64, DW_AT_high_pc(0x00)
	.dwattr DW$64, DW_AT_begin_file("main.c")
	.dwattr DW$64, DW_AT_begin_line(0xce)
	.dwattr DW$64, DW_AT_begin_column(0x06)
	.dwattr DW$64, DW_AT_frame_base[DW_OP_breg31 24]
	.dwattr DW$64, DW_AT_skeletal(0x01)
	.dwpsn	"main.c",206,31

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

           STW     .D2T1   A12,*SP--(24)     ; |206| 
||         MVK     .S1     1,A12             ; |215| 

           LDBU    .D2T2   *+DP(_out_channel_flag),B0 ; |207| 
           LDH     .D2T2   *+DP(_out_left),B4 ; |208| 
           LDH     .D2T1   *+DP(_out_right),A3 ; |213| 
           LDW     .D2T1   *+DP(_hCodec),A4  ; |208| 

           STW     .D2T2   B11,*+SP(20)      ; |206| 
||         MV      .L2     B3,B11            ; |206| 
||         MVKL    .S2     RL19,B3           ; |208| 

           MVKH    .S2     RL19,B3           ; |208| 
||         STW     .D2T2   B10,*+SP(16)      ; |206| 
|| [!B0]   B       .S1     L10               ; |207| 

           STW     .D2T1   A11,*+SP(12)      ; |206| 
|| [ B0]   CALL    .S1     _DSK6713_AIC23_write ; |208| 
||         ZERO    .L1     A11               ; |210| 
|| [!B0]   MVKL    .S2     RL20,B3           ; |213| 

           STW     .D2T1   A10,*+SP(8)       ; |206| 
|| [!B0]   CALL    .S2     _DSK6713_AIC23_write ; |213| 
||         EXTU    .S1     A3,16,16,A3       ; |213| 

           MVK     .S1     1,A10             ; |216| 
||         MVK     .S2     1,B10             ; |211| 

           EXTU    .S2     B4,16,16,B4       ; |208| 

   [!B0]   MVKH    .S2     RL20,B3           ; |213| 
|| [!B0]   MV      .L2X    A3,B4             ; |213| 

           ; BRANCHCC OCCURS {L10}           ; |207| 
;** --------------------------------------------------------------------------*
           NOP             1
RL19:      ; CALL OCCURS {_DSK6713_AIC23_write}  ; |208| 
;** --------------------------------------------------------------------------*
           STB     .D2T1   A11,*+DP(_out_channel_flag) ; |210| 
           STB     .D2T2   B10,*+DP(_output_ready) ; |211| 

           LDDW    .D2T1   *+SP(8),A11:A10   ; |218| 
||         MV      .L2     B11,B3            ; |218| 

           RET     .S2     B3                ; |218| 
||         LDDW    .D2T2   *+SP(16),B11:B10  ; |218| 

           LDW     .D2T1   *++SP(24),A12     ; |218| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |218| 
;** --------------------------------------------------------------------------*
L10:    
           NOP             2
RL20:      ; CALL OCCURS {_DSK6713_AIC23_write}  ; |213| 
;** --------------------------------------------------------------------------*
           STB     .D2T1   A12,*+DP(_out_channel_flag) ; |215| 
           STB     .D2T1   A10,*+DP(_output_ready) ; |216| 

           LDDW    .D2T2   *+SP(16),B11:B10  ; |218| 
||         MV      .L2     B11,B3            ; |218| 

           RET     .S2     B3                ; |218| 
||         LDDW    .D2T1   *+SP(8),A11:A10   ; |218| 

           LDW     .D2T1   *++SP(24),A12     ; |218| 
	.dwpsn	"main.c",218,1
           NOP             4
           ; BRANCH OCCURS {B3}              ; |218| 
	.dwattr DW$64, DW_AT_end_file("main.c")
	.dwattr DW$64, DW_AT_end_line(0xda)
	.dwattr DW$64, DW_AT_end_column(0x01)
	.dwendtag DW$64

	.sect	".text"
	.global	_convolve_c

DW$65	.dwtag  DW_TAG_subprogram, DW_AT_name("convolve_c"), DW_AT_symbol_name("_convolve_c")
	.dwattr DW$65, DW_AT_low_pc(_convolve_c)
	.dwattr DW$65, DW_AT_high_pc(0x00)
	.dwattr DW$65, DW_AT_begin_file("main.c")
	.dwattr DW$65, DW_AT_begin_line(0xe7)
	.dwattr DW$65, DW_AT_begin_column(0x05)
	.dwattr DW$65, DW_AT_frame_base[DW_OP_breg31 32]
	.dwattr DW$65, DW_AT_skeletal(0x01)
	.dwpsn	"main.c",231,75

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
DW$66	.dwtag  DW_TAG_formal_parameter, DW_AT_name("x"), DW_AT_symbol_name("_x")
	.dwattr DW$66, DW_AT_type(*DW$T$50)
	.dwattr DW$66, DW_AT_location[DW_OP_reg4]
DW$67	.dwtag  DW_TAG_formal_parameter, DW_AT_name("w"), DW_AT_symbol_name("_w")
	.dwattr DW$67, DW_AT_type(*DW$T$50)
	.dwattr DW$67, DW_AT_location[DW_OP_reg20]
DW$68	.dwtag  DW_TAG_formal_parameter, DW_AT_name("x_idx"), DW_AT_symbol_name("_x_idx")
	.dwattr DW$68, DW_AT_type(*DW$T$10)
	.dwattr DW$68, DW_AT_location[DW_OP_reg6]
DW$69	.dwtag  DW_TAG_formal_parameter, DW_AT_name("w_length"), DW_AT_symbol_name("_w_length")
	.dwattr DW$69, DW_AT_type(*DW$T$10)
	.dwattr DW$69, DW_AT_location[DW_OP_reg22]

           ZERO    .L2     B5                ; |237| 
||         STW     .D2T2   B3,*SP--(32)      ; |231| 
||         MV      .L1X    B4,A3             ; |231| 

           CMPLT   .L2     B5,B6,B0          ; |237| 
||         STW     .D2T2   B6,*+SP(16)       ; |231| 
||         ZERO    .S2     B6                ; |233| 

   [!B0]   B       .S1     L12               ; |237| 
||         STW     .D2T2   B6,*+SP(24)       ; |233| 

           STW     .D2T2   B5,*+SP(20)       ; |237| 
           STW     .D2T1   A6,*+SP(12)       ; |231| 
           LDW     .D2T2   *+SP(12),B4       ; |238| 
           STW     .D2T1   A4,*+SP(4)        ; |231| 
           STW     .D2T1   A3,*+SP(8)        ; |231| 
           ; BRANCHCC OCCURS {L12}           ; |237| 
;** --------------------------------------------------------------------------*
           LDW     .D2T2   *+SP(8),B7        ; |239| 
           MVK     .S1     63,A3             ; |238| 
	.dwpsn	"main.c",237,0
           CMPGT   .L2     B4,0,B0           ; |238| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Software pipelining disabled
;*----------------------------------------------------------------------------*
L11:    
DW$L$_convolve_c$3$B:

   [!B0]   STW     .D2T1   A3,*+SP(12)       ; |238| 
||         MV      .L2     B5,B6             ; |239| 
||         MVKL    .S2     RL21,B3           ; |239| 

           LDW     .D2T2   *+SP(12),B4       ; |239| 
||         MVKH    .S2     RL21,B3           ; |239| 

           LDW     .D2T2   *+SP(4),B5        ; |239| 
           LDW     .D2T1   *+B7[B6],A4       ; |239| 
           NOP             2
           CALL    .S1     _multiply         ; |239| 
           LDW     .D2T2   *+B5[B4],B4       ; |239| 
           NOP             4
RL21:      ; CALL OCCURS {_multiply}         ; |239| 
DW$L$_convolve_c$3$E:
;** --------------------------------------------------------------------------*
DW$L$_convolve_c$4$B:
           LDW     .D2T2   *+SP(20),B4       ; |237| 
           LDW     .D2T2   *+SP(16),B9       ; |237| 
           LDW     .D2T2   *+SP(12),B6       ; |240| 
           LDW     .D2T2   *+SP(24),B7       ; |239| 
           NOP             1
           ADD     .L2     1,B4,B4           ; |237| 
           STW     .D2T2   B4,*+SP(20)       ; |237| 

           SUB     .L2     B6,1,B6           ; |240| 
||         LDW     .D2T2   *+SP(20),B5       ; |237| 

           ADD     .L2X    A4,B7,B6          ; |239| 
||         STW     .D2T2   B6,*+SP(12)       ; |240| 

           LDW     .D2T2   *+SP(12),B4       ; |238| 
           STW     .D2T2   B6,*+SP(24)       ; |239| 
           NOP             1
           CMPLT   .L2     B5,B9,B0          ; |237| 

   [ B0]   B       .S1     L11               ; |237| 
||         MV      .L2     B0,B1             ; guard predicate rewrite
|| [ B0]   LDW     .D2T2   *+SP(8),B7        ; |239| 

   [ B1]   MVK     .S1     63,A3             ; |238| 
           CMPGT   .L2     B4,0,B0           ; |238| 
	.dwpsn	"main.c",241,0
           NOP             3
           ; BRANCHCC OCCURS {L11}           ; |237| 
DW$L$_convolve_c$4$E:
;** --------------------------------------------------------------------------*
L12:    
           LDW     .D2T2   *++SP(32),B3      ; |244| 
           MV      .L1X    B6,A4
           NOP             3
           RET     .S2     B3                ; |244| 
	.dwpsn	"main.c",244,1
           NOP             5
           ; BRANCH OCCURS {B3}              ; |244| 

DW$70	.dwtag  DW_TAG_loop
	.dwattr DW$70, DW_AT_name("H:\SPH\firmware\lab3\main.asm:L11:1:1352092363")
	.dwattr DW$70, DW_AT_begin_file("main.c")
	.dwattr DW$70, DW_AT_begin_line(0xed)
	.dwattr DW$70, DW_AT_end_line(0xf1)
DW$71	.dwtag  DW_TAG_loop_range
	.dwattr DW$71, DW_AT_low_pc(DW$L$_convolve_c$3$B)
	.dwattr DW$71, DW_AT_high_pc(DW$L$_convolve_c$3$E)
DW$72	.dwtag  DW_TAG_loop_range
	.dwattr DW$72, DW_AT_low_pc(DW$L$_convolve_c$4$B)
	.dwattr DW$72, DW_AT_high_pc(DW$L$_convolve_c$4$E)
	.dwendtag DW$70

	.dwattr DW$65, DW_AT_end_file("main.c")
	.dwattr DW$65, DW_AT_end_line(0xf4)
	.dwattr DW$65, DW_AT_end_column(0x01)
	.dwendtag DW$65

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
DW$73	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$21)
	.dwendtag DW$T$22


DW$T$24	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$24, DW_AT_language(DW_LANG_C)

DW$T$27	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$27, DW_AT_language(DW_LANG_C)
DW$74	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$26)
	.dwendtag DW$T$27


DW$T$29	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$29, DW_AT_language(DW_LANG_C)
DW$75	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$26)
DW$76	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$21)
	.dwendtag DW$T$29


DW$T$31	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$31, DW_AT_language(DW_LANG_C)
DW$T$34	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$34, DW_AT_type(*DW$T$33)
DW$T$35	.dwtag  DW_TAG_typedef, DW_AT_name("Int16"), DW_AT_type(*DW$T$8)
	.dwattr DW$T$35, DW_AT_language(DW_LANG_C)

DW$T$36	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$35)
	.dwattr DW$T$36, DW_AT_language(DW_LANG_C)
DW$77	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$26)
DW$78	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$21)
	.dwendtag DW$T$36


DW$T$39	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$35)
	.dwattr DW$T$39, DW_AT_language(DW_LANG_C)
DW$79	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$26)
DW$80	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$38)
	.dwendtag DW$T$39


DW$T$41	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$35)
	.dwattr DW$T$41, DW_AT_language(DW_LANG_C)
DW$81	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$35)
DW$82	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$35)
	.dwendtag DW$T$41

DW$T$10	.dwtag  DW_TAG_base_type, DW_AT_name("int")
	.dwattr DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr DW$T$10, DW_AT_byte_size(0x04)
DW$T$26	.dwtag  DW_TAG_typedef, DW_AT_name("DSK6713_AIC23_CodecHandle"), DW_AT_type(*DW$T$10)
	.dwattr DW$T$26, DW_AT_language(DW_LANG_C)

DW$T$45	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$26)
	.dwattr DW$T$45, DW_AT_language(DW_LANG_C)
DW$83	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$84	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$44)
	.dwendtag DW$T$45


DW$T$47	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$47, DW_AT_language(DW_LANG_C)
DW$T$49	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$49, DW_AT_address_class(0x20)
DW$T$50	.dwtag  DW_TAG_restrict_type
	.dwattr DW$T$50, DW_AT_type(*DW$T$49)

DW$T$51	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$51, DW_AT_language(DW_LANG_C)
DW$85	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$49)
DW$86	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$49)
DW$87	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$88	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$51


DW$T$52	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$52, DW_AT_language(DW_LANG_C)
DW$89	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$90	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$52


DW$T$54	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$54, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$54, DW_AT_byte_size(0xcc)
DW$91	.dwtag  DW_TAG_subrange_type
	.dwattr DW$91, DW_AT_upper_bound(0x32)
	.dwendtag DW$T$54


DW$T$55	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$55, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$55, DW_AT_byte_size(0x100)
DW$92	.dwtag  DW_TAG_subrange_type
	.dwattr DW$92, DW_AT_upper_bound(0x3f)
	.dwendtag DW$T$55

DW$T$21	.dwtag  DW_TAG_typedef, DW_AT_name("Uint32"), DW_AT_type(*DW$T$11)
	.dwattr DW$T$21, DW_AT_language(DW_LANG_C)
DW$T$38	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$21)
	.dwattr DW$T$38, DW_AT_address_class(0x20)
DW$T$56	.dwtag  DW_TAG_typedef, DW_AT_name("clock_t"), DW_AT_type(*DW$T$11)
	.dwattr DW$T$56, DW_AT_language(DW_LANG_C)
DW$T$43	.dwtag  DW_TAG_typedef, DW_AT_name("DSK6713_AIC23_Config"), DW_AT_type(*DW$T$20)
	.dwattr DW$T$43, DW_AT_language(DW_LANG_C)
DW$T$44	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$43)
	.dwattr DW$T$44, DW_AT_address_class(0x20)
DW$T$33	.dwtag  DW_TAG_typedef, DW_AT_name("Uint8"), DW_AT_type(*DW$T$6)
	.dwattr DW$T$33, DW_AT_language(DW_LANG_C)
DW$T$8	.dwtag  DW_TAG_base_type, DW_AT_name("short")
	.dwattr DW$T$8, DW_AT_encoding(DW_ATE_signed)
	.dwattr DW$T$8, DW_AT_byte_size(0x02)
DW$T$11	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned int")
	.dwattr DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$11, DW_AT_byte_size(0x04)

DW$T$20	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$20, DW_AT_name("DSK6713_AIC23_Config")
	.dwattr DW$T$20, DW_AT_byte_size(0x28)
DW$93	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$93, DW_AT_name("regs"), DW_AT_symbol_name("_regs")
	.dwattr DW$93, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$93, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$20

DW$T$6	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned char")
	.dwattr DW$T$6, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr DW$T$6, DW_AT_byte_size(0x01)

DW$T$19	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$19, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$19, DW_AT_byte_size(0x28)
DW$94	.dwtag  DW_TAG_subrange_type
	.dwattr DW$94, DW_AT_upper_bound(0x09)
	.dwendtag DW$T$19


	.dwattr DW$65, DW_AT_external(0x01)
	.dwattr DW$65, DW_AT_type(*DW$T$10)
	.dwattr DW$55, DW_AT_external(0x01)
	.dwattr DW$45, DW_AT_external(0x01)
	.dwattr DW$45, DW_AT_type(*DW$T$10)
	.dwattr DW$60, DW_AT_external(0x01)
	.dwattr DW$60, DW_AT_type(*DW$T$10)
	.dwattr DW$52, DW_AT_external(0x01)
	.dwattr DW$52, DW_AT_type(*DW$T$35)
	.dwattr DW$63, DW_AT_external(0x01)
	.dwattr DW$49, DW_AT_external(0x01)
	.dwattr DW$64, DW_AT_external(0x01)
	.dwattr DW$CU, DW_AT_language(DW_LANG_C)

;***************************************************************
;* DWARF REGISTER MAP                                          *
;***************************************************************

DW$95	.dwtag  DW_TAG_assign_register, DW_AT_name("A0")
	.dwattr DW$95, DW_AT_location[DW_OP_reg0]
DW$96	.dwtag  DW_TAG_assign_register, DW_AT_name("A1")
	.dwattr DW$96, DW_AT_location[DW_OP_reg1]
DW$97	.dwtag  DW_TAG_assign_register, DW_AT_name("A2")
	.dwattr DW$97, DW_AT_location[DW_OP_reg2]
DW$98	.dwtag  DW_TAG_assign_register, DW_AT_name("A3")
	.dwattr DW$98, DW_AT_location[DW_OP_reg3]
DW$99	.dwtag  DW_TAG_assign_register, DW_AT_name("A4")
	.dwattr DW$99, DW_AT_location[DW_OP_reg4]
DW$100	.dwtag  DW_TAG_assign_register, DW_AT_name("A5")
	.dwattr DW$100, DW_AT_location[DW_OP_reg5]
DW$101	.dwtag  DW_TAG_assign_register, DW_AT_name("A6")
	.dwattr DW$101, DW_AT_location[DW_OP_reg6]
DW$102	.dwtag  DW_TAG_assign_register, DW_AT_name("A7")
	.dwattr DW$102, DW_AT_location[DW_OP_reg7]
DW$103	.dwtag  DW_TAG_assign_register, DW_AT_name("A8")
	.dwattr DW$103, DW_AT_location[DW_OP_reg8]
DW$104	.dwtag  DW_TAG_assign_register, DW_AT_name("A9")
	.dwattr DW$104, DW_AT_location[DW_OP_reg9]
DW$105	.dwtag  DW_TAG_assign_register, DW_AT_name("A10")
	.dwattr DW$105, DW_AT_location[DW_OP_reg10]
DW$106	.dwtag  DW_TAG_assign_register, DW_AT_name("A11")
	.dwattr DW$106, DW_AT_location[DW_OP_reg11]
DW$107	.dwtag  DW_TAG_assign_register, DW_AT_name("A12")
	.dwattr DW$107, DW_AT_location[DW_OP_reg12]
DW$108	.dwtag  DW_TAG_assign_register, DW_AT_name("A13")
	.dwattr DW$108, DW_AT_location[DW_OP_reg13]
DW$109	.dwtag  DW_TAG_assign_register, DW_AT_name("A14")
	.dwattr DW$109, DW_AT_location[DW_OP_reg14]
DW$110	.dwtag  DW_TAG_assign_register, DW_AT_name("A15")
	.dwattr DW$110, DW_AT_location[DW_OP_reg15]
DW$111	.dwtag  DW_TAG_assign_register, DW_AT_name("B0")
	.dwattr DW$111, DW_AT_location[DW_OP_reg16]
DW$112	.dwtag  DW_TAG_assign_register, DW_AT_name("B1")
	.dwattr DW$112, DW_AT_location[DW_OP_reg17]
DW$113	.dwtag  DW_TAG_assign_register, DW_AT_name("B2")
	.dwattr DW$113, DW_AT_location[DW_OP_reg18]
DW$114	.dwtag  DW_TAG_assign_register, DW_AT_name("B3")
	.dwattr DW$114, DW_AT_location[DW_OP_reg19]
DW$115	.dwtag  DW_TAG_assign_register, DW_AT_name("B4")
	.dwattr DW$115, DW_AT_location[DW_OP_reg20]
DW$116	.dwtag  DW_TAG_assign_register, DW_AT_name("B5")
	.dwattr DW$116, DW_AT_location[DW_OP_reg21]
DW$117	.dwtag  DW_TAG_assign_register, DW_AT_name("B6")
	.dwattr DW$117, DW_AT_location[DW_OP_reg22]
DW$118	.dwtag  DW_TAG_assign_register, DW_AT_name("B7")
	.dwattr DW$118, DW_AT_location[DW_OP_reg23]
DW$119	.dwtag  DW_TAG_assign_register, DW_AT_name("B8")
	.dwattr DW$119, DW_AT_location[DW_OP_reg24]
DW$120	.dwtag  DW_TAG_assign_register, DW_AT_name("B9")
	.dwattr DW$120, DW_AT_location[DW_OP_reg25]
DW$121	.dwtag  DW_TAG_assign_register, DW_AT_name("B10")
	.dwattr DW$121, DW_AT_location[DW_OP_reg26]
DW$122	.dwtag  DW_TAG_assign_register, DW_AT_name("B11")
	.dwattr DW$122, DW_AT_location[DW_OP_reg27]
DW$123	.dwtag  DW_TAG_assign_register, DW_AT_name("B12")
	.dwattr DW$123, DW_AT_location[DW_OP_reg28]
DW$124	.dwtag  DW_TAG_assign_register, DW_AT_name("B13")
	.dwattr DW$124, DW_AT_location[DW_OP_reg29]
DW$125	.dwtag  DW_TAG_assign_register, DW_AT_name("DP")
	.dwattr DW$125, DW_AT_location[DW_OP_reg30]
DW$126	.dwtag  DW_TAG_assign_register, DW_AT_name("SP")
	.dwattr DW$126, DW_AT_location[DW_OP_reg31]
DW$127	.dwtag  DW_TAG_assign_register, DW_AT_name("FP")
	.dwattr DW$127, DW_AT_location[DW_OP_regx 0x20]
DW$128	.dwtag  DW_TAG_assign_register, DW_AT_name("PC")
	.dwattr DW$128, DW_AT_location[DW_OP_regx 0x21]
DW$129	.dwtag  DW_TAG_assign_register, DW_AT_name("IRP")
	.dwattr DW$129, DW_AT_location[DW_OP_regx 0x22]
DW$130	.dwtag  DW_TAG_assign_register, DW_AT_name("IFR")
	.dwattr DW$130, DW_AT_location[DW_OP_regx 0x23]
DW$131	.dwtag  DW_TAG_assign_register, DW_AT_name("NRP")
	.dwattr DW$131, DW_AT_location[DW_OP_regx 0x24]
DW$132	.dwtag  DW_TAG_assign_register, DW_AT_name("A16")
	.dwattr DW$132, DW_AT_location[DW_OP_regx 0x25]
DW$133	.dwtag  DW_TAG_assign_register, DW_AT_name("A17")
	.dwattr DW$133, DW_AT_location[DW_OP_regx 0x26]
DW$134	.dwtag  DW_TAG_assign_register, DW_AT_name("A18")
	.dwattr DW$134, DW_AT_location[DW_OP_regx 0x27]
DW$135	.dwtag  DW_TAG_assign_register, DW_AT_name("A19")
	.dwattr DW$135, DW_AT_location[DW_OP_regx 0x28]
DW$136	.dwtag  DW_TAG_assign_register, DW_AT_name("A20")
	.dwattr DW$136, DW_AT_location[DW_OP_regx 0x29]
DW$137	.dwtag  DW_TAG_assign_register, DW_AT_name("A21")
	.dwattr DW$137, DW_AT_location[DW_OP_regx 0x2a]
DW$138	.dwtag  DW_TAG_assign_register, DW_AT_name("A22")
	.dwattr DW$138, DW_AT_location[DW_OP_regx 0x2b]
DW$139	.dwtag  DW_TAG_assign_register, DW_AT_name("A23")
	.dwattr DW$139, DW_AT_location[DW_OP_regx 0x2c]
DW$140	.dwtag  DW_TAG_assign_register, DW_AT_name("A24")
	.dwattr DW$140, DW_AT_location[DW_OP_regx 0x2d]
DW$141	.dwtag  DW_TAG_assign_register, DW_AT_name("A25")
	.dwattr DW$141, DW_AT_location[DW_OP_regx 0x2e]
DW$142	.dwtag  DW_TAG_assign_register, DW_AT_name("A26")
	.dwattr DW$142, DW_AT_location[DW_OP_regx 0x2f]
DW$143	.dwtag  DW_TAG_assign_register, DW_AT_name("A27")
	.dwattr DW$143, DW_AT_location[DW_OP_regx 0x30]
DW$144	.dwtag  DW_TAG_assign_register, DW_AT_name("A28")
	.dwattr DW$144, DW_AT_location[DW_OP_regx 0x31]
DW$145	.dwtag  DW_TAG_assign_register, DW_AT_name("A29")
	.dwattr DW$145, DW_AT_location[DW_OP_regx 0x32]
DW$146	.dwtag  DW_TAG_assign_register, DW_AT_name("A30")
	.dwattr DW$146, DW_AT_location[DW_OP_regx 0x33]
DW$147	.dwtag  DW_TAG_assign_register, DW_AT_name("A31")
	.dwattr DW$147, DW_AT_location[DW_OP_regx 0x34]
DW$148	.dwtag  DW_TAG_assign_register, DW_AT_name("B16")
	.dwattr DW$148, DW_AT_location[DW_OP_regx 0x35]
DW$149	.dwtag  DW_TAG_assign_register, DW_AT_name("B17")
	.dwattr DW$149, DW_AT_location[DW_OP_regx 0x36]
DW$150	.dwtag  DW_TAG_assign_register, DW_AT_name("B18")
	.dwattr DW$150, DW_AT_location[DW_OP_regx 0x37]
DW$151	.dwtag  DW_TAG_assign_register, DW_AT_name("B19")
	.dwattr DW$151, DW_AT_location[DW_OP_regx 0x38]
DW$152	.dwtag  DW_TAG_assign_register, DW_AT_name("B20")
	.dwattr DW$152, DW_AT_location[DW_OP_regx 0x39]
DW$153	.dwtag  DW_TAG_assign_register, DW_AT_name("B21")
	.dwattr DW$153, DW_AT_location[DW_OP_regx 0x3a]
DW$154	.dwtag  DW_TAG_assign_register, DW_AT_name("B22")
	.dwattr DW$154, DW_AT_location[DW_OP_regx 0x3b]
DW$155	.dwtag  DW_TAG_assign_register, DW_AT_name("B23")
	.dwattr DW$155, DW_AT_location[DW_OP_regx 0x3c]
DW$156	.dwtag  DW_TAG_assign_register, DW_AT_name("B24")
	.dwattr DW$156, DW_AT_location[DW_OP_regx 0x3d]
DW$157	.dwtag  DW_TAG_assign_register, DW_AT_name("B25")
	.dwattr DW$157, DW_AT_location[DW_OP_regx 0x3e]
DW$158	.dwtag  DW_TAG_assign_register, DW_AT_name("B26")
	.dwattr DW$158, DW_AT_location[DW_OP_regx 0x3f]
DW$159	.dwtag  DW_TAG_assign_register, DW_AT_name("B27")
	.dwattr DW$159, DW_AT_location[DW_OP_regx 0x40]
DW$160	.dwtag  DW_TAG_assign_register, DW_AT_name("B28")
	.dwattr DW$160, DW_AT_location[DW_OP_regx 0x41]
DW$161	.dwtag  DW_TAG_assign_register, DW_AT_name("B29")
	.dwattr DW$161, DW_AT_location[DW_OP_regx 0x42]
DW$162	.dwtag  DW_TAG_assign_register, DW_AT_name("B30")
	.dwattr DW$162, DW_AT_location[DW_OP_regx 0x43]
DW$163	.dwtag  DW_TAG_assign_register, DW_AT_name("B31")
	.dwattr DW$163, DW_AT_location[DW_OP_regx 0x44]
DW$164	.dwtag  DW_TAG_assign_register, DW_AT_name("AMR")
	.dwattr DW$164, DW_AT_location[DW_OP_regx 0x45]
DW$165	.dwtag  DW_TAG_assign_register, DW_AT_name("CSR")
	.dwattr DW$165, DW_AT_location[DW_OP_regx 0x46]
DW$166	.dwtag  DW_TAG_assign_register, DW_AT_name("ISR")
	.dwattr DW$166, DW_AT_location[DW_OP_regx 0x47]
DW$167	.dwtag  DW_TAG_assign_register, DW_AT_name("ICR")
	.dwattr DW$167, DW_AT_location[DW_OP_regx 0x48]
DW$168	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$168, DW_AT_location[DW_OP_regx 0x49]
DW$169	.dwtag  DW_TAG_assign_register, DW_AT_name("ISTP")
	.dwattr DW$169, DW_AT_location[DW_OP_regx 0x4a]
DW$170	.dwtag  DW_TAG_assign_register, DW_AT_name("IN")
	.dwattr DW$170, DW_AT_location[DW_OP_regx 0x4b]
DW$171	.dwtag  DW_TAG_assign_register, DW_AT_name("OUT")
	.dwattr DW$171, DW_AT_location[DW_OP_regx 0x4c]
DW$172	.dwtag  DW_TAG_assign_register, DW_AT_name("ACR")
	.dwattr DW$172, DW_AT_location[DW_OP_regx 0x4d]
DW$173	.dwtag  DW_TAG_assign_register, DW_AT_name("ADR")
	.dwattr DW$173, DW_AT_location[DW_OP_regx 0x4e]
DW$174	.dwtag  DW_TAG_assign_register, DW_AT_name("FADCR")
	.dwattr DW$174, DW_AT_location[DW_OP_regx 0x4f]
DW$175	.dwtag  DW_TAG_assign_register, DW_AT_name("FAUCR")
	.dwattr DW$175, DW_AT_location[DW_OP_regx 0x50]
DW$176	.dwtag  DW_TAG_assign_register, DW_AT_name("FMCR")
	.dwattr DW$176, DW_AT_location[DW_OP_regx 0x51]
DW$177	.dwtag  DW_TAG_assign_register, DW_AT_name("GFPGFR")
	.dwattr DW$177, DW_AT_location[DW_OP_regx 0x52]
DW$178	.dwtag  DW_TAG_assign_register, DW_AT_name("DIER")
	.dwattr DW$178, DW_AT_location[DW_OP_regx 0x53]
DW$179	.dwtag  DW_TAG_assign_register, DW_AT_name("REP")
	.dwattr DW$179, DW_AT_location[DW_OP_regx 0x54]
DW$180	.dwtag  DW_TAG_assign_register, DW_AT_name("TSCL")
	.dwattr DW$180, DW_AT_location[DW_OP_regx 0x55]
DW$181	.dwtag  DW_TAG_assign_register, DW_AT_name("TSCH")
	.dwattr DW$181, DW_AT_location[DW_OP_regx 0x56]
DW$182	.dwtag  DW_TAG_assign_register, DW_AT_name("ARP")
	.dwattr DW$182, DW_AT_location[DW_OP_regx 0x57]
DW$183	.dwtag  DW_TAG_assign_register, DW_AT_name("ILC")
	.dwattr DW$183, DW_AT_location[DW_OP_regx 0x58]
DW$184	.dwtag  DW_TAG_assign_register, DW_AT_name("RILC")
	.dwattr DW$184, DW_AT_location[DW_OP_regx 0x59]
DW$185	.dwtag  DW_TAG_assign_register, DW_AT_name("DNUM")
	.dwattr DW$185, DW_AT_location[DW_OP_regx 0x5a]
DW$186	.dwtag  DW_TAG_assign_register, DW_AT_name("SSR")
	.dwattr DW$186, DW_AT_location[DW_OP_regx 0x5b]
DW$187	.dwtag  DW_TAG_assign_register, DW_AT_name("GPLYA")
	.dwattr DW$187, DW_AT_location[DW_OP_regx 0x5c]
DW$188	.dwtag  DW_TAG_assign_register, DW_AT_name("GPLYB")
	.dwattr DW$188, DW_AT_location[DW_OP_regx 0x5d]
DW$189	.dwtag  DW_TAG_assign_register, DW_AT_name("TSR")
	.dwattr DW$189, DW_AT_location[DW_OP_regx 0x5e]
DW$190	.dwtag  DW_TAG_assign_register, DW_AT_name("ITSR")
	.dwattr DW$190, DW_AT_location[DW_OP_regx 0x5f]
DW$191	.dwtag  DW_TAG_assign_register, DW_AT_name("NTSR")
	.dwattr DW$191, DW_AT_location[DW_OP_regx 0x60]
DW$192	.dwtag  DW_TAG_assign_register, DW_AT_name("EFR")
	.dwattr DW$192, DW_AT_location[DW_OP_regx 0x61]
DW$193	.dwtag  DW_TAG_assign_register, DW_AT_name("ECR")
	.dwattr DW$193, DW_AT_location[DW_OP_regx 0x62]
DW$194	.dwtag  DW_TAG_assign_register, DW_AT_name("IERR")
	.dwattr DW$194, DW_AT_location[DW_OP_regx 0x63]
DW$195	.dwtag  DW_TAG_assign_register, DW_AT_name("DMSG")
	.dwattr DW$195, DW_AT_location[DW_OP_regx 0x64]
DW$196	.dwtag  DW_TAG_assign_register, DW_AT_name("CMSG")
	.dwattr DW$196, DW_AT_location[DW_OP_regx 0x65]
DW$197	.dwtag  DW_TAG_assign_register, DW_AT_name("DT_DMA_ADDR")
	.dwattr DW$197, DW_AT_location[DW_OP_regx 0x66]
DW$198	.dwtag  DW_TAG_assign_register, DW_AT_name("DT_DMA_DATA")
	.dwattr DW$198, DW_AT_location[DW_OP_regx 0x67]
DW$199	.dwtag  DW_TAG_assign_register, DW_AT_name("DT_DMA_CNTL")
	.dwattr DW$199, DW_AT_location[DW_OP_regx 0x68]
DW$200	.dwtag  DW_TAG_assign_register, DW_AT_name("TCU_CNTL")
	.dwattr DW$200, DW_AT_location[DW_OP_regx 0x69]
DW$201	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_REC_CNTL")
	.dwattr DW$201, DW_AT_location[DW_OP_regx 0x6a]
DW$202	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_XMT_CNTL")
	.dwattr DW$202, DW_AT_location[DW_OP_regx 0x6b]
DW$203	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_CFG")
	.dwattr DW$203, DW_AT_location[DW_OP_regx 0x6c]
DW$204	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_RDATA")
	.dwattr DW$204, DW_AT_location[DW_OP_regx 0x6d]
DW$205	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_WDATA")
	.dwattr DW$205, DW_AT_location[DW_OP_regx 0x6e]
DW$206	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_RADDR")
	.dwattr DW$206, DW_AT_location[DW_OP_regx 0x6f]
DW$207	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_WADDR")
	.dwattr DW$207, DW_AT_location[DW_OP_regx 0x70]
DW$208	.dwtag  DW_TAG_assign_register, DW_AT_name("MFREG0")
	.dwattr DW$208, DW_AT_location[DW_OP_regx 0x71]
DW$209	.dwtag  DW_TAG_assign_register, DW_AT_name("DBG_STAT")
	.dwattr DW$209, DW_AT_location[DW_OP_regx 0x72]
DW$210	.dwtag  DW_TAG_assign_register, DW_AT_name("BRK_EN")
	.dwattr DW$210, DW_AT_location[DW_OP_regx 0x73]
DW$211	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP0_CNT")
	.dwattr DW$211, DW_AT_location[DW_OP_regx 0x74]
DW$212	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP0")
	.dwattr DW$212, DW_AT_location[DW_OP_regx 0x75]
DW$213	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP1")
	.dwattr DW$213, DW_AT_location[DW_OP_regx 0x76]
DW$214	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP2")
	.dwattr DW$214, DW_AT_location[DW_OP_regx 0x77]
DW$215	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP3")
	.dwattr DW$215, DW_AT_location[DW_OP_regx 0x78]
DW$216	.dwtag  DW_TAG_assign_register, DW_AT_name("OVERLAY")
	.dwattr DW$216, DW_AT_location[DW_OP_regx 0x79]
DW$217	.dwtag  DW_TAG_assign_register, DW_AT_name("PC_PROF")
	.dwattr DW$217, DW_AT_location[DW_OP_regx 0x7a]
DW$218	.dwtag  DW_TAG_assign_register, DW_AT_name("ATSR")
	.dwattr DW$218, DW_AT_location[DW_OP_regx 0x7b]
DW$219	.dwtag  DW_TAG_assign_register, DW_AT_name("TRR")
	.dwattr DW$219, DW_AT_location[DW_OP_regx 0x7c]
DW$220	.dwtag  DW_TAG_assign_register, DW_AT_name("TCRR")
	.dwattr DW$220, DW_AT_location[DW_OP_regx 0x7d]
DW$221	.dwtag  DW_TAG_assign_register, DW_AT_name("CIE_RETA")
	.dwattr DW$221, DW_AT_location[DW_OP_regx 0x7e]
	.dwendtag DW$CU

