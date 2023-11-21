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
// CREATED		"Thu Dec 01 21:39:02 2022"

module four_bit_equal(
	Ain,
	Bin,
	equal
);


input wire	[3:0] Ain;
input wire	[3:0] Bin;
output wire	equal;

wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;





isSame_1bit	b2v_inst(
	.A(Ain[3]),
	.B(Bin[3]),
	.isSame(SYNTHESIZED_WIRE_0));


isSame_1bit	b2v_inst1(
	.A(Ain[2]),
	.B(Bin[2]),
	.isSame(SYNTHESIZED_WIRE_1));


isSame_1bit	b2v_inst2(
	.A(Ain[1]),
	.B(Bin[1]),
	.isSame(SYNTHESIZED_WIRE_2));


isSame_1bit	b2v_inst3(
	.A(Ain[0]),
	.B(Bin[0]),
	.isSame(SYNTHESIZED_WIRE_3));

assign	equal = SYNTHESIZED_WIRE_0 & SYNTHESIZED_WIRE_1 & SYNTHESIZED_WIRE_2 & SYNTHESIZED_WIRE_3;


endmodule
