;******************************************************************************
;* TMS320C6x C/C++ Codegen                                          PC v5.1.0 *
;* Date/Time created: Mon Oct 29 05:13:33 2012                                *
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
;*   Debug Info        : DWARF Debug                                          *
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
DW$4	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$54)
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


DW$16	.dwtag  DW_TAG_subprogram, DW_AT_name("exit"), DW_AT_symbol_name("_exit")
	.dwattr DW$16, DW_AT_type(*DW$T$10)
	.dwattr DW$16, DW_AT_declaration(0x01)
	.dwattr DW$16, DW_AT_external(0x01)
DW$17	.dwtag  DW_TAG_variable, DW_AT_name("_IRQ_eventTable"), DW_AT_symbol_name("__IRQ_eventTable")
	.dwattr DW$17, DW_AT_type(*DW$T$68)
	.dwattr DW$17, DW_AT_declaration(0x01)
	.dwattr DW$17, DW_AT_external(0x01)
	.global	_config
_config:	.usect	".far",40,4
DW$18	.dwtag  DW_TAG_variable, DW_AT_name("config"), DW_AT_symbol_name("_config")
	.dwattr DW$18, DW_AT_location[DW_OP_addr _config]
	.dwattr DW$18, DW_AT_type(*DW$T$53)
	.dwattr DW$18, DW_AT_external(0x01)
	.global	_hCodec
	.bss	_hCodec,4,4
DW$19	.dwtag  DW_TAG_variable, DW_AT_name("hCodec"), DW_AT_symbol_name("_hCodec")
	.dwattr DW$19, DW_AT_location[DW_OP_addr _hCodec]
	.dwattr DW$19, DW_AT_type(*DW$T$25)
	.dwattr DW$19, DW_AT_external(0x01)
	.global	_error
	.bss	_error,4,4
DW$20	.dwtag  DW_TAG_variable, DW_AT_name("error"), DW_AT_symbol_name("_error")
	.dwattr DW$20, DW_AT_location[DW_OP_addr _error]
	.dwattr DW$20, DW_AT_type(*DW$T$10)
	.dwattr DW$20, DW_AT_external(0x01)
	.global	_sig_error
	.bss	_sig_error,2,2
DW$21	.dwtag  DW_TAG_variable, DW_AT_name("sig_error"), DW_AT_symbol_name("_sig_error")
	.dwattr DW$21, DW_AT_location[DW_OP_addr _sig_error]
	.dwattr DW$21, DW_AT_type(*DW$T$34)
	.dwattr DW$21, DW_AT_external(0x01)
	.global	_w
_w:	.usect	".far",204,4
DW$22	.dwtag  DW_TAG_variable, DW_AT_name("w"), DW_AT_symbol_name("_w")
	.dwattr DW$22, DW_AT_location[DW_OP_addr _w]
	.dwattr DW$22, DW_AT_type(*DW$T$63)
	.dwattr DW$22, DW_AT_external(0x01)
	.global	_buffer_index
	.bss	_buffer_index,4,4
DW$23	.dwtag  DW_TAG_variable, DW_AT_name("buffer_index"), DW_AT_symbol_name("_buffer_index")
	.dwattr DW$23, DW_AT_location[DW_OP_addr _buffer_index]
	.dwattr DW$23, DW_AT_type(*DW$T$10)
	.dwattr DW$23, DW_AT_external(0x01)
	.global	_buffer
_buffer:	.usect	".far",204,4
DW$24	.dwtag  DW_TAG_variable, DW_AT_name("buffer"), DW_AT_symbol_name("_buffer")
	.dwattr DW$24, DW_AT_location[DW_OP_addr _buffer]
	.dwattr DW$24, DW_AT_type(*DW$T$63)
	.dwattr DW$24, DW_AT_external(0x01)
	.global	_in_tmp_left
	.bss	_in_tmp_left,4,4
DW$25	.dwtag  DW_TAG_variable, DW_AT_name("in_tmp_left"), DW_AT_symbol_name("_in_tmp_left")
	.dwattr DW$25, DW_AT_location[DW_OP_addr _in_tmp_left]
	.dwattr DW$25, DW_AT_type(*DW$T$23)
	.dwattr DW$25, DW_AT_external(0x01)
	.global	_in_tmp_right
	.bss	_in_tmp_right,4,4
DW$26	.dwtag  DW_TAG_variable, DW_AT_name("in_tmp_right"), DW_AT_symbol_name("_in_tmp_right")
	.dwattr DW$26, DW_AT_location[DW_OP_addr _in_tmp_right]
	.dwattr DW$26, DW_AT_type(*DW$T$23)
	.dwattr DW$26, DW_AT_external(0x01)
	.global	_in_left
	.bss	_in_left,2,2
DW$27	.dwtag  DW_TAG_variable, DW_AT_name("in_left"), DW_AT_symbol_name("_in_left")
	.dwattr DW$27, DW_AT_location[DW_OP_addr _in_left]
	.dwattr DW$27, DW_AT_type(*DW$T$34)
	.dwattr DW$27, DW_AT_external(0x01)
	.global	_in_right
	.bss	_in_right,2,2
DW$28	.dwtag  DW_TAG_variable, DW_AT_name("in_right"), DW_AT_symbol_name("_in_right")
	.dwattr DW$28, DW_AT_location[DW_OP_addr _in_right]
	.dwattr DW$28, DW_AT_type(*DW$T$34)
	.dwattr DW$28, DW_AT_external(0x01)
	.global	_out_left
	.bss	_out_left,2,2
DW$29	.dwtag  DW_TAG_variable, DW_AT_name("out_left"), DW_AT_symbol_name("_out_left")
	.dwattr DW$29, DW_AT_location[DW_OP_addr _out_left]
	.dwattr DW$29, DW_AT_type(*DW$T$34)
	.dwattr DW$29, DW_AT_external(0x01)
	.global	_out_right
	.bss	_out_right,2,2
DW$30	.dwtag  DW_TAG_variable, DW_AT_name("out_right"), DW_AT_symbol_name("_out_right")
	.dwattr DW$30, DW_AT_location[DW_OP_addr _out_right]
	.dwattr DW$30, DW_AT_type(*DW$T$34)
	.dwattr DW$30, DW_AT_external(0x01)
	.global	_input_ready
	.bss	_input_ready,1,1
DW$31	.dwtag  DW_TAG_variable, DW_AT_name("input_ready"), DW_AT_symbol_name("_input_ready")
	.dwattr DW$31, DW_AT_location[DW_OP_addr _input_ready]
	.dwattr DW$31, DW_AT_type(*DW$T$32)
	.dwattr DW$31, DW_AT_external(0x01)
	.global	_output_ready
	.bss	_output_ready,1,1
DW$32	.dwtag  DW_TAG_variable, DW_AT_name("output_ready"), DW_AT_symbol_name("_output_ready")
	.dwattr DW$32, DW_AT_location[DW_OP_addr _output_ready]
	.dwattr DW$32, DW_AT_type(*DW$T$32)
	.dwattr DW$32, DW_AT_external(0x01)
	.global	_in_channel_flag
	.bss	_in_channel_flag,1,1
DW$33	.dwtag  DW_TAG_variable, DW_AT_name("in_channel_flag"), DW_AT_symbol_name("_in_channel_flag")
	.dwattr DW$33, DW_AT_location[DW_OP_addr _in_channel_flag]
	.dwattr DW$33, DW_AT_type(*DW$T$32)
	.dwattr DW$33, DW_AT_external(0x01)
	.global	_out_channel_flag
	.bss	_out_channel_flag,1,1
DW$34	.dwtag  DW_TAG_variable, DW_AT_name("out_channel_flag"), DW_AT_symbol_name("_out_channel_flag")
	.dwattr DW$34, DW_AT_location[DW_OP_addr _out_channel_flag]
	.dwattr DW$34, DW_AT_type(*DW$T$32)
	.dwattr DW$34, DW_AT_external(0x01)
;	C:\CCStudio_v3.1\C6000\cgtools\bin\opt6x.exe C:\Users\ssmith67\AppData\Local\Temp\TI86020 C:\Users\ssmith67\AppData\Local\Temp\TI86014 
	.sect	".text"
	.global	_transmit_interrupt

DW$35	.dwtag  DW_TAG_subprogram, DW_AT_name("transmit_interrupt"), DW_AT_symbol_name("_transmit_interrupt")
	.dwattr DW$35, DW_AT_low_pc(_transmit_interrupt)
	.dwattr DW$35, DW_AT_high_pc(0x00)
	.dwattr DW$35, DW_AT_begin_file("H:\SPH\firmware\lab3\main.c")
	.dwattr DW$35, DW_AT_begin_line(0xa0)
	.dwattr DW$35, DW_AT_begin_column(0x06)
	.dwpsn	"H:\SPH\firmware\lab3\main.c",160,31

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

;******************************************************************************
;*                                                                            *
;* Using -g (debug) with optimization (-o3) may disable key optimizations!    *
;*                                                                            *
;******************************************************************************
_transmit_interrupt:
;** --------------------------------------------------------------------------*
	.dwcfa	0x0e, 0
	.dwcfa	0x09, 126, 19
           STW     .D2T2   B3,*SP--(8)       ; |160| 
	.dwcfa	0x0e, 8
	.dwcfa	0x80, 19, 0
	.dwpsn	"H:\SPH\firmware\lab3\main.c",161,2
           LDBU    .D2T2   *+DP(_out_channel_flag),B0 ; |161| 
           LDH     .D2T2   *+DP(_out_left),B4 ; |161| 
           LDW     .D2T2   *+DP(_hCodec),B5  ; |161| 
           NOP             2
   [ B0]   B       .S1     L1                ; |161| 
           NOP             5
           ; BRANCHCC OCCURS {L1}            ; |161| 
;** --------------------------------------------------------------------------*
	.dwpsn	"H:\SPH\firmware\lab3\main.c",167,3

           CALL    .S1     _DSK6713_AIC23_write ; |167| 
||         MVKL    .S2     RL0,B3            ; |167| 

           LDHU    .D2T2   *+DP(_out_right),B4 ; |167| 
||         MVKH    .S2     RL0,B3            ; |167| 

           MV      .L1X    B5,A4             ; |167| 
           NOP             3
RL0:       ; CALL OCCURS {_DSK6713_AIC23_write}  ; |167| 
;** --------------------------------------------------------------------------*
	.dwpsn	"H:\SPH\firmware\lab3\main.c",169,3
           MVK     .S1     1,A3              ; |169| 
           STB     .D2T1   A3,*+DP(_out_channel_flag) ; |169| 
	.dwpsn	"H:\SPH\firmware\lab3\main.c",170,3

           B       .S1     L2                ; |170| 
||         MVK     .S2     1,B4              ; |170| 

           STB     .D2T2   B4,*+DP(_output_ready) ; |170| 
           NOP             4
           ; BRANCH OCCURS {L2}              ; |170| 
;** --------------------------------------------------------------------------*
L1:    
	.dwpsn	"H:\SPH\firmware\lab3\main.c",162,3

           CALL    .S1     _DSK6713_AIC23_write ; |162| 
||         MVKL    .S2     RL1,B3            ; |162| 

           MVKH    .S2     RL1,B3            ; |162| 
           EXTU    .S2     B4,16,16,B4       ; |162| 
           MV      .L1X    B5,A4             ; |162| 
           NOP             2
RL1:       ; CALL OCCURS {_DSK6713_AIC23_write}  ; |162| 
;** --------------------------------------------------------------------------*
	.dwpsn	"H:\SPH\firmware\lab3\main.c",164,3
           ZERO    .L2     B4                ; |164| 
           STB     .D2T2   B4,*+DP(_out_channel_flag) ; |164| 
	.dwpsn	"H:\SPH\firmware\lab3\main.c",165,3
           MVK     .S1     1,A3              ; |165| 
           STB     .D2T1   A3,*+DP(_output_ready) ; |165| 
;** --------------------------------------------------------------------------*
L2:    
	.dwpsn	"H:\SPH\firmware\lab3\main.c",172,1
           LDW     .D2T2   *++SP(8),B3       ; |172| 
	.dwcfa	0xc0, 19
	.dwcfa	0x0e, 0
           NOP             4
           RET     .S2     B3                ; |172| 
           NOP             5
           ; BRANCH OCCURS {B3}              ; |172| 
	.dwattr DW$35, DW_AT_end_file("H:\SPH\firmware\lab3\main.c")
	.dwattr DW$35, DW_AT_end_line(0xac)
	.dwattr DW$35, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$35

	.sect	".text"
	.global	_reset

DW$36	.dwtag  DW_TAG_subprogram, DW_AT_name("reset"), DW_AT_symbol_name("_reset")
	.dwattr DW$36, DW_AT_low_pc(_reset)
	.dwattr DW$36, DW_AT_high_pc(0x00)
	.dwattr DW$36, DW_AT_begin_file("H:\SPH\firmware\lab3\main.c")
	.dwattr DW$36, DW_AT_begin_line(0x58)
	.dwattr DW$36, DW_AT_begin_column(0x06)
	.dwpsn	"H:\SPH\firmware\lab3\main.c",88,18

	.dwfde DW$CIE

;******************************************************************************
;* FUNCTION NAME: _reset                                                      *
;*                                                                            *
;*   Regs Modified     : A3,A4,B0,B4,B5,B6,B7                                 *
;*   Regs Used         : A3,A4,B0,B3,B4,B5,B6,B7,DP,SP                        *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************

;******************************************************************************
;*                                                                            *
;* Using -g (debug) with optimization (-o3) may disable key optimizations!    *
;*                                                                            *
;******************************************************************************
_reset:
;** --------------------------------------------------------------------------*
	.dwcfa	0x0e, 0
	.dwcfa	0x09, 126, 19
           ZERO    .L2     B4
	.dwpsn	"H:\SPH\firmware\lab3\main.c",91,12
           MVC     .S2     CSR,B6

           AND     .L2     -2,B6,B5
||         MVKL    .S1     _w,A3

           MVC     .S2     B5,CSR            ; interrupts off
||         MVKH    .S1     _w,A3

;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 91
;*      Loop opening brace source line   : 91
;*      Loop closing brace source line   : 94
;*      Known Minimum Trip Count         : 51                    
;*      Known Maximum Trip Count         : 51                    
;*      Known Max Trip Count Factor      : 51
;*      Loop Carried Dependency Bound(^) : 0
;*      Unpartitioned Resource Bound     : 1
;*      Partitioned Resource Bound(*)    : 1
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        0     
;*      .S units                     1*       0     
;*      .D units                     1*       1*    
;*      .M units                     0        0     
;*      .X cross paths               0        0     
;*      .T address paths             1*       1*    
;*      Long read paths              1*       1*    
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          0        1     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1*       0     
;*      Bound(.L .S .D .LS .LSD)     1*       1*    
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 1  Schedule found with 7 iterations in parallel
;*
;*      Register Usage Table:
;*          +---------------------------------+
;*          |AAAAAAAAAAAAAAAA|BBBBBBBBBBBBBBBB|
;*          |0000000000111111|0000000000111111|
;*          |0123456789012345|0123456789012345|
;*          |----------------+----------------|
;*       0: |   **           |*   **          |
;*          +---------------------------------+
;*
;*      Done
;*
;*      Epilog not removed
;*      Collapsed epilog stages     : 0
;*      Collapsed prolog stages     : 0
;*      Minimum required memory pad : 0 bytes
;*
;*      Minimum safe trip count     : 7
;*----------------------------------------------------------------------------*
;*       SETUP CODE
;*
;*                  MV              A3,B4
;*
;*        SINGLE SCHEDULED ITERATION
;*
;*        C36:
;*   0      [ B0]   SUB     .L2     B0,1,B0           ; |91| 
;*   1      [ B0]   B       .S1     C36               ; |91| 
;*   2              NOP             4
;*   6              STW     .D2T2   B4,*B5++          ; |92| 
;*     ||           STW     .D1T1   A3,*A4++          ; |93| 
;*   7              ; BRANCHCC OCCURS {C36}           ; |91| 
;*----------------------------------------------------------------------------*
L3:    ; PIPED LOOP PROLOG
           B       .S1     L4                ; |91| (P) <0,1> 

           MVKL    .S2     _buffer,B7
||         B       .S1     L4                ; |91| (P) <1,1> 

           MVKH    .S2     _buffer,B7
||         B       .S1     L4                ; |91| (P) <2,1> 

           MV      .L1X    B7,A4
||         B       .S1     L4                ; |91| (P) <3,1> 

           MVK     .S2     39,B0             ; |91| 
||         MV      .L2X    A3,B5
||         MV      .L1X    B4,A3
||         B       .S1     L4                ; |91| (P) <4,1> 

;** --------------------------------------------------------------------------*
L4:    ; PIPED LOOP KERNEL
DW$L$_reset$3$B:

           STW     .D2T2   B4,*B5++          ; |92| <0,6> 
||         STW     .D1T1   A3,*A4++          ; |93| <0,6> 
|| [ B0]   B       .S1     L4                ; |91| <5,1> 
|| [ B0]   SUB     .L2     B0,1,B0           ; |91| <6,0> 

DW$L$_reset$3$E:
;** --------------------------------------------------------------------------*
L5:    ; PIPED LOOP EPILOG

           MVC     .S2     B6,CSR            ; interrupts on
||         STW     .D1T1   A3,*A4++          ; |93| (E) <1,6> 
||         STW     .D2T2   B4,*B5++          ; |92| (E) <1,6> 

           STW     .D2T2   B4,*B5++          ; |92| (E) <2,6> 
||         STW     .D1T1   A3,*A4++          ; |93| (E) <2,6> 

           STW     .D1T1   A3,*A4++          ; |93| (E) <3,6> 
||         STW     .D2T2   B4,*B5++          ; |92| (E) <3,6> 

           STW     .D2T2   B4,*B5++          ; |92| (E) <4,6> 
||         STW     .D1T1   A3,*A4++          ; |93| (E) <4,6> 

           STW     .D1T1   A3,*A4++          ; |93| (E) <5,6> 
||         STW     .D2T2   B4,*B5++          ; |92| (E) <5,6> 

           STW     .D2T2   B4,*B5++          ; |92| (E) <6,6> 
||         STW     .D1T1   A3,*A4++          ; |93| (E) <6,6> 

	.dwcfa	0x0e, 0
	.dwpsn	"H:\SPH\firmware\lab3\main.c",95,1
           RET     .S2     B3                ; |95| 
           NOP             5
           ; BRANCH OCCURS {B3}              ; |95| 

DW$37	.dwtag  DW_TAG_loop
	.dwattr DW$37, DW_AT_name("H:\SPH\firmware\lab3\Configuration1cfg_c.asm:L4:1:1351502013")
	.dwattr DW$37, DW_AT_begin_file("H:\SPH\firmware\lab3\main.c")
	.dwattr DW$37, DW_AT_begin_line(0x5b)
	.dwattr DW$37, DW_AT_end_line(0x5e)
DW$38	.dwtag  DW_TAG_loop_range
	.dwattr DW$38, DW_AT_low_pc(DW$L$_reset$3$B)
	.dwattr DW$38, DW_AT_high_pc(DW$L$_reset$3$E)
	.dwendtag DW$37

	.dwattr DW$36, DW_AT_end_file("H:\SPH\firmware\lab3\main.c")
	.dwattr DW$36, DW_AT_end_line(0x5f)
	.dwattr DW$36, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$36

	.sect	".text"
	.global	_receive_interrupt

DW$39	.dwtag  DW_TAG_subprogram, DW_AT_name("receive_interrupt"), DW_AT_symbol_name("_receive_interrupt")
	.dwattr DW$39, DW_AT_low_pc(_receive_interrupt)
	.dwattr DW$39, DW_AT_high_pc(0x00)
	.dwattr DW$39, DW_AT_begin_file("H:\SPH\firmware\lab3\main.c")
	.dwattr DW$39, DW_AT_begin_line(0x8e)
	.dwattr DW$39, DW_AT_begin_column(0x06)
	.dwpsn	"H:\SPH\firmware\lab3\main.c",142,30

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

;******************************************************************************
;*                                                                            *
;* Using -g (debug) with optimization (-o3) may disable key optimizations!    *
;*                                                                            *
;******************************************************************************
_receive_interrupt:
;** --------------------------------------------------------------------------*
	.dwcfa	0x0e, 0
	.dwcfa	0x09, 126, 19
           STW     .D2T2   B3,*SP--(8)       ; |142| 
	.dwcfa	0x0e, 8
	.dwcfa	0x80, 19, 0
	.dwpsn	"H:\SPH\firmware\lab3\main.c",143,2
           LDBU    .D2T2   *+DP(_in_channel_flag),B0 ; |143| 
           LDW     .D2T2   *+DP(_hCodec),B4  ; |143| 
           NOP             3
   [ B0]   B       .S1     L6                ; |143| 
           NOP             5
           ; BRANCHCC OCCURS {L6}            ; |143| 
;** --------------------------------------------------------------------------*
	.dwpsn	"H:\SPH\firmware\lab3\main.c",151,3

           CALL    .S1     _DSK6713_AIC23_read ; |151| 
||         MVKL    .S2     RL2,B3            ; |151| 

           MVKH    .S2     RL2,B3            ; |151| 
           MVK     .S2     (_in_tmp_right-$bss),B5 ; |151| 
           MV      .L1X    B4,A4             ; |151| 
           ADD     .L2     DP,B5,B4          ; |151| 
           NOP             1
RL2:       ; CALL OCCURS {_DSK6713_AIC23_read}  ; |151| 
;** --------------------------------------------------------------------------*
	.dwpsn	"H:\SPH\firmware\lab3\main.c",153,3
           LDH     .D2T2   *+DP(_in_tmp_right),B4 ; |153| 
           NOP             4
           STH     .D2T2   B4,*+DP(_in_right) ; |153| 
	.dwpsn	"H:\SPH\firmware\lab3\main.c",155,3
           MVK     .S2     1,B4              ; |155| 
           STB     .D2T2   B4,*+DP(_in_channel_flag) ; |155| 
	.dwpsn	"H:\SPH\firmware\lab3\main.c",156,3

           B       .S2     L7                ; |156| 
||         MVK     .S1     1,A3              ; |156| 

           STB     .D2T1   A3,*+DP(_input_ready) ; |156| 
           NOP             4
           ; BRANCH OCCURS {L7}              ; |156| 
;** --------------------------------------------------------------------------*
L6:    
	.dwpsn	"H:\SPH\firmware\lab3\main.c",144,3

           CALL    .S1     _DSK6713_AIC23_read ; |144| 
||         MVKL    .S2     RL3,B3            ; |144| 

           MVKH    .S2     RL3,B3            ; |144| 
           MVK     .S2     (_in_tmp_left-$bss),B5 ; |144| 
           MV      .L1X    B4,A4             ; |144| 
           ADD     .L2     DP,B5,B4          ; |144| 
           NOP             1
RL3:       ; CALL OCCURS {_DSK6713_AIC23_read}  ; |144| 
;** --------------------------------------------------------------------------*
	.dwpsn	"H:\SPH\firmware\lab3\main.c",146,3
           LDH     .D2T2   *+DP(_in_tmp_left),B4 ; |146| 
           NOP             4
           STH     .D2T2   B4,*+DP(_in_left) ; |146| 
	.dwpsn	"H:\SPH\firmware\lab3\main.c",148,3
           ZERO    .L2     B4                ; |148| 
           STB     .D2T2   B4,*+DP(_in_channel_flag) ; |148| 
	.dwpsn	"H:\SPH\firmware\lab3\main.c",149,3
           MVK     .S1     1,A3              ; |149| 
           STB     .D2T1   A3,*+DP(_input_ready) ; |149| 
;** --------------------------------------------------------------------------*
L7:    
	.dwpsn	"H:\SPH\firmware\lab3\main.c",158,1
           LDW     .D2T2   *++SP(8),B3       ; |158| 
	.dwcfa	0xc0, 19
	.dwcfa	0x0e, 0
           NOP             4
           RET     .S2     B3                ; |158| 
           NOP             5
           ; BRANCH OCCURS {B3}              ; |158| 
	.dwattr DW$39, DW_AT_end_file("H:\SPH\firmware\lab3\main.c")
	.dwattr DW$39, DW_AT_end_line(0x9e)
	.dwattr DW$39, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$39

	.sect	".text"
	.global	_multiply

DW$40	.dwtag  DW_TAG_subprogram, DW_AT_name("multiply"), DW_AT_symbol_name("_multiply")
	.dwattr DW$40, DW_AT_low_pc(_multiply)
	.dwattr DW$40, DW_AT_high_pc(0x00)
	.dwattr DW$40, DW_AT_begin_file("H:\SPH\firmware\lab3\main.c")
	.dwattr DW$40, DW_AT_begin_line(0x84)
	.dwattr DW$40, DW_AT_begin_column(0x05)
	.dwpsn	"H:\SPH\firmware\lab3\main.c",132,28

	.dwfde DW$CIE

;******************************************************************************
;* FUNCTION NAME: _multiply                                                   *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP                                      *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP                                      *
;*   Local Frame Size  : 0 Args + 0 Auto + 4 Save = 4 byte                    *
;******************************************************************************

;******************************************************************************
;*                                                                            *
;* Using -g (debug) with optimization (-o3) may disable key optimizations!    *
;*                                                                            *
;******************************************************************************
_multiply:
;** --------------------------------------------------------------------------*
	.dwcfa	0x0e, 0
	.dwcfa	0x09, 126, 19
           STW     .D2T2   B3,*SP--(8)       ; |132| 
	.dwcfa	0x0e, 8
	.dwcfa	0x80, 19, 0
DW$41	.dwtag  DW_TAG_formal_parameter, DW_AT_name("a"), DW_AT_symbol_name("_a")
	.dwattr DW$41, DW_AT_type(*DW$T$10)
	.dwattr DW$41, DW_AT_location[DW_OP_reg4]
DW$42	.dwtag  DW_TAG_formal_parameter, DW_AT_name("b"), DW_AT_symbol_name("_b")
	.dwattr DW$42, DW_AT_type(*DW$T$10)
	.dwattr DW$42, DW_AT_location[DW_OP_reg20]
DW$43	.dwtag  DW_TAG_variable, DW_AT_name("b"), DW_AT_symbol_name("_b")
	.dwattr DW$43, DW_AT_type(*DW$T$66)
	.dwattr DW$43, DW_AT_location[DW_OP_reg20]
DW$44	.dwtag  DW_TAG_variable, DW_AT_name("a"), DW_AT_symbol_name("_a")
	.dwattr DW$44, DW_AT_type(*DW$T$66)
	.dwattr DW$44, DW_AT_location[DW_OP_reg4]
	.dwpsn	"H:\SPH\firmware\lab3\main.c",137,2
           CALL    .S1     __mpyll           ; |137| 
           MVKL    .S2     RL4,B3            ; |137| 
           SHR     .S2     B4,31,B5          ; |137| 
           MVKH    .S2     RL4,B3            ; |137| 
           SHR     .S1     A4,31,A5          ; |137| 
           NOP             1
RL4:       ; CALL OCCURS {__mpyll}           ; |137| 
;** --------------------------------------------------------------------------*

           SHL     .S2X    A5,0x1,B4         ; |137| 
||         SHRU    .S1     A4,0x1f,A3        ; |137| 

           OR      .L1X    B4,A3,A4          ; |137| 
	.dwpsn	"H:\SPH\firmware\lab3\main.c",138,1
           LDW     .D2T2   *++SP(8),B3       ; |138| 
           NOP             4
	.dwcfa	0xc0, 19
	.dwcfa	0x0e, 0
           RET     .S2     B3                ; |138| 
           NOP             5
           ; BRANCH OCCURS {B3}              ; |138| 
	.dwattr DW$40, DW_AT_end_file("H:\SPH\firmware\lab3\main.c")
	.dwattr DW$40, DW_AT_end_line(0x8a)
	.dwattr DW$40, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$40

	.sect	".text"
	.global	_convolve_c

DW$45	.dwtag  DW_TAG_subprogram, DW_AT_name("convolve_c"), DW_AT_symbol_name("_convolve_c")
	.dwattr DW$45, DW_AT_low_pc(_convolve_c)
	.dwattr DW$45, DW_AT_high_pc(0x00)
	.dwattr DW$45, DW_AT_begin_file("H:\SPH\firmware\lab3\main.c")
	.dwattr DW$45, DW_AT_begin_line(0xc9)
	.dwattr DW$45, DW_AT_begin_column(0x05)
	.dwpsn	"H:\SPH\firmware\lab3\main.c",201,55

	.dwfde DW$CIE

;******************************************************************************
;* FUNCTION NAME: _convolve_c                                                 *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,B0,B1, *
;*                           B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,SP               *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,B0,B1, *
;*                           B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,SP               *
;*   Local Frame Size  : 0 Args + 0 Auto + 28 Save = 28 byte                  *
;******************************************************************************

;******************************************************************************
;*                                                                            *
;* Using -g (debug) with optimization (-o3) may disable key optimizations!    *
;*                                                                            *
;******************************************************************************
_convolve_c:
;** --------------------------------------------------------------------------*
	.dwcfa	0x0e, 0
	.dwcfa	0x09, 126, 19

           STW     .D2T2   B11,*SP--(32)     ; |201| 
||         MV      .L1X    SP,A9             ; |201| 

	.dwcfa	0x80, 27, 0
           STW     .D2T2   B10,*+SP(28)
	.dwcfa	0x80, 26, 1
           STW     .D2T2   B3,*+SP(24)
	.dwcfa	0x80, 19, 2
           STW     .D1T1   A13,*-A9(12)
	.dwcfa	0x80, 13, 3
           STW     .D1T1   A12,*-A9(16)
	.dwcfa	0x80, 12, 4
           STW     .D2T1   A11,*+SP(12)
	.dwcfa	0x80, 11, 5
           STW     .D2T1   A10,*+SP(8)
	.dwcfa	0x80, 10, 6
DW$46	.dwtag  DW_TAG_formal_parameter, DW_AT_name("a"), DW_AT_symbol_name("_a")
	.dwattr DW$46, DW_AT_type(*DW$T$58)
	.dwattr DW$46, DW_AT_location[DW_OP_reg4]
DW$47	.dwtag  DW_TAG_formal_parameter, DW_AT_name("b"), DW_AT_symbol_name("_b")
	.dwattr DW$47, DW_AT_type(*DW$T$58)
	.dwattr DW$47, DW_AT_location[DW_OP_reg20]
DW$48	.dwtag  DW_TAG_formal_parameter, DW_AT_name("b_offset"), DW_AT_symbol_name("_b_offset")
	.dwattr DW$48, DW_AT_type(*DW$T$10)
	.dwattr DW$48, DW_AT_location[DW_OP_reg6]
DW$49	.dwtag  DW_TAG_formal_parameter, DW_AT_name("len"), DW_AT_symbol_name("_len")
	.dwattr DW$49, DW_AT_type(*DW$T$10)
	.dwattr DW$49, DW_AT_location[DW_OP_reg22]
DW$50	.dwtag  DW_TAG_variable, DW_AT_name("result"), DW_AT_symbol_name("_result")
	.dwattr DW$50, DW_AT_type(*DW$T$10)
	.dwattr DW$50, DW_AT_location[DW_OP_reg27]
DW$51	.dwtag  DW_TAG_variable, DW_AT_name("b_offset"), DW_AT_symbol_name("_b_offset")
	.dwattr DW$51, DW_AT_type(*DW$T$10)
	.dwattr DW$51, DW_AT_location[DW_OP_reg11]
DW$52	.dwtag  DW_TAG_variable, DW_AT_name("a"), DW_AT_symbol_name("_a")
	.dwattr DW$52, DW_AT_type(*DW$T$59)
	.dwattr DW$52, DW_AT_location[DW_OP_reg21]
DW$53	.dwtag  DW_TAG_variable, DW_AT_name("b"), DW_AT_symbol_name("_b")
	.dwattr DW$53, DW_AT_type(*DW$T$59)
	.dwattr DW$53, DW_AT_location[DW_OP_reg13]
DW$54	.dwtag  DW_TAG_variable, DW_AT_name("len"), DW_AT_symbol_name("_len")
	.dwattr DW$54, DW_AT_type(*DW$T$66)
	.dwattr DW$54, DW_AT_location[DW_OP_reg26]

           MV      .L2X    A4,B5             ; |201| 
||         MV      .S2     B6,B10            ; |201| 
||         MV      .L1     A6,A11            ; |201| 
||         MV      .S1X    B4,A13            ; |201| 

	.dwpsn	"H:\SPH\firmware\lab3\main.c",205,2
           ZERO    .L2     B11               ; |205| 
	.dwpsn	"H:\SPH\firmware\lab3\main.c",207,12
           CMPGT   .L2     B10,0,B0          ; |207| 
   [!B0]   B       .S1     L9                ; |207| 
           MV      .L1X    B10,A12
           ADDAW   .D2     B5,B10,B4
           SUB     .L1X    B4,4,A10
           NOP             2
           ; BRANCHCC OCCURS {L9}            ; |207| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*----------------------------------------------------------------------------*
L8:    
DW$L$_convolve_c$2$B:
	.dwpsn	"H:\SPH\firmware\lab3\main.c",208,3
           CMPLT   .L2X    A11,B10,B0        ; |208| 
	.dwpsn	"H:\SPH\firmware\lab3\main.c",208,23
   [!B0]   ZERO    .L1     A11               ; |208| 
	.dwpsn	"H:\SPH\firmware\lab3\main.c",209,3

           LDW     .D1T1   *+A13[A11],A3     ; |209| 
||         MVKL    .S2     RL5,B3            ; |209| 

           LDW     .D1T1   *A10--,A4         ; |209| 
||         CALL    .S1     __mpyll           ; |209| 
||         MVKH    .S2     RL5,B3            ; |209| 

           NOP             3
           SHR     .S2X    A3,31,B5          ; |209| 

           MV      .L2X    A3,B4             ; |209| 
||         SHR     .S1     A4,31,A5          ; |209| 

RL5:       ; CALL OCCURS {__mpyll}           ; |209| 
DW$L$_convolve_c$2$E:
;** --------------------------------------------------------------------------*
DW$L$_convolve_c$3$B:

           SHRU    .S1     A4,0x1f,A3        ; |209| 
||         SHL     .S2X    A5,0x1,B4         ; |209| 

           OR      .L2X    B4,A3,B4          ; |209| 
           ADD     .L2     B4,B11,B11        ; |209| 
	.dwpsn	"H:\SPH\firmware\lab3\main.c",210,3
           ADD     .L1     1,A11,A11         ; |210| 
	.dwpsn	"H:\SPH\firmware\lab3\main.c",207,12

           SUB     .L1     A12,1,A1          ; |207| 
||         SUB     .S1     A12,1,A12         ; |207| 

   [ A1]   B       .S1     L8                ; |207| 
           NOP             5
           ; BRANCHCC OCCURS {L8}            ; |207| 
DW$L$_convolve_c$3$E:
;** --------------------------------------------------------------------------*
L9:    
	.dwpsn	"H:\SPH\firmware\lab3\main.c",213,2
           MV      .L1X    B11,A4            ; |213| 
	.dwpsn	"H:\SPH\firmware\lab3\main.c",214,1

           MV      .L1X    SP,A9             ; |214| 
||         LDW     .D2T2   *+SP(28),B10      ; |214| 

	.dwcfa	0xc0, 26
           LDW     .D2T2   *+SP(24),B3       ; |214| 
           NOP             1
	.dwcfa	0xc0, 19
           LDDW    .D1T1   *+A9(16),A13:A12  ; |214| 
	.dwcfa	0xc0, 12
	.dwcfa	0xc0, 13
           LDDW    .D1T1   *+A9(8),A11:A10   ; |214| 
	.dwcfa	0xc0, 10
	.dwcfa	0xc0, 11
           LDW     .D2T2   *++SP(32),B11     ; |214| 
	.dwcfa	0xc0, 27
	.dwcfa	0x0e, 0
           RET     .S2     B3                ; |214| 
           NOP             5
           ; BRANCH OCCURS {B3}              ; |214| 

DW$55	.dwtag  DW_TAG_loop
	.dwattr DW$55, DW_AT_name("H:\SPH\firmware\lab3\Configuration1cfg_c.asm:L8:1:1351502013")
	.dwattr DW$55, DW_AT_begin_file("H:\SPH\firmware\lab3\main.c")
	.dwattr DW$55, DW_AT_begin_line(0xcf)
	.dwattr DW$55, DW_AT_end_line(0xd3)
DW$56	.dwtag  DW_TAG_loop_range
	.dwattr DW$56, DW_AT_low_pc(DW$L$_convolve_c$2$B)
	.dwattr DW$56, DW_AT_high_pc(DW$L$_convolve_c$2$E)
DW$57	.dwtag  DW_TAG_loop_range
	.dwattr DW$57, DW_AT_low_pc(DW$L$_convolve_c$3$B)
	.dwattr DW$57, DW_AT_high_pc(DW$L$_convolve_c$3$E)
	.dwendtag DW$55

	.dwattr DW$45, DW_AT_end_file("H:\SPH\firmware\lab3\main.c")
	.dwattr DW$45, DW_AT_end_line(0xd6)
	.dwattr DW$45, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$45

	.sect	".text"
	.global	_grad_desc

DW$58	.dwtag  DW_TAG_subprogram, DW_AT_name("grad_desc"), DW_AT_symbol_name("_grad_desc")
	.dwattr DW$58, DW_AT_low_pc(_grad_desc)
	.dwattr DW$58, DW_AT_high_pc(0x00)
	.dwattr DW$58, DW_AT_begin_file("H:\SPH\firmware\lab3\main.c")
	.dwattr DW$58, DW_AT_begin_line(0x72)
	.dwattr DW$58, DW_AT_begin_column(0x06)
	.dwpsn	"H:\SPH\firmware\lab3\main.c",114,22

	.dwfde DW$CIE

;******************************************************************************
;* FUNCTION NAME: _grad_desc                                                  *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,B0,B1,B2,  *
;*                           B3,B4,B5,B6,B7,B8,B9,B10,B11,B12,SP              *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,B0,B1,B2,  *
;*                           B3,B4,B5,B6,B7,B8,B9,B10,B11,B12,DP,SP           *
;*   Local Frame Size  : 0 Args + 0 Auto + 28 Save = 28 byte                  *
;******************************************************************************

;******************************************************************************
;*                                                                            *
;* Using -g (debug) with optimization (-o3) may disable key optimizations!    *
;*                                                                            *
;******************************************************************************
_grad_desc:
;** --------------------------------------------------------------------------*
	.dwcfa	0x0e, 0
	.dwcfa	0x09, 126, 19

           STW     .D2T2   B12,*SP--(32)     ; |114| 
||         MV      .L1X    SP,A9             ; |114| 

	.dwcfa	0x80, 28, 0
           STW     .D2T2   B11,*+SP(28)
	.dwcfa	0x80, 27, 1
           STW     .D2T2   B10,*+SP(24)
	.dwcfa	0x80, 26, 2
           STW     .D2T2   B3,*+SP(20)
	.dwcfa	0x80, 19, 3
           STW     .D1T1   A12,*-A9(16)
	.dwcfa	0x80, 12, 4
           STW     .D1T1   A11,*-A9(20)
	.dwcfa	0x80, 11, 5
           STW     .D2T1   A10,*+SP(8)
	.dwcfa	0x80, 10, 6
DW$59	.dwtag  DW_TAG_variable, DW_AT_name("tmp_b_index"), DW_AT_symbol_name("_tmp_b_index")
	.dwattr DW$59, DW_AT_type(*DW$T$10)
	.dwattr DW$59, DW_AT_location[DW_OP_reg12]
	.dwpsn	"H:\SPH\firmware\lab3\main.c",118,2
           LDW     .D2T2   *+DP(_error),B5
           CALL    .S1     __mpyll
           LDW     .D2T1   *+DP(_buffer_index),A10 ; |118| 
           MVKL    .S2     0x184808b,B4
           MVKL    .S2     RL6,B3

           MVKH    .S2     0x184808b,B4
||         SHR     .S1X    B5,31,A5

           ZERO    .L2     B5
||         MV      .L1X    B5,A4
||         MVKH    .S2     RL6,B3

RL6:       ; CALL OCCURS {__mpyll} 
;** --------------------------------------------------------------------------*

           SHL     .S2X    A5,0x6,B4
||         SHRU    .S1     A4,0x1a,A3

           OR      .L2X    B4,A3,B11

           SUB     .L1     A10,1,A12         ; |118| 
||         SHR     .S2     B11,31,B12

	.dwpsn	"H:\SPH\firmware\lab3\main.c",120,12
           MVKL    .S1     _w,A3
           MVKL    .S1     _buffer,A11
           MVKH    .S1     _w,A3
           MVK     .S1     0x33,A10          ; |120| 

           MV      .L2X    A3,B10
||         MVKH    .S1     _buffer,A11

;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*----------------------------------------------------------------------------*
L10:    
DW$L$_grad_desc$3$B:
	.dwpsn	"H:\SPH\firmware\lab3\main.c",121,3
           CMPLT   .L2X    A12,0,B0          ; |121| 
   [ B0]   ZERO    .L1     A12               ; |121| 
	.dwpsn	"H:\SPH\firmware\lab3\main.c",126,3

           LDW     .D1T1   *+A11[A12],A4     ; |126| 
||         CALL    .S1     __mpyll           ; |126| 
||         MVKL    .S2     RL7,B3            ; |126| 

           MVKH    .S2     RL7,B3            ; |126| 
           MV      .L2     B11,B4            ; |126| 
           MV      .S2     B12,B5            ; |126| 
           NOP             1
           SHR     .S1     A4,31,A5          ; |126| 
RL7:       ; CALL OCCURS {__mpyll}           ; |126| 
DW$L$_grad_desc$3$E:
;** --------------------------------------------------------------------------*
DW$L$_grad_desc$4$B:

           LDW     .D2T2   *B10,B5           ; |126| 
||         SHL     .S2X    A5,0x1,B4         ; |126| 
||         SHRU    .S1     A4,0x1f,A3        ; |126| 

           OR      .L2X    B4,A3,B4          ; |126| 
           NOP             3
           ADDAH   .D2     B5,B4,B4          ; |126| 
           STW     .D2T2   B4,*B10++         ; |126| 
	.dwpsn	"H:\SPH\firmware\lab3\main.c",128,3
           SUB     .L1     A12,1,A12         ; |128| 
	.dwpsn	"H:\SPH\firmware\lab3\main.c",120,12

           SUB     .L1     A10,1,A1          ; |120| 
||         SUB     .S1     A10,1,A10         ; |120| 

   [ A1]   B       .S1     L10               ; |120| 
           NOP             5
           ; BRANCHCC OCCURS {L10}           ; |120| 
DW$L$_grad_desc$4$E:
;** --------------------------------------------------------------------------*
	.dwpsn	"H:\SPH\firmware\lab3\main.c",130,1

           MV      .L1X    SP,A9             ; |130| 
||         LDDW    .D2T2   *+SP(24),B11:B10  ; |130| 

	.dwcfa	0xc0, 26
	.dwcfa	0xc0, 27
           LDW     .D2T2   *+SP(20),B3       ; |130| 
	.dwcfa	0xc0, 19
           LDW     .D1T1   *+A9(16),A12      ; |130| 
	.dwcfa	0xc0, 12
           LDDW    .D1T1   *+A9(8),A11:A10   ; |130| 
	.dwcfa	0xc0, 10
	.dwcfa	0xc0, 11
           LDW     .D2T2   *++SP(32),B12     ; |130| 
	.dwcfa	0xc0, 28
	.dwcfa	0x0e, 0
           NOP             1
           RET     .S2     B3                ; |130| 
           NOP             5
           ; BRANCH OCCURS {B3}              ; |130| 

DW$60	.dwtag  DW_TAG_loop
	.dwattr DW$60, DW_AT_name("H:\SPH\firmware\lab3\Configuration1cfg_c.asm:L10:1:1351502013")
	.dwattr DW$60, DW_AT_begin_file("H:\SPH\firmware\lab3\main.c")
	.dwattr DW$60, DW_AT_begin_line(0x78)
	.dwattr DW$60, DW_AT_end_line(0x81)
DW$61	.dwtag  DW_TAG_loop_range
	.dwattr DW$61, DW_AT_low_pc(DW$L$_grad_desc$3$B)
	.dwattr DW$61, DW_AT_high_pc(DW$L$_grad_desc$3$E)
DW$62	.dwtag  DW_TAG_loop_range
	.dwattr DW$62, DW_AT_low_pc(DW$L$_grad_desc$4$B)
	.dwattr DW$62, DW_AT_high_pc(DW$L$_grad_desc$4$E)
	.dwendtag DW$60

	.dwattr DW$58, DW_AT_end_file("H:\SPH\firmware\lab3\main.c")
	.dwattr DW$58, DW_AT_end_line(0x82)
	.dwattr DW$58, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$58

	.sect	".text"
	.global	_process_sample

DW$63	.dwtag  DW_TAG_subprogram, DW_AT_name("process_sample"), DW_AT_symbol_name("_process_sample")
	.dwattr DW$63, DW_AT_low_pc(_process_sample)
	.dwattr DW$63, DW_AT_high_pc(0x00)
	.dwattr DW$63, DW_AT_begin_file("H:\SPH\firmware\lab3\main.c")
	.dwattr DW$63, DW_AT_begin_line(0x61)
	.dwattr DW$63, DW_AT_begin_column(0x07)
	.dwpsn	"H:\SPH\firmware\lab3\main.c",97,47

	.dwfde DW$CIE

;******************************************************************************
;* FUNCTION NAME: _process_sample                                             *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,B0,B1,B2,B3,B4,B5, *
;*                           B6,B7,B8,B9,SP                                   *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,B0,B1,B2,B3,B4,B5, *
;*                           B6,B7,B8,B9,DP,SP                                *
;*   Local Frame Size  : 0 Args + 0 Auto + 8 Save = 8 byte                    *
;******************************************************************************

;******************************************************************************
;*                                                                            *
;* Using -g (debug) with optimization (-o3) may disable key optimizations!    *
;*                                                                            *
;******************************************************************************
_process_sample:
;** --------------------------------------------------------------------------*
	.dwcfa	0x0e, 0
	.dwcfa	0x09, 126, 19
           STW     .D2T2   B3,*SP--(8)       ; |97| 
	.dwcfa	0x0e, 8
	.dwcfa	0x80, 19, 0
           STW     .D2T1   A10,*+SP(4)       ; |97| 
	.dwcfa	0x80, 10, 1
DW$64	.dwtag  DW_TAG_formal_parameter, DW_AT_name("clean"), DW_AT_symbol_name("_clean")
	.dwattr DW$64, DW_AT_type(*DW$T$34)
	.dwattr DW$64, DW_AT_location[DW_OP_reg4]
DW$65	.dwtag  DW_TAG_formal_parameter, DW_AT_name("echo"), DW_AT_symbol_name("_echo")
	.dwattr DW$65, DW_AT_type(*DW$T$34)
	.dwattr DW$65, DW_AT_location[DW_OP_reg20]
DW$66	.dwtag  DW_TAG_variable, DW_AT_name("yw"), DW_AT_symbol_name("_yw")
	.dwattr DW$66, DW_AT_type(*DW$T$10)
	.dwattr DW$66, DW_AT_location[DW_OP_reg4]
DW$67	.dwtag  DW_TAG_variable, DW_AT_name("clean"), DW_AT_symbol_name("_clean")
	.dwattr DW$67, DW_AT_type(*DW$T$42)
	.dwattr DW$67, DW_AT_location[DW_OP_reg4]
DW$68	.dwtag  DW_TAG_variable, DW_AT_name("echo"), DW_AT_symbol_name("_echo")
	.dwattr DW$68, DW_AT_type(*DW$T$42)
	.dwattr DW$68, DW_AT_location[DW_OP_reg10]
           MV      .L1X    B4,A10            ; |97| 
	.dwpsn	"H:\SPH\firmware\lab3\main.c",100,2
           LDW     .D2T2   *+DP(_buffer_index),B5 ; |100| 
           MVKL    .S2     _buffer,B4        ; |100| 
           MVKH    .S2     _buffer,B4        ; |100| 
           SHL     .S1     A4,16,A3          ; |100| 
           NOP             1
           STW     .D2T1   A3,*+B4[B5]       ; |100| 
	.dwpsn	"H:\SPH\firmware\lab3\main.c",102,2
           ADD     .L2     1,B5,B7           ; |102| 
	.dwpsn	"H:\SPH\firmware\lab3\main.c",103,2
           MVK     .S2     50,B4             ; |103| 
           CMPLT   .L2     B5,B4,B0          ; |103| 
   [ B0]   STW     .D2T2   B7,*+DP(_buffer_index)
	.dwpsn	"H:\SPH\firmware\lab3\main.c",103,24
   [!B0]   ZERO    .L2     B4                ; |103| 

   [!B0]   ZERO    .L2     B7                ; |103| 
|| [!B0]   STW     .D2T2   B4,*+DP(_buffer_index) ; |103| 

	.dwpsn	"H:\SPH\firmware\lab3\main.c",100,2
           MVKL    .S1     _buffer,A3        ; |100| 
           MVKH    .S1     _buffer,A3        ; |100| 
           MV      .L2X    A3,B4             ; |100| 
	.dwpsn	"H:\SPH\firmware\lab3\main.c",105,2
           CALL    .S1     _convolve_c       ; |105| 
           MVKL    .S2     _w,B5             ; |105| 
           MVKL    .S2     RL8,B3            ; |105| 
           MVK     .S2     0x33,B6           ; |105| 

           MV      .L1X    B7,A6             ; |105| 
||         MVKH    .S2     _w,B5             ; |105| 

           MV      .L1X    B5,A4             ; |105| 
||         MVKH    .S2     RL8,B3            ; |105| 

RL8:       ; CALL OCCURS {_convolve_c}       ; |105| 
;** --------------------------------------------------------------------------*
	.dwpsn	"H:\SPH\firmware\lab3\main.c",107,2
           SHL     .S1     A10,16,A3         ; |107| 
           SUB     .L1     A3,A4,A3          ; |107| 
           STW     .D2T1   A3,*+DP(_error)   ; |107| 
	.dwpsn	"H:\SPH\firmware\lab3\main.c",109,2
           CALL    .S1     _grad_desc        ; |109| 
           MVKL    .S2     RL9,B3            ; |109| 
           MVKH    .S2     RL9,B3            ; |109| 
           NOP             3
RL9:       ; CALL OCCURS {_grad_desc}        ; |109| 
;** --------------------------------------------------------------------------*
	.dwpsn	"H:\SPH\firmware\lab3\main.c",111,2
           LDW     .D2T2   *+DP(_error),B4   ; |111| 
           NOP             4
           SHR     .S1X    B4,16,A4          ; |111| 
	.dwpsn	"H:\SPH\firmware\lab3\main.c",112,1
           LDW     .D2T1   *+SP(4),A10       ; |112| 
	.dwcfa	0xc0, 10
           LDW     .D2T2   *++SP(8),B3       ; |112| 
           NOP             4
	.dwcfa	0xc0, 19
	.dwcfa	0x0e, 0
           RET     .S2     B3                ; |112| 
           NOP             5
           ; BRANCH OCCURS {B3}              ; |112| 
	.dwattr DW$63, DW_AT_end_file("H:\SPH\firmware\lab3\main.c")
	.dwattr DW$63, DW_AT_end_line(0x70)
	.dwattr DW$63, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$63

	.sect	".text"
	.global	_main

DW$69	.dwtag  DW_TAG_subprogram, DW_AT_name("main"), DW_AT_symbol_name("_main")
	.dwattr DW$69, DW_AT_low_pc(_main)
	.dwattr DW$69, DW_AT_high_pc(0x00)
	.dwattr DW$69, DW_AT_begin_file("H:\SPH\firmware\lab3\main.c")
	.dwattr DW$69, DW_AT_begin_line(0x30)
	.dwattr DW$69, DW_AT_begin_column(0x05)
	.dwpsn	"H:\SPH\firmware\lab3\main.c",48,12

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

;******************************************************************************
;*                                                                            *
;* Using -g (debug) with optimization (-o3) may disable key optimizations!    *
;*                                                                            *
;******************************************************************************
_main:
;** --------------------------------------------------------------------------*
	.dwcfa	0x0e, 0
	.dwcfa	0x09, 126, 19
           STW     .D2T2   B3,*SP--(8)       ; |48| 
	.dwcfa	0x0e, 8
	.dwcfa	0x80, 19, 0
	.dwpsn	"H:\SPH\firmware\lab3\main.c",51,2
           CALL    .S1     _DSK6713_init     ; |51| 
           MVKL    .S2     RL10,B3           ; |51| 
           MVKH    .S2     RL10,B3           ; |51| 
           NOP             3
RL10:      ; CALL OCCURS {_DSK6713_init}     ; |51| 
;** --------------------------------------------------------------------------*
	.dwpsn	"H:\SPH\firmware\lab3\main.c",52,2
           CALL    .S1     _DSK6713_AIC23_openCodec ; |52| 
           MVKL    .S2     RL11,B3           ; |52| 
           MVKL    .S2     _config,B4        ; |52| 
           MVKH    .S2     RL11,B3           ; |52| 
           MVKH    .S2     _config,B4        ; |52| 
           ZERO    .L1     A4                ; |52| 
RL11:      ; CALL OCCURS {_DSK6713_AIC23_openCodec}  ; |52| 
           STW     .D2T1   A4,*+DP(_hCodec)  ; |52| 
	.dwpsn	"H:\SPH\firmware\lab3\main.c",53,2
           CALL    .S1     _DSK6713_AIC23_setFreq ; |53| 
           MVKL    .S2     RL12,B3           ; |53| 
           MVK     .S2     0x1,B4            ; |53| 
           MVKH    .S2     RL12,B3           ; |53| 
           NOP             2
RL12:      ; CALL OCCURS {_DSK6713_AIC23_setFreq}  ; |53| 
	.dwpsn	"C:/CCStudio_v3.1/C6000/csl/include/csl_irq.h",350,3
           MVC     .S2     CSR,B4            ; |350| 
           OR      .L2     1,B4,B4           ; |350| 
           MVC     .S2     B4,CSR            ; |350| 
	.dwpsn	"C:/CCStudio_v3.1/C6000/csl/include/csl_irq.h",320,3
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
           MVKL    .S2     RL13,B3           ; |320| 
           MVKH    .S2     RL13,B3           ; |320| 
           NOP             3
RL13:      ; CALL OCCURS {_reset}            ; |320| 
	.dwpsn	"H:\SPH\firmware\lab3\main.c",63,8
           CALL    .S1     _DSK6713_AIC23_write ; |63| 
           LDW     .D2T1   *+DP(_hCodec),A4  ; |63| 
           MVKL    .S2     RL14,B3           ; |63| 
           MVKH    .S2     RL14,B3           ; |63| 
           ZERO    .L2     B4                ; |63| 
           NOP             1
RL14:      ; CALL OCCURS {_DSK6713_AIC23_write}  ; |63| 
;** --------------------------------------------------------------------------*
           MV      .L1     A4,A1             ; |63| 
   [ A1]   B       .S1     L12               ; |63| 
           NOP             5
           ; BRANCHCC OCCURS {L12}           ; |63| 
;** --------------------------------------------------------------------------*

           CALL    .S1     _DSK6713_AIC23_write ; |63| 
||         LDW     .D2T1   *+DP(_hCodec),A4  ; |63| 
||         MVKL    .S2     RL15,B3           ; |63| 
||         ZERO    .L2     B4                ; |63| 

           MVKH    .S2     RL15,B3           ; |63| 
           NOP             3
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*----------------------------------------------------------------------------*
L11:    
DW$L$_main$5$B:
           NOP             1
RL15:      ; CALL OCCURS {_DSK6713_AIC23_write}  ; |63| 
DW$L$_main$5$E:
;** --------------------------------------------------------------------------*
DW$L$_main$6$B:
           MV      .L1     A4,A1             ; |63| 

   [!A1]   B       .S1     L11               ; |63| 
|| [!A1]   LDW     .D2T1   *+DP(_hCodec),A4  ; |63| 
|| [!A1]   MVKL    .S2     RL15,B3           ; |63| 
|| [!A1]   ZERO    .L2     B4                ; |63| 

   [!A1]   CALL    .S1     _DSK6713_AIC23_write ; |63| 
|| [!A1]   MVKH    .S2     RL15,B3           ; |63| 

           NOP             4
           ; BRANCHCC OCCURS {L11}           ; |63| 
DW$L$_main$6$E:
;** --------------------------------------------------------------------------*
L12:    
	.dwpsn	"H:\SPH\firmware\lab3\main.c",64,2
           MVK     .S1     1,A3              ; |64| 
           STB     .D2T1   A3,*+DP(_in_channel_flag) ; |64| 
	.dwpsn	"H:\SPH\firmware\lab3\main.c",65,2

           MVK     .S2     1,B6              ; |65| 
||         LDH     .D2T2   *+DP(_in_left),B5

           STB     .D2T2   B6,*+DP(_out_channel_flag) ; |65| 
           LDH     .D2T2   *+DP(_in_right),B4
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains control code
;*----------------------------------------------------------------------------*
L13:    
DW$L$_main$8$B:
	.dwpsn	"H:\SPH\firmware\lab3\main.c",68,3
           LDBU    .D2T2   *+DP(_input_ready),B0 ; |68| 
           NOP             4
   [!B0]   B       .S1     L14               ; |68| 
           NOP             5
           ; BRANCHCC OCCURS {L14}           ; |68| 
DW$L$_main$8$E:
;** --------------------------------------------------------------------------*
DW$L$_main$9$B:
	.dwpsn	"H:\SPH\firmware\lab3\main.c",69,4

           CALL    .S1     _process_sample   ; |69| 
||         MVKL    .S2     RL16,B3           ; |69| 

           MVKH    .S2     RL16,B3           ; |69| 
           EXT     .S2     B5,16,16,B5       ; |69| 
           MV      .L1X    B5,A4             ; |69| 
           EXT     .S2     B4,16,16,B4       ; |69| 
           NOP             1
RL16:      ; CALL OCCURS {_process_sample}   ; |69| 
DW$L$_main$9$E:
;** --------------------------------------------------------------------------*
DW$L$_main$10$B:
           STH     .D2T1   A4,*+DP(_sig_error) ; |69| 
	.dwpsn	"H:\SPH\firmware\lab3\main.c",70,4
           LDH     .D2T2   *+DP(_in_left),B5 ; |70| 

           LDH     .D2T2   *+DP(_in_right),B4 ; |70| 
||         ZERO    .L2     B6                ; |70| 

           STB     .D2T2   B6,*+DP(_input_ready) ; |70| 
DW$L$_main$10$E:
;** --------------------------------------------------------------------------*
L14:    
DW$L$_main$11$B:
	.dwpsn	"H:\SPH\firmware\lab3\main.c",73,3
           LDBU    .D2T2   *+DP(_output_ready),B0 ; |73| 
	.dwpsn	"H:\SPH\firmware\lab3\main.c",74,4
           NOP             4
   [ B0]   STH     .D2T2   B5,*+DP(_out_left) ; |74| 
	.dwpsn	"H:\SPH\firmware\lab3\main.c",75,4
   [ B0]   LDH     .D2T2   *+DP(_sig_error),B6 ; |75| 
           NOP             4
   [ B0]   STH     .D2T2   B6,*+DP(_out_right) ; |75| 
	.dwpsn	"H:\SPH\firmware\lab3\main.c",76,4

           B       .S1     L13               ; |76| 
|| [ B0]   ZERO    .L2     B6                ; |76| 

   [ B0]   STB     .D2T2   B6,*+DP(_output_ready) ; |76| 
           NOP             4
           ; BRANCH OCCURS {L13}             ; |76| 
DW$L$_main$11$E:
;** --------------------------------------------------------------------------*
	.dwcfa	0xc0, 19
	.dwcfa	0x0e, 0

DW$70	.dwtag  DW_TAG_loop
	.dwattr DW$70, DW_AT_name("H:\SPH\firmware\lab3\Configuration1cfg_c.asm:L13:1:1351502013")
	.dwattr DW$70, DW_AT_begin_file("H:\SPH\firmware\lab3\main.c")
	.dwattr DW$70, DW_AT_begin_line(0x43)
	.dwattr DW$70, DW_AT_end_line(0x4e)
DW$71	.dwtag  DW_TAG_loop_range
	.dwattr DW$71, DW_AT_low_pc(DW$L$_main$8$B)
	.dwattr DW$71, DW_AT_high_pc(DW$L$_main$8$E)
DW$72	.dwtag  DW_TAG_loop_range
	.dwattr DW$72, DW_AT_low_pc(DW$L$_main$9$B)
	.dwattr DW$72, DW_AT_high_pc(DW$L$_main$9$E)
DW$73	.dwtag  DW_TAG_loop_range
	.dwattr DW$73, DW_AT_low_pc(DW$L$_main$10$B)
	.dwattr DW$73, DW_AT_high_pc(DW$L$_main$10$E)
DW$74	.dwtag  DW_TAG_loop_range
	.dwattr DW$74, DW_AT_low_pc(DW$L$_main$11$B)
	.dwattr DW$74, DW_AT_high_pc(DW$L$_main$11$E)
	.dwendtag DW$70


DW$75	.dwtag  DW_TAG_loop
	.dwattr DW$75, DW_AT_name("H:\SPH\firmware\lab3\Configuration1cfg_c.asm:L11:1:1351502013")
	.dwattr DW$75, DW_AT_begin_file("H:\SPH\firmware\lab3\main.c")
	.dwattr DW$75, DW_AT_begin_line(0x3f)
	.dwattr DW$75, DW_AT_end_line(0x3f)
DW$76	.dwtag  DW_TAG_loop_range
	.dwattr DW$76, DW_AT_low_pc(DW$L$_main$5$B)
	.dwattr DW$76, DW_AT_high_pc(DW$L$_main$5$E)
DW$77	.dwtag  DW_TAG_loop_range
	.dwattr DW$77, DW_AT_low_pc(DW$L$_main$6$B)
	.dwattr DW$77, DW_AT_high_pc(DW$L$_main$6$E)
	.dwendtag DW$75

	.dwattr DW$69, DW_AT_end_file("H:\SPH\firmware\lab3\main.c")
	.dwattr DW$69, DW_AT_end_line(0x56)
	.dwattr DW$69, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$69

	.sect	".text"
	.global	_convolve_opt

DW$78	.dwtag  DW_TAG_subprogram, DW_AT_name("convolve_opt"), DW_AT_symbol_name("_convolve_opt")
	.dwattr DW$78, DW_AT_low_pc(_convolve_opt)
	.dwattr DW$78, DW_AT_high_pc(0x00)
	.dwattr DW$78, DW_AT_begin_file("H:\SPH\firmware\lab3\main.c")
	.dwattr DW$78, DW_AT_begin_line(0xbd)
	.dwattr DW$78, DW_AT_begin_column(0x05)
	.dwpsn	"H:\SPH\firmware\lab3\main.c",189,63

	.dwfde DW$CIE

;******************************************************************************
;* FUNCTION NAME: _convolve_opt                                               *
;*                                                                            *
;*   Regs Modified     : A1,A3,A4,A5,A6,B0,B4,B5,B6                           *
;*   Regs Used         : A1,A3,A4,A5,A6,B0,B3,B4,B5,B6,DP,SP                  *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************

;******************************************************************************
;*                                                                            *
;* Using -g (debug) with optimization (-o3) may disable key optimizations!    *
;*                                                                            *
;******************************************************************************
_convolve_opt:
;** --------------------------------------------------------------------------*
	.dwcfa	0x0e, 0
	.dwcfa	0x09, 126, 19
DW$79	.dwtag  DW_TAG_formal_parameter, DW_AT_name("w"), DW_AT_symbol_name("_w")
	.dwattr DW$79, DW_AT_type(*DW$T$40)
	.dwattr DW$79, DW_AT_location[DW_OP_reg4]
DW$80	.dwtag  DW_TAG_formal_parameter, DW_AT_name("x"), DW_AT_symbol_name("_x")
	.dwattr DW$80, DW_AT_type(*DW$T$40)
	.dwattr DW$80, DW_AT_location[DW_OP_reg20]
DW$81	.dwtag  DW_TAG_formal_parameter, DW_AT_name("n"), DW_AT_symbol_name("_n")
	.dwattr DW$81, DW_AT_type(*DW$T$10)
	.dwattr DW$81, DW_AT_location[DW_OP_reg6]
DW$82	.dwtag  DW_TAG_variable, DW_AT_name("result"), DW_AT_symbol_name("_result")
	.dwattr DW$82, DW_AT_type(*DW$T$10)
	.dwattr DW$82, DW_AT_location[DW_OP_reg4]
DW$83	.dwtag  DW_TAG_variable, DW_AT_name("x"), DW_AT_symbol_name("_x")
	.dwattr DW$83, DW_AT_type(*DW$T$40)
	.dwattr DW$83, DW_AT_location[DW_OP_reg3]
DW$84	.dwtag  DW_TAG_variable, DW_AT_name("n"), DW_AT_symbol_name("_n")
	.dwattr DW$84, DW_AT_type(*DW$T$66)
	.dwattr DW$84, DW_AT_location[DW_OP_reg6]
           MV      .L1X    B4,A3             ; |189| 
           ADDAH   .D1     A3,A6,A3

           MV      .L2X    A4,B4             ; |189| 
||         SUB     .L1     A3,2,A5

	.dwpsn	"H:\SPH\firmware\lab3\main.c",195,3
           MV      .L1     A6,A3             ; |195| 
	.dwpsn	"H:\SPH\firmware\lab3\main.c",191,6
           MVC     .S2     CSR,B6
           AND     .L2     -2,B6,B5

           LDH     .D2T2   *B4++,B5          ; |195| (P) <0,0> 
||         LDH     .D1T1   *A5--,A3          ; |195| (P) <0,0> 
||         MVC     .S2     B5,CSR            ; interrupts off
||         ADD     .L1     -7,A3,A1
||         SUB     .L2X    A3,9,B0

;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 194
;*      Loop opening brace source line   : 194
;*      Loop closing brace source line   : 196
;*      Known Minimum Trip Count         : 10                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 0
;*      Unpartitioned Resource Bound     : 1
;*      Partitioned Resource Bound(*)    : 1
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        0     
;*      .S units                     0        1*    
;*      .D units                     1*       1*    
;*      .M units                     1*       0     
;*      .X cross paths               1*       0     
;*      .T address paths             1*       1*    
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          1        1     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             0        1*    
;*      Bound(.L .S .D .LS .LSD)     1*       1*    
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 1  Schedule found with 8 iterations in parallel
;*
;*      Register Usage Table:
;*          +---------------------------------+
;*          |AAAAAAAAAAAAAAAA|BBBBBBBBBBBBBBBB|
;*          |0000000000111111|0000000000111111|
;*          |0123456789012345|0123456789012345|
;*          |----------------+----------------|
;*       0: | * ****         |*   **          |
;*          +---------------------------------+
;*
;*      Done
;*
;*      Epilog not entirely removed
;*      Collapsed epilog stages     : 4
;*
;*      Prolog not removed
;*      Collapsed prolog stages     : 0
;*
;*      Minimum required memory pad : 0 bytes
;*
;*      For further improvement on this loop, try option -mh14
;*
;*      Minimum safe trip count     : 7
;*----------------------------------------------------------------------------*
;*        SINGLE SCHEDULED ITERATION
;*
;*        C167:
;*   0              LDH     .D1T1   *A5--,A3          ; |195| 
;*     ||           LDH     .D2T2   *B4++,B5          ; |195| 
;*   1      [ B0]   SUB     .L2     B0,1,B0           ; |194| 
;*   2      [ B0]   B       .S2     C167              ; |194| 
;*   3              NOP             2
;*   5              MPY     .M1X    B5,A3,A4          ; |195| 
;*   6              NOP             1
;*   7              ADD     .S1     A4,A6,A6          ; |195| 
;*   8              ; BRANCHCC OCCURS {C167}          ; |194| 
;*----------------------------------------------------------------------------*
L15:    ; PIPED LOOP PROLOG

           LDH     .D1T1   *A5--,A3          ; |195| (P) <1,0> 
||         LDH     .D2T2   *B4++,B5          ; |195| (P) <1,0> 

           LDH     .D1T1   *A5--,A3          ; |195| (P) <2,0> 
||         LDH     .D2T2   *B4++,B5          ; |195| (P) <2,0> 
||         B       .S2     L16               ; |194| (P) <0,2> 

           LDH     .D1T1   *A5--,A3          ; |195| (P) <3,0> 
||         LDH     .D2T2   *B4++,B5          ; |195| (P) <3,0> 
||         B       .S2     L16               ; |194| (P) <1,2> 

           LDH     .D1T1   *A5--,A3          ; |195| (P) <4,0> 
||         LDH     .D2T2   *B4++,B5          ; |195| (P) <4,0> 
||         B       .S2     L16               ; |194| (P) <2,2> 

           B       .S2     L16               ; |194| (P) <3,2> 
||         LDH     .D1T1   *A5--,A3          ; |195| (P) <5,0> 
||         LDH     .D2T2   *B4++,B5          ; |195| (P) <5,0> 
||         MPY     .M1X    B5,A3,A4          ; |195| (P) <0,5> 

           ZERO    .L1     A6                ; |191| 
||         MPY     .M1X    B5,A3,A4          ; |195| (P) <1,5> 
||         LDH     .D1T1   *A5--,A3          ; |195| (P) <6,0> 
||         LDH     .D2T2   *B4++,B5          ; |195| (P) <6,0> 
||         B       .S2     L16               ; |194| (P) <4,2> 

;** --------------------------------------------------------------------------*
L16:    ; PIPED LOOP KERNEL
DW$L$_convolve_opt$3$B:

   [ A1]   SUB     .L1     A1,1,A1           ; <0,7> 
||         ADD     .S1     A4,A6,A6          ; |195| <0,7> 
||         MPY     .M1X    B5,A3,A4          ; |195| <2,5> 
|| [ B0]   B       .S2     L16               ; |194| <5,2> 
|| [ B0]   SUB     .L2     B0,1,B0           ; |194| <6,1> 
|| [ A1]   LDH     .D1T1   *A5--,A3          ; |195| <7,0> 
|| [ A1]   LDH     .D2T2   *B4++,B5          ; |195| <7,0> 

DW$L$_convolve_opt$3$E:
;** --------------------------------------------------------------------------*
L17:    ; PIPED LOOP EPILOG

           ADD     .L1     A4,A6,A5          ; |195| (E) <5,7> 
||         MPY     .M1X    B5,A3,A5          ; |195| (E) <7,5> 

           ADD     .L1     A4,A5,A4          ; |195| (E) <6,7> 
           ADD     .L1     A5,A4,A4          ; |195| 
           MVC     .S2     B6,CSR            ; interrupts on
	.dwcfa	0x0e, 0
	.dwpsn	"H:\SPH\firmware\lab3\main.c",199,1
	.dwpsn	"H:\SPH\firmware\lab3\main.c",198,2
           RET     .S2     B3                ; |199| 
           NOP             5
           ; BRANCH OCCURS {B3}              ; |199| 

DW$85	.dwtag  DW_TAG_loop
	.dwattr DW$85, DW_AT_name("H:\SPH\firmware\lab3\Configuration1cfg_c.asm:L16:1:1351502013")
	.dwattr DW$85, DW_AT_begin_file("H:\SPH\firmware\lab3\main.c")
	.dwattr DW$85, DW_AT_begin_line(0xc2)
	.dwattr DW$85, DW_AT_end_line(0xc4)
DW$86	.dwtag  DW_TAG_loop_range
	.dwattr DW$86, DW_AT_low_pc(DW$L$_convolve_opt$3$B)
	.dwattr DW$86, DW_AT_high_pc(DW$L$_convolve_opt$3$E)
	.dwendtag DW$85

	.dwattr DW$78, DW_AT_end_file("H:\SPH\firmware\lab3\main.c")
	.dwattr DW$78, DW_AT_end_line(0xc7)
	.dwattr DW$78, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$78

	.sect	".text"
	.global	_convolve

DW$87	.dwtag  DW_TAG_subprogram, DW_AT_name("convolve"), DW_AT_symbol_name("_convolve")
	.dwattr DW$87, DW_AT_low_pc(_convolve)
	.dwattr DW$87, DW_AT_high_pc(0x00)
	.dwattr DW$87, DW_AT_begin_file("H:\SPH\firmware\lab3\main.c")
	.dwattr DW$87, DW_AT_begin_line(0xb0)
	.dwattr DW$87, DW_AT_begin_column(0x05)
	.dwpsn	"H:\SPH\firmware\lab3\main.c",176,57

	.dwfde DW$CIE

;******************************************************************************
;* FUNCTION NAME: _convolve                                                   *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,B0,B1, *
;*                           B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,SP               *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,B0,B1, *
;*                           B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,SP               *
;*   Local Frame Size  : 0 Args + 0 Auto + 28 Save = 28 byte                  *
;******************************************************************************

;******************************************************************************
;*                                                                            *
;* Using -g (debug) with optimization (-o3) may disable key optimizations!    *
;*                                                                            *
;******************************************************************************
_convolve:
;** --------------------------------------------------------------------------*
	.dwcfa	0x0e, 0
	.dwcfa	0x09, 126, 19

           STW     .D2T2   B11,*SP--(32)     ; |176| 
||         MV      .L1X    SP,A9             ; |176| 

	.dwcfa	0x80, 27, 0
           STW     .D2T2   B10,*+SP(28)
	.dwcfa	0x80, 26, 1
           STW     .D2T2   B3,*+SP(24)
	.dwcfa	0x80, 19, 2
           STW     .D1T1   A13,*-A9(12)
	.dwcfa	0x80, 13, 3
           STW     .D1T1   A12,*-A9(16)
	.dwcfa	0x80, 12, 4
           STW     .D2T1   A11,*+SP(12)
	.dwcfa	0x80, 11, 5
           STW     .D2T1   A10,*+SP(8)
	.dwcfa	0x80, 10, 6
DW$88	.dwtag  DW_TAG_formal_parameter, DW_AT_name("x"), DW_AT_symbol_name("_x")
	.dwattr DW$88, DW_AT_type(*DW$T$58)
	.dwattr DW$88, DW_AT_location[DW_OP_reg4]
DW$89	.dwtag  DW_TAG_formal_parameter, DW_AT_name("w"), DW_AT_symbol_name("_w")
	.dwattr DW$89, DW_AT_type(*DW$T$58)
	.dwattr DW$89, DW_AT_location[DW_OP_reg20]
DW$90	.dwtag  DW_TAG_formal_parameter, DW_AT_name("x_idx"), DW_AT_symbol_name("_x_idx")
	.dwattr DW$90, DW_AT_type(*DW$T$10)
	.dwattr DW$90, DW_AT_location[DW_OP_reg6]
DW$91	.dwtag  DW_TAG_formal_parameter, DW_AT_name("w_length"), DW_AT_symbol_name("_w_length")
	.dwattr DW$91, DW_AT_type(*DW$T$10)
	.dwattr DW$91, DW_AT_location[DW_OP_reg22]
DW$92	.dwtag  DW_TAG_variable, DW_AT_name("result"), DW_AT_symbol_name("_result")
	.dwattr DW$92, DW_AT_type(*DW$T$10)
	.dwattr DW$92, DW_AT_location[DW_OP_reg10]
DW$93	.dwtag  DW_TAG_variable, DW_AT_name("x_idx"), DW_AT_symbol_name("_x_idx")
	.dwattr DW$93, DW_AT_type(*DW$T$10)
	.dwattr DW$93, DW_AT_location[DW_OP_reg26]
DW$94	.dwtag  DW_TAG_variable, DW_AT_name("x"), DW_AT_symbol_name("_x")
	.dwattr DW$94, DW_AT_type(*DW$T$59)
	.dwattr DW$94, DW_AT_location[DW_OP_reg27]
DW$95	.dwtag  DW_TAG_variable, DW_AT_name("w"), DW_AT_symbol_name("_w")
	.dwattr DW$95, DW_AT_type(*DW$T$59)
	.dwattr DW$95, DW_AT_location[DW_OP_reg20]
DW$96	.dwtag  DW_TAG_variable, DW_AT_name("w_length"), DW_AT_symbol_name("_w_length")
	.dwattr DW$96, DW_AT_type(*DW$T$66)
	.dwattr DW$96, DW_AT_location[DW_OP_reg22]
           MV      .L2X    A6,B10            ; |176| 
           MV      .L2X    A4,B11            ; |176| 
	.dwpsn	"H:\SPH\firmware\lab3\main.c",178,6
           ZERO    .L1     A10               ; |178| 
	.dwpsn	"H:\SPH\firmware\lab3\main.c",180,8
           CMPGT   .L2     B6,0,B0           ; |180| 
   [!B0]   B       .S1     L19               ; |180| 
           MV      .L1X    B6,A12
           MV      .L1X    B4,A13
           NOP             3
           ; BRANCHCC OCCURS {L19}           ; |180| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*----------------------------------------------------------------------------*
L18:    
DW$L$_convolve$2$B:
	.dwpsn	"H:\SPH\firmware\lab3\main.c",181,3

           CALL    .S1     __mpyll           ; |181| 
||         LDW     .D2T2   *+B11[B10],B4     ; |181| 
||         LDW     .D1T1   *A13++,A4         ; |181| 
||         MVKL    .S2     RL17,B3           ; |181| 

           MVKH    .S2     RL17,B3           ; |181| 
           NOP             3

           SHR     .S2     B4,31,B5          ; |181| 
||         SHR     .S1     A4,31,A5          ; |181| 

RL17:      ; CALL OCCURS {__mpyll}           ; |181| 
DW$L$_convolve$2$E:
;** --------------------------------------------------------------------------*
DW$L$_convolve$3$B:
           ADDU    .L1     A4,A10,A11:A10    ; |181| 
	.dwpsn	"H:\SPH\firmware\lab3\main.c",182,3

           CMPLT   .L2     B10,1,B0          ; |182| 
||         SUB     .S2     B10,1,B10         ; |182| 

	.dwpsn	"H:\SPH\firmware\lab3\main.c",183,16
   [ B0]   MVK     .S2     0xf,B10           ; |183| 
	.dwpsn	"H:\SPH\firmware\lab3\main.c",180,8

           SUB     .L1     A12,1,A1          ; |180| 
||         SUB     .S1     A12,1,A12         ; |180| 

   [ A1]   B       .S1     L18               ; |180| 
           NOP             5
           ; BRANCHCC OCCURS {L18}           ; |180| 
DW$L$_convolve$3$E:
;** --------------------------------------------------------------------------*
L19:    
	.dwpsn	"H:\SPH\firmware\lab3\main.c",186,2
           MV      .L1     A10,A4            ; |186| 
	.dwpsn	"H:\SPH\firmware\lab3\main.c",187,1

           MV      .L1X    SP,A9             ; |187| 
||         LDW     .D2T2   *+SP(28),B10      ; |187| 

	.dwcfa	0xc0, 26
           LDW     .D2T2   *+SP(24),B3       ; |187| 
           NOP             1
	.dwcfa	0xc0, 19
           LDDW    .D1T1   *+A9(16),A13:A12  ; |187| 
	.dwcfa	0xc0, 12
	.dwcfa	0xc0, 13
           LDDW    .D1T1   *+A9(8),A11:A10   ; |187| 
	.dwcfa	0xc0, 10
	.dwcfa	0xc0, 11
           LDW     .D2T2   *++SP(32),B11     ; |187| 
	.dwcfa	0xc0, 27
	.dwcfa	0x0e, 0
           RET     .S2     B3                ; |187| 
           NOP             5
           ; BRANCH OCCURS {B3}              ; |187| 

DW$97	.dwtag  DW_TAG_loop
	.dwattr DW$97, DW_AT_name("H:\SPH\firmware\lab3\Configuration1cfg_c.asm:L18:1:1351502013")
	.dwattr DW$97, DW_AT_begin_file("H:\SPH\firmware\lab3\main.c")
	.dwattr DW$97, DW_AT_begin_line(0xb4)
	.dwattr DW$97, DW_AT_end_line(0xb8)
DW$98	.dwtag  DW_TAG_loop_range
	.dwattr DW$98, DW_AT_low_pc(DW$L$_convolve$2$B)
	.dwattr DW$98, DW_AT_high_pc(DW$L$_convolve$2$E)
DW$99	.dwtag  DW_TAG_loop_range
	.dwattr DW$99, DW_AT_low_pc(DW$L$_convolve$3$B)
	.dwattr DW$99, DW_AT_high_pc(DW$L$_convolve$3$E)
	.dwendtag DW$97

	.dwattr DW$87, DW_AT_end_file("H:\SPH\firmware\lab3\main.c")
	.dwattr DW$87, DW_AT_end_line(0xbb)
	.dwattr DW$87, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$87

	.sect	".text:CSL_cfgInit"
	.global	_CSL_cfgInit

DW$100	.dwtag  DW_TAG_subprogram, DW_AT_name("CSL_cfgInit"), DW_AT_symbol_name("_CSL_cfgInit")
	.dwattr DW$100, DW_AT_low_pc(_CSL_cfgInit)
	.dwattr DW$100, DW_AT_high_pc(0x00)
	.dwattr DW$100, DW_AT_begin_file("H:\SPH\firmware\lab3\Configuration1cfg_c.c")
	.dwattr DW$100, DW_AT_begin_line(0x1e)
	.dwattr DW$100, DW_AT_begin_column(0x06)
	.dwpsn	"H:\SPH\firmware\lab3\Configuration1cfg_c.c",31,1

	.dwfde DW$CIE

;******************************************************************************
;* FUNCTION NAME: _CSL_cfgInit                                                *
;*                                                                            *
;*   Regs Modified     :                                                      *
;*   Regs Used         : B3                                                   *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************

;******************************************************************************
;*                                                                            *
;* Using -g (debug) with optimization (-o3) may disable key optimizations!    *
;*                                                                            *
;******************************************************************************
_CSL_cfgInit:
;** --------------------------------------------------------------------------*
	.dwcfa	0x0e, 0
	.dwcfa	0x09, 126, 19
	.dwpsn	"H:\SPH\firmware\lab3\Configuration1cfg_c.c",32,1
	.dwcfa	0x0e, 0
           RET     .S2     B3                ; |32| 
           NOP             5
           ; BRANCH OCCURS {B3}              ; |32| 
	.dwattr DW$100, DW_AT_end_file("H:\SPH\firmware\lab3\Configuration1cfg_c.c")
	.dwattr DW$100, DW_AT_end_line(0x20)
	.dwattr DW$100, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$100

;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************
	.global	_DSK6713_init
	.global	_DSK6713_AIC23_openCodec
	.global	_DSK6713_AIC23_write
	.global	_DSK6713_AIC23_read
	.global	_DSK6713_AIC23_setFreq
	.global	__IRQ_eventTable
	.global	__mpyll

;******************************************************************************
;* TYPE INFORMATION                                                           *
;******************************************************************************

DW$T$21	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$21, DW_AT_language(DW_LANG_C)

DW$T$24	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$24, DW_AT_language(DW_LANG_C)
DW$101	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$23)
	.dwendtag DW$T$24


DW$T$26	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$26, DW_AT_language(DW_LANG_C)
DW$102	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$25)
	.dwendtag DW$T$26


DW$T$27	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$27, DW_AT_language(DW_LANG_C)
DW$103	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$25)
DW$104	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$23)
	.dwendtag DW$T$27


DW$T$29	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$29, DW_AT_language(DW_LANG_C)
DW$T$32	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$32, DW_AT_type(*DW$T$31)
DW$T$34	.dwtag  DW_TAG_typedef, DW_AT_name("Int16"), DW_AT_type(*DW$T$8)
	.dwattr DW$T$34, DW_AT_language(DW_LANG_C)

DW$T$35	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$34)
	.dwattr DW$T$35, DW_AT_language(DW_LANG_C)
DW$105	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$25)
DW$106	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$23)
	.dwendtag DW$T$35


DW$T$37	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$34)
	.dwattr DW$T$37, DW_AT_language(DW_LANG_C)
DW$107	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$25)
DW$108	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$36)
	.dwendtag DW$T$37


DW$T$38	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$34)
	.dwattr DW$T$38, DW_AT_language(DW_LANG_C)
DW$109	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$34)
DW$110	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$34)
	.dwendtag DW$T$38

DW$T$40	.dwtag  DW_TAG_restrict_type
	.dwattr DW$T$40, DW_AT_type(*DW$T$39)
DW$T$42	.dwtag  DW_TAG_const_type
	.dwattr DW$T$42, DW_AT_type(*DW$T$34)
DW$T$10	.dwtag  DW_TAG_base_type, DW_AT_name("int")
	.dwattr DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr DW$T$10, DW_AT_byte_size(0x04)
DW$T$25	.dwtag  DW_TAG_typedef, DW_AT_name("DSK6713_AIC23_CodecHandle"), DW_AT_type(*DW$T$10)
	.dwattr DW$T$25, DW_AT_language(DW_LANG_C)

DW$T$55	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$25)
	.dwattr DW$T$55, DW_AT_language(DW_LANG_C)
DW$111	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$112	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$54)
	.dwendtag DW$T$55


DW$T$56	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$56, DW_AT_language(DW_LANG_C)

DW$T$57	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$57, DW_AT_language(DW_LANG_C)
DW$113	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$114	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$57

DW$T$58	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$58, DW_AT_address_class(0x20)
DW$T$59	.dwtag  DW_TAG_const_type
	.dwattr DW$T$59, DW_AT_type(*DW$T$58)

DW$T$60	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$60, DW_AT_language(DW_LANG_C)
DW$115	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$58)
DW$116	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$58)
DW$117	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$118	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$60


DW$T$62	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$62, DW_AT_language(DW_LANG_C)
DW$119	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$39)
DW$120	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$39)
DW$121	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$62


DW$T$63	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$63, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$63, DW_AT_byte_size(0xcc)
DW$122	.dwtag  DW_TAG_subrange_type
	.dwattr DW$122, DW_AT_upper_bound(0x32)
	.dwendtag DW$T$63

DW$T$66	.dwtag  DW_TAG_const_type
	.dwattr DW$T$66, DW_AT_type(*DW$T$10)
DW$T$23	.dwtag  DW_TAG_typedef, DW_AT_name("Uint32"), DW_AT_type(*DW$T$11)
	.dwattr DW$T$23, DW_AT_language(DW_LANG_C)
DW$T$36	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$23)
	.dwattr DW$T$36, DW_AT_address_class(0x20)

DW$T$68	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$23)
	.dwattr DW$T$68, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$68, DW_AT_byte_size(0x84)
DW$123	.dwtag  DW_TAG_subrange_type
	.dwattr DW$123, DW_AT_upper_bound(0x20)
	.dwendtag DW$T$68

DW$T$69	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$69, DW_AT_type(*DW$T$11)
DW$T$53	.dwtag  DW_TAG_typedef, DW_AT_name("DSK6713_AIC23_Config"), DW_AT_type(*DW$T$20)
	.dwattr DW$T$53, DW_AT_language(DW_LANG_C)
DW$T$54	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$53)
	.dwattr DW$T$54, DW_AT_address_class(0x20)
DW$T$31	.dwtag  DW_TAG_typedef, DW_AT_name("Uint8"), DW_AT_type(*DW$T$6)
	.dwattr DW$T$31, DW_AT_language(DW_LANG_C)
DW$T$8	.dwtag  DW_TAG_base_type, DW_AT_name("short")
	.dwattr DW$T$8, DW_AT_encoding(DW_ATE_signed)
	.dwattr DW$T$8, DW_AT_byte_size(0x02)
DW$T$39	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$34)
	.dwattr DW$T$39, DW_AT_address_class(0x20)
DW$T$11	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned int")
	.dwattr DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$11, DW_AT_byte_size(0x04)

DW$T$20	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$20, DW_AT_name("DSK6713_AIC23_Config")
	.dwattr DW$T$20, DW_AT_byte_size(0x28)
DW$124	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$124, DW_AT_name("regs"), DW_AT_symbol_name("_regs")
	.dwattr DW$124, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$124, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$20

DW$T$6	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned char")
	.dwattr DW$T$6, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr DW$T$6, DW_AT_byte_size(0x01)

DW$T$19	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$19, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$19, DW_AT_byte_size(0x28)
DW$125	.dwtag  DW_TAG_subrange_type
	.dwattr DW$125, DW_AT_upper_bound(0x09)
	.dwendtag DW$T$19


	.dwattr DW$100, DW_AT_external(0x01)
	.dwattr DW$87, DW_AT_external(0x01)
	.dwattr DW$87, DW_AT_type(*DW$T$10)
	.dwattr DW$45, DW_AT_external(0x01)
	.dwattr DW$45, DW_AT_type(*DW$T$10)
	.dwattr DW$78, DW_AT_external(0x01)
	.dwattr DW$78, DW_AT_type(*DW$T$10)
	.dwattr DW$58, DW_AT_external(0x01)
	.dwattr DW$69, DW_AT_external(0x01)
	.dwattr DW$69, DW_AT_type(*DW$T$10)
	.dwattr DW$40, DW_AT_external(0x01)
	.dwattr DW$40, DW_AT_type(*DW$T$10)
	.dwattr DW$63, DW_AT_external(0x01)
	.dwattr DW$63, DW_AT_type(*DW$T$34)
	.dwattr DW$39, DW_AT_external(0x01)
	.dwattr DW$36, DW_AT_external(0x01)
	.dwattr DW$35, DW_AT_external(0x01)
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

DW$126	.dwtag  DW_TAG_assign_register, DW_AT_name("A0")
	.dwattr DW$126, DW_AT_location[DW_OP_reg0]
DW$127	.dwtag  DW_TAG_assign_register, DW_AT_name("A1")
	.dwattr DW$127, DW_AT_location[DW_OP_reg1]
DW$128	.dwtag  DW_TAG_assign_register, DW_AT_name("A2")
	.dwattr DW$128, DW_AT_location[DW_OP_reg2]
DW$129	.dwtag  DW_TAG_assign_register, DW_AT_name("A3")
	.dwattr DW$129, DW_AT_location[DW_OP_reg3]
DW$130	.dwtag  DW_TAG_assign_register, DW_AT_name("A4")
	.dwattr DW$130, DW_AT_location[DW_OP_reg4]
DW$131	.dwtag  DW_TAG_assign_register, DW_AT_name("A5")
	.dwattr DW$131, DW_AT_location[DW_OP_reg5]
DW$132	.dwtag  DW_TAG_assign_register, DW_AT_name("A6")
	.dwattr DW$132, DW_AT_location[DW_OP_reg6]
DW$133	.dwtag  DW_TAG_assign_register, DW_AT_name("A7")
	.dwattr DW$133, DW_AT_location[DW_OP_reg7]
DW$134	.dwtag  DW_TAG_assign_register, DW_AT_name("A8")
	.dwattr DW$134, DW_AT_location[DW_OP_reg8]
DW$135	.dwtag  DW_TAG_assign_register, DW_AT_name("A9")
	.dwattr DW$135, DW_AT_location[DW_OP_reg9]
DW$136	.dwtag  DW_TAG_assign_register, DW_AT_name("A10")
	.dwattr DW$136, DW_AT_location[DW_OP_reg10]
DW$137	.dwtag  DW_TAG_assign_register, DW_AT_name("A11")
	.dwattr DW$137, DW_AT_location[DW_OP_reg11]
DW$138	.dwtag  DW_TAG_assign_register, DW_AT_name("A12")
	.dwattr DW$138, DW_AT_location[DW_OP_reg12]
DW$139	.dwtag  DW_TAG_assign_register, DW_AT_name("A13")
	.dwattr DW$139, DW_AT_location[DW_OP_reg13]
DW$140	.dwtag  DW_TAG_assign_register, DW_AT_name("A14")
	.dwattr DW$140, DW_AT_location[DW_OP_reg14]
DW$141	.dwtag  DW_TAG_assign_register, DW_AT_name("A15")
	.dwattr DW$141, DW_AT_location[DW_OP_reg15]
DW$142	.dwtag  DW_TAG_assign_register, DW_AT_name("B0")
	.dwattr DW$142, DW_AT_location[DW_OP_reg16]
DW$143	.dwtag  DW_TAG_assign_register, DW_AT_name("B1")
	.dwattr DW$143, DW_AT_location[DW_OP_reg17]
DW$144	.dwtag  DW_TAG_assign_register, DW_AT_name("B2")
	.dwattr DW$144, DW_AT_location[DW_OP_reg18]
DW$145	.dwtag  DW_TAG_assign_register, DW_AT_name("B3")
	.dwattr DW$145, DW_AT_location[DW_OP_reg19]
DW$146	.dwtag  DW_TAG_assign_register, DW_AT_name("B4")
	.dwattr DW$146, DW_AT_location[DW_OP_reg20]
DW$147	.dwtag  DW_TAG_assign_register, DW_AT_name("B5")
	.dwattr DW$147, DW_AT_location[DW_OP_reg21]
DW$148	.dwtag  DW_TAG_assign_register, DW_AT_name("B6")
	.dwattr DW$148, DW_AT_location[DW_OP_reg22]
DW$149	.dwtag  DW_TAG_assign_register, DW_AT_name("B7")
	.dwattr DW$149, DW_AT_location[DW_OP_reg23]
DW$150	.dwtag  DW_TAG_assign_register, DW_AT_name("B8")
	.dwattr DW$150, DW_AT_location[DW_OP_reg24]
DW$151	.dwtag  DW_TAG_assign_register, DW_AT_name("B9")
	.dwattr DW$151, DW_AT_location[DW_OP_reg25]
DW$152	.dwtag  DW_TAG_assign_register, DW_AT_name("B10")
	.dwattr DW$152, DW_AT_location[DW_OP_reg26]
DW$153	.dwtag  DW_TAG_assign_register, DW_AT_name("B11")
	.dwattr DW$153, DW_AT_location[DW_OP_reg27]
DW$154	.dwtag  DW_TAG_assign_register, DW_AT_name("B12")
	.dwattr DW$154, DW_AT_location[DW_OP_reg28]
DW$155	.dwtag  DW_TAG_assign_register, DW_AT_name("B13")
	.dwattr DW$155, DW_AT_location[DW_OP_reg29]
DW$156	.dwtag  DW_TAG_assign_register, DW_AT_name("DP")
	.dwattr DW$156, DW_AT_location[DW_OP_reg30]
DW$157	.dwtag  DW_TAG_assign_register, DW_AT_name("SP")
	.dwattr DW$157, DW_AT_location[DW_OP_reg31]
DW$158	.dwtag  DW_TAG_assign_register, DW_AT_name("FP")
	.dwattr DW$158, DW_AT_location[DW_OP_regx 0x20]
DW$159	.dwtag  DW_TAG_assign_register, DW_AT_name("PC")
	.dwattr DW$159, DW_AT_location[DW_OP_regx 0x21]
DW$160	.dwtag  DW_TAG_assign_register, DW_AT_name("IRP")
	.dwattr DW$160, DW_AT_location[DW_OP_regx 0x22]
DW$161	.dwtag  DW_TAG_assign_register, DW_AT_name("IFR")
	.dwattr DW$161, DW_AT_location[DW_OP_regx 0x23]
DW$162	.dwtag  DW_TAG_assign_register, DW_AT_name("NRP")
	.dwattr DW$162, DW_AT_location[DW_OP_regx 0x24]
DW$163	.dwtag  DW_TAG_assign_register, DW_AT_name("A16")
	.dwattr DW$163, DW_AT_location[DW_OP_regx 0x25]
DW$164	.dwtag  DW_TAG_assign_register, DW_AT_name("A17")
	.dwattr DW$164, DW_AT_location[DW_OP_regx 0x26]
DW$165	.dwtag  DW_TAG_assign_register, DW_AT_name("A18")
	.dwattr DW$165, DW_AT_location[DW_OP_regx 0x27]
DW$166	.dwtag  DW_TAG_assign_register, DW_AT_name("A19")
	.dwattr DW$166, DW_AT_location[DW_OP_regx 0x28]
DW$167	.dwtag  DW_TAG_assign_register, DW_AT_name("A20")
	.dwattr DW$167, DW_AT_location[DW_OP_regx 0x29]
DW$168	.dwtag  DW_TAG_assign_register, DW_AT_name("A21")
	.dwattr DW$168, DW_AT_location[DW_OP_regx 0x2a]
DW$169	.dwtag  DW_TAG_assign_register, DW_AT_name("A22")
	.dwattr DW$169, DW_AT_location[DW_OP_regx 0x2b]
DW$170	.dwtag  DW_TAG_assign_register, DW_AT_name("A23")
	.dwattr DW$170, DW_AT_location[DW_OP_regx 0x2c]
DW$171	.dwtag  DW_TAG_assign_register, DW_AT_name("A24")
	.dwattr DW$171, DW_AT_location[DW_OP_regx 0x2d]
DW$172	.dwtag  DW_TAG_assign_register, DW_AT_name("A25")
	.dwattr DW$172, DW_AT_location[DW_OP_regx 0x2e]
DW$173	.dwtag  DW_TAG_assign_register, DW_AT_name("A26")
	.dwattr DW$173, DW_AT_location[DW_OP_regx 0x2f]
DW$174	.dwtag  DW_TAG_assign_register, DW_AT_name("A27")
	.dwattr DW$174, DW_AT_location[DW_OP_regx 0x30]
DW$175	.dwtag  DW_TAG_assign_register, DW_AT_name("A28")
	.dwattr DW$175, DW_AT_location[DW_OP_regx 0x31]
DW$176	.dwtag  DW_TAG_assign_register, DW_AT_name("A29")
	.dwattr DW$176, DW_AT_location[DW_OP_regx 0x32]
DW$177	.dwtag  DW_TAG_assign_register, DW_AT_name("A30")
	.dwattr DW$177, DW_AT_location[DW_OP_regx 0x33]
DW$178	.dwtag  DW_TAG_assign_register, DW_AT_name("A31")
	.dwattr DW$178, DW_AT_location[DW_OP_regx 0x34]
DW$179	.dwtag  DW_TAG_assign_register, DW_AT_name("B16")
	.dwattr DW$179, DW_AT_location[DW_OP_regx 0x35]
DW$180	.dwtag  DW_TAG_assign_register, DW_AT_name("B17")
	.dwattr DW$180, DW_AT_location[DW_OP_regx 0x36]
DW$181	.dwtag  DW_TAG_assign_register, DW_AT_name("B18")
	.dwattr DW$181, DW_AT_location[DW_OP_regx 0x37]
DW$182	.dwtag  DW_TAG_assign_register, DW_AT_name("B19")
	.dwattr DW$182, DW_AT_location[DW_OP_regx 0x38]
DW$183	.dwtag  DW_TAG_assign_register, DW_AT_name("B20")
	.dwattr DW$183, DW_AT_location[DW_OP_regx 0x39]
DW$184	.dwtag  DW_TAG_assign_register, DW_AT_name("B21")
	.dwattr DW$184, DW_AT_location[DW_OP_regx 0x3a]
DW$185	.dwtag  DW_TAG_assign_register, DW_AT_name("B22")
	.dwattr DW$185, DW_AT_location[DW_OP_regx 0x3b]
DW$186	.dwtag  DW_TAG_assign_register, DW_AT_name("B23")
	.dwattr DW$186, DW_AT_location[DW_OP_regx 0x3c]
DW$187	.dwtag  DW_TAG_assign_register, DW_AT_name("B24")
	.dwattr DW$187, DW_AT_location[DW_OP_regx 0x3d]
DW$188	.dwtag  DW_TAG_assign_register, DW_AT_name("B25")
	.dwattr DW$188, DW_AT_location[DW_OP_regx 0x3e]
DW$189	.dwtag  DW_TAG_assign_register, DW_AT_name("B26")
	.dwattr DW$189, DW_AT_location[DW_OP_regx 0x3f]
DW$190	.dwtag  DW_TAG_assign_register, DW_AT_name("B27")
	.dwattr DW$190, DW_AT_location[DW_OP_regx 0x40]
DW$191	.dwtag  DW_TAG_assign_register, DW_AT_name("B28")
	.dwattr DW$191, DW_AT_location[DW_OP_regx 0x41]
DW$192	.dwtag  DW_TAG_assign_register, DW_AT_name("B29")
	.dwattr DW$192, DW_AT_location[DW_OP_regx 0x42]
DW$193	.dwtag  DW_TAG_assign_register, DW_AT_name("B30")
	.dwattr DW$193, DW_AT_location[DW_OP_regx 0x43]
DW$194	.dwtag  DW_TAG_assign_register, DW_AT_name("B31")
	.dwattr DW$194, DW_AT_location[DW_OP_regx 0x44]
DW$195	.dwtag  DW_TAG_assign_register, DW_AT_name("AMR")
	.dwattr DW$195, DW_AT_location[DW_OP_regx 0x45]
DW$196	.dwtag  DW_TAG_assign_register, DW_AT_name("CSR")
	.dwattr DW$196, DW_AT_location[DW_OP_regx 0x46]
DW$197	.dwtag  DW_TAG_assign_register, DW_AT_name("ISR")
	.dwattr DW$197, DW_AT_location[DW_OP_regx 0x47]
DW$198	.dwtag  DW_TAG_assign_register, DW_AT_name("ICR")
	.dwattr DW$198, DW_AT_location[DW_OP_regx 0x48]
DW$199	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$199, DW_AT_location[DW_OP_regx 0x49]
DW$200	.dwtag  DW_TAG_assign_register, DW_AT_name("ISTP")
	.dwattr DW$200, DW_AT_location[DW_OP_regx 0x4a]
DW$201	.dwtag  DW_TAG_assign_register, DW_AT_name("IN")
	.dwattr DW$201, DW_AT_location[DW_OP_regx 0x4b]
DW$202	.dwtag  DW_TAG_assign_register, DW_AT_name("OUT")
	.dwattr DW$202, DW_AT_location[DW_OP_regx 0x4c]
DW$203	.dwtag  DW_TAG_assign_register, DW_AT_name("ACR")
	.dwattr DW$203, DW_AT_location[DW_OP_regx 0x4d]
DW$204	.dwtag  DW_TAG_assign_register, DW_AT_name("ADR")
	.dwattr DW$204, DW_AT_location[DW_OP_regx 0x4e]
DW$205	.dwtag  DW_TAG_assign_register, DW_AT_name("FADCR")
	.dwattr DW$205, DW_AT_location[DW_OP_regx 0x4f]
DW$206	.dwtag  DW_TAG_assign_register, DW_AT_name("FAUCR")
	.dwattr DW$206, DW_AT_location[DW_OP_regx 0x50]
DW$207	.dwtag  DW_TAG_assign_register, DW_AT_name("FMCR")
	.dwattr DW$207, DW_AT_location[DW_OP_regx 0x51]
DW$208	.dwtag  DW_TAG_assign_register, DW_AT_name("GFPGFR")
	.dwattr DW$208, DW_AT_location[DW_OP_regx 0x52]
DW$209	.dwtag  DW_TAG_assign_register, DW_AT_name("DIER")
	.dwattr DW$209, DW_AT_location[DW_OP_regx 0x53]
DW$210	.dwtag  DW_TAG_assign_register, DW_AT_name("REP")
	.dwattr DW$210, DW_AT_location[DW_OP_regx 0x54]
DW$211	.dwtag  DW_TAG_assign_register, DW_AT_name("TSCL")
	.dwattr DW$211, DW_AT_location[DW_OP_regx 0x55]
DW$212	.dwtag  DW_TAG_assign_register, DW_AT_name("TSCH")
	.dwattr DW$212, DW_AT_location[DW_OP_regx 0x56]
DW$213	.dwtag  DW_TAG_assign_register, DW_AT_name("ARP")
	.dwattr DW$213, DW_AT_location[DW_OP_regx 0x57]
DW$214	.dwtag  DW_TAG_assign_register, DW_AT_name("ILC")
	.dwattr DW$214, DW_AT_location[DW_OP_regx 0x58]
DW$215	.dwtag  DW_TAG_assign_register, DW_AT_name("RILC")
	.dwattr DW$215, DW_AT_location[DW_OP_regx 0x59]
DW$216	.dwtag  DW_TAG_assign_register, DW_AT_name("DNUM")
	.dwattr DW$216, DW_AT_location[DW_OP_regx 0x5a]
DW$217	.dwtag  DW_TAG_assign_register, DW_AT_name("SSR")
	.dwattr DW$217, DW_AT_location[DW_OP_regx 0x5b]
DW$218	.dwtag  DW_TAG_assign_register, DW_AT_name("GPLYA")
	.dwattr DW$218, DW_AT_location[DW_OP_regx 0x5c]
DW$219	.dwtag  DW_TAG_assign_register, DW_AT_name("GPLYB")
	.dwattr DW$219, DW_AT_location[DW_OP_regx 0x5d]
DW$220	.dwtag  DW_TAG_assign_register, DW_AT_name("TSR")
	.dwattr DW$220, DW_AT_location[DW_OP_regx 0x5e]
DW$221	.dwtag  DW_TAG_assign_register, DW_AT_name("ITSR")
	.dwattr DW$221, DW_AT_location[DW_OP_regx 0x5f]
DW$222	.dwtag  DW_TAG_assign_register, DW_AT_name("NTSR")
	.dwattr DW$222, DW_AT_location[DW_OP_regx 0x60]
DW$223	.dwtag  DW_TAG_assign_register, DW_AT_name("EFR")
	.dwattr DW$223, DW_AT_location[DW_OP_regx 0x61]
DW$224	.dwtag  DW_TAG_assign_register, DW_AT_name("ECR")
	.dwattr DW$224, DW_AT_location[DW_OP_regx 0x62]
DW$225	.dwtag  DW_TAG_assign_register, DW_AT_name("IERR")
	.dwattr DW$225, DW_AT_location[DW_OP_regx 0x63]
DW$226	.dwtag  DW_TAG_assign_register, DW_AT_name("DMSG")
	.dwattr DW$226, DW_AT_location[DW_OP_regx 0x64]
DW$227	.dwtag  DW_TAG_assign_register, DW_AT_name("CMSG")
	.dwattr DW$227, DW_AT_location[DW_OP_regx 0x65]
DW$228	.dwtag  DW_TAG_assign_register, DW_AT_name("DT_DMA_ADDR")
	.dwattr DW$228, DW_AT_location[DW_OP_regx 0x66]
DW$229	.dwtag  DW_TAG_assign_register, DW_AT_name("DT_DMA_DATA")
	.dwattr DW$229, DW_AT_location[DW_OP_regx 0x67]
DW$230	.dwtag  DW_TAG_assign_register, DW_AT_name("DT_DMA_CNTL")
	.dwattr DW$230, DW_AT_location[DW_OP_regx 0x68]
DW$231	.dwtag  DW_TAG_assign_register, DW_AT_name("TCU_CNTL")
	.dwattr DW$231, DW_AT_location[DW_OP_regx 0x69]
DW$232	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_REC_CNTL")
	.dwattr DW$232, DW_AT_location[DW_OP_regx 0x6a]
DW$233	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_XMT_CNTL")
	.dwattr DW$233, DW_AT_location[DW_OP_regx 0x6b]
DW$234	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_CFG")
	.dwattr DW$234, DW_AT_location[DW_OP_regx 0x6c]
DW$235	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_RDATA")
	.dwattr DW$235, DW_AT_location[DW_OP_regx 0x6d]
DW$236	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_WDATA")
	.dwattr DW$236, DW_AT_location[DW_OP_regx 0x6e]
DW$237	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_RADDR")
	.dwattr DW$237, DW_AT_location[DW_OP_regx 0x6f]
DW$238	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_WADDR")
	.dwattr DW$238, DW_AT_location[DW_OP_regx 0x70]
DW$239	.dwtag  DW_TAG_assign_register, DW_AT_name("MFREG0")
	.dwattr DW$239, DW_AT_location[DW_OP_regx 0x71]
DW$240	.dwtag  DW_TAG_assign_register, DW_AT_name("DBG_STAT")
	.dwattr DW$240, DW_AT_location[DW_OP_regx 0x72]
DW$241	.dwtag  DW_TAG_assign_register, DW_AT_name("BRK_EN")
	.dwattr DW$241, DW_AT_location[DW_OP_regx 0x73]
DW$242	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP0_CNT")
	.dwattr DW$242, DW_AT_location[DW_OP_regx 0x74]
DW$243	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP0")
	.dwattr DW$243, DW_AT_location[DW_OP_regx 0x75]
DW$244	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP1")
	.dwattr DW$244, DW_AT_location[DW_OP_regx 0x76]
DW$245	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP2")
	.dwattr DW$245, DW_AT_location[DW_OP_regx 0x77]
DW$246	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP3")
	.dwattr DW$246, DW_AT_location[DW_OP_regx 0x78]
DW$247	.dwtag  DW_TAG_assign_register, DW_AT_name("OVERLAY")
	.dwattr DW$247, DW_AT_location[DW_OP_regx 0x79]
DW$248	.dwtag  DW_TAG_assign_register, DW_AT_name("PC_PROF")
	.dwattr DW$248, DW_AT_location[DW_OP_regx 0x7a]
DW$249	.dwtag  DW_TAG_assign_register, DW_AT_name("ATSR")
	.dwattr DW$249, DW_AT_location[DW_OP_regx 0x7b]
DW$250	.dwtag  DW_TAG_assign_register, DW_AT_name("TRR")
	.dwattr DW$250, DW_AT_location[DW_OP_regx 0x7c]
DW$251	.dwtag  DW_TAG_assign_register, DW_AT_name("TCRR")
	.dwattr DW$251, DW_AT_location[DW_OP_regx 0x7d]
DW$252	.dwtag  DW_TAG_assign_register, DW_AT_name("CIE_RETA")
	.dwattr DW$252, DW_AT_location[DW_OP_regx 0x7e]
	.dwendtag DW$CU

