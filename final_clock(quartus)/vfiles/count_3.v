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
// CREATED		"Thu Dec 01 21:38:34 2022"

module count_3(
	rst,
	clk,
	A,
	B
);


input wire	rst;
input wire	clk;
output wire	A;
output wire	B;

wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
reg	DFF_inst;
reg	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_4;

assign	A = DFF_inst;
assign	B = SYNTHESIZED_WIRE_5;




always@(posedge clk or negedge rst)
begin
if (!rst)
	begin
	DFF_inst <= 0;
	end
else
	begin
	DFF_inst <= SYNTHESIZED_WIRE_0;
	end
end


always@(posedge clk or negedge rst)
begin
if (!rst)
	begin
	SYNTHESIZED_WIRE_5 <= 0;
	end
else
	begin
	SYNTHESIZED_WIRE_5 <= SYNTHESIZED_WIRE_1;
	end
end

assign	SYNTHESIZED_WIRE_6 =  ~DFF_inst;

assign	SYNTHESIZED_WIRE_4 =  ~SYNTHESIZED_WIRE_5;

assign	SYNTHESIZED_WIRE_0 = SYNTHESIZED_WIRE_6 & SYNTHESIZED_WIRE_5;

assign	SYNTHESIZED_WIRE_1 = SYNTHESIZED_WIRE_6 & SYNTHESIZED_WIRE_4;


endmodule
