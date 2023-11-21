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
// CREATED		"Thu Dec 01 21:38:43 2022"

module count_24(
	clk,
	rst,
	out_10,
	out_3
);


input wire	clk;
input wire	rst;
output wire	[3:0] out_10;
output wire	[3:0] out_3;

wire	[3:0] out_ALTERA_SYNTHESIZED10;
wire	[3:0] out_ALTERA_SYNTHESIZED3;
reg	DFF_inst16;
wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_9;
wire	SYNTHESIZED_WIRE_15;
wire	SYNTHESIZED_WIRE_12;
wire	SYNTHESIZED_WIRE_13;
wire	SYNTHESIZED_WIRE_14;





count_3	b2v_inst(
	.clk(DFF_inst16),
	.rst(SYNTHESIZED_WIRE_0),
	.A(out_ALTERA_SYNTHESIZED3[1]),
	.B(out_ALTERA_SYNTHESIZED3[0]));


counter_10	b2v_inst1(
	.CLK(clk),
	.rst_n(SYNTHESIZED_WIRE_1),
	.A_out(out_ALTERA_SYNTHESIZED10[3]),
	.B_out(out_ALTERA_SYNTHESIZED10[2]),
	.C_out(out_ALTERA_SYNTHESIZED10[1]),
	.D_out(out_ALTERA_SYNTHESIZED10[0]));

assign	SYNTHESIZED_WIRE_1 = SYNTHESIZED_WIRE_2 & rst;

assign	SYNTHESIZED_WIRE_3 =  ~out_ALTERA_SYNTHESIZED3[0];

assign	SYNTHESIZED_WIRE_7 = out_ALTERA_SYNTHESIZED3[1] & SYNTHESIZED_WIRE_3;


assign	SYNTHESIZED_WIRE_8 = SYNTHESIZED_WIRE_4 & out_ALTERA_SYNTHESIZED10[2] & SYNTHESIZED_WIRE_5 & SYNTHESIZED_WIRE_6;

assign	SYNTHESIZED_WIRE_15 = SYNTHESIZED_WIRE_7 & SYNTHESIZED_WIRE_8;


always@(posedge clk or negedge rst)
begin
if (!rst)
	begin
	DFF_inst16 <= 0;
	end
else
	begin
	DFF_inst16 <= SYNTHESIZED_WIRE_9;
	end
end

assign	SYNTHESIZED_WIRE_4 =  ~out_ALTERA_SYNTHESIZED10[0];

assign	SYNTHESIZED_WIRE_5 =  ~out_ALTERA_SYNTHESIZED10[1];

assign	SYNTHESIZED_WIRE_6 =  ~out_ALTERA_SYNTHESIZED10[3];

assign	SYNTHESIZED_WIRE_12 =  ~SYNTHESIZED_WIRE_15;

assign	SYNTHESIZED_WIRE_2 =  ~SYNTHESIZED_WIRE_15;

assign	SYNTHESIZED_WIRE_0 = SYNTHESIZED_WIRE_12 & rst;

assign	SYNTHESIZED_WIRE_9 = out_ALTERA_SYNTHESIZED10[3] & SYNTHESIZED_WIRE_13 & SYNTHESIZED_WIRE_14 & out_ALTERA_SYNTHESIZED10[0];

assign	SYNTHESIZED_WIRE_13 =  ~out_ALTERA_SYNTHESIZED10[2];

assign	SYNTHESIZED_WIRE_14 =  ~out_ALTERA_SYNTHESIZED10[1];

assign	out_10 = out_ALTERA_SYNTHESIZED10;
assign	out_3 = out_ALTERA_SYNTHESIZED3;
assign	out_ALTERA_SYNTHESIZED3[2] = 0;
assign	out_ALTERA_SYNTHESIZED3[3] = 0;

endmodule
