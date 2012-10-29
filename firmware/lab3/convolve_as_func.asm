;******************************************************************************
;* TMS320C6x C/C++ Codegen                                          PC v5.1.0 *
;* Date/Time created: Mon Oct 29 04:11:11 2012                                *
;******************************************************************************

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
	.dwattr DW$CU, DW_AT_name("serial_asm")
	.dwattr DW$CU, DW_AT_producer("TMS320C6x C/C++ Codegen PC v5.1.0 Copyright (c) 1996-2005 Texas Instruments Incorporated")
	.dwattr DW$CU, DW_AT_stmt_list(0x00)
	.dwattr DW$CU, DW_AT_TI_VERSION(0x01)
; ECSE 436 - Signal Processing Hardware
; Lab 3
; Salenikovich, Stepan - 260326129
; Smith, Severin - 260349085
;
; convolve_asm_func.sa 
; int convolve_as_func(int x[], int w[], int x_idx, int w_length)

	.sect	".text"
					.global _convolve_as_func							;function def
	.sect	".text"

DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("convolve_as_func"), DW_AT_symbol_name("_convolve_as_func")
	.dwattr DW$1, DW_AT_low_pc(_convolve_as_func)
	.dwattr DW$1, DW_AT_high_pc(0x00)
	.dwattr DW$1, DW_AT_begin_file("convolve_as_func.sa")
	.dwattr DW$1, DW_AT_begin_line(0x0a)
	.dwattr DW$1, DW_AT_begin_column(0x01)
	.dwpsn	"convolve_as_func.sa",10,1

	.dwfde DW$CIE

;******************************************************************************
;* FUNCTION NAME: _convolve_as_func                                           *
;*                                                                            *
;*   Regs Modified     : A3,A4,A5,B0,B4,B5,B6                                 *
;*   Regs Used         : A3,A4,A5,A6,B0,B3,B4,B5,B6                           *
;******************************************************************************
_convolve_as_func:

	.map	saved_amr/B5
	.map	w_length/B0
	.map	w_length'/B6
	.map	sum/A4
	.map	a/B6
	.map	b/A3
	.map	x_idx/B5
	.map	x_idx'/A6
	.map	prod/A3
	.map	w/B4
	.map	x/A5
	.map	x'/A3
	.map	x''/A4
	.map	temp_amr/A3

;** --------------------------------------------------------------------------*
; _convolve_as_func 	.cproc	x, w, x_idx, w_length						;function parameters
; 					.reg	a, b, prod, sum, saved_amr, temp_amr		;registers to use
	.dwcfa	0x0e, 0
	.dwcfa	0x09, 126, 19
DW$2	.dwtag  DW_TAG_variable, DW_AT_name("saved_amr"), DW_AT_symbol_name("saved_amr")
	.dwattr DW$2, DW_AT_type(*DW$T$10)
	.dwattr DW$2, DW_AT_location[DW_OP_reg21]
DW$3	.dwtag  DW_TAG_variable, DW_AT_name("w_length"), DW_AT_symbol_name("w_length")
	.dwattr DW$3, DW_AT_type(*DW$T$10)
	.dwattr DW$3, DW_AT_location[DW_OP_reg16]
DW$4	.dwtag  DW_TAG_variable, DW_AT_name("w_length"), DW_AT_symbol_name("w_length")
	.dwattr DW$4, DW_AT_type(*DW$T$10)
	.dwattr DW$4, DW_AT_location[DW_OP_reg22]
DW$5	.dwtag  DW_TAG_variable, DW_AT_name("sum"), DW_AT_symbol_name("sum")
	.dwattr DW$5, DW_AT_type(*DW$T$10)
	.dwattr DW$5, DW_AT_location[DW_OP_reg4]
DW$6	.dwtag  DW_TAG_variable, DW_AT_name("a"), DW_AT_symbol_name("a")
	.dwattr DW$6, DW_AT_type(*DW$T$10)
	.dwattr DW$6, DW_AT_location[DW_OP_reg22]
DW$7	.dwtag  DW_TAG_variable, DW_AT_name("b"), DW_AT_symbol_name("b")
	.dwattr DW$7, DW_AT_type(*DW$T$10)
	.dwattr DW$7, DW_AT_location[DW_OP_reg3]
DW$8	.dwtag  DW_TAG_variable, DW_AT_name("x_idx"), DW_AT_symbol_name("x_idx")
	.dwattr DW$8, DW_AT_type(*DW$T$10)
	.dwattr DW$8, DW_AT_location[DW_OP_reg21]
DW$9	.dwtag  DW_TAG_variable, DW_AT_name("prod"), DW_AT_symbol_name("prod")
	.dwattr DW$9, DW_AT_type(*DW$T$10)
	.dwattr DW$9, DW_AT_location[DW_OP_reg3]
DW$10	.dwtag  DW_TAG_variable, DW_AT_name("w"), DW_AT_symbol_name("w")
	.dwattr DW$10, DW_AT_type(*DW$T$10)
	.dwattr DW$10, DW_AT_location[DW_OP_reg20]
DW$11	.dwtag  DW_TAG_variable, DW_AT_name("x"), DW_AT_symbol_name("x")
	.dwattr DW$11, DW_AT_type(*DW$T$10)
	.dwattr DW$11, DW_AT_location[DW_OP_reg5]
DW$12	.dwtag  DW_TAG_variable, DW_AT_name("x"), DW_AT_symbol_name("x")
	.dwattr DW$12, DW_AT_type(*DW$T$10)
	.dwattr DW$12, DW_AT_location[DW_OP_reg4]
DW$13	.dwtag  DW_TAG_variable, DW_AT_name("temp_amr"), DW_AT_symbol_name("temp_amr")
	.dwattr DW$13, DW_AT_type(*DW$T$10)
	.dwattr DW$13, DW_AT_location[DW_OP_reg3]

           MV      .L1     x'',x'            ; |10| 
||         MV      .L2     w_length',w_length ; |10| 

	.dwpsn	"convolve_as_func.sa",12,1
           ZERO    .L1     sum               ; |12| init sum to zero
	.dwpsn	"convolve_as_func.sa",13,1
           SHL     .S2X    x_idx',0x2,x_idx  ; |13| multiply index by 2, because byte addressable
	.dwpsn	"convolve_as_func.sa",15,1
           ADD     .L1X    x',x_idx,x        ; |15| gets the pointer to the newest value of x
	.dwpsn	"convolve_as_func.sa",16,1
           MVC     .S2     AMR,saved_amr     ; |16| save AMR to restore later
	.dwpsn	"convolve_as_func.sa",17,1
           MVK     .S1     0x4,temp_amr      ; |17| A5 points to the buffer -> ...0100
	.dwpsn	"convolve_as_func.sa",18,1
           MVKLH   .S1     0x8,temp_amr      ; |18| N=01000 because block size is 64 (16 ints)
	.dwpsn	"convolve_as_func.sa",19,1
           MVC     .S2X    temp_amr,AMR      ; |19| so AMR=0x00080004
	.dwpsn	"convolve_as_func.sa",20,1
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Software pipelining disabled
;*----------------------------------------------------------------------------*
loop:    
DW$L$_convolve_as_func$2$B:
; loop:				.trip 10, 51										;between 10 and 51 itterations
	.dwpsn	"convolve_as_func.sa",21,1
           LDW     .D2T2   *w++,a            ; |21| load and post increment w
           NOP             4
	.dwpsn	"convolve_as_func.sa",22,1
           LDW     .D1T1   *x--,b            ; |22| load and post decrement x
           NOP             4
	.dwpsn	"convolve_as_func.sa",23,1
           MPYI    .M1X    a,b,prod          ; |23| multiply 
           NOP             8
	.dwpsn	"convolve_as_func.sa",24,1
           ADD     .L1     prod,sum,sum      ; |24| sum
	.dwpsn	"convolve_as_func.sa",25,1
   [ w_length] ADD .L2     0xffffffff,w_length,w_length ; |25| decrement filter length
	.dwpsn	"convolve_as_func.sa",26,1
   [ w_length] B   .S1     loop              ; |26| branch until itterated filter length times
           NOP             5
           ; BRANCHCC OCCURS {loop}          ; |26| 
DW$L$_convolve_as_func$2$E:
;** --------------------------------------------------------------------------*
	.dwpsn	"convolve_as_func.sa",27,1
           MVC     .S2     saved_amr,AMR     ; |27| restore AMR
	.dwpsn	"convolve_as_func.sa",28,1
	.dwpsn	"convolve_as_func.sa",29,1
	.dwcfa	0x0e, 0
           RET     .S2     B3                ; |29| 
           NOP             5
           ; BRANCH OCCURS {B3}              ; |29| 

DW$14	.dwtag  DW_TAG_loop
	.dwattr DW$14, DW_AT_name("H:\SPH\firmware\lab3\convolve_as_func.asm:L1:1:1351498271")
	.dwattr DW$14, DW_AT_begin_file("convolve_as_func.sa")
	.dwattr DW$14, DW_AT_begin_line(0x14)
	.dwattr DW$14, DW_AT_end_line(0x1a)
DW$15	.dwtag  DW_TAG_loop_range
	.dwattr DW$15, DW_AT_low_pc(DW$L$_convolve_as_func$2$B)
	.dwattr DW$15, DW_AT_high_pc(DW$L$_convolve_as_func$2$E)
	.dwendtag DW$14

	.dwattr DW$1, DW_AT_end_file("convolve_as_func.sa")
	.dwattr DW$1, DW_AT_end_line(0x1d)
	.dwattr DW$1, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$1

	.clearmap


; 					.endproc

;******************************************************************************
;* TYPE INFORMATION                                                           *
;******************************************************************************
DW$T$10	.dwtag  DW_TAG_base_type, DW_AT_name("int")
	.dwattr DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr DW$T$10, DW_AT_byte_size(0x04)

DW$T$19	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$19, DW_AT_language(DW_LANG_C)

	.dwattr DW$1, DW_AT_type(*DW$T$10)
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

DW$16	.dwtag  DW_TAG_assign_register, DW_AT_name("A0")
	.dwattr DW$16, DW_AT_location[DW_OP_reg0]
DW$17	.dwtag  DW_TAG_assign_register, DW_AT_name("A1")
	.dwattr DW$17, DW_AT_location[DW_OP_reg1]
DW$18	.dwtag  DW_TAG_assign_register, DW_AT_name("A2")
	.dwattr DW$18, DW_AT_location[DW_OP_reg2]
DW$19	.dwtag  DW_TAG_assign_register, DW_AT_name("A3")
	.dwattr DW$19, DW_AT_location[DW_OP_reg3]
DW$20	.dwtag  DW_TAG_assign_register, DW_AT_name("A4")
	.dwattr DW$20, DW_AT_location[DW_OP_reg4]
DW$21	.dwtag  DW_TAG_assign_register, DW_AT_name("A5")
	.dwattr DW$21, DW_AT_location[DW_OP_reg5]
DW$22	.dwtag  DW_TAG_assign_register, DW_AT_name("A6")
	.dwattr DW$22, DW_AT_location[DW_OP_reg6]
DW$23	.dwtag  DW_TAG_assign_register, DW_AT_name("A7")
	.dwattr DW$23, DW_AT_location[DW_OP_reg7]
DW$24	.dwtag  DW_TAG_assign_register, DW_AT_name("A8")
	.dwattr DW$24, DW_AT_location[DW_OP_reg8]
DW$25	.dwtag  DW_TAG_assign_register, DW_AT_name("A9")
	.dwattr DW$25, DW_AT_location[DW_OP_reg9]
DW$26	.dwtag  DW_TAG_assign_register, DW_AT_name("A10")
	.dwattr DW$26, DW_AT_location[DW_OP_reg10]
DW$27	.dwtag  DW_TAG_assign_register, DW_AT_name("A11")
	.dwattr DW$27, DW_AT_location[DW_OP_reg11]
DW$28	.dwtag  DW_TAG_assign_register, DW_AT_name("A12")
	.dwattr DW$28, DW_AT_location[DW_OP_reg12]
DW$29	.dwtag  DW_TAG_assign_register, DW_AT_name("A13")
	.dwattr DW$29, DW_AT_location[DW_OP_reg13]
DW$30	.dwtag  DW_TAG_assign_register, DW_AT_name("A14")
	.dwattr DW$30, DW_AT_location[DW_OP_reg14]
DW$31	.dwtag  DW_TAG_assign_register, DW_AT_name("A15")
	.dwattr DW$31, DW_AT_location[DW_OP_reg15]
DW$32	.dwtag  DW_TAG_assign_register, DW_AT_name("B0")
	.dwattr DW$32, DW_AT_location[DW_OP_reg16]
DW$33	.dwtag  DW_TAG_assign_register, DW_AT_name("B1")
	.dwattr DW$33, DW_AT_location[DW_OP_reg17]
DW$34	.dwtag  DW_TAG_assign_register, DW_AT_name("B2")
	.dwattr DW$34, DW_AT_location[DW_OP_reg18]
DW$35	.dwtag  DW_TAG_assign_register, DW_AT_name("B3")
	.dwattr DW$35, DW_AT_location[DW_OP_reg19]
DW$36	.dwtag  DW_TAG_assign_register, DW_AT_name("B4")
	.dwattr DW$36, DW_AT_location[DW_OP_reg20]
DW$37	.dwtag  DW_TAG_assign_register, DW_AT_name("B5")
	.dwattr DW$37, DW_AT_location[DW_OP_reg21]
DW$38	.dwtag  DW_TAG_assign_register, DW_AT_name("B6")
	.dwattr DW$38, DW_AT_location[DW_OP_reg22]
DW$39	.dwtag  DW_TAG_assign_register, DW_AT_name("B7")
	.dwattr DW$39, DW_AT_location[DW_OP_reg23]
DW$40	.dwtag  DW_TAG_assign_register, DW_AT_name("B8")
	.dwattr DW$40, DW_AT_location[DW_OP_reg24]
DW$41	.dwtag  DW_TAG_assign_register, DW_AT_name("B9")
	.dwattr DW$41, DW_AT_location[DW_OP_reg25]
DW$42	.dwtag  DW_TAG_assign_register, DW_AT_name("B10")
	.dwattr DW$42, DW_AT_location[DW_OP_reg26]
DW$43	.dwtag  DW_TAG_assign_register, DW_AT_name("B11")
	.dwattr DW$43, DW_AT_location[DW_OP_reg27]
DW$44	.dwtag  DW_TAG_assign_register, DW_AT_name("B12")
	.dwattr DW$44, DW_AT_location[DW_OP_reg28]
DW$45	.dwtag  DW_TAG_assign_register, DW_AT_name("B13")
	.dwattr DW$45, DW_AT_location[DW_OP_reg29]
DW$46	.dwtag  DW_TAG_assign_register, DW_AT_name("DP")
	.dwattr DW$46, DW_AT_location[DW_OP_reg30]
DW$47	.dwtag  DW_TAG_assign_register, DW_AT_name("SP")
	.dwattr DW$47, DW_AT_location[DW_OP_reg31]
DW$48	.dwtag  DW_TAG_assign_register, DW_AT_name("FP")
	.dwattr DW$48, DW_AT_location[DW_OP_regx 0x20]
DW$49	.dwtag  DW_TAG_assign_register, DW_AT_name("PC")
	.dwattr DW$49, DW_AT_location[DW_OP_regx 0x21]
DW$50	.dwtag  DW_TAG_assign_register, DW_AT_name("IRP")
	.dwattr DW$50, DW_AT_location[DW_OP_regx 0x22]
DW$51	.dwtag  DW_TAG_assign_register, DW_AT_name("IFR")
	.dwattr DW$51, DW_AT_location[DW_OP_regx 0x23]
DW$52	.dwtag  DW_TAG_assign_register, DW_AT_name("NRP")
	.dwattr DW$52, DW_AT_location[DW_OP_regx 0x24]
DW$53	.dwtag  DW_TAG_assign_register, DW_AT_name("A16")
	.dwattr DW$53, DW_AT_location[DW_OP_regx 0x25]
DW$54	.dwtag  DW_TAG_assign_register, DW_AT_name("A17")
	.dwattr DW$54, DW_AT_location[DW_OP_regx 0x26]
DW$55	.dwtag  DW_TAG_assign_register, DW_AT_name("A18")
	.dwattr DW$55, DW_AT_location[DW_OP_regx 0x27]
DW$56	.dwtag  DW_TAG_assign_register, DW_AT_name("A19")
	.dwattr DW$56, DW_AT_location[DW_OP_regx 0x28]
DW$57	.dwtag  DW_TAG_assign_register, DW_AT_name("A20")
	.dwattr DW$57, DW_AT_location[DW_OP_regx 0x29]
DW$58	.dwtag  DW_TAG_assign_register, DW_AT_name("A21")
	.dwattr DW$58, DW_AT_location[DW_OP_regx 0x2a]
DW$59	.dwtag  DW_TAG_assign_register, DW_AT_name("A22")
	.dwattr DW$59, DW_AT_location[DW_OP_regx 0x2b]
DW$60	.dwtag  DW_TAG_assign_register, DW_AT_name("A23")
	.dwattr DW$60, DW_AT_location[DW_OP_regx 0x2c]
DW$61	.dwtag  DW_TAG_assign_register, DW_AT_name("A24")
	.dwattr DW$61, DW_AT_location[DW_OP_regx 0x2d]
DW$62	.dwtag  DW_TAG_assign_register, DW_AT_name("A25")
	.dwattr DW$62, DW_AT_location[DW_OP_regx 0x2e]
DW$63	.dwtag  DW_TAG_assign_register, DW_AT_name("A26")
	.dwattr DW$63, DW_AT_location[DW_OP_regx 0x2f]
DW$64	.dwtag  DW_TAG_assign_register, DW_AT_name("A27")
	.dwattr DW$64, DW_AT_location[DW_OP_regx 0x30]
DW$65	.dwtag  DW_TAG_assign_register, DW_AT_name("A28")
	.dwattr DW$65, DW_AT_location[DW_OP_regx 0x31]
DW$66	.dwtag  DW_TAG_assign_register, DW_AT_name("A29")
	.dwattr DW$66, DW_AT_location[DW_OP_regx 0x32]
DW$67	.dwtag  DW_TAG_assign_register, DW_AT_name("A30")
	.dwattr DW$67, DW_AT_location[DW_OP_regx 0x33]
DW$68	.dwtag  DW_TAG_assign_register, DW_AT_name("A31")
	.dwattr DW$68, DW_AT_location[DW_OP_regx 0x34]
DW$69	.dwtag  DW_TAG_assign_register, DW_AT_name("B16")
	.dwattr DW$69, DW_AT_location[DW_OP_regx 0x35]
DW$70	.dwtag  DW_TAG_assign_register, DW_AT_name("B17")
	.dwattr DW$70, DW_AT_location[DW_OP_regx 0x36]
DW$71	.dwtag  DW_TAG_assign_register, DW_AT_name("B18")
	.dwattr DW$71, DW_AT_location[DW_OP_regx 0x37]
DW$72	.dwtag  DW_TAG_assign_register, DW_AT_name("B19")
	.dwattr DW$72, DW_AT_location[DW_OP_regx 0x38]
DW$73	.dwtag  DW_TAG_assign_register, DW_AT_name("B20")
	.dwattr DW$73, DW_AT_location[DW_OP_regx 0x39]
DW$74	.dwtag  DW_TAG_assign_register, DW_AT_name("B21")
	.dwattr DW$74, DW_AT_location[DW_OP_regx 0x3a]
DW$75	.dwtag  DW_TAG_assign_register, DW_AT_name("B22")
	.dwattr DW$75, DW_AT_location[DW_OP_regx 0x3b]
DW$76	.dwtag  DW_TAG_assign_register, DW_AT_name("B23")
	.dwattr DW$76, DW_AT_location[DW_OP_regx 0x3c]
DW$77	.dwtag  DW_TAG_assign_register, DW_AT_name("B24")
	.dwattr DW$77, DW_AT_location[DW_OP_regx 0x3d]
DW$78	.dwtag  DW_TAG_assign_register, DW_AT_name("B25")
	.dwattr DW$78, DW_AT_location[DW_OP_regx 0x3e]
DW$79	.dwtag  DW_TAG_assign_register, DW_AT_name("B26")
	.dwattr DW$79, DW_AT_location[DW_OP_regx 0x3f]
DW$80	.dwtag  DW_TAG_assign_register, DW_AT_name("B27")
	.dwattr DW$80, DW_AT_location[DW_OP_regx 0x40]
DW$81	.dwtag  DW_TAG_assign_register, DW_AT_name("B28")
	.dwattr DW$81, DW_AT_location[DW_OP_regx 0x41]
DW$82	.dwtag  DW_TAG_assign_register, DW_AT_name("B29")
	.dwattr DW$82, DW_AT_location[DW_OP_regx 0x42]
DW$83	.dwtag  DW_TAG_assign_register, DW_AT_name("B30")
	.dwattr DW$83, DW_AT_location[DW_OP_regx 0x43]
DW$84	.dwtag  DW_TAG_assign_register, DW_AT_name("B31")
	.dwattr DW$84, DW_AT_location[DW_OP_regx 0x44]
DW$85	.dwtag  DW_TAG_assign_register, DW_AT_name("AMR")
	.dwattr DW$85, DW_AT_location[DW_OP_regx 0x45]
DW$86	.dwtag  DW_TAG_assign_register, DW_AT_name("CSR")
	.dwattr DW$86, DW_AT_location[DW_OP_regx 0x46]
DW$87	.dwtag  DW_TAG_assign_register, DW_AT_name("ISR")
	.dwattr DW$87, DW_AT_location[DW_OP_regx 0x47]
DW$88	.dwtag  DW_TAG_assign_register, DW_AT_name("ICR")
	.dwattr DW$88, DW_AT_location[DW_OP_regx 0x48]
DW$89	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$89, DW_AT_location[DW_OP_regx 0x49]
DW$90	.dwtag  DW_TAG_assign_register, DW_AT_name("ISTP")
	.dwattr DW$90, DW_AT_location[DW_OP_regx 0x4a]
DW$91	.dwtag  DW_TAG_assign_register, DW_AT_name("IN")
	.dwattr DW$91, DW_AT_location[DW_OP_regx 0x4b]
DW$92	.dwtag  DW_TAG_assign_register, DW_AT_name("OUT")
	.dwattr DW$92, DW_AT_location[DW_OP_regx 0x4c]
DW$93	.dwtag  DW_TAG_assign_register, DW_AT_name("ACR")
	.dwattr DW$93, DW_AT_location[DW_OP_regx 0x4d]
DW$94	.dwtag  DW_TAG_assign_register, DW_AT_name("ADR")
	.dwattr DW$94, DW_AT_location[DW_OP_regx 0x4e]
DW$95	.dwtag  DW_TAG_assign_register, DW_AT_name("FADCR")
	.dwattr DW$95, DW_AT_location[DW_OP_regx 0x4f]
DW$96	.dwtag  DW_TAG_assign_register, DW_AT_name("FAUCR")
	.dwattr DW$96, DW_AT_location[DW_OP_regx 0x50]
DW$97	.dwtag  DW_TAG_assign_register, DW_AT_name("FMCR")
	.dwattr DW$97, DW_AT_location[DW_OP_regx 0x51]
DW$98	.dwtag  DW_TAG_assign_register, DW_AT_name("GFPGFR")
	.dwattr DW$98, DW_AT_location[DW_OP_regx 0x52]
DW$99	.dwtag  DW_TAG_assign_register, DW_AT_name("DIER")
	.dwattr DW$99, DW_AT_location[DW_OP_regx 0x53]
DW$100	.dwtag  DW_TAG_assign_register, DW_AT_name("REP")
	.dwattr DW$100, DW_AT_location[DW_OP_regx 0x54]
DW$101	.dwtag  DW_TAG_assign_register, DW_AT_name("TSCL")
	.dwattr DW$101, DW_AT_location[DW_OP_regx 0x55]
DW$102	.dwtag  DW_TAG_assign_register, DW_AT_name("TSCH")
	.dwattr DW$102, DW_AT_location[DW_OP_regx 0x56]
DW$103	.dwtag  DW_TAG_assign_register, DW_AT_name("ARP")
	.dwattr DW$103, DW_AT_location[DW_OP_regx 0x57]
DW$104	.dwtag  DW_TAG_assign_register, DW_AT_name("ILC")
	.dwattr DW$104, DW_AT_location[DW_OP_regx 0x58]
DW$105	.dwtag  DW_TAG_assign_register, DW_AT_name("RILC")
	.dwattr DW$105, DW_AT_location[DW_OP_regx 0x59]
DW$106	.dwtag  DW_TAG_assign_register, DW_AT_name("DNUM")
	.dwattr DW$106, DW_AT_location[DW_OP_regx 0x5a]
DW$107	.dwtag  DW_TAG_assign_register, DW_AT_name("SSR")
	.dwattr DW$107, DW_AT_location[DW_OP_regx 0x5b]
DW$108	.dwtag  DW_TAG_assign_register, DW_AT_name("GPLYA")
	.dwattr DW$108, DW_AT_location[DW_OP_regx 0x5c]
DW$109	.dwtag  DW_TAG_assign_register, DW_AT_name("GPLYB")
	.dwattr DW$109, DW_AT_location[DW_OP_regx 0x5d]
DW$110	.dwtag  DW_TAG_assign_register, DW_AT_name("TSR")
	.dwattr DW$110, DW_AT_location[DW_OP_regx 0x5e]
DW$111	.dwtag  DW_TAG_assign_register, DW_AT_name("ITSR")
	.dwattr DW$111, DW_AT_location[DW_OP_regx 0x5f]
DW$112	.dwtag  DW_TAG_assign_register, DW_AT_name("NTSR")
	.dwattr DW$112, DW_AT_location[DW_OP_regx 0x60]
DW$113	.dwtag  DW_TAG_assign_register, DW_AT_name("EFR")
	.dwattr DW$113, DW_AT_location[DW_OP_regx 0x61]
DW$114	.dwtag  DW_TAG_assign_register, DW_AT_name("ECR")
	.dwattr DW$114, DW_AT_location[DW_OP_regx 0x62]
DW$115	.dwtag  DW_TAG_assign_register, DW_AT_name("IERR")
	.dwattr DW$115, DW_AT_location[DW_OP_regx 0x63]
DW$116	.dwtag  DW_TAG_assign_register, DW_AT_name("DMSG")
	.dwattr DW$116, DW_AT_location[DW_OP_regx 0x64]
DW$117	.dwtag  DW_TAG_assign_register, DW_AT_name("CMSG")
	.dwattr DW$117, DW_AT_location[DW_OP_regx 0x65]
DW$118	.dwtag  DW_TAG_assign_register, DW_AT_name("DT_DMA_ADDR")
	.dwattr DW$118, DW_AT_location[DW_OP_regx 0x66]
DW$119	.dwtag  DW_TAG_assign_register, DW_AT_name("DT_DMA_DATA")
	.dwattr DW$119, DW_AT_location[DW_OP_regx 0x67]
DW$120	.dwtag  DW_TAG_assign_register, DW_AT_name("DT_DMA_CNTL")
	.dwattr DW$120, DW_AT_location[DW_OP_regx 0x68]
DW$121	.dwtag  DW_TAG_assign_register, DW_AT_name("TCU_CNTL")
	.dwattr DW$121, DW_AT_location[DW_OP_regx 0x69]
DW$122	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_REC_CNTL")
	.dwattr DW$122, DW_AT_location[DW_OP_regx 0x6a]
DW$123	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_XMT_CNTL")
	.dwattr DW$123, DW_AT_location[DW_OP_regx 0x6b]
DW$124	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_CFG")
	.dwattr DW$124, DW_AT_location[DW_OP_regx 0x6c]
DW$125	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_RDATA")
	.dwattr DW$125, DW_AT_location[DW_OP_regx 0x6d]
DW$126	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_WDATA")
	.dwattr DW$126, DW_AT_location[DW_OP_regx 0x6e]
DW$127	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_RADDR")
	.dwattr DW$127, DW_AT_location[DW_OP_regx 0x6f]
DW$128	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_WADDR")
	.dwattr DW$128, DW_AT_location[DW_OP_regx 0x70]
DW$129	.dwtag  DW_TAG_assign_register, DW_AT_name("MFREG0")
	.dwattr DW$129, DW_AT_location[DW_OP_regx 0x71]
DW$130	.dwtag  DW_TAG_assign_register, DW_AT_name("DBG_STAT")
	.dwattr DW$130, DW_AT_location[DW_OP_regx 0x72]
DW$131	.dwtag  DW_TAG_assign_register, DW_AT_name("BRK_EN")
	.dwattr DW$131, DW_AT_location[DW_OP_regx 0x73]
DW$132	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP0_CNT")
	.dwattr DW$132, DW_AT_location[DW_OP_regx 0x74]
DW$133	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP0")
	.dwattr DW$133, DW_AT_location[DW_OP_regx 0x75]
DW$134	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP1")
	.dwattr DW$134, DW_AT_location[DW_OP_regx 0x76]
DW$135	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP2")
	.dwattr DW$135, DW_AT_location[DW_OP_regx 0x77]
DW$136	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP3")
	.dwattr DW$136, DW_AT_location[DW_OP_regx 0x78]
DW$137	.dwtag  DW_TAG_assign_register, DW_AT_name("OVERLAY")
	.dwattr DW$137, DW_AT_location[DW_OP_regx 0x79]
DW$138	.dwtag  DW_TAG_assign_register, DW_AT_name("PC_PROF")
	.dwattr DW$138, DW_AT_location[DW_OP_regx 0x7a]
DW$139	.dwtag  DW_TAG_assign_register, DW_AT_name("ATSR")
	.dwattr DW$139, DW_AT_location[DW_OP_regx 0x7b]
DW$140	.dwtag  DW_TAG_assign_register, DW_AT_name("TRR")
	.dwattr DW$140, DW_AT_location[DW_OP_regx 0x7c]
DW$141	.dwtag  DW_TAG_assign_register, DW_AT_name("TCRR")
	.dwattr DW$141, DW_AT_location[DW_OP_regx 0x7d]
DW$142	.dwtag  DW_TAG_assign_register, DW_AT_name("CIE_RETA")
	.dwattr DW$142, DW_AT_location[DW_OP_regx 0x7e]
	.dwendtag DW$CU

