;******************************************************************************
;* TMS320C6x C/C++ Codegen                                          PC v5.1.0 *
;* Date/Time created: Sat Oct 27 21:33:10 2012                                *
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
	.field  	IR_2,32
	.field  	_tones+0,32
	.field  	697,32			; _tones[0][0] @ 0
	.field  	1209,32			; _tones[0][1] @ 32
	.field  	1,32			; _tones[0][2] @ 64
	.field  	697,32			; _tones[1][0] @ 96
	.field  	1336,32			; _tones[1][1] @ 128
	.field  	2,32			; _tones[1][2] @ 160
	.field  	697,32			; _tones[2][0] @ 192
	.field  	1477,32			; _tones[2][1] @ 224
	.field  	3,32			; _tones[2][2] @ 256
	.field  	770,32			; _tones[3][0] @ 288
	.field  	1209,32			; _tones[3][1] @ 320
	.field  	4,32			; _tones[3][2] @ 352
	.field  	770,32			; _tones[4][0] @ 384
	.field  	1336,32			; _tones[4][1] @ 416
	.field  	5,32			; _tones[4][2] @ 448
	.field  	770,32			; _tones[5][0] @ 480
	.field  	1477,32			; _tones[5][1] @ 512
	.field  	6,32			; _tones[5][2] @ 544
	.field  	852,32			; _tones[6][0] @ 576
	.field  	1209,32			; _tones[6][1] @ 608
	.field  	7,32			; _tones[6][2] @ 640
	.field  	852,32			; _tones[7][0] @ 672
	.field  	1336,32			; _tones[7][1] @ 704
	.field  	8,32			; _tones[7][2] @ 736
	.field  	852,32			; _tones[8][0] @ 768
	.field  	1477,32			; _tones[8][1] @ 800
	.field  	9,32			; _tones[8][2] @ 832
	.field  	941,32			; _tones[9][0] @ 864
	.field  	1209,32			; _tones[9][1] @ 896
	.field  	10,32			; _tones[9][2] @ 928
	.field  	941,32			; _tones[10][0] @ 960
	.field  	1336,32			; _tones[10][1] @ 992
	.field  	0,32			; _tones[10][2] @ 1024
	.field  	941,32			; _tones[11][0] @ 1056
	.field  	1477,32			; _tones[11][1] @ 1088
	.field  	11,32			; _tones[11][2] @ 1120
IR_2:	.set	144

	.sect	".cinit"
	.align	8
	.field  	IR_3,32
	.field  	_freq_low+0,32
	.field  	697,32			; _freq_low[0] @ 0
	.field  	770,32			; _freq_low[1] @ 32
	.field  	852,32			; _freq_low[2] @ 64
	.field  	941,32			; _freq_low[3] @ 96
IR_3:	.set	16

	.sect	".cinit"
	.align	8
	.field  	IR_4,32
	.field  	_freq_high+0,32
	.field  	1209,32			; _freq_high[0] @ 0
	.field  	1336,32			; _freq_high[1] @ 32
	.field  	1477,32			; _freq_high[2] @ 64
IR_4:	.set	12

	.sect	".cinit"
	.align	8
	.field  	IR_5,32
	.field  	_freq_low_bin+0,32
	.field  	44,32			; _freq_low_bin[0] @ 0
	.field  	49,32			; _freq_low_bin[1] @ 32
	.field  	54,32			; _freq_low_bin[2] @ 64
	.field  	60,32			; _freq_low_bin[3] @ 96
IR_5:	.set	16

	.sect	".cinit"
	.align	8
	.field  	IR_6,32
	.field  	_freq_high_bin+0,32
	.field  	77,32			; _freq_high_bin[0] @ 0
	.field  	85,32			; _freq_high_bin[1] @ 32
	.field  	93,32			; _freq_high_bin[2] @ 64
IR_6:	.set	12

	.sect	".cinit"
	.align	8
	.field  	IR_7,32
	.field  	_freq_low_harmonic_bin+0,32
	.field  	89,32			; _freq_low_harmonic_bin[0] @ 0
	.field  	98,32			; _freq_low_harmonic_bin[1] @ 32
	.field  	109,32			; _freq_low_harmonic_bin[2] @ 64
	.field  	120,32			; _freq_low_harmonic_bin[3] @ 96
IR_7:	.set	16

	.sect	".cinit"
	.align	8
	.field  	IR_8,32
	.field  	_freq_high_harmonic_bin+0,32
	.field  	154,32			; _freq_high_harmonic_bin[0] @ 0
	.field  	171,32			; _freq_high_harmonic_bin[1] @ 32
	.field  	189,32			; _freq_high_harmonic_bin[2] @ 64
IR_8:	.set	12

	.sect	".cinit"
	.align	8
	.field  	IR_9,32
	.field  	_tonemap+0,32
	.field  	48,8			; _tonemap[0] @ 0
	.field  	49,8			; _tonemap[1] @ 8
	.field  	50,8			; _tonemap[2] @ 16
	.field  	51,8			; _tonemap[3] @ 24
	.field  	52,8			; _tonemap[4] @ 32
	.field  	53,8			; _tonemap[5] @ 40
	.field  	54,8			; _tonemap[6] @ 48
	.field  	55,8			; _tonemap[7] @ 56
	.field  	56,8			; _tonemap[8] @ 64
	.field  	57,8			; _tonemap[9] @ 72
	.field  	42,8			; _tonemap[10] @ 80
	.field  	35,8			; _tonemap[11] @ 88
IR_9:	.set	12

	.sect	".cinit"
	.align	8
	.field  	4,32
	.field  	_buffer_index+0,32
	.field  	0,32			; _buffer_index @ 0

	.sect	".cinit"
	.align	8
	.field  	IR_10,32
	.field  	_detected_tones+0,32
	.field  	-1,32			; _detected_tones[0] @ 0
	.field  	-1,32			; _detected_tones[1] @ 32
	.field  	-1,32			; _detected_tones[2] @ 64
	.field  	-1,32			; _detected_tones[3] @ 96
	.field  	-1,32			; _detected_tones[4] @ 128
	.field  	-1,32			; _detected_tones[5] @ 160
	.field  	-1,32			; _detected_tones[6] @ 192
	.field  	-1,32			; _detected_tones[7] @ 224
	.field  	-1,32			; _detected_tones[8] @ 256
	.field  	-1,32			; _detected_tones[9] @ 288
	.field  	-1,32			; _detected_tones[10] @ 320
	.field  	-1,32			; _detected_tones[11] @ 352
	.field  	-1,32			; _detected_tones[12] @ 384
	.field  	-1,32			; _detected_tones[13] @ 416
	.field  	-1,32			; _detected_tones[14] @ 448
	.field  	-1,32			; _detected_tones[15] @ 480
	.field  	-1,32			; _detected_tones[16] @ 512
	.field  	-1,32			; _detected_tones[17] @ 544
	.field  	-1,32			; _detected_tones[18] @ 576
	.field  	-1,32			; _detected_tones[19] @ 608
	.field  	-1,32			; _detected_tones[20] @ 640
	.field  	-1,32			; _detected_tones[21] @ 672
	.field  	-1,32			; _detected_tones[22] @ 704
	.field  	-1,32			; _detected_tones[23] @ 736
	.field  	-1,32			; _detected_tones[24] @ 768
	.field  	-1,32			; _detected_tones[25] @ 800
	.field  	-1,32			; _detected_tones[26] @ 832
	.field  	-1,32			; _detected_tones[27] @ 864
	.field  	-1,32			; _detected_tones[28] @ 896
	.field  	-1,32			; _detected_tones[29] @ 928
IR_10:	.set	120

	.sect	".cinit"
	.align	8
	.field  	4,32
	.field  	_write_tone_index+0,32
	.field  	0,32			; _write_tone_index @ 0

	.sect	".cinit"
	.align	8
	.field  	4,32
	.field  	_tone_index+0,32
	.field  	0,32			; _tone_index @ 0

	.sect	".cinit"
	.align	8
	.field  	4,32
	.field  	_gap_flag+0,32
	.field  	1,32			; _gap_flag @ 0

	.sect	".cinit"
	.align	8
	.field  	4,32
	.field  	_pulse_up+0,32
	.field  	8,32			; _pulse_up @ 0

	.sect	".cinit"
	.align	8
	.field  	4,32
	.field  	_pulse_len+0,32
	.field  	800,32			; _pulse_len @ 0

	.sect	".cinit"
	.align	8
	.field  	4,32
	.field  	_pulse_state+0,32
	.field  	-1,32			; _pulse_state @ 0

	.sect	".cinit"
	.align	8
	.field  	4,32
	.field  	_pulse_tone_index+0,32
	.field  	0,32			; _pulse_tone_index @ 0

	.sect	".cinit"
	.align	8
	.field  	4,32
	.field  	_pulse_sample_index+0,32
	.field  	0,32			; _pulse_sample_index @ 0

	.sect	".cinit"
	.align	8
	.field  	4,32
	.field  	_pulse_tone_count+0,32
	.field  	0,32			; _pulse_tone_count @ 0

	.sect	".cinit"
	.align	8
	.field  	4,32
	.field  	_pulse_tone_count_max+0,32
	.field  	0,32			; _pulse_tone_count_max @ 0

	.sect	".cinit"
	.align	8
	.field  	4,32
	.field  	_sample_count+0,32
	.field  	0,32			; _sample_count @ 0

	.sect	".cinit"
	.align	8
	.field  	4,32
	.field  	_tone_len_count+0,32
	.field  	0,32			; _tone_len_count @ 0

	.sect	".cinit"
	.align	8
	.field  	4,32
	.field  	_gap_len_count+0,32
	.field  	0,32			; _gap_len_count @ 0

	.sect	".cinit"
	.align	8
	.field  	4,32
	.field  	_fft_interval+0,32
	.field  	128,32			; _fft_interval @ 0

	.sect	".cinit"
	.align	8
	.field  	4,32
	.field  	_min_gap_len+0,32
	.field  	0,32			; _min_gap_len @ 0

	.sect	".cinit"
	.align	8
	.field  	4,32
	.field  	_min_tone_len+0,32
	.field  	2,32			; _min_tone_len @ 0

	.sect	".cinit"
	.align	8
	.field  	4,32
	.field  	_freq_snap_thres+0,32
	.field  	40,32			; _freq_snap_thres @ 0

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


DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("sin"), DW_AT_symbol_name("_sin")
	.dwattr DW$1, DW_AT_type(*DW$T$17)
	.dwattr DW$1, DW_AT_declaration(0x01)
	.dwattr DW$1, DW_AT_external(0x01)
DW$2	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$17)
	.dwendtag DW$1


DW$3	.dwtag  DW_TAG_subprogram, DW_AT_name("cos"), DW_AT_symbol_name("_cos")
	.dwattr DW$3, DW_AT_type(*DW$T$17)
	.dwattr DW$3, DW_AT_declaration(0x01)
	.dwattr DW$3, DW_AT_external(0x01)
DW$4	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$17)
	.dwendtag DW$3


DW$5	.dwtag  DW_TAG_subprogram, DW_AT_name("DSK6713_init"), DW_AT_symbol_name("_DSK6713_init")
	.dwattr DW$5, DW_AT_declaration(0x01)
	.dwattr DW$5, DW_AT_external(0x01)

DW$6	.dwtag  DW_TAG_subprogram, DW_AT_name("DSK6713_AIC23_openCodec"), DW_AT_symbol_name("_DSK6713_AIC23_openCodec")
	.dwattr DW$6, DW_AT_type(*DW$T$30)
	.dwattr DW$6, DW_AT_declaration(0x01)
	.dwattr DW$6, DW_AT_external(0x01)
DW$7	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$8	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$68)
	.dwendtag DW$6


DW$9	.dwtag  DW_TAG_subprogram, DW_AT_name("DSK6713_AIC23_closeCodec"), DW_AT_symbol_name("_DSK6713_AIC23_closeCodec")
	.dwattr DW$9, DW_AT_declaration(0x01)
	.dwattr DW$9, DW_AT_external(0x01)
DW$10	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$30)
	.dwendtag DW$9


DW$11	.dwtag  DW_TAG_subprogram, DW_AT_name("DSK6713_AIC23_write"), DW_AT_symbol_name("_DSK6713_AIC23_write")
	.dwattr DW$11, DW_AT_type(*DW$T$38)
	.dwattr DW$11, DW_AT_declaration(0x01)
	.dwattr DW$11, DW_AT_external(0x01)
DW$12	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$30)
DW$13	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$28)
	.dwendtag DW$11


DW$14	.dwtag  DW_TAG_subprogram, DW_AT_name("DSK6713_AIC23_read"), DW_AT_symbol_name("_DSK6713_AIC23_read")
	.dwattr DW$14, DW_AT_type(*DW$T$38)
	.dwattr DW$14, DW_AT_declaration(0x01)
	.dwattr DW$14, DW_AT_external(0x01)
DW$15	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$30)
DW$16	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$53)
	.dwendtag DW$14


DW$17	.dwtag  DW_TAG_subprogram, DW_AT_name("DSK6713_AIC23_setFreq"), DW_AT_symbol_name("_DSK6713_AIC23_setFreq")
	.dwattr DW$17, DW_AT_declaration(0x01)
	.dwattr DW$17, DW_AT_external(0x01)
DW$18	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$30)
DW$19	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$28)
	.dwendtag DW$17


DW$20	.dwtag  DW_TAG_subprogram, DW_AT_name("fclose"), DW_AT_symbol_name("_fclose")
	.dwattr DW$20, DW_AT_type(*DW$T$10)
	.dwattr DW$20, DW_AT_declaration(0x01)
	.dwattr DW$20, DW_AT_external(0x01)
DW$21	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$71)
	.dwendtag DW$20


DW$22	.dwtag  DW_TAG_subprogram, DW_AT_name("fopen"), DW_AT_symbol_name("_fopen")
	.dwattr DW$22, DW_AT_type(*DW$T$71)
	.dwattr DW$22, DW_AT_declaration(0x01)
	.dwattr DW$22, DW_AT_external(0x01)
DW$23	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$111)
DW$24	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$111)
	.dwendtag DW$22


DW$25	.dwtag  DW_TAG_subprogram, DW_AT_name("fflush"), DW_AT_symbol_name("_fflush")
	.dwattr DW$25, DW_AT_type(*DW$T$10)
	.dwattr DW$25, DW_AT_declaration(0x01)
	.dwattr DW$25, DW_AT_external(0x01)
DW$26	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$71)
	.dwendtag DW$25


DW$27	.dwtag  DW_TAG_subprogram, DW_AT_name("fwrite"), DW_AT_symbol_name("_fwrite")
	.dwattr DW$27, DW_AT_type(*DW$T$94)
	.dwattr DW$27, DW_AT_declaration(0x01)
	.dwattr DW$27, DW_AT_external(0x01)
DW$28	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$35)
DW$29	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$94)
DW$30	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$94)
DW$31	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$71)
	.dwendtag DW$27

DW$32	.dwtag  DW_TAG_variable, DW_AT_name("_IRQ_eventTable"), DW_AT_symbol_name("__IRQ_eventTable")
	.dwattr DW$32, DW_AT_type(*DW$T$93)
	.dwattr DW$32, DW_AT_declaration(0x01)
	.dwattr DW$32, DW_AT_external(0x01)
	.global	_config
_config:	.usect	".far",40,4
DW$33	.dwtag  DW_TAG_variable, DW_AT_name("config"), DW_AT_symbol_name("_config")
	.dwattr DW$33, DW_AT_location[DW_OP_addr _config]
	.dwattr DW$33, DW_AT_type(*DW$T$67)
	.dwattr DW$33, DW_AT_external(0x01)
	.global	_hCodec
	.bss	_hCodec,4,4
DW$34	.dwtag  DW_TAG_variable, DW_AT_name("hCodec"), DW_AT_symbol_name("_hCodec")
	.dwattr DW$34, DW_AT_location[DW_OP_addr _hCodec]
	.dwattr DW$34, DW_AT_type(*DW$T$30)
	.dwattr DW$34, DW_AT_external(0x01)
	.global	_tones
_tones:	.usect	".far",144,4
DW$35	.dwtag  DW_TAG_variable, DW_AT_name("tones"), DW_AT_symbol_name("_tones")
	.dwattr DW$35, DW_AT_location[DW_OP_addr _tones]
	.dwattr DW$35, DW_AT_type(*DW$T$80)
	.dwattr DW$35, DW_AT_external(0x01)
	.global	_freq_low
_freq_low:	.usect	".far",16,4
DW$36	.dwtag  DW_TAG_variable, DW_AT_name("freq_low"), DW_AT_symbol_name("_freq_low")
	.dwattr DW$36, DW_AT_location[DW_OP_addr _freq_low]
	.dwattr DW$36, DW_AT_type(*DW$T$82)
	.dwattr DW$36, DW_AT_external(0x01)
	.global	_freq_high
_freq_high:	.usect	".far",12,4
DW$37	.dwtag  DW_TAG_variable, DW_AT_name("freq_high"), DW_AT_symbol_name("_freq_high")
	.dwattr DW$37, DW_AT_location[DW_OP_addr _freq_high]
	.dwattr DW$37, DW_AT_type(*DW$T$79)
	.dwattr DW$37, DW_AT_external(0x01)
	.global	_freq_low_bin
_freq_low_bin:	.usect	".far",16,4
DW$38	.dwtag  DW_TAG_variable, DW_AT_name("freq_low_bin"), DW_AT_symbol_name("_freq_low_bin")
	.dwattr DW$38, DW_AT_location[DW_OP_addr _freq_low_bin]
	.dwattr DW$38, DW_AT_type(*DW$T$82)
	.dwattr DW$38, DW_AT_external(0x01)
	.global	_freq_high_bin
_freq_high_bin:	.usect	".far",12,4
DW$39	.dwtag  DW_TAG_variable, DW_AT_name("freq_high_bin"), DW_AT_symbol_name("_freq_high_bin")
	.dwattr DW$39, DW_AT_location[DW_OP_addr _freq_high_bin]
	.dwattr DW$39, DW_AT_type(*DW$T$79)
	.dwattr DW$39, DW_AT_external(0x01)
	.global	_freq_low_harmonic_bin
_freq_low_harmonic_bin:	.usect	".far",16,4
DW$40	.dwtag  DW_TAG_variable, DW_AT_name("freq_low_harmonic_bin"), DW_AT_symbol_name("_freq_low_harmonic_bin")
	.dwattr DW$40, DW_AT_location[DW_OP_addr _freq_low_harmonic_bin]
	.dwattr DW$40, DW_AT_type(*DW$T$82)
	.dwattr DW$40, DW_AT_external(0x01)
	.global	_freq_high_harmonic_bin
_freq_high_harmonic_bin:	.usect	".far",12,4
DW$41	.dwtag  DW_TAG_variable, DW_AT_name("freq_high_harmonic_bin"), DW_AT_symbol_name("_freq_high_harmonic_bin")
	.dwattr DW$41, DW_AT_location[DW_OP_addr _freq_high_harmonic_bin]
	.dwattr DW$41, DW_AT_type(*DW$T$79)
	.dwattr DW$41, DW_AT_external(0x01)
	.global	_tonemap
_tonemap:	.usect	".far",12,4
DW$42	.dwtag  DW_TAG_variable, DW_AT_name("tonemap"), DW_AT_symbol_name("_tonemap")
	.dwattr DW$42, DW_AT_location[DW_OP_addr _tonemap]
	.dwattr DW$42, DW_AT_type(*DW$T$116)
	.dwattr DW$42, DW_AT_external(0x01)
	.global	_buffer
_buffer:	.usect	".far",256,4
DW$43	.dwtag  DW_TAG_variable, DW_AT_name("buffer"), DW_AT_symbol_name("_buffer")
	.dwattr DW$43, DW_AT_location[DW_OP_addr _buffer]
	.dwattr DW$43, DW_AT_type(*DW$T$56)
	.dwattr DW$43, DW_AT_external(0x01)
	.global	_buffer_index
	.bss	_buffer_index,4,4
DW$44	.dwtag  DW_TAG_variable, DW_AT_name("buffer_index"), DW_AT_symbol_name("_buffer_index")
	.dwattr DW$44, DW_AT_location[DW_OP_addr _buffer_index]
	.dwattr DW$44, DW_AT_type(*DW$T$10)
	.dwattr DW$44, DW_AT_external(0x01)
	.global	_detected_tones
_detected_tones:	.usect	".far",120,4
DW$45	.dwtag  DW_TAG_variable, DW_AT_name("detected_tones"), DW_AT_symbol_name("_detected_tones")
	.dwattr DW$45, DW_AT_location[DW_OP_addr _detected_tones]
	.dwattr DW$45, DW_AT_type(*DW$T$83)
	.dwattr DW$45, DW_AT_external(0x01)
	.global	_write_tone_index
	.bss	_write_tone_index,4,4
DW$46	.dwtag  DW_TAG_variable, DW_AT_name("write_tone_index"), DW_AT_symbol_name("_write_tone_index")
	.dwattr DW$46, DW_AT_location[DW_OP_addr _write_tone_index]
	.dwattr DW$46, DW_AT_type(*DW$T$10)
	.dwattr DW$46, DW_AT_external(0x01)
	.global	_tone_index
	.bss	_tone_index,4,4
DW$47	.dwtag  DW_TAG_variable, DW_AT_name("tone_index"), DW_AT_symbol_name("_tone_index")
	.dwattr DW$47, DW_AT_location[DW_OP_addr _tone_index]
	.dwattr DW$47, DW_AT_type(*DW$T$10)
	.dwattr DW$47, DW_AT_external(0x01)
	.global	_gap_flag
	.bss	_gap_flag,4,4
DW$48	.dwtag  DW_TAG_variable, DW_AT_name("gap_flag"), DW_AT_symbol_name("_gap_flag")
	.dwattr DW$48, DW_AT_location[DW_OP_addr _gap_flag]
	.dwattr DW$48, DW_AT_type(*DW$T$10)
	.dwattr DW$48, DW_AT_external(0x01)
	.global	_pulse_up
	.bss	_pulse_up,4,4
DW$49	.dwtag  DW_TAG_variable, DW_AT_name("pulse_up"), DW_AT_symbol_name("_pulse_up")
	.dwattr DW$49, DW_AT_location[DW_OP_addr _pulse_up]
	.dwattr DW$49, DW_AT_type(*DW$T$10)
	.dwattr DW$49, DW_AT_external(0x01)
	.global	_pulse_len
	.bss	_pulse_len,4,4
DW$50	.dwtag  DW_TAG_variable, DW_AT_name("pulse_len"), DW_AT_symbol_name("_pulse_len")
	.dwattr DW$50, DW_AT_location[DW_OP_addr _pulse_len]
	.dwattr DW$50, DW_AT_type(*DW$T$10)
	.dwattr DW$50, DW_AT_external(0x01)
	.global	_pulse_state
	.bss	_pulse_state,4,4
DW$51	.dwtag  DW_TAG_variable, DW_AT_name("pulse_state"), DW_AT_symbol_name("_pulse_state")
	.dwattr DW$51, DW_AT_location[DW_OP_addr _pulse_state]
	.dwattr DW$51, DW_AT_type(*DW$T$10)
	.dwattr DW$51, DW_AT_external(0x01)
	.global	_pulse_tone_index
	.bss	_pulse_tone_index,4,4
DW$52	.dwtag  DW_TAG_variable, DW_AT_name("pulse_tone_index"), DW_AT_symbol_name("_pulse_tone_index")
	.dwattr DW$52, DW_AT_location[DW_OP_addr _pulse_tone_index]
	.dwattr DW$52, DW_AT_type(*DW$T$10)
	.dwattr DW$52, DW_AT_external(0x01)
	.global	_pulse_sample_index
	.bss	_pulse_sample_index,4,4
DW$53	.dwtag  DW_TAG_variable, DW_AT_name("pulse_sample_index"), DW_AT_symbol_name("_pulse_sample_index")
	.dwattr DW$53, DW_AT_location[DW_OP_addr _pulse_sample_index]
	.dwattr DW$53, DW_AT_type(*DW$T$10)
	.dwattr DW$53, DW_AT_external(0x01)
	.global	_pulse_tone_count
	.bss	_pulse_tone_count,4,4
DW$54	.dwtag  DW_TAG_variable, DW_AT_name("pulse_tone_count"), DW_AT_symbol_name("_pulse_tone_count")
	.dwattr DW$54, DW_AT_location[DW_OP_addr _pulse_tone_count]
	.dwattr DW$54, DW_AT_type(*DW$T$10)
	.dwattr DW$54, DW_AT_external(0x01)
	.global	_pulse_tone_count_max
	.bss	_pulse_tone_count_max,4,4
DW$55	.dwtag  DW_TAG_variable, DW_AT_name("pulse_tone_count_max"), DW_AT_symbol_name("_pulse_tone_count_max")
	.dwattr DW$55, DW_AT_location[DW_OP_addr _pulse_tone_count_max]
	.dwattr DW$55, DW_AT_type(*DW$T$10)
	.dwattr DW$55, DW_AT_external(0x01)
	.global	_sample_count
	.bss	_sample_count,4,4
DW$56	.dwtag  DW_TAG_variable, DW_AT_name("sample_count"), DW_AT_symbol_name("_sample_count")
	.dwattr DW$56, DW_AT_location[DW_OP_addr _sample_count]
	.dwattr DW$56, DW_AT_type(*DW$T$10)
	.dwattr DW$56, DW_AT_external(0x01)
	.global	_tone_len_count
	.bss	_tone_len_count,4,4
DW$57	.dwtag  DW_TAG_variable, DW_AT_name("tone_len_count"), DW_AT_symbol_name("_tone_len_count")
	.dwattr DW$57, DW_AT_location[DW_OP_addr _tone_len_count]
	.dwattr DW$57, DW_AT_type(*DW$T$10)
	.dwattr DW$57, DW_AT_external(0x01)
	.global	_gap_len_count
	.bss	_gap_len_count,4,4
DW$58	.dwtag  DW_TAG_variable, DW_AT_name("gap_len_count"), DW_AT_symbol_name("_gap_len_count")
	.dwattr DW$58, DW_AT_location[DW_OP_addr _gap_len_count]
	.dwattr DW$58, DW_AT_type(*DW$T$10)
	.dwattr DW$58, DW_AT_external(0x01)
	.global	_fft_interval
	.bss	_fft_interval,4,4
DW$59	.dwtag  DW_TAG_variable, DW_AT_name("fft_interval"), DW_AT_symbol_name("_fft_interval")
	.dwattr DW$59, DW_AT_location[DW_OP_addr _fft_interval]
	.dwattr DW$59, DW_AT_type(*DW$T$10)
	.dwattr DW$59, DW_AT_external(0x01)
	.global	_min_gap_len
	.bss	_min_gap_len,4,4
DW$60	.dwtag  DW_TAG_variable, DW_AT_name("min_gap_len"), DW_AT_symbol_name("_min_gap_len")
	.dwattr DW$60, DW_AT_location[DW_OP_addr _min_gap_len]
	.dwattr DW$60, DW_AT_type(*DW$T$10)
	.dwattr DW$60, DW_AT_external(0x01)
	.global	_min_tone_len
	.bss	_min_tone_len,4,4
DW$61	.dwtag  DW_TAG_variable, DW_AT_name("min_tone_len"), DW_AT_symbol_name("_min_tone_len")
	.dwattr DW$61, DW_AT_location[DW_OP_addr _min_tone_len]
	.dwattr DW$61, DW_AT_type(*DW$T$10)
	.dwattr DW$61, DW_AT_external(0x01)
	.global	_freq_snap_thres
	.bss	_freq_snap_thres,4,4
DW$62	.dwtag  DW_TAG_variable, DW_AT_name("freq_snap_thres"), DW_AT_symbol_name("_freq_snap_thres")
	.dwattr DW$62, DW_AT_location[DW_OP_addr _freq_snap_thres]
	.dwattr DW$62, DW_AT_type(*DW$T$10)
	.dwattr DW$62, DW_AT_external(0x01)
	.global	_fft_array
_fft_array:	.usect	".far",1024,4
DW$63	.dwtag  DW_TAG_variable, DW_AT_name("fft_array"), DW_AT_symbol_name("_fft_array")
	.dwattr DW$63, DW_AT_location[DW_OP_addr _fft_array]
	.dwattr DW$63, DW_AT_type(*DW$T$102)
	.dwattr DW$63, DW_AT_external(0x01)
	.global	_textfile
	.bss	_textfile,4,4
DW$64	.dwtag  DW_TAG_variable, DW_AT_name("textfile"), DW_AT_symbol_name("_textfile")
	.dwattr DW$64, DW_AT_location[DW_OP_addr _textfile]
	.dwattr DW$64, DW_AT_type(*DW$T$71)
	.dwattr DW$64, DW_AT_external(0x01)
	.global	_left
	.bss	_left,4,4
DW$65	.dwtag  DW_TAG_variable, DW_AT_name("left"), DW_AT_symbol_name("_left")
	.dwattr DW$65, DW_AT_location[DW_OP_addr _left]
	.dwattr DW$65, DW_AT_type(*DW$T$28)
	.dwattr DW$65, DW_AT_external(0x01)
	.global	_right
	.bss	_right,4,4
DW$66	.dwtag  DW_TAG_variable, DW_AT_name("right"), DW_AT_symbol_name("_right")
	.dwattr DW$66, DW_AT_location[DW_OP_addr _right]
	.dwattr DW$66, DW_AT_type(*DW$T$28)
	.dwattr DW$66, DW_AT_external(0x01)
	.global	_mix
	.bss	_mix,2,2
DW$67	.dwtag  DW_TAG_variable, DW_AT_name("mix"), DW_AT_symbol_name("_mix")
	.dwattr DW$67, DW_AT_location[DW_OP_addr _mix]
	.dwattr DW$67, DW_AT_type(*DW$T$38)
	.dwattr DW$67, DW_AT_external(0x01)
	.global	_audio_out
	.bss	_audio_out,2,2
DW$68	.dwtag  DW_TAG_variable, DW_AT_name("audio_out"), DW_AT_symbol_name("_audio_out")
	.dwattr DW$68, DW_AT_location[DW_OP_addr _audio_out]
	.dwattr DW$68, DW_AT_type(*DW$T$38)
	.dwattr DW$68, DW_AT_external(0x01)
	.global	_input_ready
	.bss	_input_ready,1,1
DW$69	.dwtag  DW_TAG_variable, DW_AT_name("input_ready"), DW_AT_symbol_name("_input_ready")
	.dwattr DW$69, DW_AT_location[DW_OP_addr _input_ready]
	.dwattr DW$69, DW_AT_type(*DW$T$50)
	.dwattr DW$69, DW_AT_external(0x01)
	.global	_output_ready
	.bss	_output_ready,1,1
DW$70	.dwtag  DW_TAG_variable, DW_AT_name("output_ready"), DW_AT_symbol_name("_output_ready")
	.dwattr DW$70, DW_AT_location[DW_OP_addr _output_ready]
	.dwattr DW$70, DW_AT_type(*DW$T$50)
	.dwattr DW$70, DW_AT_external(0x01)
	.global	_channel_flag
	.bss	_channel_flag,1,1
DW$71	.dwtag  DW_TAG_variable, DW_AT_name("channel_flag"), DW_AT_symbol_name("_channel_flag")
	.dwattr DW$71, DW_AT_location[DW_OP_addr _channel_flag]
	.dwattr DW$71, DW_AT_type(*DW$T$50)
	.dwattr DW$71, DW_AT_external(0x01)
	.sect	".const"
	.align	4
_$T0$1$2:
	.word	000000000h		; _$T0$1$2[0] @ 0
	.word	000000000h		; _$T0$1$2[1] @ 32

DW$72	.dwtag  DW_TAG_variable, DW_AT_name("$T0$1$2"), DW_AT_symbol_name("_$T0$1$2")
	.dwattr DW$72, DW_AT_type(*DW$T$105)
	.dwattr DW$72, DW_AT_location[DW_OP_addr _$T0$1$2]
	.sect	".const"
	.align	4
_$T1$2$2:
	.field  	0,32			; _$T1$2$2[0] @ 0
	.field  	0,32			; _$T1$2$2[1] @ 32

DW$73	.dwtag  DW_TAG_variable, DW_AT_name("$T1$2$2"), DW_AT_symbol_name("_$T1$2$2")
	.dwattr DW$73, DW_AT_type(*DW$T$87)
	.dwattr DW$73, DW_AT_location[DW_OP_addr _$T1$2$2]
	.sect	".const"
	.align	4
_$T2$3$2:
	.field  	697,32			; _$T2$3$2[0] @ 0
	.field  	770,32			; _$T2$3$2[1] @ 32
	.field  	852,32			; _$T2$3$2[2] @ 64
	.field  	941,32			; _$T2$3$2[3] @ 96
	.field  	1209,32			; _$T2$3$2[4] @ 128
	.field  	1336,32			; _$T2$3$2[5] @ 160
	.field  	1477,32			; _$T2$3$2[6] @ 192

DW$74	.dwtag  DW_TAG_variable, DW_AT_name("$T2$3$2"), DW_AT_symbol_name("_$T2$3$2")
	.dwattr DW$74, DW_AT_type(*DW$T$88)
	.dwattr DW$74, DW_AT_location[DW_OP_addr _$T2$3$2]
	.sect	".const"
	.align	4
_$T3$4$2:
	.word	000000000h		; _$T3$4$2[0] @ 0
	.word	000000000h		; _$T3$4$2[1] @ 32

DW$75	.dwtag  DW_TAG_variable, DW_AT_name("$T3$4$2"), DW_AT_symbol_name("_$T3$4$2")
	.dwattr DW$75, DW_AT_type(*DW$T$105)
	.dwattr DW$75, DW_AT_location[DW_OP_addr _$T3$4$2]
	.sect	".const"
	.align	4
_$T4$5$2:
	.field  	0,32			; _$T4$5$2[0] @ 0
	.field  	0,32			; _$T4$5$2[1] @ 32

DW$76	.dwtag  DW_TAG_variable, DW_AT_name("$T4$5$2"), DW_AT_symbol_name("_$T4$5$2")
	.dwattr DW$76, DW_AT_type(*DW$T$87)
	.dwattr DW$76, DW_AT_location[DW_OP_addr _$T4$5$2]
	.sect	".const"
	.align	4
_$T5$6$2:
	.word	000000000h		; _$T5$6$2[0] @ 0
	.word	000000000h		; _$T5$6$2[1] @ 32

DW$77	.dwtag  DW_TAG_variable, DW_AT_name("$T5$6$2"), DW_AT_symbol_name("_$T5$6$2")
	.dwattr DW$77, DW_AT_type(*DW$T$105)
	.dwattr DW$77, DW_AT_location[DW_OP_addr _$T5$6$2]
	.sect	".const"
	.align	4
_$T6$7$2:
	.field  	0,32			; _$T6$7$2[0] @ 0
	.field  	0,32			; _$T6$7$2[1] @ 32

DW$78	.dwtag  DW_TAG_variable, DW_AT_name("$T6$7$2"), DW_AT_symbol_name("_$T6$7$2")
	.dwattr DW$78, DW_AT_type(*DW$T$87)
	.dwattr DW$78, DW_AT_location[DW_OP_addr _$T6$7$2]
	.sect	".const"
	.align	4
_$T7$8$2:
	.field  	0,32			; _$T7$8$2[0] @ 0
	.field  	0,32			; _$T7$8$2[1] @ 32

DW$79	.dwtag  DW_TAG_variable, DW_AT_name("$T7$8$2"), DW_AT_symbol_name("_$T7$8$2")
	.dwattr DW$79, DW_AT_type(*DW$T$87)
	.dwattr DW$79, DW_AT_location[DW_OP_addr _$T7$8$2]
;	C:\CCStudio_v3.1\C6000\cgtools\bin\opt6x.exe C:\Users\ssalen\AppData\Local\Temp\TI31220 C:\Users\ssalen\AppData\Local\Temp\TI31214 
	.sect	".text"
	.global	_transmit_interrupt

DW$80	.dwtag  DW_TAG_subprogram, DW_AT_name("transmit_interrupt"), DW_AT_symbol_name("_transmit_interrupt")
	.dwattr DW$80, DW_AT_low_pc(_transmit_interrupt)
	.dwattr DW$80, DW_AT_high_pc(0x00)
	.dwattr DW$80, DW_AT_begin_file("H:\SPH\firmware\lab2\touchtone.c")
	.dwattr DW$80, DW_AT_begin_line(0x1be)
	.dwattr DW$80, DW_AT_begin_column(0x06)
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",446,31

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
           STW     .D2T2   B3,*SP--(8)       ; |446| 
	.dwcfa	0x0e, 8
	.dwcfa	0x80, 19, 0
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",447,2

           CALL    .S1     _DSK6713_AIC23_write ; |447| 
||         LDW     .D2T1   *+DP(_hCodec),A4  ; |447| 

           LDHU    .D2T2   *+DP(_audio_out),B4 ; |447| 
           MVKL    .S2     RL0,B3            ; |447| 
           MVKH    .S2     RL0,B3            ; |447| 
           NOP             2
RL0:       ; CALL OCCURS {_DSK6713_AIC23_write}  ; |447| 
;** --------------------------------------------------------------------------*
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",448,2
           LDBU    .D2T2   *+DP(_output_ready),B4 ; |448| 
           NOP             4
           CMPLTU  .L2     B4,2,B0           ; |448| 
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",448,24
   [ B0]   LDBU    .D2T2   *+DP(_output_ready),B4 ; |448| 
           NOP             4
   [ B0]   ADD     .L2     1,B4,B4           ; |448| 
   [ B0]   STB     .D2T2   B4,*+DP(_output_ready) ; |448| 
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",449,1
           LDW     .D2T2   *++SP(8),B3       ; |449| 
           NOP             4
	.dwcfa	0xc0, 19
	.dwcfa	0x0e, 0
           RET     .S2     B3                ; |449| 
           NOP             5
           ; BRANCH OCCURS {B3}              ; |449| 
	.dwattr DW$80, DW_AT_end_file("H:\SPH\firmware\lab2\touchtone.c")
	.dwattr DW$80, DW_AT_end_line(0x1c1)
	.dwattr DW$80, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$80

	.sect	".text"
	.global	_absolute

DW$81	.dwtag  DW_TAG_subprogram, DW_AT_name("absolute"), DW_AT_symbol_name("_absolute")
	.dwattr DW$81, DW_AT_low_pc(_absolute)
	.dwattr DW$81, DW_AT_high_pc(0x00)
	.dwattr DW$81, DW_AT_begin_file("H:\SPH\firmware\lab2\touchtone.c")
	.dwattr DW$81, DW_AT_begin_line(0x1e0)
	.dwattr DW$81, DW_AT_begin_column(0x05)
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",480,23

	.dwfde DW$CIE

;******************************************************************************
;* FUNCTION NAME: _absolute                                                   *
;*                                                                            *
;*   Regs Modified     : A4                                                   *
;*   Regs Used         : A4,B3                                                *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************

;******************************************************************************
;*                                                                            *
;* Using -g (debug) with optimization (-o3) may disable key optimizations!    *
;*                                                                            *
;******************************************************************************
_absolute:
;** --------------------------------------------------------------------------*
	.dwcfa	0x0e, 0
	.dwcfa	0x09, 126, 19
DW$82	.dwtag  DW_TAG_formal_parameter, DW_AT_name("val"), DW_AT_symbol_name("_val")
	.dwattr DW$82, DW_AT_type(*DW$T$10)
	.dwattr DW$82, DW_AT_location[DW_OP_reg4]
DW$83	.dwtag  DW_TAG_variable, DW_AT_name("val"), DW_AT_symbol_name("_val")
	.dwattr DW$83, DW_AT_type(*DW$T$86)
	.dwattr DW$83, DW_AT_location[DW_OP_reg4]
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",481,2
           ABS     .L1     A4,A4             ; |481| 
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",483,1
	.dwcfa	0x0e, 0
           RET     .S2     B3                ; |483| 
           NOP             5
           ; BRANCH OCCURS {B3}              ; |483| 
	.dwattr DW$81, DW_AT_end_file("H:\SPH\firmware\lab2\touchtone.c")
	.dwattr DW$81, DW_AT_end_line(0x1e3)
	.dwattr DW$81, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$81

	.sect	".text"
	.global	_snapfreq

DW$84	.dwtag  DW_TAG_subprogram, DW_AT_name("snapfreq"), DW_AT_symbol_name("_snapfreq")
	.dwattr DW$84, DW_AT_low_pc(_snapfreq)
	.dwattr DW$84, DW_AT_high_pc(0x00)
	.dwattr DW$84, DW_AT_begin_file("H:\SPH\firmware\lab2\touchtone.c")
	.dwattr DW$84, DW_AT_begin_line(0x1c7)
	.dwattr DW$84, DW_AT_begin_column(0x05)
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",455,23

	.dwfde DW$CIE

;******************************************************************************
;* FUNCTION NAME: _snapfreq                                                   *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,SP                                            *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,DP,SP                                         *
;*   Local Frame Size  : 0 Args + 28 Auto + 4 Save = 32 byte                  *
;******************************************************************************

;******************************************************************************
;*                                                                            *
;* Using -g (debug) with optimization (-o3) may disable key optimizations!    *
;*                                                                            *
;******************************************************************************
_snapfreq:
;** --------------------------------------------------------------------------*
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 462
;*      Loop opening brace source line   : 462
;*      Loop closing brace source line   : 467
;*      Known Minimum Trip Count         : 7                    
;*      Known Maximum Trip Count         : 7                    
;*      Known Max Trip Count Factor      : 7
;*      Loop Carried Dependency Bound(^) : 5
;*      Unpartitioned Resource Bound     : 4
;*      Partitioned Resource Bound(*)    : 5
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     3        2     
;*      .S units                     0        1     
;*      .D units                     1        0     
;*      .M units                     0        0     
;*      .X cross paths               4        4     
;*      .T address paths             0        1     
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           3        2     (.L or .S unit)
;*      Addition ops (.LSD)          4        5     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             3        3     
;*      Bound(.L .S .D .LS .LSD)     4        4     
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 5  Schedule found with 3 iterations in parallel
;*
;*      Register Usage Table:
;*          +---------------------------------+
;*          |AAAAAAAAAAAAAAAA|BBBBBBBBBBBBBBBB|
;*          |0000000000111111|0000000000111111|
;*          |0123456789012345|0123456789012345|
;*          |----------------+----------------|
;*       0: |*  ***  **      | ** ***         |
;*       1: |****** ***      | ** ***         |
;*       2: |****** ***      | ** * *         |
;*       3: |**********      |*** * *         |
;*       4: |******  **      |*** ***         |
;*          +---------------------------------+
;*
;*      Done
;*
;*      Collapsed epilog stages     : 2
;*      Prolog not removed
;*      Collapsed prolog stages     : 0
;*
;*      Minimum required memory pad : 0 bytes
;*
;*      For further improvement on this loop, try option -mh8
;*
;*      Minimum safe trip count     : 2
;*----------------------------------------------------------------------------*
;*        SINGLE SCHEDULED ITERATION
;*
;*        C60:
;*   0              LDW     .D1T1   *++A0,A7          ; |463| 
;*   1              NOP             4
;*   5              SUB     .S1     A7,A4,A8          ; |481| 
;*   6              SUB     .D1     A7,A4,A2          ; |463| 
;*     ||           CMPLT   .L2X    A8,0,B0           ; |481| 
;*   7              MV      .L2X    A7,B5             ; |481| 
;*     ||   [!B0]   MV      .D1     A8,A5             ; |481| 
;*     ||   [ B1]   SUB     .S2     B1,1,B1           ; |462| 
;*   8      [ B0]   NEG     .L1     A2,A5             ; |481| 
;*     ||   [ B1]   B       .S2     C60               ; |462| 
;*   9              CMPLT   .L1     A5,A3,A2          ; |481|  ^ 
;*     ||           ZERO    .S1     A1                ; |464| Define a twin register
;*  10      [ A2]   MV      .L2X    A8,B4             ; |464| 
;*     ||   [ A2]   CMPLT   .L1     A8,0,A9           ; |464|  ^ 
;*     ||   [ A2]   MV      .S2     B5,B6             ; |481| 
;*  11              CMPEQ   .L1     A2,0,A6           ; |464| 
;*     ||   [ A2]   MV      .S1     A9,A1             ; |464|  ^ 
;*  12              OR      .S1     A9,A6,A1          ; |464| 
;*     ||   [ A1]   NEG     .L1X    B4,A3             ; |464|  ^ 
;*  13      [!A1]   MV      .S1X    B4,A3             ; |464|  ^ 
;*  14              ; BRANCHCC OCCURS {C60}           ; |462| 
;*----------------------------------------------------------------------------*
L1:    ; PIPED LOOP PROLOG
	.dwcfa	0x0e, 0
	.dwcfa	0x09, 126, 19
           NOP             1
           STW     .D2T2   B3,*SP--(32)      ; |455| 
	.dwcfa	0x0e, 32
	.dwcfa	0x80, 19, 0
DW$85	.dwtag  DW_TAG_formal_parameter, DW_AT_name("bin"), DW_AT_symbol_name("_bin")
	.dwattr DW$85, DW_AT_type(*DW$T$10)
	.dwattr DW$85, DW_AT_location[DW_OP_reg4]
DW$86	.dwtag  DW_TAG_variable, DW_AT_name("bin"), DW_AT_symbol_name("_bin")
	.dwattr DW$86, DW_AT_type(*DW$T$86)
	.dwattr DW$86, DW_AT_location[DW_OP_reg5]
DW$87	.dwtag  DW_TAG_variable, DW_AT_name("val"), DW_AT_symbol_name("_val")
	.dwattr DW$87, DW_AT_type(*DW$T$10)
	.dwattr DW$87, DW_AT_location[DW_OP_reg4]
DW$88	.dwtag  DW_TAG_variable, DW_AT_name("diff"), DW_AT_symbol_name("_diff")
	.dwattr DW$88, DW_AT_type(*DW$T$10)
	.dwattr DW$88, DW_AT_location[DW_OP_reg3]
DW$89	.dwtag  DW_TAG_variable, DW_AT_name("snapped"), DW_AT_symbol_name("_snapped")
	.dwattr DW$89, DW_AT_type(*DW$T$10)
	.dwattr DW$89, DW_AT_location[DW_OP_reg22]
DW$90	.dwtag  DW_TAG_variable, DW_AT_name("val"), DW_AT_symbol_name("_val")
	.dwattr DW$90, DW_AT_type(*DW$T$10)
	.dwattr DW$90, DW_AT_location[DW_OP_reg20]
DW$91	.dwtag  DW_TAG_variable, DW_AT_name("val"), DW_AT_symbol_name("_val")
	.dwattr DW$91, DW_AT_type(*DW$T$10)
	.dwattr DW$91, DW_AT_location[DW_OP_reg2]
DW$92	.dwtag  DW_TAG_variable, DW_AT_name("valid_freq"), DW_AT_symbol_name("_valid_freq")
	.dwattr DW$92, DW_AT_type(*DW$T$89)
	.dwattr DW$92, DW_AT_location[DW_OP_breg31 4]
           MV      .L1     A4,A5             ; |455| 
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",456,6
           CALL    .S2     __strasg          ; |456| 
           NOP             1
           MVKL    .S2     _$T2$3$2,B4       ; |456| 
           MVKL    .S2     RL1,B3            ; |456| 
           MVKH    .S2     RL1,B3            ; |456| 

           ADD     .L1X    4,SP,A4           ; |456| 
||         MVK     .S1     0x1c,A6           ; |456| 
||         MVKH    .S2     _$T2$3$2,B4       ; |456| 

RL1:       ; CALL OCCURS {__strasg}          ; |456| 
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",458,6
           NOP             1
           MVK     .S1     125,A3            ; |458| 

           MVK     .S2     8000,B4           ; |458| 
||         MPYI    .M1     A3,A5,A3          ; |458| 

           MPYI    .M2X    B4,A5,B4          ; |458| 
           NOP             7
           SHRU    .S1     A3,25,A3          ; |458| 
           ADD     .L1X    A3,B4,A3          ; |458| 
           SHR     .S1     A3,7,A4           ; |458| 
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",462,12

           MV      .L1X    SP,A0
||         MVK     .S2     0x7,B4            ; |462| 

	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",459,6
           LDW     .D1T1   *++A0,A7          ; |463| (P) <0,0> 
           NOP             1
           MVC     .S2     CSR,B7

           SUB     .S2     B4,1,B1
||         SUB     .D2     B4,2,B2
||         AND     .L2     -2,B7,B4

           MVC     .S2     B4,CSR            ; interrupts off

           SUB     .L1     A7,A4,A8          ; |481| (P) <0,5> 
||         LDW     .D1T1   *++A0,A7          ; |463| (P) <1,0> 

           SUB     .L1     A7,A4,A2          ; |463| (P) <0,6> 
||         CMPLT   .L2X    A8,0,B0           ; |481| (P) <0,6> 

   [!B0]   MV      .L1     A8,A5             ; |481| (P) <0,7> 
||         MV      .L2X    A7,B5             ; |481| (P) <0,7> 

           MVK     .S1     0xfa0,A3          ; |459| 
|| [ B0]   NEG     .L1     A2,A5             ; |481| (P) <0,8> 
||         B       .S2     L2                ; |462| (P) <0,8> 

;** --------------------------------------------------------------------------*
L2:    ; PIPED LOOP KERNEL
DW$L$_snapfreq$3$B:

           ZERO    .S1     A1                ; |464| <0,9> Define a twin register
||         CMPLT   .L1     A5,A3,A2          ; |481| <0,9>  ^ 

   [ A2]   MV      .S2     B5,B6             ; |481| <0,10> 
|| [ A2]   MV      .L2X    A8,B4             ; |464| <0,10> 
|| [ A2]   CMPLT   .L1     A8,0,A9           ; |464| <0,10>  ^ 
||         SUB     .S1     A7,A4,A8          ; |481| <1,5> 
|| [ B2]   LDW     .D1T1   *++A0,A7          ; |463| <2,0> 

           CMPEQ   .L1     A2,0,A6           ; |464| <0,11> 
|| [ A2]   MV      .S1     A9,A1             ; |464| <0,11>  ^ 
||         SUB     .D1     A7,A4,A2          ; |463| <1,6> 
||         CMPLT   .L2X    A8,0,B0           ; |481| <1,6> 

   [ A1]   NEG     .L1X    B4,A3             ; |464| <0,12>  ^ 
||         OR      .S1     A9,A6,A1          ; |464| <0,12> 
|| [ B1]   SUB     .S2     B1,1,B1           ; |462| <1,7> 
||         MV      .L2X    A7,B5             ; |481| <1,7> 
|| [!B0]   MV      .D1     A8,A5             ; |481| <1,7> 

   [ B2]   SUB     .L2     B2,1,B2           ; <0,13> 
|| [!A1]   MV      .S1X    B4,A3             ; |464| <0,13>  ^ 
|| [ B0]   NEG     .L1     A2,A5             ; |481| <1,8> 
|| [ B1]   B       .S2     L2                ; |462| <1,8> 

DW$L$_snapfreq$3$E:
;** --------------------------------------------------------------------------*
L3:    ; PIPED LOOP EPILOG
           MVC     .S2     B7,CSR            ; interrupts on
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",469,2
           LDW     .D2T2   *+DP(_freq_snap_thres),B4 ; |469| 
           NOP             4
           CMPGT   .L1X    A3,B4,A1          ; |469| 
   [ A1]   MVK     .S2     0xffffffff,B6     ; |469| 
           MV      .L1X    B6,A4             ; |469| 
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",475,1
           LDW     .D2T2   *++SP(32),B3      ; |475| 
	.dwcfa	0x0e, 0
	.dwcfa	0xc0, 19
           NOP             4
           RET     .S2     B3                ; |475| 
           NOP             5
           ; BRANCH OCCURS {B3}              ; |475| 

DW$93	.dwtag  DW_TAG_loop
	.dwattr DW$93, DW_AT_name("H:\SPH\firmware\lab2\Configuration1cfg_c.asm:L2:1:1351387990")
	.dwattr DW$93, DW_AT_begin_file("H:\SPH\firmware\lab2\touchtone.c")
	.dwattr DW$93, DW_AT_begin_line(0x1ce)
	.dwattr DW$93, DW_AT_end_line(0x1d3)
DW$94	.dwtag  DW_TAG_loop_range
	.dwattr DW$94, DW_AT_low_pc(DW$L$_snapfreq$3$B)
	.dwattr DW$94, DW_AT_high_pc(DW$L$_snapfreq$3$E)
	.dwendtag DW$93

	.dwattr DW$84, DW_AT_end_file("H:\SPH\firmware\lab2\touchtone.c")
	.dwattr DW$84, DW_AT_end_line(0x1db)
	.dwattr DW$84, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$84

	.sect	".text"
	.global	_record_tones_to_file

DW$95	.dwtag  DW_TAG_subprogram, DW_AT_name("record_tones_to_file"), DW_AT_symbol_name("_record_tones_to_file")
	.dwattr DW$95, DW_AT_low_pc(_record_tones_to_file)
	.dwattr DW$95, DW_AT_high_pc(0x00)
	.dwattr DW$95, DW_AT_begin_file("H:\SPH\firmware\lab2\touchtone.c")
	.dwattr DW$95, DW_AT_begin_line(0xbf)
	.dwattr DW$95, DW_AT_begin_column(0x06)
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",191,33

	.dwfde DW$CIE

;******************************************************************************
;* FUNCTION NAME: _record_tones_to_file                                       *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,B0,B1,B2,B3,B4,*
;*                           B5,B6,B7,B8,B9,SP                                *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,B0,B1,B2,B3,B4,*
;*                           B5,B6,B7,B8,B9,DP,SP                             *
;*   Local Frame Size  : 0 Args + 0 Auto + 12 Save = 12 byte                  *
;******************************************************************************

;******************************************************************************
;*                                                                            *
;* Using -g (debug) with optimization (-o3) may disable key optimizations!    *
;*                                                                            *
;******************************************************************************
_record_tones_to_file:
;** --------------------------------------------------------------------------*
	.dwcfa	0x0e, 0
	.dwcfa	0x09, 126, 19
           STW     .D2T2   B3,*SP--(16)      ; |191| 
	.dwcfa	0x0e, 16
	.dwcfa	0x80, 19, 0
           STW     .D2T1   A11,*+SP(12)      ; |191| 
	.dwcfa	0x80, 11, 1
           STW     .D2T1   A10,*+SP(8)       ; |191| 
	.dwcfa	0x80, 10, 2
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",192,7

           CALL    .S1     __remi            ; |192| 
||         LDW     .D2T2   *+DP(_pulse_tone_index),B5 ; |192| 

           LDW     .D2T1   *+DP(_write_tone_index),A3 ; |192| 
           NOP             1
           MVKL    .S2     RL2,B3            ; |192| 
           MVK     .S2     0x1e,B4           ; |192| 

           MVKH    .S2     RL2,B3            ; |192| 
||         ADD     .L1X    1,B5,A4           ; |192| 

RL2:       ; CALL OCCURS {__remi}            ; |192| 
;** --------------------------------------------------------------------------*
           MVKL    .S2     _tonemap,B4
           MVKH    .S2     _tonemap,B4
           MVKL    .S1     _detected_tones,A11
           MV      .L1X    B4,A10
           CMPEQ   .L1     A3,A4,A1          ; |192| 
   [ A1]   B       .S1     L5                ; |192| 
           MVKH    .S1     _detected_tones,A11
           NOP             4
           ; BRANCHCC OCCURS {L5}            ; |192| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*----------------------------------------------------------------------------*
L4:    
DW$L$_record_tones_to_file$3$B:
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",193,3

           LDW     .D1T1   *+A11[A3],A3      ; |193| 
||         CALL    .S1     _fwrite           ; |193| 
||         MVKL    .S2     RL3,B3            ; |193| 

           LDW     .D2T2   *+DP(_textfile),B6 ; |193| 
||         MVKH    .S2     RL3,B3            ; |193| 

           MVK     .S2     0x1,B4            ; |193| 
           MVK     .S1     0x1,A6            ; |193| 
           NOP             1
           ADD     .L1     A10,A3,A4         ; |193| 
RL3:       ; CALL OCCURS {_fwrite}           ; |193| 
DW$L$_record_tones_to_file$3$E:
;** --------------------------------------------------------------------------*
DW$L$_record_tones_to_file$4$B:
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",192,61

           CALL    .S1     __remi            ; |192| 
||         LDW     .D2T2   *+DP(_write_tone_index),B5 ; |192| 

           MVKL    .S2     RL4,B3            ; |192| 
           MVK     .S2     0x1e,B4           ; |192| 
           MVKH    .S2     RL4,B3            ; |192| 
           NOP             1
           ADD     .L1X    1,B5,A4           ; |192| 
RL4:       ; CALL OCCURS {__remi}            ; |192| 
           MV      .L1     A4,A3             ; |192| 

           STW     .D2T1   A3,*+DP(_write_tone_index) ; |192| 
||         MV      .L1     A4,A7             ; |192| 

	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",192,7

           CALL    .S1     __remi            ; |192| 
||         LDW     .D2T1   *+DP(_pulse_tone_index),A4 ; |192| 

           MVKL    .S2     RL5,B3            ; |192| 
           MVK     .S2     0x1e,B4           ; |192| 
           MVKH    .S2     RL5,B3            ; |192| 
           NOP             1
           ADD     .L1     1,A4,A4           ; |192| 
RL5:       ; CALL OCCURS {__remi}            ; |192| 
DW$L$_record_tones_to_file$4$E:
;** --------------------------------------------------------------------------*
DW$L$_record_tones_to_file$5$B:
           CMPEQ   .L1     A7,A4,A1          ; |192| 
   [!A1]   B       .S1     L4                ; |192| 
           NOP             5
           ; BRANCHCC OCCURS {L4}            ; |192| 
DW$L$_record_tones_to_file$5$E:
;** --------------------------------------------------------------------------*
L5:    
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",196,2
           CALL    .S1     _fflush           ; |196| 
           LDW     .D2T1   *+DP(_textfile),A4 ; |196| 
           MVKL    .S2     RL6,B3            ; |196| 
           MVKH    .S2     RL6,B3            ; |196| 
           NOP             2
RL6:       ; CALL OCCURS {_fflush}           ; |196| 
;** --------------------------------------------------------------------------*
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",197,1
           LDW     .D2T1   *+SP(12),A11      ; |197| 
	.dwcfa	0xc0, 11
           LDW     .D2T1   *+SP(8),A10       ; |197| 
	.dwcfa	0xc0, 10
           LDW     .D2T2   *++SP(16),B3      ; |197| 
           NOP             4
	.dwcfa	0xc0, 19
	.dwcfa	0x0e, 0
           RET     .S2     B3                ; |197| 
           NOP             5
           ; BRANCH OCCURS {B3}              ; |197| 

DW$96	.dwtag  DW_TAG_loop
	.dwattr DW$96, DW_AT_name("H:\SPH\firmware\lab2\Configuration1cfg_c.asm:L4:1:1351387990")
	.dwattr DW$96, DW_AT_begin_file("H:\SPH\firmware\lab2\touchtone.c")
	.dwattr DW$96, DW_AT_begin_line(0xc0)
	.dwattr DW$96, DW_AT_end_line(0xc2)
DW$97	.dwtag  DW_TAG_loop_range
	.dwattr DW$97, DW_AT_low_pc(DW$L$_record_tones_to_file$3$B)
	.dwattr DW$97, DW_AT_high_pc(DW$L$_record_tones_to_file$3$E)
DW$98	.dwtag  DW_TAG_loop_range
	.dwattr DW$98, DW_AT_low_pc(DW$L$_record_tones_to_file$4$B)
	.dwattr DW$98, DW_AT_high_pc(DW$L$_record_tones_to_file$4$E)
DW$99	.dwtag  DW_TAG_loop_range
	.dwattr DW$99, DW_AT_low_pc(DW$L$_record_tones_to_file$5$B)
	.dwattr DW$99, DW_AT_high_pc(DW$L$_record_tones_to_file$5$E)
	.dwendtag DW$96

	.dwattr DW$95, DW_AT_end_file("H:\SPH\firmware\lab2\touchtone.c")
	.dwattr DW$95, DW_AT_end_line(0xc5)
	.dwattr DW$95, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$95

	.sect	".text"
	.global	_record_fft_buff_to_file

DW$100	.dwtag  DW_TAG_subprogram, DW_AT_name("record_fft_buff_to_file"), DW_AT_symbol_name("_record_fft_buff_to_file")
	.dwattr DW$100, DW_AT_low_pc(_record_fft_buff_to_file)
	.dwattr DW$100, DW_AT_high_pc(0x00)
	.dwattr DW$100, DW_AT_begin_file("H:\SPH\firmware\lab2\touchtone.c")
	.dwattr DW$100, DW_AT_begin_line(0xc7)
	.dwattr DW$100, DW_AT_begin_column(0x06)
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",199,36

	.dwfde DW$CIE

;******************************************************************************
;* FUNCTION NAME: _record_fft_buff_to_file                                    *
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
_record_fft_buff_to_file:
;** --------------------------------------------------------------------------*
	.dwcfa	0x0e, 0
	.dwcfa	0x09, 126, 19
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",210,1
	.dwcfa	0x0e, 0
           RET     .S2     B3                ; |210| 
           NOP             5
           ; BRANCH OCCURS {B3}              ; |210| 
	.dwattr DW$100, DW_AT_end_file("H:\SPH\firmware\lab2\touchtone.c")
	.dwattr DW$100, DW_AT_end_line(0xd2)
	.dwattr DW$100, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$100

	.sect	".text"
	.global	_receive_interrupt

DW$101	.dwtag  DW_TAG_subprogram, DW_AT_name("receive_interrupt"), DW_AT_symbol_name("_receive_interrupt")
	.dwattr DW$101, DW_AT_low_pc(_receive_interrupt)
	.dwattr DW$101, DW_AT_high_pc(0x00)
	.dwattr DW$101, DW_AT_begin_file("H:\SPH\firmware\lab2\touchtone.c")
	.dwattr DW$101, DW_AT_begin_line(0x1b1)
	.dwattr DW$101, DW_AT_begin_column(0x06)
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",433,30

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
           STW     .D2T2   B3,*SP--(8)       ; |433| 
	.dwcfa	0x0e, 8
	.dwcfa	0x80, 19, 0
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",434,2
           LDBU    .D2T2   *+DP(_channel_flag),B0 ; |434| 
           LDW     .D2T2   *+DP(_hCodec),B4  ; |434| 
           NOP             3
   [ B0]   B       .S1     L6                ; |434| 
           NOP             5
           ; BRANCHCC OCCURS {L6}            ; |434| 
;** --------------------------------------------------------------------------*
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",438,3

           CALL    .S1     _DSK6713_AIC23_read ; |438| 
||         MVKL    .S2     RL7,B3            ; |438| 

           MVKH    .S2     RL7,B3            ; |438| 
           MVK     .S2     (_right-$bss),B5  ; |438| 
           MV      .L1X    B4,A4             ; |438| 
           ADD     .L2     DP,B5,B4          ; |438| 
           NOP             1
RL7:       ; CALL OCCURS {_DSK6713_AIC23_read}  ; |438| 
;** --------------------------------------------------------------------------*
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",439,3

           LDH     .D2T2   *+DP(_right),B5   ; |439| 
||         ZERO    .L1     A5                ; |439| 
||         ZERO    .S1     A4                ; |439| 

           LDH     .D2T2   *+DP(_left),B4    ; |439| 
||         MVKH    .S1     0x3fe00000,A5     ; |439| 

           NOP             4
           ADD     .L2     B5,B4,B4          ; |439| 
           INTDP   .L2     B4,B5:B4          ; |439| 
           NOP             4
           MPYDP   .M1X    A5:A4,B5:B4,A5:A4 ; |439| 
           NOP             9
           DPTRUNC .L1     A5:A4,A3          ; |439| 
           NOP             3
           STH     .D2T1   A3,*+DP(_mix)     ; |439| 
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",440,3

           B       .S1     L7                ; |440| 
||         MVK     .S2     1,B4              ; |440| 

           STB     .D2T2   B4,*+DP(_channel_flag) ; |440| 
           NOP             4
           ; BRANCH OCCURS {L7}              ; |440| 
;** --------------------------------------------------------------------------*
L6:    
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",435,3

           CALL    .S1     _DSK6713_AIC23_read ; |435| 
||         MVKL    .S2     RL8,B3            ; |435| 

           MVKH    .S2     RL8,B3            ; |435| 
           MVK     .S2     (_left-$bss),B5   ; |435| 
           MV      .L1X    B4,A4             ; |435| 
           ADD     .L2     DP,B5,B4          ; |435| 
           NOP             1
RL8:       ; CALL OCCURS {_DSK6713_AIC23_read}  ; |435| 
;** --------------------------------------------------------------------------*
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",436,3
           ZERO    .L2     B4                ; |436| 
           STB     .D2T2   B4,*+DP(_channel_flag) ; |436| 
;** --------------------------------------------------------------------------*
L7:    
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",443,2
           MVK     .S2     1,B4              ; |443| 
           STB     .D2T2   B4,*+DP(_input_ready) ; |443| 
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",444,1
           LDW     .D2T2   *++SP(8),B3       ; |444| 
	.dwcfa	0xc0, 19
	.dwcfa	0x0e, 0
           NOP             4
           RET     .S2     B3                ; |444| 
           NOP             5
           ; BRANCH OCCURS {B3}              ; |444| 
	.dwattr DW$101, DW_AT_end_file("H:\SPH\firmware\lab2\touchtone.c")
	.dwattr DW$101, DW_AT_end_line(0x1bc)
	.dwattr DW$101, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$101

	.sect	".text"
	.global	_fft

DW$102	.dwtag  DW_TAG_subprogram, DW_AT_name("fft"), DW_AT_symbol_name("_fft")
	.dwattr DW$102, DW_AT_low_pc(_fft)
	.dwattr DW$102, DW_AT_high_pc(0x00)
	.dwattr DW$102, DW_AT_begin_file("H:\SPH\firmware\lab2\fft.c")
	.dwattr DW$102, DW_AT_begin_line(0x1c)
	.dwattr DW$102, DW_AT_begin_column(0x06)
	.dwpsn	"H:\SPH\firmware\lab2\fft.c",28,41

	.dwfde DW$CIE

;******************************************************************************
;* FUNCTION NAME: _fft                                                        *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,   *
;*                           A15,B0,B1,B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,B12,   *
;*                           B13,SP                                           *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,   *
;*                           A15,B0,B1,B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,B12,   *
;*                           B13,DP,SP                                        *
;*   Local Frame Size  : 0 Args + 20 Auto + 44 Save = 64 byte                 *
;******************************************************************************

;******************************************************************************
;*                                                                            *
;* Using -g (debug) with optimization (-o3) may disable key optimizations!    *
;*                                                                            *
;******************************************************************************
_fft:
;** --------------------------------------------------------------------------*
	.dwcfa	0x0e, 0
	.dwcfa	0x09, 126, 19

           MV      .L1X    SP,A9             ; |28| 
||         STW     .D2T1   A15,*SP--(64)     ; |28| 

	.dwcfa	0x80, 15, 0
           STW     .D2T2   B13,*+SP(60)
	.dwcfa	0x80, 29, 1
           STW     .D2T2   B12,*+SP(56)
	.dwcfa	0x80, 28, 2
           STW     .D2T2   B11,*+SP(52)
	.dwcfa	0x80, 27, 3
           STW     .D2T2   B10,*+SP(48)
	.dwcfa	0x80, 26, 4
           STW     .D2T2   B3,*+SP(44)
	.dwcfa	0x80, 19, 5
           STW     .D1T1   A14,*-A9(24)
	.dwcfa	0x80, 14, 6
           STW     .D1T1   A13,*-A9(28)
	.dwcfa	0x80, 13, 7
           STW     .D1T1   A12,*-A9(32)
	.dwcfa	0x80, 12, 8
           STW     .D2T1   A11,*+SP(28)
	.dwcfa	0x80, 11, 9
           STW     .D2T1   A10,*+SP(24)
	.dwcfa	0x80, 10, 10
DW$103	.dwtag  DW_TAG_formal_parameter, DW_AT_name("data"), DW_AT_symbol_name("_data")
	.dwattr DW$103, DW_AT_type(*DW$T$25)
	.dwattr DW$103, DW_AT_location[DW_OP_reg4]
DW$104	.dwtag  DW_TAG_formal_parameter, DW_AT_name("nn"), DW_AT_symbol_name("_nn")
	.dwattr DW$104, DW_AT_type(*DW$T$11)
	.dwattr DW$104, DW_AT_location[DW_OP_reg20]
DW$105	.dwtag  DW_TAG_variable, DW_AT_name("nn"), DW_AT_symbol_name("_nn")
	.dwattr DW$105, DW_AT_type(*DW$T$100)
	.dwattr DW$105, DW_AT_location[DW_OP_reg18]
DW$106	.dwtag  DW_TAG_variable, DW_AT_name("data"), DW_AT_symbol_name("_data")
	.dwattr DW$106, DW_AT_type(*DW$T$101)
	.dwattr DW$106, DW_AT_location[DW_OP_reg13]
DW$107	.dwtag  DW_TAG_variable, DW_AT_name("dftlen"), DW_AT_symbol_name("_dftlen")
	.dwattr DW$107, DW_AT_type(*DW$T$13)
	.dwattr DW$107, DW_AT_location[DW_OP_breg31 8]
DW$108	.dwtag  DW_TAG_variable, DW_AT_name("n"), DW_AT_symbol_name("_n")
	.dwattr DW$108, DW_AT_type(*DW$T$11)
	.dwattr DW$108, DW_AT_location[DW_OP_reg26]
DW$109	.dwtag  DW_TAG_variable, DW_AT_name("j"), DW_AT_symbol_name("_j")
	.dwattr DW$109, DW_AT_type(*DW$T$13)
	.dwattr DW$109, DW_AT_location[DW_OP_reg22]
DW$110	.dwtag  DW_TAG_variable, DW_AT_name("istep"), DW_AT_symbol_name("_istep")
	.dwattr DW$110, DW_AT_type(*DW$T$13)
	.dwattr DW$110, DW_AT_location[DW_OP_reg10]
DW$111	.dwtag  DW_TAG_variable, DW_AT_name("wtemp"), DW_AT_symbol_name("_wtemp")
	.dwattr DW$111, DW_AT_type(*DW$T$17)
	.dwattr DW$111, DW_AT_location[DW_OP_reg8]
DW$112	.dwtag  DW_TAG_variable, DW_AT_name("w_real_cur"), DW_AT_symbol_name("_w_real_cur")
	.dwattr DW$112, DW_AT_type(*DW$T$17)
	.dwattr DW$112, DW_AT_location[DW_OP_reg6]
DW$113	.dwtag  DW_TAG_variable, DW_AT_name("w_imag_cur"), DW_AT_symbol_name("_w_imag_cur")
	.dwattr DW$113, DW_AT_type(*DW$T$17)
	.dwattr DW$113, DW_AT_location[DW_OP_reg24]
DW$114	.dwtag  DW_TAG_variable, DW_AT_name("w_real_incr"), DW_AT_symbol_name("_w_real_incr")
	.dwattr DW$114, DW_AT_type(*DW$T$17)
	.dwattr DW$114, DW_AT_location[DW_OP_reg28]
DW$115	.dwtag  DW_TAG_variable, DW_AT_name("w_imag_incr"), DW_AT_symbol_name("_w_imag_incr")
	.dwattr DW$115, DW_AT_type(*DW$T$17)
	.dwattr DW$115, DW_AT_location[DW_OP_breg31 16]
DW$116	.dwtag  DW_TAG_variable, DW_AT_name("tempi"), DW_AT_symbol_name("_tempi")
	.dwattr DW$116, DW_AT_type(*DW$T$16)
	.dwattr DW$116, DW_AT_location[DW_OP_reg21]
DW$117	.dwtag  DW_TAG_variable, DW_AT_name("m"), DW_AT_symbol_name("_m")
	.dwattr DW$117, DW_AT_type(*DW$T$13)
	.dwattr DW$117, DW_AT_location[DW_OP_reg24]
DW$118	.dwtag  DW_TAG_variable, DW_AT_name("m"), DW_AT_symbol_name("_m")
	.dwattr DW$118, DW_AT_type(*DW$T$13)
	.dwattr DW$118, DW_AT_location[DW_OP_reg18]
DW$119	.dwtag  DW_TAG_variable, DW_AT_name("i"), DW_AT_symbol_name("_i")
	.dwattr DW$119, DW_AT_type(*DW$T$13)
	.dwattr DW$119, DW_AT_location[DW_OP_reg10]
DW$120	.dwtag  DW_TAG_variable, DW_AT_name("i"), DW_AT_symbol_name("_i")
	.dwattr DW$120, DW_AT_type(*DW$T$13)
	.dwattr DW$120, DW_AT_location[DW_OP_reg18]
DW$121	.dwtag  DW_TAG_variable, DW_AT_name("tempr"), DW_AT_symbol_name("_tempr")
	.dwattr DW$121, DW_AT_type(*DW$T$16)
	.dwattr DW$121, DW_AT_location[DW_OP_reg29]
DW$122	.dwtag  DW_TAG_variable, DW_AT_name("tempr"), DW_AT_symbol_name("_tempr")
	.dwattr DW$122, DW_AT_type(*DW$T$16)
	.dwattr DW$122, DW_AT_location[DW_OP_reg3]
DW$123	.dwtag  DW_TAG_variable, DW_AT_name("tempr"), DW_AT_symbol_name("_tempr")
	.dwattr DW$123, DW_AT_type(*DW$T$16)
	.dwattr DW$123, DW_AT_location[DW_OP_reg20]

           MV      .L1     A4,A13            ; |28| 
||         MV      .L2     B4,B2             ; |28| 

	.dwpsn	"H:\SPH\firmware\lab2\fft.c",34,2
           ADD     .L2     B2,B2,B10         ; |34| 
           MV      .L1X    B10,A1            ; |34| 

   [!A1]   B       .S1     L13               ; |34| 
|| [ A1]   CMPLTU  .L2     B2,2,B4

   [ A1]   XOR     .L2     1,B4,B12
           NOP             4
           ; BRANCHCC OCCURS {L13}           ; |34| 
;** --------------------------------------------------------------------------*
	.dwpsn	"H:\SPH\firmware\lab2\fft.c",35,2
           ZERO    .L2     B7:B6             ; |35| 
	.dwpsn	"H:\SPH\firmware\lab2\fft.c",38,7

           ZERO    .L1     A11:A10           ; |38| 
||         MV      .S1X    B6,A3

;** --------------------------------------------------------------------------*
;**   BEGIN LOOP L8
;** --------------------------------------------------------------------------*
L8:    
DW$L$_fft$3$B:
	.dwpsn	"H:\SPH\firmware\lab2\fft.c",39,3

           EXTU    .S1     A11,24,24,A4      ; |39| 
||         EXTU    .S2     B7,24,24,B4       ; |39| 

           CMPEQ   .L1X    B4,A4,A1          ; |39| 
   [!A1]   CMPGTU  .L2X    B4,A4,B0          ; |39| 
   [ A1]   CMPGTU  .L2X    B6,A10,B0         ; |39| 
	.dwpsn	"H:\SPH\firmware\lab2\fft.c",41,4
   [ B0]   LDW     .D1T1   *+A13[A10],A4     ; |41| 
           NOP             4

   [ B0]   LDW     .D1T1   *+A13[A3],A4      ; |41| 
|| [ B0]   MV      .L2X    A4,B3             ; |41| 

           NOP             4

   [ B0]   MV      .L1X    B3,A4
|| [ B0]   MV      .L2X    A4,B13            ; |41| 

   [ B0]   MV      .L1X    B13,A3            ; |41| 
|| [ B0]   STW     .D1T1   A4,*+A13[A3]      ; |41| 

   [ B0]   STW     .D1T1   A3,*+A13[A10]     ; |41| 
	.dwpsn	"H:\SPH\firmware\lab2\fft.c",42,4

   [ B0]   ADD     .L1     1,A10,A14         ; |42| 
|| [ B0]   ADD     .S1X    1,B6,A12          ; |42| 

   [ B0]   LDW     .D1T1   *+A13[A14],A15    ; |42| 
   [ B0]   LDW     .D1T1   *+A13[A12],A3     ; |42| 
           NOP             3
   [ B0]   STW     .D1T1   A15,*+A13[A12]    ; |42| 
   [ B0]   STW     .D1T1   A3,*+A13[A14]     ; |42| 
	.dwpsn	"H:\SPH\firmware\lab2\fft.c",46,3

           MV      .L2     B2,B8             ; |46| 
||         ZERO    .S2     B9                ; |46| 

	.dwpsn	"H:\SPH\firmware\lab2\fft.c",50,10

           CMPLTU  .L2     B7:B6,B2,B4       ; |50| 
||         MV      .L1X    B9,A9

           XOR     .L2     1,B4,B4           ; |50| 
||         SUB     .L1X    B7,A9,A4          ; |51| 

           AND     .L2     B12,B4,B0         ; |50| 
||         MV      .L1X    B8,A8

   [!B0]   B       .S1     L12               ; |50| 
||         MV      .L1X    B6,A0

           NOP             5
           ; BRANCHCC OCCURS {L12}           ; |50| 
DW$L$_fft$3$E:
;** --------------------------------------------------------------------------*
DW$L$_fft$4$B:

           SUBU    .L1     A0,A8,A1:A0       ; |51| (P) <0,0>  ^ 
||         MVC     .S2     CSR,B7

           SHRU    .S1     A9:A8,1,A9:A8     ; |52| (P) <0,1>  ^ 
||         ADD     .L1     A4,A1,A5          ; |51| 
||         ADD     .D1     A4,A1,A1          ; |51| 
||         AND     .L2     -2,B7,B6
||         MVK     .S2     0x1,B1

           EXTU    .S1     A9,24,24,A3       ; |50| (P) <0,2>  ^ 
||         MVC     .S2     B6,CSR            ; interrupts off
||         CMPLTU  .L1     A9:A8,2,A4        ; |50| (P) <0,2> 
||         MV      .D1     A0,A6             ; |50| (P) <0,3>  ^ 
||         MV      .L2X    A8,B5             ; |50| (P) <0,6>  ^ 

           EXTU    .S1     A1,24,24,A2       ; |50| (P) <0,3>  ^ 
||         MV      .L2X    A3,B6             ; |50| (P) <0,3>  ^ Define a twin register

           CMPEQ   .L2X    A2,B6,B0          ; |50| (P) <0,4>  ^ 

   [ B0]   CMPLTU  .L1     A0,A8,A7          ; |50| (P) <0,5>  ^ 
||         XOR     .L2X    1,A4,B8           ; |50| (P) <0,5> 
||         SUB     .S1     A1,A9,A4          ; |51| (P) <1,0> 

   [!B0]   CMPLTU  .L1     A2,A3,A7          ; |50| (P) <0,6> 
||         MV      .L2X    A9,B4             ; |52| 

           XOR     .S1     1,A7,A3           ; |50| (P) <0,7>  ^ 
||         SUBU    .L1     A0,A8,A1:A0       ; |51| (P) <1,0>  ^ 

           AND     .L2X    A3,B8,B0          ; |50| (P) <0,8>  ^ 
||         SHRU    .S1     A9:A8,1,A9:A8     ; |52| (P) <1,1>  ^ 

DW$L$_fft$4$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 50
;*      Loop opening brace source line   : 50
;*      Loop closing brace source line   : 53
;*      Known Minimum Trip Count         : 1                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 4
;*      Unpartitioned Resource Bound     : 4
;*      Partitioned Resource Bound(*)    : 6
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     4        1     
;*      .S units                     3        1     
;*      .D units                     0        0     
;*      .M units                     0        0     
;*      .X cross paths               0        6*    
;*      .T address paths             0        0     
;*      Long read paths              2        0     
;*      Long write paths             2        0     
;*      Logical  ops (.LS)           1        5     (.L or .S unit)
;*      Addition ops (.LSD)          4        2     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             4        4     
;*      Bound(.L .S .D .LS .LSD)     4        3     
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 6  Did not find schedule
;*         ii = 7  Schedule found with 3 iterations in parallel
;*
;*      Register Usage Table:
;*          +---------------------------------+
;*          |AAAAAAAAAAAAAAAA|BBBBBBBBBBBBBBBB|
;*          |0000000000111111|0000000000111111|
;*          |0123456789012345|0123456789012345|
;*          |----------------+----------------|
;*       0: |**  ******      |**  **          |
;*       1: |** *******      | *  ***         |
;*       2: |**********      | *  ***         |
;*       3: |**********      |**  **          |
;*       4: |**** *****      |**  ***         |
;*       5: |**   *****      | *  ***         |
;*       6: |** *******      | *  ***         |
;*          +---------------------------------+
;*
;*      Done
;*
;*      Collapsed epilog stages     : 2
;*      Prolog not removed
;*      Collapsed prolog stages     : 0
;*
;*      Minimum required memory pad : 0 bytes
;*
;*      Minimum safe trip count     : 1
;*----------------------------------------------------------------------------*
;*       SETUP CODE
;*
;*                  MVK             0x1,B1
;*                  ZERO            A6
;*                  ZERO            A5
;*                  ZERO            B5
;*                  ZERO            B4
;*
;*        SINGLE SCHEDULED ITERATION
;*
;*        C198:
;*   0              SUB     .D1     A1,A9,A4          ; |51| 
;*     ||           SUBU    .L1     A0,A8,A1:A0       ; |51|  ^ 
;*   1              SHRU    .S1     A9:A8,1,A9:A8     ; |52|  ^ 
;*   2              ADD     .D1     A4,A1,A1          ; |51|  ^ 
;*     ||           MV      .L2X    A9,B6             ; |52| Define a twin register
;*     ||           EXTU    .S1     A9,24,24,A3       ; |50|  ^ 
;*     ||           CMPLTU  .L1     A9:A8,2,A4        ; |50| 
;*   3              EXTU    .S1     A1,24,24,A2       ; |50|  ^ 
;*     ||           MV      .L2X    A3,B6             ; |50|  ^ Define a twin register
;*     ||   [ B1]   MV      .D2     B6,B4             ; |50| 
;*     ||   [ B1]   MV      .L1     A1,A5             ; |50| 
;*     ||   [ B1]   MV      .D1     A0,A6             ; |50|  ^ 
;*   4              CMPEQ   .L2X    A2,B6,B0          ; |50|  ^ 
;*   5      [ B0]   CMPLTU  .L1     A0,A8,A7          ; |50|  ^ 
;*     ||           XOR     .L2X    1,A4,B6           ; |50| 
;*   6      [!B0]   CMPLTU  .L1     A2,A3,A7          ; |50| 
;*     ||   [ B1]   MV      .L2X    A8,B5             ; |50|  ^ 
;*   7              XOR     .S1     1,A7,A3           ; |50|  ^ 
;*   8              AND     .L2X    A3,B6,B0          ; |50|  ^ 
;*   9      [!B0]   ZERO    .S2     B1                ; |50|  ^ 
;*  10      [ B1]   B       .S2     C198              ; |50| 
;*  11              NOP             5
;*  16              ; BRANCHCC OCCURS {C198}          ; |50| 
;*
;*       RESTORE CODE
;*
;*                  MV              B4,A9
;*                  MV              B5,A8
;*                  MV              A5,A1
;*                  MV              A6,A0
;*----------------------------------------------------------------------------*
L9:    ; PIPED LOOP PROLOG
;** --------------------------------------------------------------------------*
L10:    ; PIPED LOOP KERNEL
DW$L$_fft$6$B:

   [!B0]   ZERO    .S2     B1                ; |50| <0,9>  ^ 
||         MV      .L2X    A9,B6             ; |52| <1,2> Define a twin register
||         CMPLTU  .L1     A9:A8,2,A4        ; |50| <1,2> 
||         ADD     .D1     A4,A1,A1          ; |51| <1,2>  ^ 
||         EXTU    .S1     A9,24,24,A3       ; |50| <1,2>  ^ 

   [ B1]   B       .S2     L10               ; |50| <0,10> 
|| [ B1]   MV      .D2     B6,B4             ; |50| <1,3> 
|| [ B1]   MV      .L1     A1,A5             ; |50| <1,3> 
|| [ B1]   MV      .D1     A0,A6             ; |50| <1,3>  ^ 
||         EXTU    .S1     A1,24,24,A2       ; |50| <1,3>  ^ 
||         MV      .L2X    A3,B6             ; |50| <1,3>  ^ Define a twin register

           CMPEQ   .L2X    A2,B6,B0          ; |50| <1,4>  ^ 

           XOR     .L2X    1,A4,B6           ; |50| <1,5> 
|| [ B0]   CMPLTU  .L1     A0,A8,A7          ; |50| <1,5>  ^ 

   [ B1]   MV      .L2X    A8,B5             ; |50| <1,6>  ^ 
|| [!B0]   CMPLTU  .L1     A2,A3,A7          ; |50| <1,6> 

           XOR     .S1     1,A7,A3           ; |50| <1,7>  ^ 
||         SUB     .D1     A1,A9,A4          ; |51| <2,0> 
||         SUBU    .L1     A0,A8,A1:A0       ; |51| <2,0>  ^ 

           AND     .L2X    A3,B6,B0          ; |50| <1,8>  ^ 
||         SHRU    .S1     A9:A8,1,A9:A8     ; |52| <2,1>  ^ 

DW$L$_fft$6$E:
;** --------------------------------------------------------------------------*
L11:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*
DW$L$_fft$8$B:

           MV      .L2X    A6,B6
||         MVC     .S2     B7,CSR            ; interrupts on

           MV      .L2X    A5,B7
||         MV      .S2     B4,B9
||         MV      .D2     B5,B8

DW$L$_fft$8$E:
;** --------------------------------------------------------------------------*
L12:    
DW$L$_fft$9$B:
	.dwpsn	"H:\SPH\firmware\lab2\fft.c",57,3

           MV      .S2     B7,B4             ; |57| 
||         ADDU    .L2     B6,B9:B8,B7:B6    ; |57| 

           ADD     .L2     B4,B7,B7          ; |57| 
	.dwpsn	"H:\SPH\firmware\lab2\fft.c",38,13
           MVK     .S1     2,A3              ; |38| 
           ADDU    .L1     A3,A11:A10,A11:A10 ; |38| 
           CMPLTU  .L1X    A11:A10,B10,A1    ; |38| 

   [ A1]   B       .S1     L8                ; |38| 
|| [ A1]   MV      .L1X    B6,A3

           NOP             5
           ; BRANCHCC OCCURS {L8}            ; |38| 
DW$L$_fft$9$E:
;** --------------------------------------------------------------------------*
L13:    
	.dwpsn	"H:\SPH\firmware\lab2\fft.c",69,9
           CMPGTU  .L2     B10,2,B0          ; |69| 
   [!B0]   B       .S1     L21               ; |69| 
           NOP             5
           ; BRANCHCC OCCURS {L21}           ; |69| 
;** --------------------------------------------------------------------------*
	.dwpsn	"H:\SPH\firmware\lab2\fft.c",67,2

           MVK     .S1     0x2,A4            ; |67| 
||         ZERO    .L1     A3                ; |67| 

           STW     .D2T1   A3,*+SP(12)       ; |67| 
           STW     .D2T1   A4,*+SP(8)        ; |67| 
;** --------------------------------------------------------------------------*
;**   BEGIN LOOP L14
;** --------------------------------------------------------------------------*
L14:    
DW$L$_fft$12$B:
	.dwpsn	"H:\SPH\firmware\lab2\fft.c",70,3
           LDW     .D2T1   *+SP(12),A5
           LDW     .D2T1   *+SP(8),A4
           NOP             4
           SHL     .S1     A5:A4,1,A11:A10   ; |70| 
	.dwpsn	"H:\SPH\firmware\lab2\fft.c",73,3

           CALL    .S1     __fltuld          ; |73| 
||         MVKL    .S2     RL10,B3           ; |73| 
||         MV      .L1     A5,A12            ; |73| 
||         MV      .D1     A4,A15            ; |73| 

           MVKH    .S2     RL10,B3           ; |73| 
           NOP             4
RL10:      ; CALL OCCURS {__fltuld}          ; |73| 
DW$L$_fft$12$E:
;** --------------------------------------------------------------------------*
DW$L$_fft$13$B:
           CALL    .S1     __divd            ; |73| 
           MV      .L2X    A5,B5             ; |73| 
           MVKL    .S1     0x401921fb,A5     ; |73| 

           MVKL    .S1     0x54442d1c,A4     ; |73| 
||         MV      .L2X    A4,B4             ; |73| 

           MVKH    .S1     0x401921fb,A5     ; |73| 
||         MVKL    .S2     RL11,B3           ; |73| 

           MVKH    .S1     0x54442d1c,A4     ; |73| 
||         MVKH    .S2     RL11,B3           ; |73| 

RL11:      ; CALL OCCURS {__divd}            ; |73| 
           CALL    .S1     _cos              ; |73| 
           ZERO    .L2     B4                ; |73| 
           SET     .S2     B4,31,31,B4       ; |73| 
           XOR     .L1X    A5,B4,A14         ; |73| 
           MVKL    .S2     RL12,B3           ; |73| 

           MV      .L1     A14,A5            ; |73| 
||         MVKH    .S2     RL12,B3           ; |73| 
||         MV      .L2X    A4,B11            ; |73| 

RL12:      ; CALL OCCURS {_cos}              ; |73| 
           MV      .L2X    A4,B12            ; |73| 
           MV      .L2X    A5,B13            ; |73| 
	.dwpsn	"H:\SPH\firmware\lab2\fft.c",74,3
           CALL    .S1     _sin              ; |74| 
           MVKL    .S2     RL13,B3           ; |74| 
           MV      .L1X    B11,A4            ; |74| 
           MV      .S1     A14,A5            ; |74| 
           MVKH    .S2     RL13,B3           ; |74| 
           NOP             1
RL13:      ; CALL OCCURS {_sin}              ; |74| 
DW$L$_fft$13$E:
;** --------------------------------------------------------------------------*
DW$L$_fft$14$B:
           STW     .D2T1   A4,*+SP(16)       ; |74| 
           STW     .D2T1   A5,*+SP(20)       ; |74| 
	.dwpsn	"H:\SPH\firmware\lab2\fft.c",78,14

           MV      .L1     A15,A4
||         MV      .S1     A12,A5

           CMPEQ   .L1     A5:A4,0,A1        ; |78| 
   [ A1]   B       .S1     L20               ; |78| 
           NOP             5
           ; BRANCHCC OCCURS {L20}           ; |78| 
DW$L$_fft$14$E:
;** --------------------------------------------------------------------------*
DW$L$_fft$15$B:
	.dwpsn	"H:\SPH\firmware\lab2\fft.c",75,3

           ZERO    .L1     A7                ; |75| 
||         ZERO    .S1     A6                ; |75| 

           MVKH    .S1     0x3ff00000,A7     ; |75| 
	.dwpsn	"H:\SPH\firmware\lab2\fft.c",76,3
           ZERO    .L2     B9:B8             ; |76| 
	.dwpsn	"H:\SPH\firmware\lab2\fft.c",78,8
           ZERO    .L2     B3:B2             ; |78| 
DW$L$_fft$15$E:
;** --------------------------------------------------------------------------*
;**   BEGIN LOOP L15
;** --------------------------------------------------------------------------*
L15:    
DW$L$_fft$16$B:
	.dwpsn	"H:\SPH\firmware\lab2\fft.c",80,9
	.dwpsn	"H:\SPH\firmware\lab2\fft.c",80,15

           CMPLTU  .L2     B3:B2,B10,B0      ; |80| 
||         LDW     .D2T1   *+SP(8),A3

   [!B0]   B       .S1     L19               ; |80| 
           NOP             5
           ; BRANCHCC OCCURS {L19}           ; |80| 
DW$L$_fft$16$E:
;** --------------------------------------------------------------------------*
DW$L$_fft$17$B:

           MVC     .S2     CSR,B1
||         MV      .L1X    B2,A8
||         SHL     .S1     A3,2,A14
||         MV      .L2     B3,B0
||         MV      .D1     A3,A12

           AND     .L2     -2,B1,B4
||         ADD     .L1X    A3,B2,A4          ; |82| 

           MVC     .S2     B4,CSR            ; interrupts off
||         ADD     .L1     1,A4,A3           ; |82| (P) <0,1> 
||         ADDAW   .D1     A14,A8,A4         ; |82| (P) <0,0> 
||         MV      .S1X    B10,A2

DW$L$_fft$17$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 80
;*      Loop opening brace source line   : 80
;*      Loop closing brace source line   : 96
;*      Known Minimum Trip Count         : 1                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 63
;*      Unpartitioned Resource Bound     : 8
;*      Partitioned Resource Bound(*)    : 14
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     7        5     
;*      .S units                     2        3     
;*      .D units                     8        3     
;*      .M units                     8        8     
;*      .X cross paths              12        6     
;*      .T address paths             5        5     
;*      Long read paths              4        2     
;*      Long write paths             1        0     
;*      Logical  ops (.LS)           4        2     (.L or .S unit)
;*      Addition ops (.LSD)          9        3     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             7        5     
;*      Bound(.L .S .D .LS .LSD)    10        6     
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 63 Did not find schedule
;*         ii = 64 Did not find schedule
;*         ii = 65 Schedule found with 2 iterations in parallel
;*
;*      Register Usage Table:
;*          +---------------------------------+
;*          |AAAAAAAAAAAAAAAA|BBBBBBBBBBBBBBBB|
;*          |0000000000111111|0000000000111111|
;*          |0123456789012345|0123456789012345|
;*          |----------------+----------------|
;*       0: |  *** *** ***** |*       **      |
;*       1: |  **  ********* |*       **      |
;*       2: |  **  ********* |*       **      |
;*       3: |  **  ********* |*       **      |
;*       4: |  **  ********* |*       **      |
;*       5: |  *** ********* |*       **      |
;*       6: |  ************* |*       **      |
;*       7: |  **  ********* |*       **      |
;*       8: |****  ********* |*     ****      |
;*       9: |****  ********* |*     ****      |
;*      10: |****  ********* |*     ****      |
;*      11: |****  ********* |*     ****      |
;*      12: |****  ********* |*     ****      |
;*      13: |****  ********* |*     ****      |
;*      14: |****  ********* |*     ****      |
;*      15: |****  ********* |*     ****      |
;*      16: |****  ********* |*     ****      |
;*      17: |****  ********* |*     ****      |
;*      18: |*************** |*   ******      |
;*      19: |  ************* |*   **  **      |
;*      20: |  **  ********* |*       **      |
;*      21: |  **  ********* |*       **      |
;*      22: |  **  ********* |*       **      |
;*      23: |  **  ********* |*       **      |
;*      24: |  **  ********* |*       **      |
;*      25: |  ************* |*   ******      |
;*      26: |  ************* |*   **  **      |
;*      27: |  ************* |*   **  **      |
;*      28: |  **  ********* |*       **      |
;*      29: |  **  ********* |*   *   **      |
;*      30: |  *** ********* |*   * * **      |
;*      31: |  **  ********* |*     * **      |
;*      32: |  **  ********* |*     * **      |
;*      33: |  *** *** ***** |*   *** **      |
;*      34: |  *** *** ***** |*   * * **      |
;*      35: |  ** **** ***** |*     * **      |
;*      36: |  ** **** ***** |*     * **      |
;*      37: |  ** **** ***** |*    ** **      |
;*      38: |  ** **** ***** |*   *** **      |
;*      39: |  ** **** ***** |*   *** **      |
;*      40: |  ******* ***** |*   *** **      |
;*      41: |  ** **** ***** |*   * * **      |
;*      42: |  * ***** ***** |*   * * **      |
;*      43: |  * ***** ***** |*   * * **      |
;*      44: |  ******* ***** |*   * * **      |
;*      45: |  *  **** ***** |*   * * **      |
;*      46: |  *  **** ***** |*   * * **      |
;*      47: |  *  **** ***** |*   * * **      |
;*      48: |  *  **** ***** |*   * * **      |
;*      49: |  *  **** ***** |*   * * **      |
;*      50: |  ** **** ***** |*   * * **      |
;*      51: |  *  **** ***** |*   *   **      |
;*      52: |  *  **** ***** |*   *   **      |
;*      53: |  *  **** ***** |*   *   **      |
;*      54: |  ** **** ***** |*   *   **      |
;*      55: |  *  **** ***** |*   *   **      |
;*      56: |  *  ********** |*   *   **      |
;*      57: |  *  ********** |    *   **      |
;*      58: | **  ********** |    *   **      |
;*      59: | **  ********** |    *   **      |
;*      60: |  ** ********** |    *   **      |
;*      61: |  *  ********** |        **      |
;*      62: |  *  ********** |        **      |
;*      63: |  *  ********** |        **      |
;*      64: |  ******* ***** |*   *   **      |
;*          +---------------------------------+
;*
;*      Done
;*
;*      Collapsed epilog stages     : 1
;*      Prolog not removed
;*      Collapsed prolog stages     : 0
;*
;*      Minimum required memory pad : 0 bytes
;*
;*      Minimum safe trip count     : 1
;*----------------------------------------------------------------------------*
;*        SINGLE SCHEDULED ITERATION
;*
;*        C157:
;*   0              ADD     .L1     A12,A8,A3         ; |82| 
;*     ||           ADDAW   .D1     A14,A8,A4         ; |82| 
;*     ||           MV      .S2X    A9,B0             ; |80| 
;*   1              ADD     .L1     1,A3,A3           ; |82| 
;*   2              LDW     .D1T1   *+A13[A3],A4      ; |82|  ^ 
;*     ||           ADD     .L1     A13,A4,A9         ; |82| 
;*   3              LDW     .D1T1   *A9,A5            ; |82|  ^ 
;*   4              NOP             4
;*   8              SPDP    .S1     A4,A1:A0          ; |82|  ^ 
;*     ||           SPDP    .S2X    A5,B7:B6          ; |82|  ^ 
;*   9              NOP             1
;*  10              MPYDP   .M1X    B9:B8,A1:A0,A5:A4 ; |82|  ^ 
;*     ||           MPYDP   .M2X    A7:A6,B7:B6,B5:B4 ; |82|  ^ 
;*  11              NOP             6
;*  17              MPYDP   .M1     A7:A6,A1:A0,A5:A4 ; |87| 
;*     ||           MPYDP   .M2     B9:B8,B7:B6,B5:B4 ; |87| 
;*  18              NOP             2
;*  20              SUBDP   .L2X    B5:B4,A5:A4,B7:B6 ; |82|  ^ 
;*  21              NOP             6
;*  27              DPSP    .L2     B7:B6,B4          ; |82|  ^ 
;*     ||           LDW     .D1T1   *+A13[A8],A4      ; |90| 
;*  28              ADDDP   .L2X    B5:B4,A5:A4,B5:B4 ; |87| 
;*  29              NOP             2
;*  31              MV      .L2     B4,B6             ; |82| Split a long life
;*  32              SUBSP   .L2X    A4,B4,B4          ; |90|  ^ 
;*  33              NOP             1
;*  34              MV      .L1     A9,A4             ; |82| Split a long life
;*  35              DPSP    .L2     B5:B4,B5          ; |87| 
;*  36              STW     .D1T2   B4,*A4            ; |90|  ^ 
;*     ||           ADD     .L1     1,A8,A5           ; |91| 
;*  37              LDW     .D1T1   *+A13[A5],A4      ; |91|  ^ 
;*  38              NOP             1
;*  39              MV      .L2     B5,B4             ; |87| Split a long life
;*  40              NOP             2
;*  42              SUBSP   .L1X    A4,B5,A3          ; |91|  ^ 
;*  43              MV      .L1     A3,A4             ; |82| Split a long life
;*  44              NOP             2
;*  46              STW     .D1T1   A3,*+A13[A4]      ; |91|  ^ 
;*  47              LDW     .D1T1   *+A13[A8],A3      ; |94|  ^ 
;*  48              NOP             4
;*  52              ADDSP   .L1X    B6,A3,A3          ; |94|  ^ 
;*  53              NOP             3
;*  56              STW     .D1T1   A3,*+A13[A8]      ; |94|  ^ 
;*  57              LDW     .D1T1   *+A13[A5],A3      ; |95|  ^ 
;*     ||           ADDU    .L1     A8,A11:A10,A9:A8  ; |80| 
;*  58              ADD     .L1X    B0,A9,A9          ; |80| 
;*  59              CMPLTU  .L1     A9:A8,A2,A1       ; |80| 
;*  60              NOP             1
;*  61      [ A1]   B       .S2     C157              ; |80| 
;*  62              ADDSP   .L2X    B4,A3,B4          ; |95|  ^ 
;*  63              NOP             3
;*  66              STW     .D1T2   B4,*+A13[A5]      ; |95|  ^ 
;*  67              ; BRANCHCC OCCURS {C157}          ; |80| 
;*----------------------------------------------------------------------------*
L16:    ; PIPED LOOP PROLOG
;** --------------------------------------------------------------------------*
L17:    ; PIPED LOOP KERNEL
DW$L$_fft$19$B:

           ADD     .L1     A13,A4,A9         ; |82| <0,2> 
||         LDW     .D1T1   *+A13[A3],A4      ; |82| <0,2>  ^ 

           LDW     .D1T1   *A9,A5            ; |82| <0,3>  ^ 
           NOP             4

           SPDP    .S1     A4,A1:A0          ; |82| <0,8>  ^ 
||         SPDP    .S2X    A5,B7:B6          ; |82| <0,8>  ^ 

           NOP             1

           MPYDP   .M1X    B9:B8,A1:A0,A5:A4 ; |82| <0,10>  ^ 
||         MPYDP   .M2X    A7:A6,B7:B6,B5:B4 ; |82| <0,10>  ^ 

           NOP             6

           MPYDP   .M1     A7:A6,A1:A0,A5:A4 ; |87| <0,17> 
||         MPYDP   .M2     B9:B8,B7:B6,B5:B4 ; |87| <0,17> 

           NOP             2
           SUBDP   .L2X    B5:B4,A5:A4,B7:B6 ; |82| <0,20>  ^ 
           NOP             6

           LDW     .D1T1   *+A13[A8],A4      ; |90| <0,27> 
||         DPSP    .L2     B7:B6,B4          ; |82| <0,27>  ^ 

           ADDDP   .L2X    B5:B4,A5:A4,B5:B4 ; |87| <0,28> 
           NOP             2
           MV      .L2     B4,B6             ; |82| <0,31> Split a long life
           SUBSP   .L2X    A4,B4,B4          ; |90| <0,32>  ^ 
           NOP             1
           MV      .L1     A9,A4             ; |82| <0,34> Split a long life
           DPSP    .L2     B5:B4,B5          ; |87| <0,35> 

           ADD     .L1     1,A8,A5           ; |91| <0,36> 
||         STW     .D1T2   B4,*A4            ; |90| <0,36>  ^ 

           LDW     .D1T1   *+A13[A5],A4      ; |91| <0,37>  ^ 
           NOP             1
           MV      .L2     B5,B4             ; |87| <0,39> Split a long life
           NOP             2
           SUBSP   .L1X    A4,B5,A3          ; |91| <0,42>  ^ 
           MV      .L1     A3,A4             ; |82| <0,43> Split a long life
           NOP             2
           STW     .D1T1   A3,*+A13[A4]      ; |91| <0,46>  ^ 
           LDW     .D1T1   *+A13[A8],A3      ; |94| <0,47>  ^ 
           NOP             4
           ADDSP   .L1X    B6,A3,A3          ; |94| <0,52>  ^ 
           NOP             3
           STW     .D1T1   A3,*+A13[A8]      ; |94| <0,56>  ^ 

           LDW     .D1T1   *+A13[A5],A3      ; |95| <0,57>  ^ 
||         ADDU    .L1     A8,A11:A10,A9:A8  ; |80| <0,57> 

           ADD     .L1X    B0,A9,A9          ; |80| <0,58> 
           CMPLTU  .L1     A9:A8,A2,A1       ; |80| <0,59> 
           NOP             1
   [ A1]   B       .S2     L17               ; |80| <0,61> 
           ADDSP   .L2X    B4,A3,B4          ; |95| <0,62>  ^ 
           NOP             2

           MV      .S2X    A9,B0             ; |80| <1,0> 
||         ADDAW   .D1     A14,A8,A4         ; |82| <1,0> 
||         ADD     .L1     A12,A8,A3         ; |82| <1,0> 

           STW     .D1T2   B4,*+A13[A5]      ; |95| <0,66>  ^ 
||         ADD     .L1     1,A3,A3           ; |82| <1,1> 

DW$L$_fft$19$E:
;** --------------------------------------------------------------------------*
L18:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*
DW$L$_fft$21$B:

           MV      .L2X    A2,B10
||         MVC     .S2     B1,CSR            ; interrupts on
||         STW     .D2T1   A12,*+SP(8)

DW$L$_fft$21$E:
;** --------------------------------------------------------------------------*
L19:    
DW$L$_fft$22$B:
	.dwpsn	"H:\SPH\firmware\lab2\fft.c",99,4

           MV      .L1     A6,A8             ; |99| 
||         MV      .S1     A7,A9             ; |99| 

	.dwpsn	"H:\SPH\firmware\lab2\fft.c",101,4

           LDW     .D2T1   *+SP(20),A5
||         MPYDP   .M2X    B13:B12,A9:A8,B5:B4 ; |101| 

           LDW     .D2T1   *+SP(16),A4
           NOP             4
           MPYDP   .M1X    A5:A4,B9:B8,A7:A6 ; |101| 
           NOP             9
           SUBDP   .L1X    B5:B4,A7:A6,A7:A6 ; |101| 
	.dwpsn	"H:\SPH\firmware\lab2\fft.c",102,4

           MPYDP   .M1     A5:A4,A9:A8,A5:A4 ; |102| 
||         MPYDP   .M2     B13:B12,B9:B8,B5:B4 ; |102| 

           NOP             9
           ADDDP   .L2X    A5:A4,B5:B4,B9:B8 ; |102| 
	.dwpsn	"H:\SPH\firmware\lab2\fft.c",78,14

           LDW     .D2T1   *+SP(12),A3       ; |78| 
||         MVK     .S2     2,B4              ; |78| 

           ADDU    .L2     B4,B3:B2,B3:B2    ; |78| 
           EXTU    .S2     B3,24,24,B4       ; |78| 
           NOP             2
           EXTU    .S1     A3,24,24,A3       ; |78| 
           CMPEQ   .L2X    B4,A3,B0          ; |78| 

   [ B0]   LDW     .D2T1   *+SP(8),A3        ; |78| 
|| [!B0]   CMPLTU  .L1X    B4,A3,A1          ; |78| 

           NOP             4
   [ B0]   CMPLTU  .L1X    B2,A3,A1          ; |78| 
   [ A1]   B       .S1     L15               ; |78| 
           NOP             5
           ; BRANCHCC OCCURS {L15}           ; |78| 
DW$L$_fft$22$E:
;** --------------------------------------------------------------------------*
L20:    
DW$L$_fft$23$B:
	.dwpsn	"H:\SPH\firmware\lab2\fft.c",105,3
           STW     .D2T1   A10,*+SP(8)       ; |105| 
           STW     .D2T1   A11,*+SP(12)      ; |105| 
	.dwpsn	"H:\SPH\firmware\lab2\fft.c",69,9
           CMPLTU  .L1X    A11:A10,B10,A1    ; |69| 
   [ A1]   B       .S1     L14               ; |69| 
           NOP             5
           ; BRANCHCC OCCURS {L14}           ; |69| 
DW$L$_fft$23$E:
;** --------------------------------------------------------------------------*
L21:    
	.dwpsn	"H:\SPH\firmware\lab2\fft.c",107,1

           MV      .L1X    SP,A9             ; |107| 
||         LDDW    .D2T2   *+SP(56),B13:B12  ; |107| 

	.dwcfa	0xc0, 28
	.dwcfa	0xc0, 29
           LDDW    .D2T2   *+SP(48),B11:B10  ; |107| 
	.dwcfa	0xc0, 26
	.dwcfa	0xc0, 27
           LDW     .D2T2   *+SP(44),B3       ; |107| 
	.dwcfa	0xc0, 19
           LDW     .D1T1   *+A9(40),A14      ; |107| 
	.dwcfa	0xc0, 14
           LDDW    .D1T1   *+A9(32),A13:A12  ; |107| 
	.dwcfa	0xc0, 12
	.dwcfa	0xc0, 13
           LDDW    .D1T1   *+A9(24),A11:A10  ; |107| 
	.dwcfa	0xc0, 10
	.dwcfa	0xc0, 11
           LDW     .D2T1   *++SP(64),A15     ; |107| 
	.dwcfa	0xc0, 15
	.dwcfa	0x0e, 0
           RET     .S2     B3                ; |107| 
           NOP             5
           ; BRANCH OCCURS {B3}              ; |107| 

DW$124	.dwtag  DW_TAG_loop
	.dwattr DW$124, DW_AT_name("H:\SPH\firmware\lab2\Configuration1cfg_c.asm:L14:1:1351387990")
	.dwattr DW$124, DW_AT_begin_file("H:\SPH\firmware\lab2\fft.c")
	.dwattr DW$124, DW_AT_begin_line(0x45)
	.dwattr DW$124, DW_AT_end_line(0x6a)
DW$125	.dwtag  DW_TAG_loop_range
	.dwattr DW$125, DW_AT_low_pc(DW$L$_fft$12$B)
	.dwattr DW$125, DW_AT_high_pc(DW$L$_fft$12$E)
DW$126	.dwtag  DW_TAG_loop_range
	.dwattr DW$126, DW_AT_low_pc(DW$L$_fft$15$B)
	.dwattr DW$126, DW_AT_high_pc(DW$L$_fft$15$E)
DW$127	.dwtag  DW_TAG_loop_range
	.dwattr DW$127, DW_AT_low_pc(DW$L$_fft$13$B)
	.dwattr DW$127, DW_AT_high_pc(DW$L$_fft$13$E)
DW$128	.dwtag  DW_TAG_loop_range
	.dwattr DW$128, DW_AT_low_pc(DW$L$_fft$14$B)
	.dwattr DW$128, DW_AT_high_pc(DW$L$_fft$14$E)
DW$129	.dwtag  DW_TAG_loop_range
	.dwattr DW$129, DW_AT_low_pc(DW$L$_fft$23$B)
	.dwattr DW$129, DW_AT_high_pc(DW$L$_fft$23$E)

DW$130	.dwtag  DW_TAG_loop
	.dwattr DW$130, DW_AT_name("H:\SPH\firmware\lab2\Configuration1cfg_c.asm:L15:2:1351387990")
	.dwattr DW$130, DW_AT_begin_file("H:\SPH\firmware\lab2\fft.c")
	.dwattr DW$130, DW_AT_begin_line(0x4e)
	.dwattr DW$130, DW_AT_end_line(0x67)
DW$131	.dwtag  DW_TAG_loop_range
	.dwattr DW$131, DW_AT_low_pc(DW$L$_fft$16$B)
	.dwattr DW$131, DW_AT_high_pc(DW$L$_fft$16$E)
DW$132	.dwtag  DW_TAG_loop_range
	.dwattr DW$132, DW_AT_low_pc(DW$L$_fft$17$B)
	.dwattr DW$132, DW_AT_high_pc(DW$L$_fft$17$E)
DW$133	.dwtag  DW_TAG_loop_range
	.dwattr DW$133, DW_AT_low_pc(DW$L$_fft$21$B)
	.dwattr DW$133, DW_AT_high_pc(DW$L$_fft$21$E)
DW$134	.dwtag  DW_TAG_loop_range
	.dwattr DW$134, DW_AT_low_pc(DW$L$_fft$22$B)
	.dwattr DW$134, DW_AT_high_pc(DW$L$_fft$22$E)

DW$135	.dwtag  DW_TAG_loop
	.dwattr DW$135, DW_AT_name("H:\SPH\firmware\lab2\Configuration1cfg_c.asm:L17:3:1351387990")
	.dwattr DW$135, DW_AT_begin_file("H:\SPH\firmware\lab2\fft.c")
	.dwattr DW$135, DW_AT_begin_line(0x50)
	.dwattr DW$135, DW_AT_end_line(0x60)
DW$136	.dwtag  DW_TAG_loop_range
	.dwattr DW$136, DW_AT_low_pc(DW$L$_fft$19$B)
	.dwattr DW$136, DW_AT_high_pc(DW$L$_fft$19$E)
	.dwendtag DW$135

	.dwendtag DW$130

	.dwendtag DW$124


DW$137	.dwtag  DW_TAG_loop
	.dwattr DW$137, DW_AT_name("H:\SPH\firmware\lab2\Configuration1cfg_c.asm:L8:1:1351387990")
	.dwattr DW$137, DW_AT_begin_file("H:\SPH\firmware\lab2\fft.c")
	.dwattr DW$137, DW_AT_begin_line(0x26)
	.dwattr DW$137, DW_AT_end_line(0x3a)
DW$138	.dwtag  DW_TAG_loop_range
	.dwattr DW$138, DW_AT_low_pc(DW$L$_fft$3$B)
	.dwattr DW$138, DW_AT_high_pc(DW$L$_fft$3$E)
DW$139	.dwtag  DW_TAG_loop_range
	.dwattr DW$139, DW_AT_low_pc(DW$L$_fft$4$B)
	.dwattr DW$139, DW_AT_high_pc(DW$L$_fft$4$E)
DW$140	.dwtag  DW_TAG_loop_range
	.dwattr DW$140, DW_AT_low_pc(DW$L$_fft$8$B)
	.dwattr DW$140, DW_AT_high_pc(DW$L$_fft$8$E)
DW$141	.dwtag  DW_TAG_loop_range
	.dwattr DW$141, DW_AT_low_pc(DW$L$_fft$9$B)
	.dwattr DW$141, DW_AT_high_pc(DW$L$_fft$9$E)

DW$142	.dwtag  DW_TAG_loop
	.dwattr DW$142, DW_AT_name("H:\SPH\firmware\lab2\Configuration1cfg_c.asm:L10:2:1351387990")
	.dwattr DW$142, DW_AT_begin_file("H:\SPH\firmware\lab2\fft.c")
	.dwattr DW$142, DW_AT_begin_line(0x32)
	.dwattr DW$142, DW_AT_end_line(0x35)
DW$143	.dwtag  DW_TAG_loop_range
	.dwattr DW$143, DW_AT_low_pc(DW$L$_fft$6$B)
	.dwattr DW$143, DW_AT_high_pc(DW$L$_fft$6$E)
	.dwendtag DW$142

	.dwendtag DW$137

	.dwattr DW$102, DW_AT_end_file("H:\SPH\firmware\lab2\fft.c")
	.dwattr DW$102, DW_AT_end_line(0x6b)
	.dwattr DW$102, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$102

	.sect	".text"
	.global	_detect_tone

DW$144	.dwtag  DW_TAG_subprogram, DW_AT_name("detect_tone"), DW_AT_symbol_name("_detect_tone")
	.dwattr DW$144, DW_AT_low_pc(_detect_tone)
	.dwattr DW$144, DW_AT_high_pc(0x00)
	.dwattr DW$144, DW_AT_begin_file("H:\SPH\firmware\lab2\touchtone.c")
	.dwattr DW$144, DW_AT_begin_line(0x178)
	.dwattr DW$144, DW_AT_begin_column(0x05)
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",376,32

	.dwfde DW$CIE

;******************************************************************************
;* FUNCTION NAME: _detect_tone                                                *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,B0,B1,B2,B3,B4,*
;*                           B5,B6,B7,B8,B9,SP                                *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,B0,B1,B2,B3,B4,*
;*                           B5,B6,B7,B8,B9,DP,SP                             *
;*   Local Frame Size  : 0 Args + 16 Auto + 12 Save = 28 byte                 *
;******************************************************************************

;******************************************************************************
;*                                                                            *
;* Using -g (debug) with optimization (-o3) may disable key optimizations!    *
;*                                                                            *
;******************************************************************************
_detect_tone:
;** --------------------------------------------------------------------------*
	.dwcfa	0x0e, 0
	.dwcfa	0x09, 126, 19
           STW     .D2T2   B3,*SP--(32)      ; |376| 
	.dwcfa	0x0e, 32
	.dwcfa	0x80, 19, 0
           STW     .D2T1   A11,*+SP(28)      ; |376| 
	.dwcfa	0x80, 11, 1
           STW     .D2T1   A10,*+SP(24)      ; |376| 
	.dwcfa	0x80, 10, 2
DW$145	.dwtag  DW_TAG_formal_parameter, DW_AT_name("absfft"), DW_AT_symbol_name("_absfft")
	.dwattr DW$145, DW_AT_type(*DW$T$25)
	.dwattr DW$145, DW_AT_location[DW_OP_reg4]
DW$146	.dwtag  DW_TAG_variable, DW_AT_name("absfft"), DW_AT_symbol_name("_absfft")
	.dwattr DW$146, DW_AT_type(*DW$T$101)
	.dwattr DW$146, DW_AT_location[DW_OP_reg4]
DW$147	.dwtag  DW_TAG_variable, DW_AT_name("i"), DW_AT_symbol_name("_i")
	.dwattr DW$147, DW_AT_type(*DW$T$10)
	.dwattr DW$147, DW_AT_location[DW_OP_reg6]
DW$148	.dwtag  DW_TAG_variable, DW_AT_name("tmp"), DW_AT_symbol_name("_tmp")
	.dwattr DW$148, DW_AT_type(*DW$T$10)
	.dwattr DW$148, DW_AT_location[DW_OP_reg3]
DW$149	.dwtag  DW_TAG_variable, DW_AT_name("maxval"), DW_AT_symbol_name("_maxval")
	.dwattr DW$149, DW_AT_type(*DW$T$103)
	.dwattr DW$149, DW_AT_location[DW_OP_breg31 4]
DW$150	.dwtag  DW_TAG_variable, DW_AT_name("maxfreq"), DW_AT_symbol_name("_maxfreq")
	.dwattr DW$150, DW_AT_type(*DW$T$85)
	.dwattr DW$150, DW_AT_location[DW_OP_breg31 12]
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",380,8
           MVKL    .S2     _$T0$1$2,B4       ; |380| 
           MVKH    .S2     _$T0$1$2,B4       ; |380| 
           LDW     .D2T2   *+B4(4),B5        ; |380| 
           LDW     .D2T2   *B4,B4            ; |380| 
           ADD     .L1X    4,SP,A3           ; |380| 
           NOP             3
           STW     .D1T2   B4,*A3            ; |380| 
           STW     .D1T2   B5,*+A3(4)        ; |380| 
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",381,6
           MVKL    .S1     _$T1$2$2,A3       ; |381| 
           MVKH    .S1     _$T1$2$2,A3       ; |381| 
           LDW     .D1T1   *+A3(4),A5        ; |381| 
           LDW     .D1T1   *A3,A3            ; |381| 
           ADD     .L2     12,SP,B4          ; |381| 
           NOP             2
           STW     .D2T1   A5,*+B4(4)        ; |381| 
           STW     .D2T1   A3,*B4            ; |381| 
           LDW     .D2T2   *+SP(8),B4
           LDW     .D2T1   *+SP(4),A5
           LDW     .D2T1   *+SP(16),A7
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",384,12
           MVK     .S1     0x40,A3           ; |384| 
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",384,6

           ZERO    .L1     A4                ; |384| 
||         MV      .S1     A4,A2

           LDW     .D1T1   *+A2[A4],A9       ; |385| (P) <0,0> 
||         MVC     .S2     CSR,B6

           AND     .L2     -2,B6,B7

           MVC     .S2     B7,CSR            ; interrupts off
||         ADD     .L1     1,A4,A11          ; |384| (P) <0,4> 

;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 384
;*      Loop opening brace source line   : 384
;*      Loop closing brace source line   : 395
;*      Known Minimum Trip Count         : 64                    
;*      Known Maximum Trip Count         : 64                    
;*      Known Max Trip Count Factor      : 64
;*      Loop Carried Dependency Bound(^) : 5
;*      Unpartitioned Resource Bound     : 3
;*      Partitioned Resource Bound(*)    : 3
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     1        0     
;*      .S units                     1        2     
;*      .D units                     1        2     
;*      .M units                     0        0     
;*      .X cross paths               2        3*    
;*      .T address paths             1        2     
;*      Long read paths              0        2     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           2        2     (.L or .S unit)
;*      Addition ops (.LSD)          4        3     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             2        2     
;*      Bound(.L .S .D .LS .LSD)     3*       3*    
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 5  Schedule found with 3 iterations in parallel
;*
;*      Register Usage Table:
;*          +---------------------------------+
;*          |AAAAAAAAAAAAAAAA|BBBBBBBBBBBBBBBB|
;*          |0000000000111111|0000000000111111|
;*          |0123456789012345|0123456789012345|
;*          |----------------+----------------|
;*       0: |***  *******    | ** **         *|
;*       1: |**** **** **    | ** **         *|
;*       2: |************    | ** **         *|
;*       3: |**** *******    |*** **         *|
;*       4: |***  *******    | ** **         *|
;*          +---------------------------------+
;*
;*      Done
;*
;*      Collapsed epilog stages     : 2
;*      Prolog not removed
;*      Collapsed prolog stages     : 0
;*
;*      Minimum required memory pad : 0 bytes
;*
;*      For further improvement on this loop, try option -mh2
;*
;*      Minimum safe trip count     : 2
;*----------------------------------------------------------------------------*
;*       SETUP CODE
;*
;*                  MV              A8,A7
;*                  MV              A11,A6
;*                  MV              B4,B5
;*
;*        SINGLE SCHEDULED ITERATION
;*
;*        C269:
;*   0              LDW     .D1T1   *+A2[A11],A9      ; |385| 
;*   1              NOP             3
;*   4              ADD     .S1     1,A11,A11         ; |384| 
;*   5              NOP             1
;*   6              MV      .L1     A11,A10           ; |384| Split a long life
;*     ||   [ B2]   SUB     .S2     B2,1,B2           ; |384| 
;*   7              CMPGTSP .S2X    A9,B4,B1          ; |385| 
;*     ||   [ B2]   B       .S1     C269              ; |384| 
;*   8              MV      .L1     A9,A3             ; |385| Split a long life
;*     ||   [!B1]   CMPGTSP .S1     A9,A5,A0          ; |391|  ^ 
;*     ||   [ B1]   MV      .D1     A6,A8             ; |390| 
;*   9              CMPEQ   .L1     A0,0,A4           ;  ^ 
;*  10              OR      .L2X    A4,B1,B0          ;  ^ 
;*  11      [!B0]   MV      .D1     A3,A5             ; |392|  ^ 
;*     ||   [!B0]   STW     .D2T1   A6,*+SP(12)       ; |393| 
;*     ||   [ B1]   MV      .L2X    A3,B4             ; |389| 
;*     ||           MV      .S1     A10,A6            ; |384| Inserted to break DPG cycle
;*  12      [ B1]   MV      .L1X    B5,A5             ; |386|  ^ 
;*     ||   [ B1]   STW     .D2T1   A7,*+SP(12)       ; |387| 
;*     ||   [ B1]   MV      .L2     B4,B5             ; |389| Inserted to break DPG cycle
;*     ||   [ B1]   MV      .D1     A8,A7             ; |390| Inserted to break DPG cycle
;*  13              ; BRANCHCC OCCURS {C269}          ; |384| 
;*----------------------------------------------------------------------------*
L22:    ; PIPED LOOP PROLOG
           LDW     .D1T1   *+A2[A11],A9      ; |385| (P) <1,0> 

           SUB     .L1     A3,2,A1
||         SUB     .L2X    A3,1,B2
||         MV      .S1     A11,A10           ; |384| (P) <0,6> Split a long life

           ZERO    .L1     A6                ; |384| 
||         MV      .L2     B4,B5
||         MV      .D1     A7,A8
||         B       .S1     L23               ; |384| (P) <0,7> 
||         CMPGTSP .S2X    A9,B4,B1          ; |385| (P) <0,7> 

;** --------------------------------------------------------------------------*
L23:    ; PIPED LOOP KERNEL
DW$L$_detect_tone$3$B:

           MV      .L1     A9,A3             ; |385| <0,8> Split a long life
|| [ B1]   MV      .D1     A6,A8             ; |390| <0,8> 
|| [!B1]   CMPGTSP .S1     A9,A5,A0          ; |391| <0,8>  ^ 

           CMPEQ   .L1     A0,0,A4           ; <0,9>  ^ 
||         ADD     .S1     1,A11,A11         ; |384| <1,4> 

   [ A1]   SUB     .L1     A1,1,A1           ; <0,10> 
||         OR      .L2X    A4,B1,B0          ; <0,10>  ^ 
|| [ A1]   LDW     .D1T1   *+A2[A11],A9      ; |385| <2,0> 

   [ B1]   MV      .L2X    A3,B4             ; |389| <0,11> 
||         MV      .S1     A10,A6            ; |384| <0,11> Inserted to break DPG cycle
|| [!B0]   MV      .D1     A3,A5             ; |392| <0,11>  ^ 
|| [!B0]   STW     .D2T1   A6,*+SP(12)       ; |393| <0,11> 
||         MV      .L1     A11,A10           ; |384| <1,6> Split a long life
|| [ B2]   SUB     .S2     B2,1,B2           ; |384| <1,6> 

   [ B1]   MV      .L2     B4,B5             ; |389| <0,12> Inserted to break DPG cycle
|| [ B1]   MV      .D1     A8,A7             ; |390| <0,12> Inserted to break DPG cycle
|| [ B1]   MV      .L1X    B5,A5             ; |386| <0,12>  ^ 
|| [ B1]   STW     .D2T1   A7,*+SP(12)       ; |387| <0,12> 
|| [ B2]   B       .S1     L23               ; |384| <1,7> 
||         CMPGTSP .S2X    A9,B4,B1          ; |385| <1,7> 

DW$L$_detect_tone$3$E:
;** --------------------------------------------------------------------------*
L24:    ; PIPED LOOP EPILOG

           STW     .D2T1   A5,*+SP(4)
||         MV      .L1     A8,A7

           MVC     .S2     B6,CSR            ; interrupts on
||         STW     .D2T1   A7,*+SP(16)

           STW     .D2T2   B4,*+SP(8)
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",398,2

           LDW     .D2T1   *+SP(12),A4       ; |398| 
||         CALL    .S2     _snapfreq         ; |398| 

           MVKL    .S2     RL14,B3           ; |398| 
           MVKH    .S2     RL14,B3           ; |398| 
           NOP             3
RL14:      ; CALL OCCURS {_snapfreq}         ; |398| 
           NOP             1
           STW     .D2T1   A4,*+SP(12)       ; |398| 
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",399,2

           LDW     .D2T1   *+SP(16),A4       ; |399| 
||         CALL    .S2     _snapfreq         ; |399| 

           MVKL    .S2     RL15,B3           ; |399| 
           MVKH    .S2     RL15,B3           ; |399| 
           NOP             3
RL15:      ; CALL OCCURS {_snapfreq}         ; |399| 
;** --------------------------------------------------------------------------*
           STW     .D2T1   A4,*+SP(16)       ; |399| 
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",401,2

           LDW     .D2T1   *+SP(12),A5       ; |401| 
||         CMPEQ   .L1     A4,-1,A1          ; |401| 

           NOP             4
           CMPEQ   .L2X    A5,-1,B0          ; |401| 

   [ B0]   ZERO    .L1     A1                ; nullify predicate
|| [ B0]   B       .S1     L26               ; |401| 

   [ A1]   B       .S1     L26               ; |401| 
           NOP             4
           ; BRANCHCC OCCURS {L26}           ; |401| 
;** --------------------------------------------------------------------------*
           NOP             1
           ; BRANCHCC OCCURS {L26}           ; |401| 
;** --------------------------------------------------------------------------*
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",404,2
           CMPGT   .L1     A5,A4,A1          ; |404| 
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",405,7
   [ A1]   MV      .L1     A5,A3             ; |405| 
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",406,3
   [ A1]   STW     .D2T1   A4,*+SP(12)       ; |406| 
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",407,3

   [ A1]   MV      .L1     A4,A5
|| [ A1]   STW     .D2T1   A3,*+SP(16)       ; |407| 

	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",411,12

           MVKL    .S1     _tones-12,A10
||         MVK     .S2     0xc,B0            ; |411| 

           MVKH    .S1     _tones-12,A10
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains control code
;*----------------------------------------------------------------------------*
L25:    
DW$L$_detect_tone$8$B:
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",412,3

           LDW     .D1T1   *++A10(12),A3     ; |412| 
||         LDW     .D2T2   *+SP(16),B4       ; |412| 
||         ZERO    .L2     B1                ; |412| 

           NOP             4
           CMPEQ   .L1     A3,A5,A1          ; |412| 
   [ A1]   LDW     .D1T1   *+A10(4),A3       ; |412| 
           NOP             4
   [ A1]   CMPEQ   .L2X    A3,B4,B1          ; |412| 
   [ B1]   B       .S1     L27               ; |412| 
           NOP             5
           ; BRANCHCC OCCURS {L27}           ; |412| 
DW$L$_detect_tone$8$E:
;** --------------------------------------------------------------------------*
DW$L$_detect_tone$9$B:
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",411,12
           SUB     .L2     B0,1,B0           ; |411| 
   [ B0]   B       .S1     L25               ; |411| 
           NOP             5
           ; BRANCHCC OCCURS {L25}           ; |411| 
DW$L$_detect_tone$9$E:
;** --------------------------------------------------------------------------*
L26:    
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",429,2

           B       .S2     L29               ; |429| 
||         MVK     .S1     0xffffffff,A4     ; |429| 

           NOP             5
           ; BRANCH OCCURS {L29}             ; |429| 
;** --------------------------------------------------------------------------*
L27:    
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",414,4

           LDW     .D2T2   *+SP(4),B5        ; |414| 
||         MVKL    .S1     0x40e86a00,A5     ; |414| 
||         ZERO    .L1     A4                ; |414| 

           LDW     .D2T2   *+SP(8),B4        ; |414| 
||         MVKH    .S1     0x40e86a00,A5     ; |414| 

           NOP             4
           ADDSP   .L2     B4,B5,B6          ; |414| 
           NOP             3
           SPDP    .S2     B6,B7:B6          ; |414| 
           NOP             1
           CMPGTDP .S1X    B7:B6,A5:A4,A1    ; |414| 
           NOP             1
   [!A1]   B       .S1     L28               ; |414| 
           NOP             5
           ; BRANCHCC OCCURS {L28}           ; |414| 
;** --------------------------------------------------------------------------*
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",417,5

           CALL    .S1     __divf            ; |417| 
||         MVKL    .S2     RL16,B3           ; |417| 

           MVKH    .S2     RL16,B3           ; |417| 
           MV      .L1X    B5,A4             ; |417| 
           NOP             3
RL16:      ; CALL OCCURS {__divf}            ; |417| 
;** --------------------------------------------------------------------------*

           ZERO    .L2     B5                ; |417| 
||         SPDP    .S1     A4,A5:A4          ; |417| 
||         ZERO    .S2     B7                ; |417| 
||         ZERO    .D2     B4                ; |417| 

           MVKH    .S2     0x40000000,B5     ; |417| 
||         ZERO    .L2     B6                ; |417| 

           MVKH    .S2     0x3fe00000,B7     ; |417| 
||         B       .S1     L29               ; |417| 

           CMPLTDP .S1X    A5:A4,B5:B4,A3    ; |417| 
||         CMPGTDP .S2X    A5:A4,B7:B6,B4    ; |417| 

           NOP             2

           MVK     .S1     0xfffffffd,A4     ; |417| 
||         AND     .L1X    B4,A3,A1          ; |417| 

   [ A1]   LDW     .D1T1   *+A10(8),A4       ; |417| 
           ; BRANCH OCCURS {L29}             ; |417| 
;** --------------------------------------------------------------------------*
L28:    
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",425,5
           MVK     .S1     0xfffffffe,A4     ; |425| 
;** --------------------------------------------------------------------------*
L29:    
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",430,1
           LDW     .D2T1   *+SP(28),A11      ; |430| 
	.dwcfa	0xc0, 11
           LDW     .D2T1   *+SP(24),A10      ; |430| 
	.dwcfa	0xc0, 10
           LDW     .D2T2   *++SP(32),B3      ; |430| 
	.dwcfa	0xc0, 19
	.dwcfa	0x0e, 0
           NOP             4
           RET     .S2     B3                ; |430| 
           NOP             5
           ; BRANCH OCCURS {B3}              ; |430| 

DW$151	.dwtag  DW_TAG_loop
	.dwattr DW$151, DW_AT_name("H:\SPH\firmware\lab2\Configuration1cfg_c.asm:L25:1:1351387990")
	.dwattr DW$151, DW_AT_begin_file("H:\SPH\firmware\lab2\touchtone.c")
	.dwattr DW$151, DW_AT_begin_line(0x19b)
	.dwattr DW$151, DW_AT_end_line(0x1ac)
DW$152	.dwtag  DW_TAG_loop_range
	.dwattr DW$152, DW_AT_low_pc(DW$L$_detect_tone$8$B)
	.dwattr DW$152, DW_AT_high_pc(DW$L$_detect_tone$8$E)
DW$153	.dwtag  DW_TAG_loop_range
	.dwattr DW$153, DW_AT_low_pc(DW$L$_detect_tone$9$B)
	.dwattr DW$153, DW_AT_high_pc(DW$L$_detect_tone$9$E)
	.dwendtag DW$151


DW$154	.dwtag  DW_TAG_loop
	.dwattr DW$154, DW_AT_name("H:\SPH\firmware\lab2\Configuration1cfg_c.asm:L23:1:1351387990")
	.dwattr DW$154, DW_AT_begin_file("H:\SPH\firmware\lab2\touchtone.c")
	.dwattr DW$154, DW_AT_begin_line(0x180)
	.dwattr DW$154, DW_AT_end_line(0x18b)
DW$155	.dwtag  DW_TAG_loop_range
	.dwattr DW$155, DW_AT_low_pc(DW$L$_detect_tone$3$B)
	.dwattr DW$155, DW_AT_high_pc(DW$L$_detect_tone$3$E)
	.dwendtag DW$154

	.dwattr DW$144, DW_AT_end_file("H:\SPH\firmware\lab2\touchtone.c")
	.dwattr DW$144, DW_AT_end_line(0x1ae)
	.dwattr DW$144, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$144

	.sect	".text"
	.global	_process_sample

DW$156	.dwtag  DW_TAG_subprogram, DW_AT_name("process_sample"), DW_AT_symbol_name("_process_sample")
	.dwattr DW$156, DW_AT_low_pc(_process_sample)
	.dwattr DW$156, DW_AT_high_pc(0x00)
	.dwattr DW$156, DW_AT_begin_file("H:\SPH\firmware\lab2\touchtone.c")
	.dwattr DW$156, DW_AT_begin_line(0x12c)
	.dwattr DW$156, DW_AT_begin_column(0x06)
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",300,30

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
           STW     .D2T2   B3,*SP--(8)       ; |300| 
	.dwcfa	0x0e, 8
	.dwcfa	0x80, 19, 0
           STW     .D2T1   A10,*+SP(4)       ; |300| 
	.dwcfa	0x80, 10, 1
DW$157	.dwtag  DW_TAG_formal_parameter, DW_AT_name("x"), DW_AT_symbol_name("_x")
	.dwattr DW$157, DW_AT_type(*DW$T$38)
	.dwattr DW$157, DW_AT_location[DW_OP_reg4]
DW$158	.dwtag  DW_TAG_variable, DW_AT_name("i"), DW_AT_symbol_name("_i")
	.dwattr DW$158, DW_AT_type(*DW$T$10)
	.dwattr DW$158, DW_AT_location[DW_OP_reg0]
DW$159	.dwtag  DW_TAG_variable, DW_AT_name("x"), DW_AT_symbol_name("_x")
	.dwattr DW$159, DW_AT_type(*DW$T$57)
	.dwattr DW$159, DW_AT_location[DW_OP_reg4]
DW$160	.dwtag  DW_TAG_variable, DW_AT_name("tmp"), DW_AT_symbol_name("_tmp")
	.dwattr DW$160, DW_AT_type(*DW$T$10)
	.dwattr DW$160, DW_AT_location[DW_OP_reg7]
DW$161	.dwtag  DW_TAG_variable, DW_AT_name("tmp"), DW_AT_symbol_name("_tmp")
	.dwattr DW$161, DW_AT_type(*DW$T$10)
	.dwattr DW$161, DW_AT_location[DW_OP_reg4]
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",303,2

           LDW     .D2T2   *+DP(_buffer_index),B5 ; |303| 
||         MVKL    .S2     _buffer,B4        ; |303| 

           MVKH    .S2     _buffer,B4        ; |303| 
           NOP             3
           STH     .D2T1   A4,*+B4[B5]       ; |303| 
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",305,2
           ADD     .L2     1,B5,B4           ; |305| 
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",306,2
           MVK     .S2     127,B6            ; |306| 
           CMPLT   .L2     B5,B6,B0          ; |306| 
   [ B0]   STW     .D2T2   B4,*+DP(_buffer_index)
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",306,30
   [!B0]   ZERO    .L2     B4                ; |306| 

   [!B0]   STW     .D2T2   B4,*+DP(_buffer_index) ; |306| 
|| [!B0]   ZERO    .L2     B4                ; |306| 

	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",308,2
           LDW     .D2T2   *+DP(_sample_count),B5 ; |308| 
           NOP             4
           ADD     .L2     1,B5,B5           ; |308| 
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",309,2
           LDW     .D2T2   *+DP(_fft_interval),B6 ; |309| 
           NOP             4
           CMPLT   .L2     B5,B6,B0          ; |309| 

   [ B0]   STW     .D2T2   B5,*+DP(_sample_count)
|| [ B0]   B       .S1     L37               ; |309| 

           NOP             5
           ; BRANCHCC OCCURS {L37}           ; |309| 
;** --------------------------------------------------------------------------*
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",310,2

           MVKL    .S2     _fft_array,B6
||         ZERO    .L2     B5                ; |310| 
||         MVK     .S1     0xffffff80,A3

           MVKH    .S2     _fft_array,B6
||         STW     .D2T2   B5,*+DP(_sample_count) ; |310| 
||         MVK     .S1     0x80,A4

           MV      .L1X    B6,A10
||         SUB     .L2     B6,8,B6

	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",312,12
           MVK     .S1     0x80,A2           ; |312| 
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",312,6
           ZERO    .L1     A0                ; |312| 
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",303,2
           MV      .L1X    B6,A8

           MV      .L1X    B4,A9
||         ADD     .L2     4,B6,B4
||         MVC     .S2     CSR,B6

           AND     .L2     -2,B6,B7
           MVC     .S2     B7,CSR            ; interrupts off
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 312
;*      Loop opening brace source line   : 312
;*      Loop closing brace source line   : 317
;*      Known Minimum Trip Count         : 128                    
;*      Known Maximum Trip Count         : 128                    
;*      Known Max Trip Count Factor      : 128
;*      Loop Carried Dependency Bound(^) : 3
;*      Unpartitioned Resource Bound     : 2
;*      Partitioned Resource Bound(*)    : 3
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     1        1     
;*      .S units                     0        1     
;*      .D units                     1        2     
;*      .M units                     0        0     
;*      .X cross paths               0        1     
;*      .T address paths             2        1     
;*      Long read paths              1        1     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          3        1     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1        1     
;*      Bound(.L .S .D .LS .LSD)     2        2     
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 3  Schedule found with 5 iterations in parallel
;*
;*      Register Usage Table:
;*          +---------------------------------+
;*          |AAAAAAAAAAAAAAAA|BBBBBBBBBBBBBBBB|
;*          |0000000000111111|0000000000111111|
;*          |0123456789012345|0123456789012345|
;*          |----------------+----------------|
;*       0: |**********      |**  **          |
;*       1: |* ********      |**  **          |
;*       2: |* ********      |**  **          |
;*          +---------------------------------+
;*
;*      Done
;*
;*      Epilog not entirely removed
;*      Collapsed epilog stages     : 2
;*
;*      Prolog not entirely removed
;*      Collapsed prolog stages     : 3
;*
;*      Minimum required memory pad : 0 bytes
;*
;*      Minimum safe trip count     : 2
;*----------------------------------------------------------------------------*
;*       SETUP CODE
;*
;*                  MV              A8,B4
;*                  ADD             4,B4,B4
;*
;*        SINGLE SCHEDULED ITERATION
;*
;*        C370:
;*   0              ADD     .S1     A0,A9,A7          ; |313|  ^ 
;*   1              CMPLT   .L1     A7,A4,A1          ;  ^ 
;*   2      [!A1]   ADD     .S1     A3,A7,A7          ; |314|  ^ 
;*     ||           ADD     .L1     1,A0,A0           ; |312| Define a twin register
;*   3              LDH     .D1T1   *+A5[A7],A6       ; |315| 
;*   4              NOP             3
;*   7      [ B0]   SUB     .S2     B0,1,B0           ; |312| 
;*   8      [ B0]   B       .S2     C370              ; |312| 
;*   9              INTSP   .L1     A6,A6             ; |315| 
;*  10              NOP             3
;*  13              STW     .D1T1   A6,*++A8(8)       ; |315| 
;*     ||           STW     .D2T2   B5,*++B4(8)       ; |316| 
;*  14              ; BRANCHCC OCCURS {C370}          ; |312| 
;*----------------------------------------------------------------------------*
L30:    ; PIPED LOOP PROLOG
           B       .S2     L31               ; |312| (P) <0,8> 

           MVKL    .S1     _buffer,A5        ; |303| 
||         ADD     .L1     A0,A9,A7          ; |313| (P) <0,0>  ^ 

           SUB     .L2X    A2,1,B0
||         MVK     .S2     0x3,B1            ; init prolog collapse predicate
||         MVKH    .S1     _buffer,A5        ; |303| 
||         CMPLT   .L1     A7,A4,A1          ; (P) <0,1>  ^ 

;** --------------------------------------------------------------------------*
L31:    ; PIPED LOOP KERNEL
DW$L$_process_sample$4$B:

   [ B0]   B       .S2     L31               ; |312| <1,8> 
||         ADD     .L1     1,A0,A0           ; |312| <3,2> Define a twin register
|| [!A1]   ADD     .S1     A3,A7,A7          ; |314| <3,2>  ^ 

           INTSP   .L1     A6,A6             ; |315| <1,9> 
|| [ A2]   LDH     .D1T1   *+A5[A7],A6       ; |315| <3,3> 
||         ADD     .S1     A0,A9,A7          ; |313| <4,0>  ^ 

   [ B1]   SUB     .L2     B1,1,B1           ; <0,13> 
|| [ A2]   SUB     .S1     A2,1,A2           ; <0,13> 
|| [!B1]   STW     .D2T2   B5,*++B4(8)       ; |316| <0,13> 
|| [!B1]   STW     .D1T1   A6,*++A8(8)       ; |315| <0,13> 
|| [ B0]   SUB     .S2     B0,1,B0           ; |312| <2,7> 
||         CMPLT   .L1     A7,A4,A1          ; <4,1>  ^ 

DW$L$_process_sample$4$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 321
;*      Loop opening brace source line   : 321
;*      Loop closing brace source line   : 324
;*      Loop Unroll Multiple             : 2x
;*      Known Minimum Trip Count         : 32                    
;*      Known Maximum Trip Count         : 32                    
;*      Known Max Trip Count Factor      : 32
;*      Loop Carried Dependency Bound(^) : 0
;*      Unpartitioned Resource Bound     : 3
;*      Partitioned Resource Bound(*)    : 3
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     1        1     
;*      .S units                     1        0     
;*      .D units                     3*       3*    
;*      .M units                     2        2     
;*      .X cross paths               1        1     
;*      .T address paths             3*       3*    
;*      Long read paths              1        1     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          0        1     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1        1     
;*      Bound(.L .S .D .LS .LSD)     2        2     
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 3  Schedule found with 6 iterations in parallel
;*
;*      Register Usage Table:
;*          +---------------------------------+
;*          |AAAAAAAAAAAAAAAA|BBBBBBBBBBBBBBBB|
;*          |0000000000111111|0000000000111111|
;*          |0123456789012345|0123456789012345|
;*          |----------------+----------------|
;*       0: | *****          |**  ****        |
;*       1: | ****           |**  *****       |
;*       2: | *****          |**  ****        |
;*          +---------------------------------+
;*
;*      Done
;*
;*      Epilog not entirely removed
;*      Collapsed epilog stages     : 3
;*
;*      Prolog not entirely removed
;*      Collapsed prolog stages     : 4
;*
;*      Minimum required memory pad : 0 bytes
;*
;*      For further improvement on this loop, try option -mh80
;*
;*      Minimum safe trip count     : 2 (after unrolling)
;*----------------------------------------------------------------------------*
;*       SETUP CODE
;*
;*                  MV              A3,B4
;*                  SUB             B4,4,B4
;*
;*        SINGLE SCHEDULED ITERATION
;*
;*        C335:
;*   0              LDW     .D1T2   *+A3(4),B8        ; |322| 
;*   1              LDW     .D1T1   *A3++(16),A5      ; |322| 
;*     ||           LDW     .D2T2   *++B4(16),B6      ; |322| 
;*   2              LDW     .D1T1   *-A3(8),A5        ; |322| 
;*   3              NOP             2
;*   5              MPYSP   .M2     B8,B8,B7          ; |322| 
;*   6              MPYSP   .M1     A5,A5,A4          ; |322| 
;*     ||           MPYSP   .M2     B6,B6,B6          ; |322| 
;*   7              MPYSP   .M1     A5,A5,A4          ; |322| 
;*   8              NOP             1
;*   9      [ B0]   SUB     .S2     B0,1,B0           ; |321| 
;*  10              ADDSP   .L2X    B7,A4,B7          ; |322| 
;*     ||   [ B0]   B       .S1     C335              ; |321| 
;*  11              ADDSP   .L1X    B6,A4,A4          ; |322| 
;*  12              NOP             2
;*  14              STW     .D2T2   B7,*++B5(8)       ; |322| 
;*  15              STW     .D2T1   A4,*+B5(4)        ; |322| 
;*  16              ; BRANCHCC OCCURS {C335}          ; |321| 
;*----------------------------------------------------------------------------*
L32:    ; PIPED LOOP EPILOG AND PROLOG
           NOP             1
           INTSP   .L1     A6,A6             ; |315| (E) <4,9> 

           STW     .D1T1   A6,*++A8(8)       ; |315| (E) <3,13> 
||         STW     .D2T2   B5,*++B4(8)       ; |316| (E) <3,13> 

           NOP             1
           MVC     .S2     B6,CSR            ; interrupts on

           STW     .D2T2   B5,*++B4(8)       ; |316| (E) <4,13> 
||         STW     .D1T1   A6,*++A8(8)       ; |315| (E) <4,13> 

	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",319,2

           MV      .L1     A10,A4            ; |319| 
||         CALL    .S2     _fft              ; |319| 

           MVKL    .S2     RL17,B3           ; |319| 
           MVKH    .S2     RL17,B3           ; |319| 
           MVK     .S2     0x80,B4           ; |319| 
           NOP             2
RL17:      ; CALL OCCURS {_fft}              ; |319| 
           NOP             1
           SUB     .L2X    A10,8,B5
           MV      .L2X    A10,B4
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",321,12

           SUB     .L2     B4,4,B4
||         MV      .L1X    B4,A3
||         MVK     .S1     0x20,A2           ; |321| 
||         MVC     .S2     CSR,B9

           SUB     .L1     A2,1,A1
||         MV      .L2X    A2,B0
||         AND     .S2     -2,B9,B6

           MVC     .S2     B6,CSR            ; interrupts off

           MVK     .S2     0x4,B1            ; init prolog collapse predicate
||         B       .S1     L33               ; |321| (P) <0,10> 

           NOP             1
           LDW     .D1T2   *+A3(4),B8        ; |322| (P) <0,0> 
;** --------------------------------------------------------------------------*
L33:    ; PIPED LOOP KERNEL
DW$L$_process_sample$6$B:

   [ B0]   B       .S1     L33               ; |321| <1,10> 
||         ADDSP   .L2X    B7,A4,B7          ; |322| <1,10> 
||         MPYSP   .M1     A5,A5,A4          ; |322| <2,7> 
|| [ A2]   LDW     .D2T2   *++B4(16),B6      ; |322| <4,1> 
|| [ A2]   LDW     .D1T1   *A3++(16),A5      ; |322| <4,1> 

   [!B1]   STW     .D2T2   B7,*++B5(8)       ; |322| <0,14> 
||         ADDSP   .L1X    B6,A4,A4          ; |322| <1,11> 
||         MPYSP   .M2     B8,B8,B7          ; |322| <3,5> 
|| [ A2]   LDW     .D1T1   *-A3(8),A5        ; |322| <4,2> 

   [ B1]   SUB     .L2     B1,1,B1           ; <0,15> 
|| [ A2]   SUB     .L1     A2,1,A2           ; <0,15> 
|| [ A1]   SUB     .S1     A1,1,A1           ; <0,15> 
|| [!B1]   STW     .D2T1   A4,*+B5(4)        ; |322| <0,15> 
|| [ B0]   SUB     .S2     B0,1,B0           ; |321| <2,9> 
||         MPYSP   .M2     B6,B6,B6          ; |322| <3,6> 
||         MPYSP   .M1     A5,A5,A4          ; |322| <3,6> 
|| [ A1]   LDW     .D1T2   *+A3(4),B8        ; |322| <5,0> 

DW$L$_process_sample$6$E:
;** --------------------------------------------------------------------------*
L34:    ; PIPED LOOP EPILOG
           ADDSP   .L2X    B7,A4,B7          ; |322| (E) <5,10> 

           STW     .D2T2   B7,*++B5(8)       ; |322| (E) <4,14> 
||         ADDSP   .L1X    B6,A4,A4          ; |322| (E) <5,11> 

           STW     .D2T1   A4,*+B5(4)        ; |322| (E) <4,15> 
           NOP             1

           MVC     .S2     B9,CSR            ; interrupts on
||         STW     .D2T2   B7,*++B5(8)       ; |322| (E) <5,14> 

           STW     .D2T1   A4,*+B5(4)        ; |322| (E) <5,15> 
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",332,2

           MV      .L1     A10,A4            ; |332| 
||         CALL    .S2     _detect_tone      ; |332| 

           MVKL    .S2     RL18,B3           ; |332| 
           MVKH    .S2     RL18,B3           ; |332| 
           NOP             3
RL18:      ; CALL OCCURS {_detect_tone}      ; |332| 
;** --------------------------------------------------------------------------*

           CMPLT   .L1     A4,0,A1           ; |332| 
||         LDW     .D2T2   *+DP(_gap_flag),B1

   [!A1]   B       .S1     L35               ; |332| 
           NOP             5
           ; BRANCHCC OCCURS {L35}           ; |332| 
;** --------------------------------------------------------------------------*
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",335,3
           LDW     .D2T2   *+DP(_gap_len_count),B4 ; |335| 
           LDW     .D2T2   *+DP(_min_gap_len),B5 ; |335| 
           NOP             4
           CMPLT   .L2     B4,B5,B0          ; |335| 
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",338,4

   [ B0]   ADD     .L2     1,B4,B4           ; |338| 
|| [ B0]   LDW     .D2T2   *+DP(_gap_flag),B1 ; |338| 

   [ B0]   STW     .D2T2   B4,*+DP(_gap_len_count) ; |338| 
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",336,4
   [!B0]   MVK     .S2     1,B4              ; |336| 

   [!B0]   STW     .D2T2   B4,*+DP(_gap_flag) ; |336| 
|| [!B0]   MVK     .S2     0x1,B1            ; |336| 

	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",337,3
;** --------------------------------------------------------------------------*
L35:    
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",343,2
           NOP             1
   [!B1]   B       .S1     L37               ; |343| 
           NOP             5
           ; BRANCHCC OCCURS {L37}           ; |343| 
;** --------------------------------------------------------------------------*
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",344,3

           CMPLT   .L1     A4,0,A1           ; |344| 
||         LDW     .D2T2   *+DP(_tone_len_count),B4 ; |344| 

   [ A1]   B       .S1     L37               ; |344| 
           NOP             5
           ; BRANCHCC OCCURS {L37}           ; |344| 
;** --------------------------------------------------------------------------*
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",345,4
           LDW     .D2T2   *+DP(_min_tone_len),B5 ; |345| 
           NOP             4
           CMPLT   .L2     B4,B5,B0          ; |345| 
   [ B0]   B       .S1     L36               ; |345| 
           NOP             5
           ; BRANCHCC OCCURS {L36}           ; |345| 
;** --------------------------------------------------------------------------*
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",346,5

           LDW     .D2T2   *+DP(_tone_index),B7 ; |346| 
||         MVKL    .S2     _detected_tones,B4 ; |346| 

           MVKH    .S2     _detected_tones,B4 ; |346| 
           NOP             3
           STW     .D2T1   A4,*+B4[B7]       ; |346| 
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",347,5
           ADD     .L2     1,B7,B6           ; |347| 
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",348,5
           MVK     .S1     29,A3             ; |348| 
           CMPLT   .L1X    B7,A3,A1          ; |348| 
   [ A1]   STW     .D2T2   B6,*+DP(_tone_index)
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",348,36
   [!A1]   SUB     .D2     B6,30,B6          ; |348| 
   [!A1]   STW     .D2T2   B6,*+DP(_tone_index) ; |348| 
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",349,5
           LDW     .D2T2   *+DP(_pulse_tone_index),B4 ; |349| 
           NOP             4
           CMPEQ   .L2     B6,B4,B0          ; |349| 
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",350,6
   [ B0]   ADD     .L1X    1,B4,A4           ; |350| 
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",351,6

   [ B0]   MVK     .S2     29,B6             ; |351| 
||         ZERO    .D2     B1                ; |351| 
||         CMPEQ   .L2     B0,0,B9           ; |351| 

   [ B0]   CMPLT   .L2     B4,B6,B5          ; |351| 

   [ B0]   MV      .L2     B5,B1             ; |351| 
||         OR      .S2     B5,B9,B0          ; |351| 

   [ B1]   STW     .D2T1   A4,*+DP(_pulse_tone_index)
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",352,7
   [!B0]   SUB     .D1     A4,30,A3          ; |352| 
   [!B0]   STW     .D2T1   A3,*+DP(_pulse_tone_index) ; |352| 
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",356,5
           ZERO    .L1     A3                ; |356| 
           STW     .D2T1   A3,*+DP(_tone_len_count) ; |356| 
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",357,5
           STW     .D2T1   A3,*+DP(_gap_flag) ; |357| 
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",358,5
           ZERO    .L2     B4                ; |358| 
           STW     .D2T2   B4,*+DP(_gap_len_count) ; |358| 
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",359,4
           B       .S1     L37               ; |359| 
           NOP             5
           ; BRANCH OCCURS {L37}             ; |359| 
;** --------------------------------------------------------------------------*
L36:    
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",360,5
           ADD     .L2     1,B4,B4           ; |360| 
           STW     .D2T2   B4,*+DP(_tone_len_count) ; |360| 
;** --------------------------------------------------------------------------*
L37:    
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",365,1
           LDW     .D2T1   *+SP(4),A10       ; |365| 
	.dwcfa	0xc0, 10
           LDW     .D2T2   *++SP(8),B3       ; |365| 
	.dwcfa	0xc0, 19
	.dwcfa	0x0e, 0
           NOP             4
           RET     .S2     B3                ; |365| 
           NOP             5
           ; BRANCH OCCURS {B3}              ; |365| 

DW$162	.dwtag  DW_TAG_loop
	.dwattr DW$162, DW_AT_name("H:\SPH\firmware\lab2\Configuration1cfg_c.asm:L33:1:1351387990")
	.dwattr DW$162, DW_AT_begin_file("H:\SPH\firmware\lab2\touchtone.c")
	.dwattr DW$162, DW_AT_begin_line(0x141)
	.dwattr DW$162, DW_AT_end_line(0x144)
DW$163	.dwtag  DW_TAG_loop_range
	.dwattr DW$163, DW_AT_low_pc(DW$L$_process_sample$6$B)
	.dwattr DW$163, DW_AT_high_pc(DW$L$_process_sample$6$E)
	.dwendtag DW$162


DW$164	.dwtag  DW_TAG_loop
	.dwattr DW$164, DW_AT_name("H:\SPH\firmware\lab2\Configuration1cfg_c.asm:L31:1:1351387990")
	.dwattr DW$164, DW_AT_begin_file("H:\SPH\firmware\lab2\touchtone.c")
	.dwattr DW$164, DW_AT_begin_line(0x138)
	.dwattr DW$164, DW_AT_end_line(0x13d)
DW$165	.dwtag  DW_TAG_loop_range
	.dwattr DW$165, DW_AT_low_pc(DW$L$_process_sample$4$B)
	.dwattr DW$165, DW_AT_high_pc(DW$L$_process_sample$4$E)
	.dwendtag DW$164

	.dwattr DW$156, DW_AT_end_file("H:\SPH\firmware\lab2\touchtone.c")
	.dwattr DW$156, DW_AT_end_line(0x16d)
	.dwattr DW$156, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$156

	.sect	".text"
	.global	_generate_pulse_sample

DW$166	.dwtag  DW_TAG_subprogram, DW_AT_name("generate_pulse_sample"), DW_AT_symbol_name("_generate_pulse_sample")
	.dwattr DW$166, DW_AT_low_pc(_generate_pulse_sample)
	.dwattr DW$166, DW_AT_high_pc(0x00)
	.dwattr DW$166, DW_AT_begin_file("H:\SPH\firmware\lab2\touchtone.c")
	.dwattr DW$166, DW_AT_begin_line(0xd7)
	.dwattr DW$166, DW_AT_begin_column(0x07)
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",215,35

	.dwfde DW$CIE

;******************************************************************************
;* FUNCTION NAME: _generate_pulse_sample                                      *
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
_generate_pulse_sample:
;** --------------------------------------------------------------------------*
	.dwcfa	0x0e, 0
	.dwcfa	0x09, 126, 19
           STW     .D2T2   B3,*SP--(8)       ; |215| 
	.dwcfa	0x0e, 8
	.dwcfa	0x80, 19, 0
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",224,2
           LDW     .D2T2   *+DP(_pulse_state),B0 ; |224| 
           LDW     .D2T2   *+DP(_pulse_sample_index),B6
           NOP             3
           CMPEQ   .L2     B0,1,B1           ; |224| 
   [ B1]   B       .S1     L45               ; |224| 
           NOP             5
           ; BRANCHCC OCCURS {L45}           ; |224| 
;** --------------------------------------------------------------------------*
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",225,3
           LDW     .D2T2   *+DP(_tone_index),B5 ; |225| 
           LDW     .D2T2   *+DP(_pulse_tone_index),B4 ; |225| 
           NOP             4
           CMPEQ   .L2     B4,B5,B1          ; |225| 
   [ B1]   B       .S1     L46               ; |225| 
           NOP             5
           ; BRANCHCC OCCURS {L46}           ; |225| 
;** --------------------------------------------------------------------------*
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",227,5

           CMPEQ   .L2     B0,3,B1           ; |227| 
||         LDW     .D2T2   *+DP(_pulse_sample_index),B6 ; |227| 

   [ B1]   B       .S1     L44               ; |227| 
           NOP             5
           ; BRANCHCC OCCURS {L44}           ; |227| 
;** --------------------------------------------------------------------------*
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",235,4
           CMPEQ   .L2     B0,-1,B1          ; |235| 
   [ B1]   B       .S1     L42               ; |235| 
           NOP             5
           ; BRANCHCC OCCURS {L42}           ; |235| 
;** --------------------------------------------------------------------------*
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",239,11

           MVKL    .S1     _detected_tones,A4 ; |239| 
||         MV      .L1X    B4,A3             ; |239| 

           MVKH    .S1     _detected_tones,A4 ; |239| 
           LDW     .D1T1   *+A4[A3],A1       ; |239| 
           NOP             4
           CMPEQ   .L1     A1,11,A2          ; |239| 
   [ A2]   B       .S1     L41               ; |239| 
           NOP             5
           ; BRANCHCC OCCURS {L41}           ; |239| 
;** --------------------------------------------------------------------------*
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",244,11
   [ B0]   B       .S1     L39               ; |244| 
           NOP             5
           ; BRANCHCC OCCURS {L39}           ; |244| 
;** --------------------------------------------------------------------------*
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",245,5
           CMPEQ   .L1     A1,10,A2          ; |245| 
   [ A2]   B       .S1     L38               ; |245| 
           NOP             5
           ; BRANCHCC OCCURS {L38}           ; |245| 
;** --------------------------------------------------------------------------*
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",247,12

           CMPLT   .L1     A1,10,A4          ; |247| 
||         CMPLT   .L2X    A1,0,B4           ; |247| 

           XOR     .L1     1,A4,A4           ; |247| 
           OR      .L2X    B4,A4,B1          ; |247| 
   [ B1]   B       .S1     L43               ; |247| 
           NOP             5
           ; BRANCHCC OCCURS {L43}           ; |247| 
;** --------------------------------------------------------------------------*
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",250,6
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",251,36

   [!A1]   MVK     .S1     10,A4             ; |251| 
|| [ A1]   STW     .D2T1   A1,*+DP(_pulse_tone_count_max)

   [!A1]   STW     .D2T1   A4,*+DP(_pulse_tone_count_max) ; |251| 
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",254,6

           ZERO    .L2     B4                ; |254| 
||         MVK     .S2     1,B9              ; |254| 

           STW     .D2T2   B9,*+DP(_pulse_state) ; |254| 
           STW     .D2T2   B4,*+DP(_pulse_tone_count) ; |254| 
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",255,6
           ZERO    .L2     B4                ; |255| 
           STW     .D2T2   B4,*+DP(_pulse_sample_index) ; |255| 
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",248,6
           MVK     .S2     0x1,B0            ; |248| 
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",255,6

           B       .S1     L43               ; |255| 
||         ZERO    .L2     B6                ; |255| 

           NOP             5
           ; BRANCH OCCURS {L43}             ; |255| 
;** --------------------------------------------------------------------------*
L38:    
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",246,6
           MVK     .S2     2,B4              ; |246| 

           STW     .D2T2   B4,*+DP(_pulse_state) ; |246| 
||         MVK     .S2     0x2,B0            ; |246| 

	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",247,5
           B       .S1     L43               ; |247| 
           NOP             5
           ; BRANCH OCCURS {L43}             ; |247| 
;** --------------------------------------------------------------------------*
L39:    
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",257,11
           CMPEQ   .L2     B0,2,B1           ; |257| 
   [!B1]   B       .S1     L43               ; |257| 
           NOP             5
           ; BRANCHCC OCCURS {L43}           ; |257| 
;** --------------------------------------------------------------------------*
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",258,5
           CMPLT   .L1     A1,10,A2          ; |258| 
   [!A2]   B       .S1     L40               ; |258| 
           NOP             5
           ; BRANCHCC OCCURS {L40}           ; |258| 
;** --------------------------------------------------------------------------*
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",260,6
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",260,48

   [!A1]   B       .S1     L40               ; |260| 
|| [!A1]   MVK     .S2     800,B4            ; |260| 

   [!A1]   STW     .D2T2   B4,*+DP(_pulse_len) ; |260| 
           NOP             4
           ; BRANCHCC OCCURS {L40}           ; |260| 
;** --------------------------------------------------------------------------*
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",261,11

           CALL    .S1     __divi            ; |261| 
||         MVKL    .S2     RL19,B3           ; |261| 

           MVKH    .S2     RL19,B3           ; |261| 
           MV      .L2X    A1,B4             ; |261| 
           MVK     .S1     0x1f40,A4         ; |261| 
           NOP             2
RL19:      ; CALL OCCURS {__divi}            ; |261| 
;** --------------------------------------------------------------------------*
           STW     .D2T1   A4,*+DP(_pulse_len) ; |261| 
;** --------------------------------------------------------------------------*
L40:    
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",263,5

           B       .S1     L43               ; |263| 
||         ZERO    .L2     B4                ; |263| 
||         ZERO    .S2     B0                ; |263| 

           STW     .D2T2   B4,*+DP(_pulse_state) ; |263| 
           NOP             4
           ; BRANCH OCCURS {L43}             ; |263| 
;** --------------------------------------------------------------------------*
L41:    
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",241,5

           CALL    .S1     _record_tones_to_file ; |241| 
||         MVKL    .S2     RL20,B3           ; |241| 

           MVKH    .S2     RL20,B3           ; |241| 
           NOP             4
RL20:      ; CALL OCCURS {_record_tones_to_file}  ; |241| 
;** --------------------------------------------------------------------------*
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",242,5
           MVK     .S1     -1,A3             ; |242| 
           STW     .D2T1   A3,*+DP(_pulse_state) ; |242| 
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",243,5
           MVK     .S2     800,B4            ; |243| 
           STW     .D2T2   B4,*+DP(_pulse_len) ; |243| 
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",244,4
           LDW     .D2T2   *+DP(_pulse_sample_index),B6 ; |244| 
           LDW     .D2T1   *+DP(_pulse_tone_index),A3 ; |244| 
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",242,5
           MVK     .S2     0xffffffff,B0     ; |242| 
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",244,4
           B       .S1     L43               ; |244| 
           NOP             5
           ; BRANCH OCCURS {L43}             ; |244| 
;** --------------------------------------------------------------------------*
L42:    
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",236,5

           MVKL    .S1     _detected_tones,A4 ; |236| 
||         MV      .L1X    B4,A3             ; |236| 

           MVKH    .S1     _detected_tones,A4 ; |236| 
           LDW     .D1T1   *+A4[A3],A4       ; |236| 
           NOP             4
           CMPEQ   .L1     A4,10,A1          ; |236| 
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",237,6

   [ A1]   ZERO    .L2     B4                ; |237| 
|| [ A1]   ZERO    .S2     B0                ; |237| 

   [ A1]   STW     .D2T2   B4,*+DP(_pulse_state) ; |237| 
;** --------------------------------------------------------------------------*
L43:    
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",266,4

           MVK     .S1     30,A4             ; |266| 
||         ADD     .L1     1,A3,A3           ; |266| 

           CMPLT   .L1     A3,A4,A1          ; |266| 
   [ A1]   STW     .D2T1   A3,*+DP(_pulse_tone_index)
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",267,41

           B       .S1     L45               ; |267| 
|| [!A1]   SUB     .D1     A3,30,A3          ; |267| 

   [!A1]   STW     .D2T1   A3,*+DP(_pulse_tone_index) ; |267| 
           NOP             4
           ; BRANCH OCCURS {L45}             ; |267| 
;** --------------------------------------------------------------------------*
L44:    
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",228,4

           MVK     .S1     4000,A3           ; |228| 
||         ADD     .L2     1,B6,B6           ; |228| 

           CMPGT   .L1X    B6,A3,A1          ; |228| 
   [!A1]   STW     .D2T2   B6,*+DP(_pulse_sample_index)
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",230,5
   [ A1]   ZERO    .L2     B4                ; |230| 
   [ A1]   STW     .D2T2   B4,*+DP(_pulse_state) ; |230| 
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",231,5
   [ A1]   ZERO    .L2     B4                ; |231| 
   [ A1]   STW     .D2T2   B4,*+DP(_pulse_sample_index) ; |231| 
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",230,5
   [ A1]   ZERO    .L2     B0                ; |230| 
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",231,5
   [ A1]   ZERO    .L2     B6                ; |231| 
;** --------------------------------------------------------------------------*
L45:    
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",271,2
           CMPEQ   .L2     B0,1,B0           ; |271| 
   [ B0]   B       .S1     L47               ; |271| 
           NOP             5
           ; BRANCHCC OCCURS {L47}           ; |271| 
;** --------------------------------------------------------------------------*
L46:    
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",290,2

           B       .S1     L48               ; |290| 
||         ZERO    .L1     A4                ; |290| 

           NOP             5
           ; BRANCH OCCURS {L48}             ; |290| 
;** --------------------------------------------------------------------------*
L47:    
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",272,3

           LDW     .D2T2   *+DP(_pulse_len),B4 ; |272| 
||         CMPLT   .L2     B6,8,B0           ; |272| 

	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",273,4
   [ B0]   ADD     .L2     1,B6,B5           ; |273| 
   [ B0]   STW     .D2T2   B5,*+DP(_pulse_sample_index) ; |273| 
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",274,4

   [ B0]   B       .S2     L48               ; |274| 
|| [ B0]   MVK     .S1     0x7fff,A4         ; |274| 

           NOP             5
           ; BRANCHCC OCCURS {L48}           ; |274| 
;** --------------------------------------------------------------------------*
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",275,10

           CMPLT   .L2     B6,B4,B0          ; |275| 
||         LDW     .D2T2   *+DP(_pulse_tone_count),B4 ; |275| 

           LDW     .D2T2   *+DP(_pulse_tone_count_max),B5 ; |275| 
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",276,4
   [ B0]   ADD     .L2     1,B6,B6           ; |276| 
   [ B0]   STW     .D2T2   B6,*+DP(_pulse_sample_index) ; |276| 
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",277,4

   [ B0]   B       .S1     L48               ; |277| 
|| [ B0]   ZERO    .L1     A4                ; |277| 

           NOP             5
           ; BRANCHCC OCCURS {L48}           ; |277| 
;** --------------------------------------------------------------------------*
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",280,4
           ADD     .L2     1,B4,B4           ; |280| 
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",281,4
           ZERO    .L1     A3                ; |281| 
           STW     .D2T1   A3,*+DP(_pulse_sample_index) ; |281| 
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",282,4

           CMPLT   .L2     B4,B5,B0          ; |282| 
||         ZERO    .L1     A4

	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",283,5
   [!B0]   ZERO    .L2     B4                ; |283| 
   [!B0]   STW     .D2T2   B4,*+DP(_pulse_tone_count) ; |283| 
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",284,5
   [!B0]   MVK     .S2     3,B4              ; |284| 
   [!B0]   STW     .D2T2   B4,*+DP(_pulse_state) ; |284| 
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",285,5
   [ B0]   STW     .D2T2   B4,*+DP(_pulse_tone_count)
;** --------------------------------------------------------------------------*
L48:    
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",291,1
           LDW     .D2T2   *++SP(8),B3       ; |291| 
	.dwcfa	0xc0, 19
	.dwcfa	0x0e, 0
           NOP             4
           RET     .S2     B3                ; |291| 
           NOP             5
           ; BRANCH OCCURS {B3}              ; |291| 
	.dwattr DW$166, DW_AT_end_file("H:\SPH\firmware\lab2\touchtone.c")
	.dwattr DW$166, DW_AT_end_line(0x123)
	.dwattr DW$166, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$166

	.sect	".text"
	.global	_main

DW$167	.dwtag  DW_TAG_subprogram, DW_AT_name("main"), DW_AT_symbol_name("_main")
	.dwattr DW$167, DW_AT_low_pc(_main)
	.dwattr DW$167, DW_AT_high_pc(0x00)
	.dwattr DW$167, DW_AT_begin_file("H:\SPH\firmware\lab2\touchtone.c")
	.dwattr DW$167, DW_AT_begin_line(0x92)
	.dwattr DW$167, DW_AT_begin_column(0x05)
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",146,12

	.dwfde DW$CIE

;******************************************************************************
;* FUNCTION NAME: _main                                                       *
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
_main:
;** --------------------------------------------------------------------------*
	.dwcfa	0x0e, 0
	.dwcfa	0x09, 126, 19
           STW     .D2T2   B3,*SP--(8)       ; |146| 
	.dwcfa	0x0e, 8
	.dwcfa	0x80, 19, 0
           STW     .D2T1   A10,*+SP(4)       ; |146| 
	.dwcfa	0x80, 10, 1
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",147,2
           CALL    .S1     _DSK6713_init     ; |147| 
           MVKL    .S2     RL21,B3           ; |147| 
           MVKH    .S2     RL21,B3           ; |147| 
           NOP             3
RL21:      ; CALL OCCURS {_DSK6713_init}     ; |147| 
;** --------------------------------------------------------------------------*
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",148,2
           CALL    .S1     _DSK6713_AIC23_openCodec ; |148| 
           MVKL    .S1     _config,A3        ; |148| 
           MVKH    .S1     _config,A3        ; |148| 
           MVKL    .S2     RL22,B3           ; |148| 
           MV      .L2X    A3,B4             ; |148| 

           MVKH    .S2     RL22,B3           ; |148| 
||         ZERO    .L1     A4                ; |148| 

RL22:      ; CALL OCCURS {_DSK6713_AIC23_openCodec}  ; |148| 
           STW     .D2T1   A4,*+DP(_hCodec)  ; |148| 
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",149,2
           CALL    .S1     _DSK6713_AIC23_setFreq ; |149| 
           MVKL    .S2     RL23,B3           ; |149| 
           MVK     .S2     0x1,B4            ; |149| 
           MVKH    .S2     RL23,B3           ; |149| 
           NOP             2
RL23:      ; CALL OCCURS {_DSK6713_AIC23_setFreq}  ; |149| 
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",152,2
           CALL    .S1     _fopen            ; |152| 
           MVKL    .S2     SL1+0,B4          ; |152| 
           MVKL    .S2     RL24,B3           ; |152| 
           MVKH    .S2     SL1+0,B4          ; |152| 
           MVKL    .S1     SL2+0,A4          ; |152| 

           MVKH    .S1     SL2+0,A4          ; |152| 
||         MVKH    .S2     RL24,B3           ; |152| 

RL24:      ; CALL OCCURS {_fopen}            ; |152| 
;** --------------------------------------------------------------------------*
           MV      .L1     A4,A1             ; |152| 
           STW     .D2T1   A1,*+DP(_textfile) ; |152| 
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",153,2
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",154,3

   [!A1]   B       .S1     L53               ; |154| 
|| [!A1]   ZERO    .L1     A10               ; |154| 

           NOP             5
           ; BRANCHCC OCCURS {L53}           ; |154| 
;** --------------------------------------------------------------------------*
	.dwpsn	"C:/CCStudio_v3.1/C6000/csl/include/csl_irq.h",350,3
           MVC     .S2     CSR,B4            ; |350| 
           OR      .L2     1,B4,B4           ; |350| 
           MVC     .S2     B4,CSR            ; |350| 
	.dwpsn	"C:/CCStudio_v3.1/C6000/csl/include/csl_irq.h",320,3
           MVKL    .S1     __IRQ_eventTable,A3 ; |320| 

           MVKH    .S1     __IRQ_eventTable,A3 ; |320| 
||         MVC     .S2     IER,B4            ; |320| 

           LDW     .D1T1   *+A3(60),A4       ; |320| 
           NOP             4
           OR      .L2X    A4,B4,B4          ; |320| 
           MVC     .S2     B4,IER            ; |320| 
           MVC     .S2     IER,B4            ; |320| 
           LDW     .D1T1   *+A3(56),A3       ; |320| 
           NOP             4
           OR      .L2X    A3,B4,B4          ; |320| 
           MVC     .S2     B4,IER            ; |320| 
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",163,8

           CALL    .S1     _DSK6713_AIC23_write ; |163| 
||         LDW     .D2T1   *+DP(_hCodec),A4  ; |163| 
||         MVKL    .S2     RL25,B3           ; |163| 
||         ZERO    .L2     B4                ; |163| 

           MVKH    .S2     RL25,B3           ; |163| 
           NOP             4
RL25:      ; CALL OCCURS {_DSK6713_AIC23_write}  ; |163| 
;** --------------------------------------------------------------------------*
           MV      .L1     A4,A1             ; |163| 
   [ A1]   B       .S1     L50               ; |163| 
           NOP             5
           ; BRANCHCC OCCURS {L50}           ; |163| 
;** --------------------------------------------------------------------------*

           CALL    .S1     _DSK6713_AIC23_write ; |163| 
||         LDW     .D2T1   *+DP(_hCodec),A4  ; |163| 
||         MVKL    .S2     RL26,B3           ; |163| 
||         ZERO    .L2     B4                ; |163| 

           MVKH    .S2     RL26,B3           ; |163| 
           NOP             3
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*----------------------------------------------------------------------------*
L49:    
DW$L$_main$7$B:
           NOP             1
RL26:      ; CALL OCCURS {_DSK6713_AIC23_write}  ; |163| 
DW$L$_main$7$E:
;** --------------------------------------------------------------------------*
DW$L$_main$8$B:
           MV      .L1     A4,A1             ; |163| 

   [!A1]   B       .S1     L49               ; |163| 
|| [!A1]   LDW     .D2T1   *+DP(_hCodec),A4  ; |163| 
|| [!A1]   MVKL    .S2     RL26,B3           ; |163| 
|| [!A1]   ZERO    .L2     B4                ; |163| 

   [!A1]   CALL    .S1     _DSK6713_AIC23_write ; |163| 
|| [!A1]   MVKH    .S2     RL26,B3           ; |163| 

           NOP             4
           ; BRANCHCC OCCURS {L49}           ; |163| 
DW$L$_main$8$E:
;** --------------------------------------------------------------------------*
L50:    
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",165,2
           MVK     .S2     1,B4              ; |165| 
           STB     .D2T2   B4,*+DP(_channel_flag) ; |165| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains control code
;*----------------------------------------------------------------------------*
L51:    
DW$L$_main$10$B:
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",168,3
           LDBU    .D2T2   *+DP(_input_ready),B0 ; |168| 
           NOP             4
   [!B0]   B       .S1     L52               ; |168| 
           NOP             5
           ; BRANCHCC OCCURS {L52}           ; |168| 
DW$L$_main$10$E:
;** --------------------------------------------------------------------------*
DW$L$_main$11$B:
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",169,4

           CALL    .S1     _process_sample   ; |169| 
||         MVKL    .S2     RL27,B3           ; |169| 

           LDH     .D2T1   *+DP(_mix),A4     ; |169| 
||         MVKH    .S2     RL27,B3           ; |169| 

           NOP             4
RL27:      ; CALL OCCURS {_process_sample}   ; |169| 
DW$L$_main$11$E:
;** --------------------------------------------------------------------------*
DW$L$_main$12$B:
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",170,4
           ZERO    .L2     B4                ; |170| 
           STB     .D2T2   B4,*+DP(_input_ready) ; |170| 
DW$L$_main$12$E:
;** --------------------------------------------------------------------------*
L52:    
DW$L$_main$13$B:
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",172,3
           LDBU    .D2T2   *+DP(_output_ready),B4 ; |172| 
           NOP             4
           CMPLTU  .L2     B4,2,B0           ; |172| 
   [ B0]   B       .S1     L51               ; |172| 
           NOP             5
           ; BRANCHCC OCCURS {L51}           ; |172| 
DW$L$_main$13$E:
;** --------------------------------------------------------------------------*
DW$L$_main$14$B:
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",173,4

           CALL    .S1     _generate_pulse_sample ; |173| 
||         MVKL    .S2     RL28,B3           ; |173| 

           MVKH    .S2     RL28,B3           ; |173| 
           NOP             4
RL28:      ; CALL OCCURS {_generate_pulse_sample}  ; |173| 
DW$L$_main$14$E:
;** --------------------------------------------------------------------------*
DW$L$_main$15$B:
           STH     .D2T1   A4,*+DP(_audio_out) ; |173| 
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",175,4

           B       .S1     L51               ; |175| 
||         ZERO    .L2     B4                ; |175| 

           STB     .D2T2   B4,*+DP(_output_ready) ; |175| 
           NOP             4
           ; BRANCH OCCURS {L51}             ; |175| 
DW$L$_main$15$E:
;** --------------------------------------------------------------------------*
L53:    
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",184,1

           MV      .L1     A10,A4            ; |175| 
||         LDW     .D2T1   *+SP(4),A10       ; |184| 

	.dwcfa	0xc0, 10
           LDW     .D2T2   *++SP(8),B3       ; |184| 
	.dwcfa	0xc0, 19
	.dwcfa	0x0e, 0
           NOP             4
           RET     .S2     B3                ; |184| 
           NOP             5
           ; BRANCH OCCURS {B3}              ; |184| 

DW$168	.dwtag  DW_TAG_loop
	.dwattr DW$168, DW_AT_name("H:\SPH\firmware\lab2\Configuration1cfg_c.asm:L51:1:1351387990")
	.dwattr DW$168, DW_AT_begin_file("H:\SPH\firmware\lab2\touchtone.c")
	.dwattr DW$168, DW_AT_begin_line(0xa7)
	.dwattr DW$168, DW_AT_end_line(0xb1)
DW$169	.dwtag  DW_TAG_loop_range
	.dwattr DW$169, DW_AT_low_pc(DW$L$_main$10$B)
	.dwattr DW$169, DW_AT_high_pc(DW$L$_main$10$E)
DW$170	.dwtag  DW_TAG_loop_range
	.dwattr DW$170, DW_AT_low_pc(DW$L$_main$14$B)
	.dwattr DW$170, DW_AT_high_pc(DW$L$_main$14$E)
DW$171	.dwtag  DW_TAG_loop_range
	.dwattr DW$171, DW_AT_low_pc(DW$L$_main$11$B)
	.dwattr DW$171, DW_AT_high_pc(DW$L$_main$11$E)
DW$172	.dwtag  DW_TAG_loop_range
	.dwattr DW$172, DW_AT_low_pc(DW$L$_main$12$B)
	.dwattr DW$172, DW_AT_high_pc(DW$L$_main$12$E)
DW$173	.dwtag  DW_TAG_loop_range
	.dwattr DW$173, DW_AT_low_pc(DW$L$_main$15$B)
	.dwattr DW$173, DW_AT_high_pc(DW$L$_main$15$E)
DW$174	.dwtag  DW_TAG_loop_range
	.dwattr DW$174, DW_AT_low_pc(DW$L$_main$13$B)
	.dwattr DW$174, DW_AT_high_pc(DW$L$_main$13$E)
	.dwendtag DW$168


DW$175	.dwtag  DW_TAG_loop
	.dwattr DW$175, DW_AT_name("H:\SPH\firmware\lab2\Configuration1cfg_c.asm:L49:1:1351387990")
	.dwattr DW$175, DW_AT_begin_file("H:\SPH\firmware\lab2\touchtone.c")
	.dwattr DW$175, DW_AT_begin_line(0xa3)
	.dwattr DW$175, DW_AT_end_line(0xa3)
DW$176	.dwtag  DW_TAG_loop_range
	.dwattr DW$176, DW_AT_low_pc(DW$L$_main$7$B)
	.dwattr DW$176, DW_AT_high_pc(DW$L$_main$7$E)
DW$177	.dwtag  DW_TAG_loop_range
	.dwattr DW$177, DW_AT_low_pc(DW$L$_main$8$B)
	.dwattr DW$177, DW_AT_high_pc(DW$L$_main$8$E)
	.dwendtag DW$175

	.dwattr DW$167, DW_AT_end_file("H:\SPH\firmware\lab2\touchtone.c")
	.dwattr DW$167, DW_AT_end_line(0xb8)
	.dwattr DW$167, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$167

	.sect	".text"
	.global	_detect_tone_maxbins

DW$178	.dwtag  DW_TAG_subprogram, DW_AT_name("detect_tone_maxbins"), DW_AT_symbol_name("_detect_tone_maxbins")
	.dwattr DW$178, DW_AT_low_pc(_detect_tone_maxbins)
	.dwattr DW$178, DW_AT_high_pc(0x00)
	.dwattr DW$178, DW_AT_begin_file("H:\SPH\firmware\lab2\touchtone.c")
	.dwattr DW$178, DW_AT_begin_line(0x1ed)
	.dwattr DW$178, DW_AT_begin_column(0x05)
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",493,41

	.dwfde DW$CIE

;******************************************************************************
;* FUNCTION NAME: _detect_tone_maxbins                                        *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,B0,B1,B2,B3,B4,*
;*                           B5,B6,B7,SP                                      *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,B0,B1,B2,B3,B4,*
;*                           B5,B6,B7,DP,SP                                   *
;*   Local Frame Size  : 0 Args + 16 Auto + 12 Save = 28 byte                 *
;******************************************************************************

;******************************************************************************
;*                                                                            *
;* Using -g (debug) with optimization (-o3) may disable key optimizations!    *
;*                                                                            *
;******************************************************************************
_detect_tone_maxbins:
;** --------------------------------------------------------------------------*
	.dwcfa	0x0e, 0
	.dwcfa	0x09, 126, 19
           STW     .D2T2   B3,*SP--(32)      ; |493| 
	.dwcfa	0x0e, 32
	.dwcfa	0x80, 19, 0
           STW     .D2T1   A11,*+SP(28)      ; |493| 
	.dwcfa	0x80, 11, 1
           STW     .D2T1   A10,*+SP(24)      ; |493| 
	.dwcfa	0x80, 10, 2
DW$179	.dwtag  DW_TAG_formal_parameter, DW_AT_name("absfft"), DW_AT_symbol_name("_absfft")
	.dwattr DW$179, DW_AT_type(*DW$T$25)
	.dwattr DW$179, DW_AT_location[DW_OP_reg4]
DW$180	.dwtag  DW_TAG_variable, DW_AT_name("absfft"), DW_AT_symbol_name("_absfft")
	.dwattr DW$180, DW_AT_type(*DW$T$101)
	.dwattr DW$180, DW_AT_location[DW_OP_reg4]
DW$181	.dwtag  DW_TAG_variable, DW_AT_name("i"), DW_AT_symbol_name("_i")
	.dwattr DW$181, DW_AT_type(*DW$T$10)
	.dwattr DW$181, DW_AT_location[DW_OP_reg6]
DW$182	.dwtag  DW_TAG_variable, DW_AT_name("tmp"), DW_AT_symbol_name("_tmp")
	.dwattr DW$182, DW_AT_type(*DW$T$10)
	.dwattr DW$182, DW_AT_location[DW_OP_reg3]
DW$183	.dwtag  DW_TAG_variable, DW_AT_name("maxval"), DW_AT_symbol_name("_maxval")
	.dwattr DW$183, DW_AT_type(*DW$T$103)
	.dwattr DW$183, DW_AT_location[DW_OP_breg31 4]
DW$184	.dwtag  DW_TAG_variable, DW_AT_name("maxfreq"), DW_AT_symbol_name("_maxfreq")
	.dwattr DW$184, DW_AT_type(*DW$T$85)
	.dwattr DW$184, DW_AT_location[DW_OP_breg31 12]
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",496,8
           MVKL    .S2     _$T3$4$2,B4       ; |496| 
           MVKH    .S2     _$T3$4$2,B4       ; |496| 
           LDW     .D2T2   *+B4(4),B5        ; |496| 
           LDW     .D2T2   *B4,B4            ; |496| 
           ADD     .L1X    4,SP,A3           ; |496| 
           NOP             3
           STW     .D1T2   B4,*A3            ; |496| 
           STW     .D1T2   B5,*+A3(4)        ; |496| 
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",497,6
           MVKL    .S1     _$T4$5$2,A3       ; |497| 
           MVKH    .S1     _$T4$5$2,A3       ; |497| 
           LDW     .D1T1   *+A3(4),A5        ; |497| 
           LDW     .D1T1   *A3,A3            ; |497| 
           ADD     .L2     12,SP,B4          ; |497| 
           NOP             2
           STW     .D2T1   A5,*+B4(4)        ; |497| 
           STW     .D2T1   A3,*B4            ; |497| 
           LDW     .D2T2   *+SP(8),B4
           LDW     .D2T1   *+SP(4),A5
           LDW     .D2T1   *+SP(16),A7
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",500,12
           MVK     .S1     0x40,A3           ; |500| 
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",500,6

           ZERO    .L1     A4                ; |500| 
||         MV      .S1     A4,A2

           LDW     .D1T1   *+A2[A4],A9       ; |501| (P) <0,0> 
||         MVC     .S2     CSR,B6

           AND     .L2     -2,B6,B7

           MVC     .S2     B7,CSR            ; interrupts off
||         ADD     .L1     1,A4,A11          ; |500| (P) <0,4> 

;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 500
;*      Loop opening brace source line   : 500
;*      Loop closing brace source line   : 511
;*      Known Minimum Trip Count         : 64                    
;*      Known Maximum Trip Count         : 64                    
;*      Known Max Trip Count Factor      : 64
;*      Loop Carried Dependency Bound(^) : 5
;*      Unpartitioned Resource Bound     : 3
;*      Partitioned Resource Bound(*)    : 3
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     1        0     
;*      .S units                     1        2     
;*      .D units                     1        2     
;*      .M units                     0        0     
;*      .X cross paths               2        3*    
;*      .T address paths             1        2     
;*      Long read paths              0        2     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           2        2     (.L or .S unit)
;*      Addition ops (.LSD)          4        3     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             2        2     
;*      Bound(.L .S .D .LS .LSD)     3*       3*    
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 5  Schedule found with 3 iterations in parallel
;*
;*      Register Usage Table:
;*          +---------------------------------+
;*          |AAAAAAAAAAAAAAAA|BBBBBBBBBBBBBBBB|
;*          |0000000000111111|0000000000111111|
;*          |0123456789012345|0123456789012345|
;*          |----------------+----------------|
;*       0: |***  *******    | ** **         *|
;*       1: |**** **** **    | ** **         *|
;*       2: |************    | ** **         *|
;*       3: |**** *******    |*** **         *|
;*       4: |***  *******    | ** **         *|
;*          +---------------------------------+
;*
;*      Done
;*
;*      Collapsed epilog stages     : 2
;*      Prolog not removed
;*      Collapsed prolog stages     : 0
;*
;*      Minimum required memory pad : 0 bytes
;*
;*      For further improvement on this loop, try option -mh2
;*
;*      Minimum safe trip count     : 2
;*----------------------------------------------------------------------------*
;*       SETUP CODE
;*
;*                  MV              A8,A7
;*                  MV              A11,A6
;*                  MV              B4,B5
;*
;*        SINGLE SCHEDULED ITERATION
;*
;*        C492:
;*   0              LDW     .D1T1   *+A2[A11],A9      ; |501| 
;*   1              NOP             3
;*   4              ADD     .S1     1,A11,A11         ; |500| 
;*   5              NOP             1
;*   6              MV      .L1     A11,A10           ; |500| Split a long life
;*     ||   [ B2]   SUB     .S2     B2,1,B2           ; |500| 
;*   7              CMPGTSP .S2X    A9,B4,B1          ; |501| 
;*     ||   [ B2]   B       .S1     C492              ; |500| 
;*   8              MV      .L1     A9,A3             ; |501| Split a long life
;*     ||   [!B1]   CMPGTSP .S1     A9,A5,A0          ; |507|  ^ 
;*     ||   [ B1]   MV      .D1     A6,A8             ; |506| 
;*   9              CMPEQ   .L1     A0,0,A4           ;  ^ 
;*  10              OR      .L2X    A4,B1,B0          ;  ^ 
;*  11      [!B0]   MV      .D1     A3,A5             ; |508|  ^ 
;*     ||   [!B0]   STW     .D2T1   A6,*+SP(12)       ; |509| 
;*     ||   [ B1]   MV      .L2X    A3,B4             ; |505| 
;*     ||           MV      .S1     A10,A6            ; |500| Inserted to break DPG cycle
;*  12      [ B1]   MV      .L1X    B5,A5             ; |502|  ^ 
;*     ||   [ B1]   STW     .D2T1   A7,*+SP(12)       ; |503| 
;*     ||   [ B1]   MV      .L2     B4,B5             ; |505| Inserted to break DPG cycle
;*     ||   [ B1]   MV      .D1     A8,A7             ; |506| Inserted to break DPG cycle
;*  13              ; BRANCHCC OCCURS {C492}          ; |500| 
;*----------------------------------------------------------------------------*
L54:    ; PIPED LOOP PROLOG
           LDW     .D1T1   *+A2[A11],A9      ; |501| (P) <1,0> 

           SUB     .L1     A3,2,A1
||         SUB     .L2X    A3,1,B2
||         MV      .S1     A11,A10           ; |500| (P) <0,6> Split a long life

           ZERO    .L1     A6                ; |500| 
||         MV      .L2     B4,B5
||         MV      .D1     A7,A8
||         B       .S1     L55               ; |500| (P) <0,7> 
||         CMPGTSP .S2X    A9,B4,B1          ; |501| (P) <0,7> 

;** --------------------------------------------------------------------------*
L55:    ; PIPED LOOP KERNEL
DW$L$_detect_tone_maxbins$3$B:

           MV      .L1     A9,A3             ; |501| <0,8> Split a long life
|| [ B1]   MV      .D1     A6,A8             ; |506| <0,8> 
|| [!B1]   CMPGTSP .S1     A9,A5,A0          ; |507| <0,8>  ^ 

           CMPEQ   .L1     A0,0,A4           ; <0,9>  ^ 
||         ADD     .S1     1,A11,A11         ; |500| <1,4> 

   [ A1]   SUB     .L1     A1,1,A1           ; <0,10> 
||         OR      .L2X    A4,B1,B0          ; <0,10>  ^ 
|| [ A1]   LDW     .D1T1   *+A2[A11],A9      ; |501| <2,0> 

   [ B1]   MV      .L2X    A3,B4             ; |505| <0,11> 
||         MV      .S1     A10,A6            ; |500| <0,11> Inserted to break DPG cycle
|| [!B0]   MV      .D1     A3,A5             ; |508| <0,11>  ^ 
|| [!B0]   STW     .D2T1   A6,*+SP(12)       ; |509| <0,11> 
||         MV      .L1     A11,A10           ; |500| <1,6> Split a long life
|| [ B2]   SUB     .S2     B2,1,B2           ; |500| <1,6> 

   [ B1]   MV      .L2     B4,B5             ; |505| <0,12> Inserted to break DPG cycle
|| [ B1]   MV      .D1     A8,A7             ; |506| <0,12> Inserted to break DPG cycle
|| [ B1]   MV      .L1X    B5,A5             ; |502| <0,12>  ^ 
|| [ B1]   STW     .D2T1   A7,*+SP(12)       ; |503| <0,12> 
|| [ B2]   B       .S1     L55               ; |500| <1,7> 
||         CMPGTSP .S2X    A9,B4,B1          ; |501| <1,7> 

DW$L$_detect_tone_maxbins$3$E:
;** --------------------------------------------------------------------------*
L56:    ; PIPED LOOP EPILOG

           STW     .D2T1   A5,*+SP(4)
||         MV      .L1     A8,A7

           MVC     .S2     B6,CSR            ; interrupts on
||         STW     .D2T1   A7,*+SP(16)

           STW     .D2T2   B4,*+SP(8)
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",514,2

           LDW     .D2T1   *+SP(12),A4       ; |514| 
||         CALL    .S2     _snapfreq         ; |514| 

           MVKL    .S2     RL29,B3           ; |514| 
           MVKH    .S2     RL29,B3           ; |514| 
           NOP             3
RL29:      ; CALL OCCURS {_snapfreq}         ; |514| 
           NOP             1
           STW     .D2T1   A4,*+SP(12)       ; |514| 
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",515,2

           LDW     .D2T1   *+SP(16),A4       ; |515| 
||         CALL    .S2     _snapfreq         ; |515| 

           MVKL    .S2     RL30,B3           ; |515| 
           MVKH    .S2     RL30,B3           ; |515| 
           NOP             3
RL30:      ; CALL OCCURS {_snapfreq}         ; |515| 
;** --------------------------------------------------------------------------*
           STW     .D2T1   A4,*+SP(16)       ; |515| 
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",518,2

           LDW     .D2T1   *+SP(12),A6       ; |518| 
||         CMPEQ   .L1     A4,-1,A1          ; |518| 

           NOP             4
           CMPEQ   .L2X    A6,-1,B0          ; |518| 

   [ B0]   ZERO    .L1     A1                ; nullify predicate
|| [ B0]   B       .S1     L58               ; |518| 

   [ A1]   B       .S1     L58               ; |518| 
           NOP             4
           ; BRANCHCC OCCURS {L58}           ; |518| 
;** --------------------------------------------------------------------------*
           NOP             1
           ; BRANCHCC OCCURS {L58}           ; |518| 
;** --------------------------------------------------------------------------*
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",522,2
           CMPGT   .L1     A6,A4,A1          ; |522| 
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",523,7
   [ A1]   MV      .L1     A6,A3             ; |523| 
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",524,3
   [ A1]   STW     .D2T1   A4,*+SP(12)       ; |524| 
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",525,3

   [ A1]   MV      .L1     A4,A6
|| [ A1]   STW     .D2T1   A3,*+SP(16)       ; |525| 

	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",529,12

           MVKL    .S1     _tones-12,A3
||         MVK     .S2     0xc,B1            ; |529| 

           MVKH    .S1     _tones-12,A3
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains control code
;*----------------------------------------------------------------------------*
L57:    
DW$L$_detect_tone_maxbins$8$B:
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",530,3

           LDW     .D1T1   *++A3(12),A5      ; |530| 
||         LDW     .D2T2   *+SP(16),B4       ; |530| 

           NOP             4
           CMPEQ   .L1     A5,A6,A1          ; |530| 
   [ A1]   LDW     .D1T1   *+A3(4),A5        ; |530| 
           NOP             4
   [ A1]   CMPEQ   .L2X    A5,B4,B4          ; |530| 
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",531,4
           ZERO    .L2     B0
   [ A1]   MV      .L2     B4,B0

   [ B0]   B       .S1     L59               ; |531| 
|| [ B0]   LDW     .D1T1   *+A3(8),A4        ; |531| 

           NOP             5
           ; BRANCHCC OCCURS {L59}           ; |531| 
DW$L$_detect_tone_maxbins$8$E:
;** --------------------------------------------------------------------------*
DW$L$_detect_tone_maxbins$9$B:
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",529,12
           SUB     .L2     B1,1,B1           ; |529| 
   [ B1]   B       .S1     L57               ; |529| 
           NOP             5
           ; BRANCHCC OCCURS {L57}           ; |529| 
DW$L$_detect_tone_maxbins$9$E:
;** --------------------------------------------------------------------------*
L58:    
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",534,2
           MVK     .S1     0xffffffff,A4     ; |534| 
;** --------------------------------------------------------------------------*
L59:    
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",535,1
           LDW     .D2T1   *+SP(28),A11      ; |535| 
	.dwcfa	0xc0, 11
           LDW     .D2T1   *+SP(24),A10      ; |535| 
	.dwcfa	0xc0, 10
           LDW     .D2T2   *++SP(32),B3      ; |535| 
           NOP             4
	.dwcfa	0xc0, 19
	.dwcfa	0x0e, 0
           RET     .S2     B3                ; |535| 
           NOP             5
           ; BRANCH OCCURS {B3}              ; |535| 

DW$185	.dwtag  DW_TAG_loop
	.dwattr DW$185, DW_AT_name("H:\SPH\firmware\lab2\Configuration1cfg_c.asm:L57:1:1351387990")
	.dwattr DW$185, DW_AT_begin_file("H:\SPH\firmware\lab2\touchtone.c")
	.dwattr DW$185, DW_AT_begin_line(0x211)
	.dwattr DW$185, DW_AT_end_line(0x215)
DW$186	.dwtag  DW_TAG_loop_range
	.dwattr DW$186, DW_AT_low_pc(DW$L$_detect_tone_maxbins$8$B)
	.dwattr DW$186, DW_AT_high_pc(DW$L$_detect_tone_maxbins$8$E)
DW$187	.dwtag  DW_TAG_loop_range
	.dwattr DW$187, DW_AT_low_pc(DW$L$_detect_tone_maxbins$9$B)
	.dwattr DW$187, DW_AT_high_pc(DW$L$_detect_tone_maxbins$9$E)
	.dwendtag DW$185


DW$188	.dwtag  DW_TAG_loop
	.dwattr DW$188, DW_AT_name("H:\SPH\firmware\lab2\Configuration1cfg_c.asm:L55:1:1351387990")
	.dwattr DW$188, DW_AT_begin_file("H:\SPH\firmware\lab2\touchtone.c")
	.dwattr DW$188, DW_AT_begin_line(0x1f4)
	.dwattr DW$188, DW_AT_end_line(0x1ff)
DW$189	.dwtag  DW_TAG_loop_range
	.dwattr DW$189, DW_AT_low_pc(DW$L$_detect_tone_maxbins$3$B)
	.dwattr DW$189, DW_AT_high_pc(DW$L$_detect_tone_maxbins$3$E)
	.dwendtag DW$188

	.dwattr DW$178, DW_AT_end_file("H:\SPH\firmware\lab2\touchtone.c")
	.dwattr DW$178, DW_AT_end_line(0x217)
	.dwattr DW$178, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$178

	.sect	".text"
	.global	_detect_tone_TI_thresholds

DW$190	.dwtag  DW_TAG_subprogram, DW_AT_name("detect_tone_TI_thresholds"), DW_AT_symbol_name("_detect_tone_TI_thresholds")
	.dwattr DW$190, DW_AT_low_pc(_detect_tone_TI_thresholds)
	.dwattr DW$190, DW_AT_high_pc(0x00)
	.dwattr DW$190, DW_AT_begin_file("H:\SPH\firmware\lab2\touchtone.c")
	.dwattr DW$190, DW_AT_begin_line(0x220)
	.dwattr DW$190, DW_AT_begin_column(0x05)
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",544,47

	.dwfde DW$CIE

;******************************************************************************
;* FUNCTION NAME: _detect_tone_TI_thresholds                                  *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,B0,*
;*                           B1,B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,B12,B13,SP    *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,B0,*
;*                           B1,B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,B12,B13,DP,SP *
;*   Local Frame Size  : 0 Args + 24 Auto + 40 Save = 64 byte                 *
;******************************************************************************

;******************************************************************************
;*                                                                            *
;* Using -g (debug) with optimization (-o3) may disable key optimizations!    *
;*                                                                            *
;******************************************************************************
_detect_tone_TI_thresholds:
;** --------------------------------------------------------------------------*
	.dwcfa	0x0e, 0
	.dwcfa	0x09, 126, 19

           STW     .D2T2   B13,*SP--(64)     ; |544| 
||         MV      .L1X    SP,A9             ; |544| 

	.dwcfa	0x80, 29, 0
           STW     .D2T2   B11,*+SP(60)
	.dwcfa	0x80, 27, 1
           STW     .D2T2   B10,*+SP(56)
	.dwcfa	0x80, 26, 2
           STW     .D2T2   B12,*+SP(52)
	.dwcfa	0x80, 28, 3
           STW     .D2T2   B3,*+SP(48)
	.dwcfa	0x80, 19, 4
           STW     .D1T1   A13,*-A9(20)
	.dwcfa	0x80, 13, 5
           STW     .D1T1   A12,*-A9(24)
	.dwcfa	0x80, 12, 6
           STW     .D1T1   A11,*-A9(28)
	.dwcfa	0x80, 11, 7
           STW     .D2T1   A10,*+SP(32)
	.dwcfa	0x80, 10, 8
           STW     .D2T1   A14,*+SP(28)
	.dwcfa	0x80, 14, 9
DW$191	.dwtag  DW_TAG_formal_parameter, DW_AT_name("absfft"), DW_AT_symbol_name("_absfft")
	.dwattr DW$191, DW_AT_type(*DW$T$25)
	.dwattr DW$191, DW_AT_location[DW_OP_reg4]
DW$192	.dwtag  DW_TAG_variable, DW_AT_name("absfft"), DW_AT_symbol_name("_absfft")
	.dwattr DW$192, DW_AT_type(*DW$T$101)
	.dwattr DW$192, DW_AT_location[DW_OP_reg26]
DW$193	.dwtag  DW_TAG_variable, DW_AT_name("j"), DW_AT_symbol_name("_j")
	.dwattr DW$193, DW_AT_type(*DW$T$10)
	.dwattr DW$193, DW_AT_location[DW_OP_reg29]
DW$194	.dwtag  DW_TAG_variable, DW_AT_name("j"), DW_AT_symbol_name("_j")
	.dwattr DW$194, DW_AT_type(*DW$T$10)
	.dwattr DW$194, DW_AT_location[DW_OP_reg27]
DW$195	.dwtag  DW_TAG_variable, DW_AT_name("i"), DW_AT_symbol_name("_i")
	.dwattr DW$195, DW_AT_type(*DW$T$10)
	.dwattr DW$195, DW_AT_location[DW_OP_reg21]
DW$196	.dwtag  DW_TAG_variable, DW_AT_name("i"), DW_AT_symbol_name("_i")
	.dwattr DW$196, DW_AT_type(*DW$T$10)
	.dwattr DW$196, DW_AT_location[DW_OP_reg21]
DW$197	.dwtag  DW_TAG_variable, DW_AT_name("maxval"), DW_AT_symbol_name("_maxval")
	.dwattr DW$197, DW_AT_type(*DW$T$103)
	.dwattr DW$197, DW_AT_location[DW_OP_breg31 4]
DW$198	.dwtag  DW_TAG_variable, DW_AT_name("maxfreq"), DW_AT_symbol_name("_maxfreq")
	.dwattr DW$198, DW_AT_type(*DW$T$85)
	.dwattr DW$198, DW_AT_location[DW_OP_breg31 12]
DW$199	.dwtag  DW_TAG_variable, DW_AT_name("maxfreqbin"), DW_AT_symbol_name("_maxfreqbin")
	.dwattr DW$199, DW_AT_type(*DW$T$85)
	.dwattr DW$199, DW_AT_location[DW_OP_breg31 20]
           MV      .L2X    A4,B10            ; |544| 
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",548,8
           MVKL    .S2     _$T5$6$2,B4       ; |548| 
           MVKH    .S2     _$T5$6$2,B4       ; |548| 
           LDW     .D2T2   *+B4(4),B5        ; |548| 
           LDW     .D2T2   *B4,B4            ; |548| 
           ADD     .L2     4,SP,B6           ; |548| 
           NOP             3
           STW     .D2T2   B4,*B6            ; |548| 
           STW     .D2T2   B5,*+B6(4)        ; |548| 
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",549,6
           MVKL    .S2     _$T6$7$2,B4       ; |549| 
           MVKH    .S2     _$T6$7$2,B4       ; |549| 
           LDW     .D2T2   *B4,B5            ; |549| 
           LDW     .D2T2   *+B4(4),B4        ; |549| 
           ADD     .L1X    12,SP,A3          ; |549| 
           NOP             3
           STW     .D1T2   B4,*+A3(4)        ; |549| 
           STW     .D1T2   B5,*A3            ; |549| 
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",550,6
           MVKL    .S1     _$T7$8$2,A3       ; |550| 
           MVKH    .S1     _$T7$8$2,A3       ; |550| 
           LDW     .D1T1   *+A3(4),A4        ; |550| 
           LDW     .D1T1   *A3,A3            ; |550| 
           MVKL    .S1     _freq_low,A5
           MVKL    .S1     _freq_low_bin,A6
           ADD     .D2     SP,20,B4          ; |550| 

           STW     .D2T1   A4,*+B4(4)        ; |550| 
||         MVKH    .S1     _freq_low,A5

           STW     .D2T1   A3,*B4            ; |550| 
||         MV      .L2X    A5,B6
||         MVKH    .S1     _freq_low_bin,A6

           MV      .L2X    A6,B11
||         LDW     .D2T1   *+SP(4),A4

	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",555,13
           MVK     .S2     0x4,B8            ; |555| 
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",555,6
           LDW     .D1T1   *A6++,A3          ; |556| (P) <0,0> 
           MVC     .S2     CSR,B7
           AND     .L2     -2,B7,B4
           MVC     .S2     B4,CSR            ; interrupts off
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 555
;*      Loop opening brace source line   : 555
;*      Loop closing brace source line   : 561
;*      Known Minimum Trip Count         : 4                    
;*      Known Maximum Trip Count         : 4                    
;*      Known Max Trip Count Factor      : 4
;*      Loop Carried Dependency Bound(^) : 2
;*      Unpartitioned Resource Bound     : 3
;*      Partitioned Resource Bound(*)    : 3
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        0     
;*      .S units                     1        1     
;*      .D units                     2        3*    
;*      .M units                     0        0     
;*      .X cross paths               0        0     
;*      .T address paths             2        3*    
;*      Long read paths              0        2     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          1        2     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1        1     
;*      Bound(.L .S .D .LS .LSD)     2        2     
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 3  Iterations in parallel > max. trip count
;*         ii = 3  Iterations in parallel > max. trip count
;*         ii = 3  Iterations in parallel > max. trip count
;*         ii = 3  Did not find schedule
;*         ii = 4  Schedule found with 5 iterations in parallel
;*
;*      Register Usage Table:
;*          +---------------------------------+
;*          |AAAAAAAAAAAAAAAA|BBBBBBBBBBBBBBBB|
;*          |0000000000111111|0000000000111111|
;*          |0123456789012345|0123456789012345|
;*          |----------------+----------------|
;*       0: | * ****         |**  ***        *|
;*       1: | * ****         |**  ***        *|
;*       2: | ******         |**  ***        *|
;*       3: | ** ***         |**  ***        *|
;*          +---------------------------------+
;*
;*      Done
;*
;*      Epilog not entirely removed
;*      Collapsed epilog stages     : 2
;*
;*      Prolog not removed
;*      Collapsed prolog stages     : 0
;*
;*      Minimum required memory pad : 0 bytes
;*
;*      For further improvement on this loop, try option -mh16
;*
;*      Minimum safe trip count     : 4
;*----------------------------------------------------------------------------*
;*        SINGLE SCHEDULED ITERATION
;*
;*        C651:
;*   0              LDW     .D1T1   *A6++,A3          ; |556| 
;*   1              NOP             4
;*   5              LDW     .D1T1   *+A5[A3],A3       ; |556| 
;*   6              NOP             4
;*  10              CMPLTSP .S1     A4,A3,A2          ; |556|  ^ 
;*     ||   [ B0]   SUB     .L2     B0,1,B0           ; |555| 
;*  11      [ A2]   LDW     .D2T2   *+B6[B5],B4       ; |558| 
;*     ||   [ A2]   MV      .L1     A3,A4             ; |559|  ^ 
;*     ||   [ B0]   B       .S2     C651              ; |555| 
;*  12              MV      .L1     A2,A1             ; |556| Split a long life
;*  13      [ A1]   STW     .D2T2   B5,*+SP(20)       ; |557| 
;*  14              ADD     .S2     1,B5,B5           ; |555| 
;*  15              NOP             1
;*  16      [ A1]   STW     .D2T2   B4,*+SP(12)       ; |558| 
;*  17              ; BRANCHCC OCCURS {C651}          ; |555| 
;*----------------------------------------------------------------------------*
L60:    ; PIPED LOOP PROLOG

           MV      .L1X    B10,A5
||         LDW     .D1T1   *A6++,A3          ; |556| (P) <1,0> 

           LDW     .D1T1   *+A5[A3],A3       ; |556| (P) <0,5> 
           NOP             2
           LDW     .D1T1   *A6++,A3          ; |556| (P) <2,0> 
           LDW     .D1T1   *+A5[A3],A3       ; |556| (P) <1,5> 

           ZERO    .L2     B5                ; |555| 
||         CMPLTSP .S1     A4,A3,A2          ; |556| (P) <0,10>  ^ 

   [ A2]   MV      .L1     A3,A4             ; |559| (P) <0,11>  ^ 
||         B       .S2     L61               ; |555| (P) <0,11> 
|| [ A2]   LDW     .D2T2   *+B6[B5],B4       ; |558| (P) <0,11> 

           SUB     .L2     B8,3,B0
||         SUB     .S2     B8,4,B1
||         MV      .L1     A2,A1             ; |556| (P) <0,12> Split a long life
||         LDW     .D1T1   *A6++,A3          ; |556| (P) <3,0> 

;** --------------------------------------------------------------------------*
L61:    ; PIPED LOOP KERNEL
DW$L$_detect_tone_TI_thresholds$3$B:

   [ A1]   STW     .D2T2   B5,*+SP(20)       ; |557| <0,13> 
||         LDW     .D1T1   *+A5[A3],A3       ; |556| <2,5> 

           ADD     .S2     1,B5,B5           ; |555| <0,14> 
|| [ B0]   SUB     .L2     B0,1,B0           ; |555| <1,10> 
||         CMPLTSP .S1     A4,A3,A2          ; |556| <1,10>  ^ 

   [ A2]   MV      .L1     A3,A4             ; |559| <1,11>  ^ 
|| [ B0]   B       .S2     L61               ; |555| <1,11> 
|| [ A2]   LDW     .D2T2   *+B6[B5],B4       ; |558| <1,11> 

   [ B1]   SUB     .L2     B1,1,B1           ; <0,16> 
|| [ A1]   STW     .D2T2   B4,*+SP(12)       ; |558| <0,16> 
||         MV      .L1     A2,A1             ; |556| <1,12> Split a long life
|| [ B1]   LDW     .D1T1   *A6++,A3          ; |556| <4,0> 

DW$L$_detect_tone_TI_thresholds$3$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 562
;*      Loop opening brace source line   : 562
;*      Loop closing brace source line   : 568
;*      Known Minimum Trip Count         : 3                    
;*      Known Maximum Trip Count         : 3                    
;*      Known Max Trip Count Factor      : 3
;*      Loop Carried Dependency Bound(^) : 2
;*      Unpartitioned Resource Bound     : 3
;*      Partitioned Resource Bound(*)    : 3
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        0     
;*      .S units                     1        1     
;*      .D units                     2        3*    
;*      .M units                     0        0     
;*      .X cross paths               0        0     
;*      .T address paths             2        3*    
;*      Long read paths              0        2     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          1        2     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1        1     
;*      Bound(.L .S .D .LS .LSD)     2        2     
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 3  Iterations in parallel > max. trip count
;*         ii = 3  Iterations in parallel > max. trip count
;*         ii = 3  Iterations in parallel > max. trip count
;*         ii = 3  Did not find schedule
;*         ii = 4  Iterations in parallel > max. trip count
;*         ii = 4  Iterations in parallel > max. trip count
;*         ii = 4  Iterations in parallel > max. trip count
;*         ii = 4  Did not find schedule
;*         ii = 5  Schedule found with 4 iterations in parallel
;*
;*      Register Usage Table:
;*          +---------------------------------+
;*          |AAAAAAAAAAAAAAAA|BBBBBBBBBBBBBBBB|
;*          |0000000000111111|0000000000111111|
;*          |0123456789012345|0123456789012345|
;*          |----------------+----------------|
;*       0: | * *  **        |**  ***        *|
;*       1: | * ** **        |**  ***        *|
;*       2: | * *****        |**  ***        *|
;*       3: | *** ***        |**  ***        *|
;*       4: | ***  **        |**  ***        *|
;*          +---------------------------------+
;*
;*      Done
;*
;*      Epilog not entirely removed
;*      Collapsed epilog stages     : 1
;*
;*      Prolog not removed
;*      Collapsed prolog stages     : 0
;*
;*      Minimum required memory pad : 0 bytes
;*
;*      For further improvement on this loop, try option -mh12
;*
;*      Minimum safe trip count     : 3
;*----------------------------------------------------------------------------*
;*        SINGLE SCHEDULED ITERATION
;*
;*        C581:
;*   0              LDW     .D1T1   *A3++,A4          ; |563| 
;*   1              NOP             5
;*   6              LDW     .D1T1   *+A7[A4],A5       ; |563| 
;*   7              NOP             4
;*  11              CMPLTSP .S1     A6,A5,A2          ; |563|  ^ 
;*  12      [ A2]   LDW     .D2T2   *+B6[B5],B4       ; |565| 
;*     ||   [ A2]   MV      .L1     A5,A6             ; |566|  ^ 
;*     ||   [ B0]   SUB     .L2     B0,1,B0           ; |562| 
;*  13              MV      .L1     A2,A1             ; |563| Split a long life
;*     ||   [ B0]   B       .S2     C581              ; |562| 
;*  14      [ A1]   STW     .D2T2   B5,*+SP(24)       ; |564| 
;*  15              NOP             1
;*  16              ADD     .L2     1,B5,B5           ; |562| 
;*  17              NOP             1
;*  18      [ A1]   STW     .D2T2   B4,*+SP(16)       ; |565| 
;*  19              ; BRANCHCC OCCURS {C581}          ; |562| 
;*----------------------------------------------------------------------------*
L62:    ; PIPED LOOP EPILOG AND PROLOG

           MV      .L2X    A5,B10
|| [ A1]   STW     .D2T2   B5,*+SP(20)       ; |557| (E) <3,13> 

           ADD     .L2     1,B5,B5           ; |555| (E) <3,14> 
||         CMPLTSP .S1     A4,A3,A2          ; |556| (E) <4,10>  ^ 

   [ A2]   MV      .L1     A3,A4             ; |559| (E) <4,11>  ^ 
|| [ A2]   LDW     .D2T2   *+B6[B5],B4       ; |558| (E) <4,11> 

           MV      .L1     A2,A1             ; |556| (E) <4,12> Split a long life
|| [ A1]   STW     .D2T2   B4,*+SP(12)       ; |558| (E) <3,16> 

           MVKL    .S2     _freq_high_bin,B5
|| [ A1]   STW     .D2T2   B5,*+SP(20)       ; |557| (E) <4,13> 
||         MVKL    .S1     _freq_high,A3

           STW     .D2T1   A4,*+SP(4)
||         MVKH    .S2     _freq_high_bin,B5
||         MVKH    .S1     _freq_high,A3

           MV      .L1X    B5,A11
||         MV      .L2X    A3,B6
||         LDW     .D2T2   *+SP(8),B7
||         MVC     .S2     B7,CSR            ; interrupts on

           MV      .L1X    B5,A3
|| [ A1]   STW     .D2T2   B4,*+SP(12)       ; |558| (E) <4,16> 

	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",562,13
           MVK     .S2     0x3,B8            ; |562| 
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",562,6

           ZERO    .L2     B5                ; |562| 
||         MV      .L1X    B10,A7
||         SUB     .S2     B8,3,B1
||         SUB     .D2     B8,3,B0
||         LDW     .D1T1   *A3++,A4          ; |563| (P) <0,0> 

           NOP             1

           MVC     .S2     CSR,B7
||         MV      .L1X    B7,A6

           AND     .L2     -2,B7,B8
           MVC     .S2     B8,CSR            ; interrupts off
           LDW     .D1T1   *A3++,A4          ; |563| (P) <1,0> 
           LDW     .D1T1   *+A7[A4],A5       ; |563| (P) <0,6> 
           NOP             3
           LDW     .D1T1   *A3++,A4          ; |563| (P) <2,0> 

           CMPLTSP .S1     A6,A5,A2          ; |563| (P) <0,11>  ^ 
||         LDW     .D1T1   *+A7[A4],A5       ; |563| (P) <1,6> 

   [ A2]   MV      .L1     A5,A6             ; |566| (P) <0,12>  ^ 
|| [ A2]   LDW     .D2T2   *+B6[B5],B4       ; |565| (P) <0,12> 

           MV      .L1     A2,A1             ; |563| (P) <0,13> Split a long life
|| [ B0]   B       .S2     L63               ; |562| (P) <0,13> 

;** --------------------------------------------------------------------------*
L63:    ; PIPED LOOP KERNEL
DW$L$_detect_tone_TI_thresholds$5$B:
   [ A1]   STW     .D2T2   B5,*+SP(24)       ; |564| <0,14> 
   [ B1]   LDW     .D1T1   *A3++,A4          ; |563| <3,0> 

           ADD     .L2     1,B5,B5           ; |562| <0,16> 
||         CMPLTSP .S1     A6,A5,A2          ; |563| <1,11>  ^ 
||         LDW     .D1T1   *+A7[A4],A5       ; |563| <2,6> 

   [ B0]   SUB     .L2     B0,1,B0           ; |562| <1,12> 
|| [ A2]   MV      .L1     A5,A6             ; |566| <1,12>  ^ 
|| [ A2]   LDW     .D2T2   *+B6[B5],B4       ; |565| <1,12> 

   [ B1]   SUB     .L2     B1,1,B1           ; <0,18> 
|| [ A1]   STW     .D2T2   B4,*+SP(16)       ; |565| <0,18> 
||         MV      .L1     A2,A1             ; |563| <1,13> Split a long life
|| [ B0]   B       .S2     L63               ; |562| <1,13> 

DW$L$_detect_tone_TI_thresholds$5$E:
;** --------------------------------------------------------------------------*
L64:    ; PIPED LOOP EPILOG

           MV      .L2X    A7,B10
|| [ A1]   STW     .D2T2   B5,*+SP(24)       ; |564| (E) <2,14> 

           LDW     .D2T1   *+SP(12),A3

           ADD     .L2     1,B5,B5           ; |562| (E) <2,16> 
||         CMPLTSP .S1     A6,A5,A2          ; |563| (E) <3,11>  ^ 

   [ A2]   MV      .L1     A5,A6             ; |566| (E) <3,12>  ^ 
|| [ A2]   LDW     .D2T2   *+B6[B5],B4       ; |565| (E) <3,12> 

           MV      .L1     A2,A1             ; |563| (E) <3,13> Split a long life
|| [ A1]   STW     .D2T2   B4,*+SP(16)       ; |565| (E) <2,18> 

;** --------------------------------------------------------------------------*
           MVC     .S2     B7,CSR            ; interrupts on
           MV      .L2X    A6,B7
           STW     .D2T2   B7,*+SP(8)
   [ A1]   STW     .D2T2   B4,*+SP(16)       ; |565| (E) <3,18> 
   [ A1]   STW     .D2T2   B5,*+SP(24)       ; |564| (E) <3,14> 
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",571,12
           MVKL    .S1     _tones-12,A10

           MVKH    .S1     _tones-12,A10
||         MVK     .S2     0xc,B0            ; |571| 

;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains control code
;*----------------------------------------------------------------------------*
L65:    
DW$L$_detect_tone_TI_thresholds$8$B:
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",572,3

           LDW     .D1T1   *++A10(12),A4     ; |572| 
||         LDW     .D2T2   *+SP(16),B4       ; |572| 
||         ZERO    .L2     B1                ; |572| 

           NOP             4
           CMPEQ   .L1     A4,A3,A1          ; |572| 
   [ A1]   LDW     .D1T1   *+A10(4),A4       ; |572| 
           NOP             4
   [ A1]   CMPEQ   .L2X    A4,B4,B1          ; |572| 
   [ B1]   B       .S1     L66               ; |572| 
           NOP             5
           ; BRANCHCC OCCURS {L66}           ; |572| 
DW$L$_detect_tone_TI_thresholds$8$E:
;** --------------------------------------------------------------------------*
DW$L$_detect_tone_TI_thresholds$9$B:
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",571,12
           SUB     .L2     B0,1,B0           ; |571| 
   [ B0]   B       .S1     L65               ; |571| 
           NOP             5
           ; BRANCHCC OCCURS {L65}           ; |571| 
DW$L$_detect_tone_TI_thresholds$9$E:
;** --------------------------------------------------------------------------*
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",618,5

           B       .S2     L74               ; |618| 
||         MVK     .S1     0xffffffff,A14    ; |618| 

           NOP             5
           ; BRANCH OCCURS {L74}             ; |618| 
;** --------------------------------------------------------------------------*
L66:    
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",574,4

           LDW     .D2T1   *+SP(8),A13       ; |574| 
||         MVKL    .S2     0x40e86a00,B5     ; |574| 
||         ZERO    .L2     B4                ; |574| 

           LDW     .D2T1   *+SP(4),A12       ; |574| 
||         MVKH    .S2     0x40e86a00,B5     ; |574| 

           NOP             4
           ADDSP   .L1     A13,A12,A3        ; |574| 
           NOP             3
           SPDP    .S1     A3,A5:A4          ; |574| 
           NOP             1
           CMPGTDP .S1X    A5:A4,B5:B4,A1    ; |574| 
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",613,5
           NOP             1

           MVK     .S1     0xfffffffe,A14    ; |613| 
|| [!A1]   B       .S2     L74               ; |613| 

           NOP             5
           ; BRANCHCC OCCURS {L74}           ; |613| 
;** --------------------------------------------------------------------------*
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",578,5

           CALL    .S1     __divf            ; |578| 
||         MVKL    .S2     RL31,B3           ; |578| 

           MVKH    .S2     RL31,B3           ; |578| 
           MV      .L1     A12,A4            ; |578| 
           MV      .L2X    A13,B4            ; |578| 
           NOP             2
RL31:      ; CALL OCCURS {__divf}            ; |578| 
;** --------------------------------------------------------------------------*

           ZERO    .L2     B5                ; |578| 
||         SPDP    .S1     A4,A5:A4          ; |578| 
||         ZERO    .S2     B7                ; |578| 
||         ZERO    .D2     B4                ; |578| 

           MVKH    .S2     0x3fe00000,B5     ; |578| 
||         ZERO    .L2     B6                ; |578| 

           MVKH    .S2     0x40000000,B7     ; |578| 

           CMPLTDP .S1X    A5:A4,B7:B6,A3    ; |578| 
||         CMPGTDP .S2X    A5:A4,B5:B4,B4    ; |578| 

           NOP             1
           AND     .L1X    B4,A3,A1          ; |578| 
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",607,6

   [!A1]   B       .S2     L74               ; |607| 
|| [!A1]   MVK     .S1     0xfffffffd,A14    ; |607| 
|| [ A1]   LDW     .D2T2   *+SP(20),B12

           NOP             5
           ; BRANCHCC OCCURS {L74}           ; |607| 
;** --------------------------------------------------------------------------*
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",581,17
           MVK     .S2     0x4,B4            ; |581| 
           MV      .L1X    B4,A14            ; |581| 
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",581,10
           ZERO    .L2     B13               ; |581| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains control code
;*----------------------------------------------------------------------------*
L67:    
DW$L$_detect_tone_TI_thresholds$15$B:
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",582,7
           CMPEQ   .L2     B13,B12,B0        ; |582| 

   [ B0]   B       .S1     L68               ; |582| 
|| [!B0]   LDW     .D2T2   *+B11[B13],B4     ; |582| 
|| [!B0]   MVKL    .S2     RL32,B3           ; |582| 
|| [!B0]   MV      .L1     A12,A4            ; |582| 

   [!B0]   MVKH    .S2     RL32,B3           ; |582| 
           NOP             2
   [!B0]   CALL    .S1     __divf            ; |582| 
   [!B0]   LDW     .D2T2   *+B10[B4],B4      ; |582| 
           ; BRANCHCC OCCURS {L68}           ; |582| 
DW$L$_detect_tone_TI_thresholds$15$E:
;** --------------------------------------------------------------------------*
DW$L$_detect_tone_TI_thresholds$16$B:
           NOP             4
RL32:      ; CALL OCCURS {__divf}            ; |582| 
DW$L$_detect_tone_TI_thresholds$16$E:
;** --------------------------------------------------------------------------*
DW$L$_detect_tone_TI_thresholds$17$B:

           SPDP    .S1     A4,A5:A4          ; |582| 
||         ZERO    .L2     B5                ; |582| 

           MVKH    .S2     0x40180000,B5     ; |582| 
||         ZERO    .L2     B4                ; |582| 

           CMPLTDP .S1X    A5:A4,B5:B4,A1    ; |582| 
           NOP             1
   [ A1]   B       .S1     L70               ; |582| 
           NOP             5
           ; BRANCHCC OCCURS {L70}           ; |582| 
DW$L$_detect_tone_TI_thresholds$17$E:
;** --------------------------------------------------------------------------*
L68:    
DW$L$_detect_tone_TI_thresholds$18$B:
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",581,32
           ADD     .L2     1,B13,B13         ; |581| 
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",581,17

           SUB     .L1     A14,1,A1          ; |581| 
||         SUB     .S1     A14,1,A14         ; |581| 

   [ A1]   B       .S1     L67               ; |581| 
|| [!A1]   LDW     .D2T2   *+SP(24),B13

           NOP             5
           ; BRANCHCC OCCURS {L67}           ; |581| 
DW$L$_detect_tone_TI_thresholds$18$E:
;** --------------------------------------------------------------------------*
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",587,15
           MVK     .S2     0x3,B4            ; |587| 
           MV      .L1X    B4,A14            ; |587| 
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",587,10
           ZERO    .L2     B11               ; |587| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains control code
;*----------------------------------------------------------------------------*
L69:    
DW$L$_detect_tone_TI_thresholds$20$B:
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",588,7

           MV      .S2X    A11,B4
||         CMPEQ   .L2     B11,B13,B0        ; |588| 

   [ B0]   B       .S1     L71               ; |588| 
|| [!B0]   LDW     .D2T2   *+B4[B11],B4      ; |588| 
|| [!B0]   MVKL    .S2     RL33,B3           ; |588| 
|| [!B0]   MV      .L1     A13,A4            ; |588| 

   [!B0]   MVKH    .S2     RL33,B3           ; |588| 
           NOP             2
   [!B0]   CALL    .S1     __divf            ; |588| 
   [!B0]   LDW     .D2T2   *+B10[B4],B4      ; |588| 
           ; BRANCHCC OCCURS {L71}           ; |588| 
DW$L$_detect_tone_TI_thresholds$20$E:
;** --------------------------------------------------------------------------*
DW$L$_detect_tone_TI_thresholds$21$B:
           NOP             4
RL33:      ; CALL OCCURS {__divf}            ; |588| 
DW$L$_detect_tone_TI_thresholds$21$E:
;** --------------------------------------------------------------------------*
DW$L$_detect_tone_TI_thresholds$22$B:

           SPDP    .S1     A4,A5:A4          ; |588| 
||         ZERO    .L2     B5                ; |588| 
||         ZERO    .S2     B4                ; |588| 

           MVKH    .S2     0x40180000,B5     ; |588| 
           CMPLTDP .S1X    A5:A4,B5:B4,A1    ; |588| 
           NOP             1
   [!A1]   B       .S1     L71               ; |588| 
           NOP             5
           ; BRANCHCC OCCURS {L71}           ; |588| 
DW$L$_detect_tone_TI_thresholds$22$E:
;** --------------------------------------------------------------------------*
L70:    
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",590,8

           B       .S2     L74               ; |590| 
||         MVK     .S1     0xfffffffc,A14    ; |590| 

           NOP             5
           ; BRANCH OCCURS {L74}             ; |590| 
;** --------------------------------------------------------------------------*
L71:    
DW$L$_detect_tone_TI_thresholds$24$B:
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",587,29
           ADD     .L2     1,B11,B11         ; |587| 
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",587,15

           SUB     .L1     A14,1,A1          ; |587| 
||         SUB     .S1     A14,1,A14         ; |587| 

   [ A1]   B       .S1     L69               ; |587| 
           NOP             5
           ; BRANCHCC OCCURS {L69}           ; |587| 
DW$L$_detect_tone_TI_thresholds$24$E:
;** --------------------------------------------------------------------------*
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",595,6
           MVKL    .S2     _freq_low_harmonic_bin,B4 ; |595| 
           MVKH    .S2     _freq_low_harmonic_bin,B4 ; |595| 

           LDW     .D2T2   *+B4[B12],B4      ; |595| 
||         MVKL    .S2     RL34,B3           ; |595| 

           MVKH    .S2     RL34,B3           ; |595| 
           MV      .L1     A12,A4            ; |595| 
           NOP             1
           CALL    .S1     __divf            ; |595| 
           LDW     .D2T2   *+B10[B4],B4      ; |595| 
           NOP             4
RL34:      ; CALL OCCURS {__divf}            ; |595| 
;** --------------------------------------------------------------------------*

           ZERO    .L1     A5                ; |595| 
||         SPDP    .S1     A4,A7:A6          ; |595| 
||         ZERO    .D1     A4                ; |595| 

           NOP             1
           MVKH    .S1     0x40000000,A5     ; |595| 
           CMPLTDP .S1     A7:A6,A5:A4,A1    ; |595| 
           NOP             1
   [ A1]   B       .S1     L72               ; |595| 
           NOP             5
           ; BRANCHCC OCCURS {L72}           ; |595| 
;** --------------------------------------------------------------------------*
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",599,6
           MVKL    .S2     _freq_high_harmonic_bin,B4 ; |599| 
           MVKH    .S2     _freq_high_harmonic_bin,B4 ; |599| 

           LDW     .D2T2   *+B4[B13],B4      ; |599| 
||         MVKL    .S2     RL35,B3           ; |599| 

           MVKH    .S2     RL35,B3           ; |599| 
           MV      .L1     A13,A4            ; |599| 
           NOP             1
           CALL    .S1     __divf            ; |599| 
           LDW     .D2T2   *+B10[B4],B4      ; |599| 
           NOP             4
RL35:      ; CALL OCCURS {__divf}            ; |599| 
;** --------------------------------------------------------------------------*

           ZERO    .L1     A5                ; |599| 
||         SPDP    .S1     A4,A7:A6          ; |599| 
||         ZERO    .D1     A4                ; |599| 

           NOP             1
           MVKH    .S1     0x40240000,A5     ; |599| 
           CMPLTDP .S1     A7:A6,A5:A4,A1    ; |599| 
           NOP             1
   [!A1]   B       .S1     L73               ; |599| 
           NOP             5
           ; BRANCHCC OCCURS {L73}           ; |599| 
;** --------------------------------------------------------------------------*
L72:    
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",601,7

           B       .S2     L74               ; |601| 
||         MVK     .S1     0xfffffffb,A14    ; |601| 

           NOP             5
           ; BRANCH OCCURS {L74}             ; |601| 
;** --------------------------------------------------------------------------*
L73:    
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",604,6
           LDW     .D1T1   *+A10(8),A14      ; |604| 
;** --------------------------------------------------------------------------*
L74:    
	.dwpsn	"H:\SPH\firmware\lab2\touchtone.c",619,1
           MV      .L1X    SP,A9             ; |619| 
           NOP             2
           LDDW    .D2T2   *+SP(56),B11:B10  ; |619| 
           MV      .L1     A14,A4            ; |604| 
	.dwcfa	0xc0, 26
	.dwcfa	0xc0, 27
           LDW     .D2T2   *+SP(52),B12      ; |619| 
	.dwcfa	0xc0, 28
           LDW     .D2T2   *+SP(48),B3       ; |619| 
	.dwcfa	0xc0, 19
           LDDW    .D1T1   *+A9(40),A13:A12  ; |619| 
	.dwcfa	0xc0, 12
	.dwcfa	0xc0, 13
           LDDW    .D1T1   *+A9(32),A11:A10  ; |619| 
	.dwcfa	0xc0, 10
	.dwcfa	0xc0, 11
           LDW     .D1T1   *+A9(28),A14      ; |619| 
	.dwcfa	0xc0, 14
           LDW     .D2T2   *++SP(64),B13     ; |619| 
	.dwcfa	0xc0, 29
	.dwcfa	0x0e, 0
           RET     .S2     B3                ; |619| 
           NOP             5
           ; BRANCH OCCURS {B3}              ; |619| 

DW$200	.dwtag  DW_TAG_loop
	.dwattr DW$200, DW_AT_name("H:\SPH\firmware\lab2\Configuration1cfg_c.asm:L69:1:1351387990")
	.dwattr DW$200, DW_AT_begin_file("H:\SPH\firmware\lab2\touchtone.c")
	.dwattr DW$200, DW_AT_begin_line(0x24b)
	.dwattr DW$200, DW_AT_end_line(0x250)
DW$201	.dwtag  DW_TAG_loop_range
	.dwattr DW$201, DW_AT_low_pc(DW$L$_detect_tone_TI_thresholds$20$B)
	.dwattr DW$201, DW_AT_high_pc(DW$L$_detect_tone_TI_thresholds$20$E)
DW$202	.dwtag  DW_TAG_loop_range
	.dwattr DW$202, DW_AT_low_pc(DW$L$_detect_tone_TI_thresholds$21$B)
	.dwattr DW$202, DW_AT_high_pc(DW$L$_detect_tone_TI_thresholds$21$E)
DW$203	.dwtag  DW_TAG_loop_range
	.dwattr DW$203, DW_AT_low_pc(DW$L$_detect_tone_TI_thresholds$22$B)
	.dwattr DW$203, DW_AT_high_pc(DW$L$_detect_tone_TI_thresholds$22$E)
DW$204	.dwtag  DW_TAG_loop_range
	.dwattr DW$204, DW_AT_low_pc(DW$L$_detect_tone_TI_thresholds$24$B)
	.dwattr DW$204, DW_AT_high_pc(DW$L$_detect_tone_TI_thresholds$24$E)
	.dwendtag DW$200


DW$205	.dwtag  DW_TAG_loop
	.dwattr DW$205, DW_AT_name("H:\SPH\firmware\lab2\Configuration1cfg_c.asm:L67:1:1351387990")
	.dwattr DW$205, DW_AT_begin_file("H:\SPH\firmware\lab2\touchtone.c")
	.dwattr DW$205, DW_AT_begin_line(0x245)
	.dwattr DW$205, DW_AT_end_line(0x24a)
DW$206	.dwtag  DW_TAG_loop_range
	.dwattr DW$206, DW_AT_low_pc(DW$L$_detect_tone_TI_thresholds$15$B)
	.dwattr DW$206, DW_AT_high_pc(DW$L$_detect_tone_TI_thresholds$15$E)
DW$207	.dwtag  DW_TAG_loop_range
	.dwattr DW$207, DW_AT_low_pc(DW$L$_detect_tone_TI_thresholds$16$B)
	.dwattr DW$207, DW_AT_high_pc(DW$L$_detect_tone_TI_thresholds$16$E)
DW$208	.dwtag  DW_TAG_loop_range
	.dwattr DW$208, DW_AT_low_pc(DW$L$_detect_tone_TI_thresholds$17$B)
	.dwattr DW$208, DW_AT_high_pc(DW$L$_detect_tone_TI_thresholds$17$E)
DW$209	.dwtag  DW_TAG_loop_range
	.dwattr DW$209, DW_AT_low_pc(DW$L$_detect_tone_TI_thresholds$18$B)
	.dwattr DW$209, DW_AT_high_pc(DW$L$_detect_tone_TI_thresholds$18$E)
	.dwendtag DW$205


DW$210	.dwtag  DW_TAG_loop
	.dwattr DW$210, DW_AT_name("H:\SPH\firmware\lab2\Configuration1cfg_c.asm:L65:1:1351387990")
	.dwattr DW$210, DW_AT_begin_file("H:\SPH\firmware\lab2\touchtone.c")
	.dwattr DW$210, DW_AT_begin_line(0x23b)
	.dwattr DW$210, DW_AT_end_line(0x268)
DW$211	.dwtag  DW_TAG_loop_range
	.dwattr DW$211, DW_AT_low_pc(DW$L$_detect_tone_TI_thresholds$8$B)
	.dwattr DW$211, DW_AT_high_pc(DW$L$_detect_tone_TI_thresholds$8$E)
DW$212	.dwtag  DW_TAG_loop_range
	.dwattr DW$212, DW_AT_low_pc(DW$L$_detect_tone_TI_thresholds$9$B)
	.dwattr DW$212, DW_AT_high_pc(DW$L$_detect_tone_TI_thresholds$9$E)
	.dwendtag DW$210


DW$213	.dwtag  DW_TAG_loop
	.dwattr DW$213, DW_AT_name("H:\SPH\firmware\lab2\Configuration1cfg_c.asm:L63:1:1351387990")
	.dwattr DW$213, DW_AT_begin_file("H:\SPH\firmware\lab2\touchtone.c")
	.dwattr DW$213, DW_AT_begin_line(0x232)
	.dwattr DW$213, DW_AT_end_line(0x238)
DW$214	.dwtag  DW_TAG_loop_range
	.dwattr DW$214, DW_AT_low_pc(DW$L$_detect_tone_TI_thresholds$5$B)
	.dwattr DW$214, DW_AT_high_pc(DW$L$_detect_tone_TI_thresholds$5$E)
	.dwendtag DW$213


DW$215	.dwtag  DW_TAG_loop
	.dwattr DW$215, DW_AT_name("H:\SPH\firmware\lab2\Configuration1cfg_c.asm:L61:1:1351387990")
	.dwattr DW$215, DW_AT_begin_file("H:\SPH\firmware\lab2\touchtone.c")
	.dwattr DW$215, DW_AT_begin_line(0x22b)
	.dwattr DW$215, DW_AT_end_line(0x231)
DW$216	.dwtag  DW_TAG_loop_range
	.dwattr DW$216, DW_AT_low_pc(DW$L$_detect_tone_TI_thresholds$3$B)
	.dwattr DW$216, DW_AT_high_pc(DW$L$_detect_tone_TI_thresholds$3$E)
	.dwendtag DW$215

	.dwattr DW$190, DW_AT_end_file("H:\SPH\firmware\lab2\touchtone.c")
	.dwattr DW$190, DW_AT_end_line(0x26b)
	.dwattr DW$190, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$190

	.sect	".text:CSL_cfgInit"
	.global	_CSL_cfgInit

DW$217	.dwtag  DW_TAG_subprogram, DW_AT_name("CSL_cfgInit"), DW_AT_symbol_name("_CSL_cfgInit")
	.dwattr DW$217, DW_AT_low_pc(_CSL_cfgInit)
	.dwattr DW$217, DW_AT_high_pc(0x00)
	.dwattr DW$217, DW_AT_begin_file("H:\SPH\firmware\lab2\Configuration1cfg_c.c")
	.dwattr DW$217, DW_AT_begin_line(0x1e)
	.dwattr DW$217, DW_AT_begin_column(0x06)
	.dwpsn	"H:\SPH\firmware\lab2\Configuration1cfg_c.c",31,1

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
	.dwpsn	"H:\SPH\firmware\lab2\Configuration1cfg_c.c",32,1
	.dwcfa	0x0e, 0
           RET     .S2     B3                ; |32| 
           NOP             5
           ; BRANCH OCCURS {B3}              ; |32| 
	.dwattr DW$217, DW_AT_end_file("H:\SPH\firmware\lab2\Configuration1cfg_c.c")
	.dwattr DW$217, DW_AT_end_line(0x20)
	.dwattr DW$217, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$217

;******************************************************************************
;* STRINGS                                                                    *
;******************************************************************************
	.sect	".const"
SL1:	.string	"wb",0
SL2:	.string	"pulserecord.txt",0
;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************
	.global	_sin
	.global	_cos
	.global	_DSK6713_init
	.global	_DSK6713_AIC23_openCodec
	.global	_DSK6713_AIC23_write
	.global	_DSK6713_AIC23_read
	.global	_DSK6713_AIC23_setFreq
	.global	_fopen
	.global	_fflush
	.global	_fwrite
	.global	__IRQ_eventTable
	.global	__strasg
	.global	__remi
	.global	__divd
	.global	__fltuld
	.global	__divf
	.global	__divi

;******************************************************************************
;* TYPE INFORMATION                                                           *
;******************************************************************************

DW$T$23	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$23, DW_AT_language(DW_LANG_C)

DW$T$26	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$26, DW_AT_language(DW_LANG_C)
DW$218	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$25)
DW$219	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$T$26


DW$T$29	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$29, DW_AT_language(DW_LANG_C)
DW$220	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$28)
	.dwendtag DW$T$29


DW$T$31	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$31, DW_AT_language(DW_LANG_C)
DW$221	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$30)
	.dwendtag DW$T$31


DW$T$32	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$32, DW_AT_language(DW_LANG_C)
DW$222	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$30)
DW$223	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$28)
	.dwendtag DW$T$32

DW$T$35	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$34)
	.dwattr DW$T$35, DW_AT_address_class(0x20)

DW$T$36	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$36, DW_AT_language(DW_LANG_C)

DW$T$39	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$39, DW_AT_language(DW_LANG_C)
DW$224	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$38)
	.dwendtag DW$T$39

DW$T$50	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$50, DW_AT_type(*DW$T$49)
DW$T$38	.dwtag  DW_TAG_typedef, DW_AT_name("Int16"), DW_AT_type(*DW$T$8)
	.dwattr DW$T$38, DW_AT_language(DW_LANG_C)

DW$T$52	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$38)
	.dwattr DW$T$52, DW_AT_language(DW_LANG_C)
DW$225	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$30)
DW$226	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$28)
	.dwendtag DW$T$52


DW$T$54	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$38)
	.dwattr DW$T$54, DW_AT_language(DW_LANG_C)
DW$227	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$30)
DW$228	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$53)
	.dwendtag DW$T$54


DW$T$55	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$38)
	.dwattr DW$T$55, DW_AT_language(DW_LANG_C)

DW$T$56	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$38)
	.dwattr DW$T$56, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$56, DW_AT_byte_size(0x100)
DW$229	.dwtag  DW_TAG_subrange_type
	.dwattr DW$229, DW_AT_upper_bound(0x7f)
	.dwendtag DW$T$56

DW$T$57	.dwtag  DW_TAG_const_type
	.dwattr DW$T$57, DW_AT_type(*DW$T$38)
DW$T$10	.dwtag  DW_TAG_base_type, DW_AT_name("int")
	.dwattr DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr DW$T$10, DW_AT_byte_size(0x04)
DW$T$30	.dwtag  DW_TAG_typedef, DW_AT_name("DSK6713_AIC23_CodecHandle"), DW_AT_type(*DW$T$10)
	.dwattr DW$T$30, DW_AT_language(DW_LANG_C)

DW$T$69	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$30)
	.dwattr DW$T$69, DW_AT_language(DW_LANG_C)
DW$230	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$231	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$68)
	.dwendtag DW$T$69


DW$T$72	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$72, DW_AT_language(DW_LANG_C)
DW$232	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$71)
	.dwendtag DW$T$72


DW$T$74	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$74, DW_AT_language(DW_LANG_C)

DW$T$75	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$75, DW_AT_language(DW_LANG_C)
DW$233	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$25)
	.dwendtag DW$T$75


DW$T$77	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$77, DW_AT_language(DW_LANG_C)
DW$234	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$77


DW$T$79	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$79, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$79, DW_AT_byte_size(0x0c)
DW$235	.dwtag  DW_TAG_subrange_type
	.dwattr DW$235, DW_AT_upper_bound(0x02)
	.dwendtag DW$T$79


DW$T$80	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$80, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$80, DW_AT_byte_size(0x90)
DW$236	.dwtag  DW_TAG_subrange_type
	.dwattr DW$236, DW_AT_upper_bound(0x0b)
DW$237	.dwtag  DW_TAG_subrange_type
	.dwattr DW$237, DW_AT_upper_bound(0x02)
	.dwendtag DW$T$80


DW$T$82	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$82, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$82, DW_AT_byte_size(0x10)
DW$238	.dwtag  DW_TAG_subrange_type
	.dwattr DW$238, DW_AT_upper_bound(0x03)
	.dwendtag DW$T$82


DW$T$83	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$83, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$83, DW_AT_byte_size(0x78)
DW$239	.dwtag  DW_TAG_subrange_type
	.dwattr DW$239, DW_AT_upper_bound(0x1d)
	.dwendtag DW$T$83


DW$T$85	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$85, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$85, DW_AT_byte_size(0x08)
DW$240	.dwtag  DW_TAG_subrange_type
	.dwattr DW$240, DW_AT_upper_bound(0x01)
	.dwendtag DW$T$85

DW$T$86	.dwtag  DW_TAG_const_type
	.dwattr DW$T$86, DW_AT_type(*DW$T$10)

DW$T$87	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$86)
	.dwattr DW$T$87, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$87, DW_AT_byte_size(0x08)
DW$241	.dwtag  DW_TAG_subrange_type
	.dwattr DW$241, DW_AT_upper_bound(0x01)
	.dwendtag DW$T$87


DW$T$88	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$86)
	.dwattr DW$T$88, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$88, DW_AT_byte_size(0x1c)
DW$242	.dwtag  DW_TAG_subrange_type
	.dwattr DW$242, DW_AT_upper_bound(0x06)
	.dwendtag DW$T$88


DW$T$89	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$89, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$89, DW_AT_byte_size(0x1c)
DW$243	.dwtag  DW_TAG_subrange_type
	.dwattr DW$243, DW_AT_upper_bound(0x06)
	.dwendtag DW$T$89

DW$T$11	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned int")
	.dwattr DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$11, DW_AT_byte_size(0x04)
DW$T$28	.dwtag  DW_TAG_typedef, DW_AT_name("Uint32"), DW_AT_type(*DW$T$11)
	.dwattr DW$T$28, DW_AT_language(DW_LANG_C)
DW$T$53	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$28)
	.dwattr DW$T$53, DW_AT_address_class(0x20)

DW$T$93	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$28)
	.dwattr DW$T$93, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$93, DW_AT_byte_size(0x84)
DW$244	.dwtag  DW_TAG_subrange_type
	.dwattr DW$244, DW_AT_upper_bound(0x20)
	.dwendtag DW$T$93

DW$T$94	.dwtag  DW_TAG_typedef, DW_AT_name("size_t"), DW_AT_type(*DW$T$11)
	.dwattr DW$T$94, DW_AT_language(DW_LANG_C)

DW$T$95	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$94)
	.dwattr DW$T$95, DW_AT_language(DW_LANG_C)
DW$245	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$35)
DW$246	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$94)
DW$247	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$94)
DW$248	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$71)
	.dwendtag DW$T$95

DW$T$96	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$96, DW_AT_type(*DW$T$11)
DW$T$100	.dwtag  DW_TAG_const_type
	.dwattr DW$T$100, DW_AT_type(*DW$T$11)
DW$T$13	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned long")
	.dwattr DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$13, DW_AT_byte_size(0x08)
	.dwattr DW$T$13, DW_AT_bit_size(0x28)
	.dwattr DW$T$13, DW_AT_bit_offset(0x18)
DW$T$16	.dwtag  DW_TAG_base_type, DW_AT_name("float")
	.dwattr DW$T$16, DW_AT_encoding(DW_ATE_float)
	.dwattr DW$T$16, DW_AT_byte_size(0x04)
DW$T$25	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$16)
	.dwattr DW$T$25, DW_AT_address_class(0x20)
DW$T$101	.dwtag  DW_TAG_const_type
	.dwattr DW$T$101, DW_AT_type(*DW$T$25)

DW$T$102	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$16)
	.dwattr DW$T$102, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$102, DW_AT_byte_size(0x400)
DW$249	.dwtag  DW_TAG_subrange_type
	.dwattr DW$249, DW_AT_upper_bound(0xff)
	.dwendtag DW$T$102


DW$T$103	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$16)
	.dwattr DW$T$103, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$103, DW_AT_byte_size(0x08)
DW$250	.dwtag  DW_TAG_subrange_type
	.dwattr DW$250, DW_AT_upper_bound(0x01)
	.dwendtag DW$T$103


DW$T$105	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$104)
	.dwattr DW$T$105, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$105, DW_AT_byte_size(0x08)
DW$251	.dwtag  DW_TAG_subrange_type
	.dwattr DW$251, DW_AT_upper_bound(0x01)
	.dwendtag DW$T$105

DW$T$17	.dwtag  DW_TAG_base_type, DW_AT_name("double")
	.dwattr DW$T$17, DW_AT_encoding(DW_ATE_float)
	.dwattr DW$T$17, DW_AT_byte_size(0x08)

DW$T$106	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$17)
	.dwattr DW$T$106, DW_AT_language(DW_LANG_C)
DW$252	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$17)
	.dwendtag DW$T$106

DW$T$67	.dwtag  DW_TAG_typedef, DW_AT_name("DSK6713_AIC23_Config"), DW_AT_type(*DW$T$20)
	.dwattr DW$T$67, DW_AT_language(DW_LANG_C)
DW$T$68	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$67)
	.dwattr DW$T$68, DW_AT_address_class(0x20)
DW$T$71	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$70)
	.dwattr DW$T$71, DW_AT_address_class(0x20)

DW$T$112	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$71)
	.dwattr DW$T$112, DW_AT_language(DW_LANG_C)
DW$253	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$111)
DW$254	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$111)
	.dwendtag DW$T$112

DW$T$111	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$110)
	.dwattr DW$T$111, DW_AT_address_class(0x20)

DW$T$116	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$109)
	.dwattr DW$T$116, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$116, DW_AT_byte_size(0x0c)
DW$255	.dwtag  DW_TAG_subrange_type
	.dwattr DW$255, DW_AT_upper_bound(0x0b)
	.dwendtag DW$T$116

DW$T$34	.dwtag  DW_TAG_const_type
DW$T$49	.dwtag  DW_TAG_typedef, DW_AT_name("Uint8"), DW_AT_type(*DW$T$6)
	.dwattr DW$T$49, DW_AT_language(DW_LANG_C)
DW$T$8	.dwtag  DW_TAG_base_type, DW_AT_name("short")
	.dwattr DW$T$8, DW_AT_encoding(DW_ATE_signed)
	.dwattr DW$T$8, DW_AT_byte_size(0x02)
DW$T$104	.dwtag  DW_TAG_const_type
	.dwattr DW$T$104, DW_AT_type(*DW$T$16)

DW$T$20	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$20, DW_AT_name("DSK6713_AIC23_Config")
	.dwattr DW$T$20, DW_AT_byte_size(0x28)
DW$256	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$256, DW_AT_name("regs"), DW_AT_symbol_name("_regs")
	.dwattr DW$256, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$256, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$20

DW$T$70	.dwtag  DW_TAG_typedef, DW_AT_name("FILE"), DW_AT_type(*DW$T$22)
	.dwattr DW$T$70, DW_AT_language(DW_LANG_C)
DW$T$109	.dwtag  DW_TAG_base_type, DW_AT_name("signed char")
	.dwattr DW$T$109, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr DW$T$109, DW_AT_byte_size(0x01)
DW$T$110	.dwtag  DW_TAG_const_type
	.dwattr DW$T$110, DW_AT_type(*DW$T$109)
DW$T$6	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned char")
	.dwattr DW$T$6, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr DW$T$6, DW_AT_byte_size(0x01)

DW$T$19	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$19, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$19, DW_AT_byte_size(0x28)
DW$257	.dwtag  DW_TAG_subrange_type
	.dwattr DW$257, DW_AT_upper_bound(0x09)
	.dwendtag DW$T$19


DW$T$22	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$22, DW_AT_byte_size(0x1c)
DW$258	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$258, DW_AT_name("fd"), DW_AT_symbol_name("_fd")
	.dwattr DW$258, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$258, DW_AT_accessibility(DW_ACCESS_public)
DW$259	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$259, DW_AT_name("buf"), DW_AT_symbol_name("_buf")
	.dwattr DW$259, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$259, DW_AT_accessibility(DW_ACCESS_public)
DW$260	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$260, DW_AT_name("pos"), DW_AT_symbol_name("_pos")
	.dwattr DW$260, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$260, DW_AT_accessibility(DW_ACCESS_public)
DW$261	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$261, DW_AT_name("bufend"), DW_AT_symbol_name("_bufend")
	.dwattr DW$261, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$261, DW_AT_accessibility(DW_ACCESS_public)
DW$262	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$262, DW_AT_name("buff_stop"), DW_AT_symbol_name("_buff_stop")
	.dwattr DW$262, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$262, DW_AT_accessibility(DW_ACCESS_public)
DW$263	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$263, DW_AT_name("flags"), DW_AT_symbol_name("_flags")
	.dwattr DW$263, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$263, DW_AT_accessibility(DW_ACCESS_public)
DW$264	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$264, DW_AT_name("index"), DW_AT_symbol_name("_index")
	.dwattr DW$264, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$264, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$22

DW$T$21	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$6)
	.dwattr DW$T$21, DW_AT_address_class(0x20)

	.dwattr DW$217, DW_AT_external(0x01)
	.dwattr DW$81, DW_AT_external(0x01)
	.dwattr DW$81, DW_AT_type(*DW$T$10)
	.dwattr DW$144, DW_AT_external(0x01)
	.dwattr DW$144, DW_AT_type(*DW$T$10)
	.dwattr DW$190, DW_AT_external(0x01)
	.dwattr DW$190, DW_AT_type(*DW$T$10)
	.dwattr DW$178, DW_AT_external(0x01)
	.dwattr DW$178, DW_AT_type(*DW$T$10)
	.dwattr DW$102, DW_AT_external(0x01)
	.dwattr DW$166, DW_AT_external(0x01)
	.dwattr DW$166, DW_AT_type(*DW$T$38)
	.dwattr DW$167, DW_AT_external(0x01)
	.dwattr DW$167, DW_AT_type(*DW$T$10)
	.dwattr DW$156, DW_AT_external(0x01)
	.dwattr DW$101, DW_AT_external(0x01)
	.dwattr DW$100, DW_AT_external(0x01)
	.dwattr DW$95, DW_AT_external(0x01)
	.dwattr DW$84, DW_AT_external(0x01)
	.dwattr DW$84, DW_AT_type(*DW$T$10)
	.dwattr DW$80, DW_AT_external(0x01)
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

DW$265	.dwtag  DW_TAG_assign_register, DW_AT_name("A0")
	.dwattr DW$265, DW_AT_location[DW_OP_reg0]
DW$266	.dwtag  DW_TAG_assign_register, DW_AT_name("A1")
	.dwattr DW$266, DW_AT_location[DW_OP_reg1]
DW$267	.dwtag  DW_TAG_assign_register, DW_AT_name("A2")
	.dwattr DW$267, DW_AT_location[DW_OP_reg2]
DW$268	.dwtag  DW_TAG_assign_register, DW_AT_name("A3")
	.dwattr DW$268, DW_AT_location[DW_OP_reg3]
DW$269	.dwtag  DW_TAG_assign_register, DW_AT_name("A4")
	.dwattr DW$269, DW_AT_location[DW_OP_reg4]
DW$270	.dwtag  DW_TAG_assign_register, DW_AT_name("A5")
	.dwattr DW$270, DW_AT_location[DW_OP_reg5]
DW$271	.dwtag  DW_TAG_assign_register, DW_AT_name("A6")
	.dwattr DW$271, DW_AT_location[DW_OP_reg6]
DW$272	.dwtag  DW_TAG_assign_register, DW_AT_name("A7")
	.dwattr DW$272, DW_AT_location[DW_OP_reg7]
DW$273	.dwtag  DW_TAG_assign_register, DW_AT_name("A8")
	.dwattr DW$273, DW_AT_location[DW_OP_reg8]
DW$274	.dwtag  DW_TAG_assign_register, DW_AT_name("A9")
	.dwattr DW$274, DW_AT_location[DW_OP_reg9]
DW$275	.dwtag  DW_TAG_assign_register, DW_AT_name("A10")
	.dwattr DW$275, DW_AT_location[DW_OP_reg10]
DW$276	.dwtag  DW_TAG_assign_register, DW_AT_name("A11")
	.dwattr DW$276, DW_AT_location[DW_OP_reg11]
DW$277	.dwtag  DW_TAG_assign_register, DW_AT_name("A12")
	.dwattr DW$277, DW_AT_location[DW_OP_reg12]
DW$278	.dwtag  DW_TAG_assign_register, DW_AT_name("A13")
	.dwattr DW$278, DW_AT_location[DW_OP_reg13]
DW$279	.dwtag  DW_TAG_assign_register, DW_AT_name("A14")
	.dwattr DW$279, DW_AT_location[DW_OP_reg14]
DW$280	.dwtag  DW_TAG_assign_register, DW_AT_name("A15")
	.dwattr DW$280, DW_AT_location[DW_OP_reg15]
DW$281	.dwtag  DW_TAG_assign_register, DW_AT_name("B0")
	.dwattr DW$281, DW_AT_location[DW_OP_reg16]
DW$282	.dwtag  DW_TAG_assign_register, DW_AT_name("B1")
	.dwattr DW$282, DW_AT_location[DW_OP_reg17]
DW$283	.dwtag  DW_TAG_assign_register, DW_AT_name("B2")
	.dwattr DW$283, DW_AT_location[DW_OP_reg18]
DW$284	.dwtag  DW_TAG_assign_register, DW_AT_name("B3")
	.dwattr DW$284, DW_AT_location[DW_OP_reg19]
DW$285	.dwtag  DW_TAG_assign_register, DW_AT_name("B4")
	.dwattr DW$285, DW_AT_location[DW_OP_reg20]
DW$286	.dwtag  DW_TAG_assign_register, DW_AT_name("B5")
	.dwattr DW$286, DW_AT_location[DW_OP_reg21]
DW$287	.dwtag  DW_TAG_assign_register, DW_AT_name("B6")
	.dwattr DW$287, DW_AT_location[DW_OP_reg22]
DW$288	.dwtag  DW_TAG_assign_register, DW_AT_name("B7")
	.dwattr DW$288, DW_AT_location[DW_OP_reg23]
DW$289	.dwtag  DW_TAG_assign_register, DW_AT_name("B8")
	.dwattr DW$289, DW_AT_location[DW_OP_reg24]
DW$290	.dwtag  DW_TAG_assign_register, DW_AT_name("B9")
	.dwattr DW$290, DW_AT_location[DW_OP_reg25]
DW$291	.dwtag  DW_TAG_assign_register, DW_AT_name("B10")
	.dwattr DW$291, DW_AT_location[DW_OP_reg26]
DW$292	.dwtag  DW_TAG_assign_register, DW_AT_name("B11")
	.dwattr DW$292, DW_AT_location[DW_OP_reg27]
DW$293	.dwtag  DW_TAG_assign_register, DW_AT_name("B12")
	.dwattr DW$293, DW_AT_location[DW_OP_reg28]
DW$294	.dwtag  DW_TAG_assign_register, DW_AT_name("B13")
	.dwattr DW$294, DW_AT_location[DW_OP_reg29]
DW$295	.dwtag  DW_TAG_assign_register, DW_AT_name("DP")
	.dwattr DW$295, DW_AT_location[DW_OP_reg30]
DW$296	.dwtag  DW_TAG_assign_register, DW_AT_name("SP")
	.dwattr DW$296, DW_AT_location[DW_OP_reg31]
DW$297	.dwtag  DW_TAG_assign_register, DW_AT_name("FP")
	.dwattr DW$297, DW_AT_location[DW_OP_regx 0x20]
DW$298	.dwtag  DW_TAG_assign_register, DW_AT_name("PC")
	.dwattr DW$298, DW_AT_location[DW_OP_regx 0x21]
DW$299	.dwtag  DW_TAG_assign_register, DW_AT_name("IRP")
	.dwattr DW$299, DW_AT_location[DW_OP_regx 0x22]
DW$300	.dwtag  DW_TAG_assign_register, DW_AT_name("IFR")
	.dwattr DW$300, DW_AT_location[DW_OP_regx 0x23]
DW$301	.dwtag  DW_TAG_assign_register, DW_AT_name("NRP")
	.dwattr DW$301, DW_AT_location[DW_OP_regx 0x24]
DW$302	.dwtag  DW_TAG_assign_register, DW_AT_name("A16")
	.dwattr DW$302, DW_AT_location[DW_OP_regx 0x25]
DW$303	.dwtag  DW_TAG_assign_register, DW_AT_name("A17")
	.dwattr DW$303, DW_AT_location[DW_OP_regx 0x26]
DW$304	.dwtag  DW_TAG_assign_register, DW_AT_name("A18")
	.dwattr DW$304, DW_AT_location[DW_OP_regx 0x27]
DW$305	.dwtag  DW_TAG_assign_register, DW_AT_name("A19")
	.dwattr DW$305, DW_AT_location[DW_OP_regx 0x28]
DW$306	.dwtag  DW_TAG_assign_register, DW_AT_name("A20")
	.dwattr DW$306, DW_AT_location[DW_OP_regx 0x29]
DW$307	.dwtag  DW_TAG_assign_register, DW_AT_name("A21")
	.dwattr DW$307, DW_AT_location[DW_OP_regx 0x2a]
DW$308	.dwtag  DW_TAG_assign_register, DW_AT_name("A22")
	.dwattr DW$308, DW_AT_location[DW_OP_regx 0x2b]
DW$309	.dwtag  DW_TAG_assign_register, DW_AT_name("A23")
	.dwattr DW$309, DW_AT_location[DW_OP_regx 0x2c]
DW$310	.dwtag  DW_TAG_assign_register, DW_AT_name("A24")
	.dwattr DW$310, DW_AT_location[DW_OP_regx 0x2d]
DW$311	.dwtag  DW_TAG_assign_register, DW_AT_name("A25")
	.dwattr DW$311, DW_AT_location[DW_OP_regx 0x2e]
DW$312	.dwtag  DW_TAG_assign_register, DW_AT_name("A26")
	.dwattr DW$312, DW_AT_location[DW_OP_regx 0x2f]
DW$313	.dwtag  DW_TAG_assign_register, DW_AT_name("A27")
	.dwattr DW$313, DW_AT_location[DW_OP_regx 0x30]
DW$314	.dwtag  DW_TAG_assign_register, DW_AT_name("A28")
	.dwattr DW$314, DW_AT_location[DW_OP_regx 0x31]
DW$315	.dwtag  DW_TAG_assign_register, DW_AT_name("A29")
	.dwattr DW$315, DW_AT_location[DW_OP_regx 0x32]
DW$316	.dwtag  DW_TAG_assign_register, DW_AT_name("A30")
	.dwattr DW$316, DW_AT_location[DW_OP_regx 0x33]
DW$317	.dwtag  DW_TAG_assign_register, DW_AT_name("A31")
	.dwattr DW$317, DW_AT_location[DW_OP_regx 0x34]
DW$318	.dwtag  DW_TAG_assign_register, DW_AT_name("B16")
	.dwattr DW$318, DW_AT_location[DW_OP_regx 0x35]
DW$319	.dwtag  DW_TAG_assign_register, DW_AT_name("B17")
	.dwattr DW$319, DW_AT_location[DW_OP_regx 0x36]
DW$320	.dwtag  DW_TAG_assign_register, DW_AT_name("B18")
	.dwattr DW$320, DW_AT_location[DW_OP_regx 0x37]
DW$321	.dwtag  DW_TAG_assign_register, DW_AT_name("B19")
	.dwattr DW$321, DW_AT_location[DW_OP_regx 0x38]
DW$322	.dwtag  DW_TAG_assign_register, DW_AT_name("B20")
	.dwattr DW$322, DW_AT_location[DW_OP_regx 0x39]
DW$323	.dwtag  DW_TAG_assign_register, DW_AT_name("B21")
	.dwattr DW$323, DW_AT_location[DW_OP_regx 0x3a]
DW$324	.dwtag  DW_TAG_assign_register, DW_AT_name("B22")
	.dwattr DW$324, DW_AT_location[DW_OP_regx 0x3b]
DW$325	.dwtag  DW_TAG_assign_register, DW_AT_name("B23")
	.dwattr DW$325, DW_AT_location[DW_OP_regx 0x3c]
DW$326	.dwtag  DW_TAG_assign_register, DW_AT_name("B24")
	.dwattr DW$326, DW_AT_location[DW_OP_regx 0x3d]
DW$327	.dwtag  DW_TAG_assign_register, DW_AT_name("B25")
	.dwattr DW$327, DW_AT_location[DW_OP_regx 0x3e]
DW$328	.dwtag  DW_TAG_assign_register, DW_AT_name("B26")
	.dwattr DW$328, DW_AT_location[DW_OP_regx 0x3f]
DW$329	.dwtag  DW_TAG_assign_register, DW_AT_name("B27")
	.dwattr DW$329, DW_AT_location[DW_OP_regx 0x40]
DW$330	.dwtag  DW_TAG_assign_register, DW_AT_name("B28")
	.dwattr DW$330, DW_AT_location[DW_OP_regx 0x41]
DW$331	.dwtag  DW_TAG_assign_register, DW_AT_name("B29")
	.dwattr DW$331, DW_AT_location[DW_OP_regx 0x42]
DW$332	.dwtag  DW_TAG_assign_register, DW_AT_name("B30")
	.dwattr DW$332, DW_AT_location[DW_OP_regx 0x43]
DW$333	.dwtag  DW_TAG_assign_register, DW_AT_name("B31")
	.dwattr DW$333, DW_AT_location[DW_OP_regx 0x44]
DW$334	.dwtag  DW_TAG_assign_register, DW_AT_name("AMR")
	.dwattr DW$334, DW_AT_location[DW_OP_regx 0x45]
DW$335	.dwtag  DW_TAG_assign_register, DW_AT_name("CSR")
	.dwattr DW$335, DW_AT_location[DW_OP_regx 0x46]
DW$336	.dwtag  DW_TAG_assign_register, DW_AT_name("ISR")
	.dwattr DW$336, DW_AT_location[DW_OP_regx 0x47]
DW$337	.dwtag  DW_TAG_assign_register, DW_AT_name("ICR")
	.dwattr DW$337, DW_AT_location[DW_OP_regx 0x48]
DW$338	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$338, DW_AT_location[DW_OP_regx 0x49]
DW$339	.dwtag  DW_TAG_assign_register, DW_AT_name("ISTP")
	.dwattr DW$339, DW_AT_location[DW_OP_regx 0x4a]
DW$340	.dwtag  DW_TAG_assign_register, DW_AT_name("IN")
	.dwattr DW$340, DW_AT_location[DW_OP_regx 0x4b]
DW$341	.dwtag  DW_TAG_assign_register, DW_AT_name("OUT")
	.dwattr DW$341, DW_AT_location[DW_OP_regx 0x4c]
DW$342	.dwtag  DW_TAG_assign_register, DW_AT_name("ACR")
	.dwattr DW$342, DW_AT_location[DW_OP_regx 0x4d]
DW$343	.dwtag  DW_TAG_assign_register, DW_AT_name("ADR")
	.dwattr DW$343, DW_AT_location[DW_OP_regx 0x4e]
DW$344	.dwtag  DW_TAG_assign_register, DW_AT_name("FADCR")
	.dwattr DW$344, DW_AT_location[DW_OP_regx 0x4f]
DW$345	.dwtag  DW_TAG_assign_register, DW_AT_name("FAUCR")
	.dwattr DW$345, DW_AT_location[DW_OP_regx 0x50]
DW$346	.dwtag  DW_TAG_assign_register, DW_AT_name("FMCR")
	.dwattr DW$346, DW_AT_location[DW_OP_regx 0x51]
DW$347	.dwtag  DW_TAG_assign_register, DW_AT_name("GFPGFR")
	.dwattr DW$347, DW_AT_location[DW_OP_regx 0x52]
DW$348	.dwtag  DW_TAG_assign_register, DW_AT_name("DIER")
	.dwattr DW$348, DW_AT_location[DW_OP_regx 0x53]
DW$349	.dwtag  DW_TAG_assign_register, DW_AT_name("REP")
	.dwattr DW$349, DW_AT_location[DW_OP_regx 0x54]
DW$350	.dwtag  DW_TAG_assign_register, DW_AT_name("TSCL")
	.dwattr DW$350, DW_AT_location[DW_OP_regx 0x55]
DW$351	.dwtag  DW_TAG_assign_register, DW_AT_name("TSCH")
	.dwattr DW$351, DW_AT_location[DW_OP_regx 0x56]
DW$352	.dwtag  DW_TAG_assign_register, DW_AT_name("ARP")
	.dwattr DW$352, DW_AT_location[DW_OP_regx 0x57]
DW$353	.dwtag  DW_TAG_assign_register, DW_AT_name("ILC")
	.dwattr DW$353, DW_AT_location[DW_OP_regx 0x58]
DW$354	.dwtag  DW_TAG_assign_register, DW_AT_name("RILC")
	.dwattr DW$354, DW_AT_location[DW_OP_regx 0x59]
DW$355	.dwtag  DW_TAG_assign_register, DW_AT_name("DNUM")
	.dwattr DW$355, DW_AT_location[DW_OP_regx 0x5a]
DW$356	.dwtag  DW_TAG_assign_register, DW_AT_name("SSR")
	.dwattr DW$356, DW_AT_location[DW_OP_regx 0x5b]
DW$357	.dwtag  DW_TAG_assign_register, DW_AT_name("GPLYA")
	.dwattr DW$357, DW_AT_location[DW_OP_regx 0x5c]
DW$358	.dwtag  DW_TAG_assign_register, DW_AT_name("GPLYB")
	.dwattr DW$358, DW_AT_location[DW_OP_regx 0x5d]
DW$359	.dwtag  DW_TAG_assign_register, DW_AT_name("TSR")
	.dwattr DW$359, DW_AT_location[DW_OP_regx 0x5e]
DW$360	.dwtag  DW_TAG_assign_register, DW_AT_name("ITSR")
	.dwattr DW$360, DW_AT_location[DW_OP_regx 0x5f]
DW$361	.dwtag  DW_TAG_assign_register, DW_AT_name("NTSR")
	.dwattr DW$361, DW_AT_location[DW_OP_regx 0x60]
DW$362	.dwtag  DW_TAG_assign_register, DW_AT_name("EFR")
	.dwattr DW$362, DW_AT_location[DW_OP_regx 0x61]
DW$363	.dwtag  DW_TAG_assign_register, DW_AT_name("ECR")
	.dwattr DW$363, DW_AT_location[DW_OP_regx 0x62]
DW$364	.dwtag  DW_TAG_assign_register, DW_AT_name("IERR")
	.dwattr DW$364, DW_AT_location[DW_OP_regx 0x63]
DW$365	.dwtag  DW_TAG_assign_register, DW_AT_name("DMSG")
	.dwattr DW$365, DW_AT_location[DW_OP_regx 0x64]
DW$366	.dwtag  DW_TAG_assign_register, DW_AT_name("CMSG")
	.dwattr DW$366, DW_AT_location[DW_OP_regx 0x65]
DW$367	.dwtag  DW_TAG_assign_register, DW_AT_name("DT_DMA_ADDR")
	.dwattr DW$367, DW_AT_location[DW_OP_regx 0x66]
DW$368	.dwtag  DW_TAG_assign_register, DW_AT_name("DT_DMA_DATA")
	.dwattr DW$368, DW_AT_location[DW_OP_regx 0x67]
DW$369	.dwtag  DW_TAG_assign_register, DW_AT_name("DT_DMA_CNTL")
	.dwattr DW$369, DW_AT_location[DW_OP_regx 0x68]
DW$370	.dwtag  DW_TAG_assign_register, DW_AT_name("TCU_CNTL")
	.dwattr DW$370, DW_AT_location[DW_OP_regx 0x69]
DW$371	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_REC_CNTL")
	.dwattr DW$371, DW_AT_location[DW_OP_regx 0x6a]
DW$372	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_XMT_CNTL")
	.dwattr DW$372, DW_AT_location[DW_OP_regx 0x6b]
DW$373	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_CFG")
	.dwattr DW$373, DW_AT_location[DW_OP_regx 0x6c]
DW$374	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_RDATA")
	.dwattr DW$374, DW_AT_location[DW_OP_regx 0x6d]
DW$375	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_WDATA")
	.dwattr DW$375, DW_AT_location[DW_OP_regx 0x6e]
DW$376	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_RADDR")
	.dwattr DW$376, DW_AT_location[DW_OP_regx 0x6f]
DW$377	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_WADDR")
	.dwattr DW$377, DW_AT_location[DW_OP_regx 0x70]
DW$378	.dwtag  DW_TAG_assign_register, DW_AT_name("MFREG0")
	.dwattr DW$378, DW_AT_location[DW_OP_regx 0x71]
DW$379	.dwtag  DW_TAG_assign_register, DW_AT_name("DBG_STAT")
	.dwattr DW$379, DW_AT_location[DW_OP_regx 0x72]
DW$380	.dwtag  DW_TAG_assign_register, DW_AT_name("BRK_EN")
	.dwattr DW$380, DW_AT_location[DW_OP_regx 0x73]
DW$381	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP0_CNT")
	.dwattr DW$381, DW_AT_location[DW_OP_regx 0x74]
DW$382	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP0")
	.dwattr DW$382, DW_AT_location[DW_OP_regx 0x75]
DW$383	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP1")
	.dwattr DW$383, DW_AT_location[DW_OP_regx 0x76]
DW$384	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP2")
	.dwattr DW$384, DW_AT_location[DW_OP_regx 0x77]
DW$385	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP3")
	.dwattr DW$385, DW_AT_location[DW_OP_regx 0x78]
DW$386	.dwtag  DW_TAG_assign_register, DW_AT_name("OVERLAY")
	.dwattr DW$386, DW_AT_location[DW_OP_regx 0x79]
DW$387	.dwtag  DW_TAG_assign_register, DW_AT_name("PC_PROF")
	.dwattr DW$387, DW_AT_location[DW_OP_regx 0x7a]
DW$388	.dwtag  DW_TAG_assign_register, DW_AT_name("ATSR")
	.dwattr DW$388, DW_AT_location[DW_OP_regx 0x7b]
DW$389	.dwtag  DW_TAG_assign_register, DW_AT_name("TRR")
	.dwattr DW$389, DW_AT_location[DW_OP_regx 0x7c]
DW$390	.dwtag  DW_TAG_assign_register, DW_AT_name("TCRR")
	.dwattr DW$390, DW_AT_location[DW_OP_regx 0x7d]
DW$391	.dwtag  DW_TAG_assign_register, DW_AT_name("CIE_RETA")
	.dwattr DW$391, DW_AT_location[DW_OP_regx 0x7e]
	.dwendtag DW$CU

