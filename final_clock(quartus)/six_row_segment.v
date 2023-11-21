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
// CREATED		"Thu Dec 01 21:39:23 2022"

module six_row_segment(
	clk,
	rst,
	hourA,
	hourB,
	minA,
	minB,
	secA,
	secB,
	COM3,
	COM4,
	COM5,
	COM6,
	COM7,
	COM8,
	COM2,
	COM1,
	seg
);


input wire	clk;
input wire	rst;
input wire	[3:0] hourA;
input wire	[3:0] hourB;
input wire	[3:0] minA;
input wire	[3:0] minB;
input wire	[3:0] secA;
input wire	[3:0] secB;
output wire	COM3;
output wire	COM4;
output wire	COM5;
output wire	COM6;
output wire	COM7;
output wire	COM8;
output wire	COM2;
output wire	COM1;
output wire	[3:0] seg;

wire	SYNTHESIZED_WIRE_36;
wire	SYNTHESIZED_WIRE_37;
wire	SYNTHESIZED_WIRE_38;
wire	SYNTHESIZED_WIRE_39;
wire	SYNTHESIZED_WIRE_40;
wire	SYNTHESIZED_WIRE_41;
wire	SYNTHESIZED_WIRE_16;
wire	SYNTHESIZED_WIRE_17;
wire	SYNTHESIZED_WIRE_18;
wire	SYNTHESIZED_WIRE_19;
wire	SYNTHESIZED_WIRE_20;
wire	SYNTHESIZED_WIRE_22;
wire	[3:0] SYNTHESIZED_WIRE_26;
wire	[3:0] SYNTHESIZED_WIRE_27;
wire	[3:0] SYNTHESIZED_WIRE_29;
wire	[3:0] SYNTHESIZED_WIRE_30;

assign	COM2 = 1;
assign	COM1 = 1;




count_6	b2v_inst(
	.clk(clk),
	.rst(rst),
	.A(SYNTHESIZED_WIRE_41),
	.B(SYNTHESIZED_WIRE_39),
	.C(SYNTHESIZED_WIRE_38));


assign	SYNTHESIZED_WIRE_17 = SYNTHESIZED_WIRE_36 & SYNTHESIZED_WIRE_37 & SYNTHESIZED_WIRE_38;

assign	SYNTHESIZED_WIRE_18 = SYNTHESIZED_WIRE_36 & SYNTHESIZED_WIRE_39 & SYNTHESIZED_WIRE_40;

assign	SYNTHESIZED_WIRE_19 = SYNTHESIZED_WIRE_36 & SYNTHESIZED_WIRE_39 & SYNTHESIZED_WIRE_38;

assign	SYNTHESIZED_WIRE_36 =  ~SYNTHESIZED_WIRE_41;

assign	SYNTHESIZED_WIRE_20 = SYNTHESIZED_WIRE_41 & SYNTHESIZED_WIRE_37 & SYNTHESIZED_WIRE_40;

assign	SYNTHESIZED_WIRE_22 = SYNTHESIZED_WIRE_41 & SYNTHESIZED_WIRE_37 & SYNTHESIZED_WIRE_38;

assign	COM3 =  ~SYNTHESIZED_WIRE_16;

assign	COM4 =  ~SYNTHESIZED_WIRE_17;

assign	COM5 =  ~SYNTHESIZED_WIRE_18;

assign	COM6 =  ~SYNTHESIZED_WIRE_19;

assign	COM7 =  ~SYNTHESIZED_WIRE_20;


mx_4bit_2x1	b2v_inst2(
	.ce(SYNTHESIZED_WIRE_38),
	.s0(hourA),
	.s1(hourB),
	.m_out(SYNTHESIZED_WIRE_26));

assign	COM8 =  ~SYNTHESIZED_WIRE_22;


mx_4bit_2x1	b2v_inst3(
	.ce(SYNTHESIZED_WIRE_38),
	.s0(minA),
	.s1(minB),
	.m_out(SYNTHESIZED_WIRE_27));


mx_4bit_2x1	b2v_inst4(
	.ce(SYNTHESIZED_WIRE_38),
	.s0(secA),
	.s1(secB),
	.m_out(SYNTHESIZED_WIRE_30));


mx_4bit_2x1	b2v_inst5(
	.ce(SYNTHESIZED_WIRE_39),
	.s0(SYNTHESIZED_WIRE_26),
	.s1(SYNTHESIZED_WIRE_27),
	.m_out(SYNTHESIZED_WIRE_29));


mx_4bit_2x1	b2v_inst6(
	.ce(SYNTHESIZED_WIRE_41),
	.s0(SYNTHESIZED_WIRE_29),
	.s1(SYNTHESIZED_WIRE_30),
	.m_out(seg));

assign	SYNTHESIZED_WIRE_37 =  ~SYNTHESIZED_WIRE_39;

assign	SYNTHESIZED_WIRE_40 =  ~SYNTHESIZED_WIRE_38;

assign	SYNTHESIZED_WIRE_16 = SYNTHESIZED_WIRE_36 & SYNTHESIZED_WIRE_37 & SYNTHESIZED_WIRE_40;


endmodule
