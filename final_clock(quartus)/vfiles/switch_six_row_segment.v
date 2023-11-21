// Copyright (C) 2020  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and any partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details, at
// https://fpgasoftware.intel.com/eula.

// PROGRAM		"Quartus Prime"
// VERSION		"Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"
// CREATED		"Thu Dec 01 21:39:33 2022"

module switch_six_row_segment(
	clk,
	rst,
	switch,
	alr_hourA,
	alr_hourB,
	alr_minA,
	alr_minB,
	alr_secA,
	alr_secB,
	clk_hourA,
	clk_hourB,
	clk_minA,
	clk_minB,
	clk_secA,
	clk_secB,
	COM1,
	COM2,
	COM3,
	COM4,
	COM5,
	COM6,
	COM7,
	COM8,
	seg
);


input wire	clk;
input wire	rst;
input wire	switch;
input wire	[3:0] alr_hourA;
input wire	[3:0] alr_hourB;
input wire	[3:0] alr_minA;
input wire	[3:0] alr_minB;
input wire	[3:0] alr_secA;
input wire	[3:0] alr_secB;
input wire	[3:0] clk_hourA;
input wire	[3:0] clk_hourB;
input wire	[3:0] clk_minA;
input wire	[3:0] clk_minB;
input wire	[3:0] clk_secA;
input wire	[3:0] clk_secB;
output wire	COM1;
output wire	COM2;
output wire	COM3;
output wire	COM4;
output wire	COM5;
output wire	COM6;
output wire	COM7;
output wire	COM8;
output wire	[3:0] seg;

wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_27;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_5;
wire	[3:0] SYNTHESIZED_WIRE_7;
wire	[3:0] SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_9;
wire	SYNTHESIZED_WIRE_11;
wire	SYNTHESIZED_WIRE_12;
wire	SYNTHESIZED_WIRE_14;
wire	SYNTHESIZED_WIRE_15;
wire	SYNTHESIZED_WIRE_17;
wire	SYNTHESIZED_WIRE_18;
wire	SYNTHESIZED_WIRE_20;
wire	SYNTHESIZED_WIRE_21;
wire	SYNTHESIZED_WIRE_23;
wire	SYNTHESIZED_WIRE_24;
wire	SYNTHESIZED_WIRE_26;





six_row_segment	b2v_inst(
	.clk(clk),
	.rst(rst),
	.hourA(clk_hourA),
	.hourB(clk_hourB),
	.minA(clk_minA),
	.minB(clk_minB),
	.secA(clk_secA),
	.secB(clk_secB),
	.COM1(SYNTHESIZED_WIRE_9),
	.COM2(SYNTHESIZED_WIRE_21),
	.COM3(SYNTHESIZED_WIRE_12),
	.COM4(SYNTHESIZED_WIRE_24),
	.COM5(SYNTHESIZED_WIRE_15),
	.COM6(SYNTHESIZED_WIRE_0),
	.COM7(SYNTHESIZED_WIRE_18),
	.COM8(SYNTHESIZED_WIRE_3),
	.seg(SYNTHESIZED_WIRE_7));


six_row_segment	b2v_inst1(
	.clk(clk),
	.rst(rst),
	.hourA(alr_hourA),
	.hourB(alr_hourB),
	.minA(alr_minA),
	.minB(alr_minB),
	.secA(alr_secA),
	.secB(alr_secB),
	.COM1(SYNTHESIZED_WIRE_11),
	.COM2(SYNTHESIZED_WIRE_23),
	.COM3(SYNTHESIZED_WIRE_14),
	.COM4(SYNTHESIZED_WIRE_26),
	.COM5(SYNTHESIZED_WIRE_17),
	.COM6(SYNTHESIZED_WIRE_2),
	.COM7(SYNTHESIZED_WIRE_20),
	.COM8(SYNTHESIZED_WIRE_5),
	.seg(SYNTHESIZED_WIRE_8));


mx_2x1	b2v_inst10(
	.s_1(SYNTHESIZED_WIRE_0),
	.sel(SYNTHESIZED_WIRE_27),
	.s_0(SYNTHESIZED_WIRE_2),
	.m_out(COM6));


mx_2x1	b2v_inst11(
	.s_1(SYNTHESIZED_WIRE_3),
	.sel(SYNTHESIZED_WIRE_27),
	.s_0(SYNTHESIZED_WIRE_5),
	.m_out(COM8));


count_2	b2v_inst2(
	.clk(switch),
	.rst(rst),
	.A(SYNTHESIZED_WIRE_27));


mx_4bit_2x1	b2v_inst3(
	.ce(SYNTHESIZED_WIRE_27),
	.s0(SYNTHESIZED_WIRE_7),
	.s1(SYNTHESIZED_WIRE_8),
	.m_out(seg));


mx_2x1	b2v_inst4(
	.s_1(SYNTHESIZED_WIRE_9),
	.sel(SYNTHESIZED_WIRE_27),
	.s_0(SYNTHESIZED_WIRE_11),
	.m_out(COM1));


mx_2x1	b2v_inst5(
	.s_1(SYNTHESIZED_WIRE_12),
	.sel(SYNTHESIZED_WIRE_27),
	.s_0(SYNTHESIZED_WIRE_14),
	.m_out(COM3));


mx_2x1	b2v_inst6(
	.s_1(SYNTHESIZED_WIRE_15),
	.sel(SYNTHESIZED_WIRE_27),
	.s_0(SYNTHESIZED_WIRE_17),
	.m_out(COM5));


mx_2x1	b2v_inst7(
	.s_1(SYNTHESIZED_WIRE_18),
	.sel(SYNTHESIZED_WIRE_27),
	.s_0(SYNTHESIZED_WIRE_20),
	.m_out(COM7));


mx_2x1	b2v_inst8(
	.s_1(SYNTHESIZED_WIRE_21),
	.sel(SYNTHESIZED_WIRE_27),
	.s_0(SYNTHESIZED_WIRE_23),
	.m_out(COM2));


mx_2x1	b2v_inst9(
	.s_1(SYNTHESIZED_WIRE_24),
	.sel(SYNTHESIZED_WIRE_27),
	.s_0(SYNTHESIZED_WIRE_26),
	.m_out(COM4));


endmodule
