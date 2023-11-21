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
// CREATED		"Thu Dec 01 21:38:15 2022"

module count_60(
	rst,
	clk,
	out_10,
	out_6
);


input wire	rst;
input wire	clk;
output wire	[3:0] out_10;
output wire	[3:0] out_6;

wire	[3:0] out_ALTERA_SYNTHESIZED10;
wire	[3:0] out_ALTERA_SYNTHESIZED6;
reg	DFF_inst4;
wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;





count_6	b2v_inst(
	.clk(DFF_inst4),
	.rst(rst),
	.A(out_ALTERA_SYNTHESIZED6[2]),
	.B(out_ALTERA_SYNTHESIZED6[1]),
	.C(out_ALTERA_SYNTHESIZED6[0]));



counter_10	b2v_inst2(
	.CLK(clk),
	.rst_n(rst),
	.A_out(out_ALTERA_SYNTHESIZED10[3]),
	.B_out(out_ALTERA_SYNTHESIZED10[2]),
	.C_out(out_ALTERA_SYNTHESIZED10[1]),
	.D_out(out_ALTERA_SYNTHESIZED10[0]));

assign	SYNTHESIZED_WIRE_2 = out_ALTERA_SYNTHESIZED10[3] & SYNTHESIZED_WIRE_0 & SYNTHESIZED_WIRE_1 & out_ALTERA_SYNTHESIZED10[0];


always@(posedge clk or negedge rst)
begin
if (!rst)
	begin
	DFF_inst4 <= 0;
	end
else
	begin
	DFF_inst4 <= SYNTHESIZED_WIRE_2;
	end
end

assign	SYNTHESIZED_WIRE_0 =  ~out_ALTERA_SYNTHESIZED10[2];

assign	SYNTHESIZED_WIRE_1 =  ~out_ALTERA_SYNTHESIZED10[1];

assign	out_10 = out_ALTERA_SYNTHESIZED10;
assign	out_6 = out_ALTERA_SYNTHESIZED6;
assign	out_ALTERA_SYNTHESIZED6[3] = 0;

endmodule
