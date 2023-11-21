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
// CREATED		"Thu Dec 01 21:37:55 2022"

module count_6(
	clk,
	rst,
	A,
	B,
	C
);


input wire	clk;
input wire	rst;
output wire	A;
output wire	B;
output wire	C;

wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_16;
wire	SYNTHESIZED_WIRE_17;
reg	SYNTHESIZED_WIRE_18;
reg	SYNTHESIZED_WIRE_19;
wire	SYNTHESIZED_WIRE_4;
reg	SYNTHESIZED_WIRE_20;
wire	SYNTHESIZED_WIRE_21;
wire	SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_10;
wire	SYNTHESIZED_WIRE_12;
wire	SYNTHESIZED_WIRE_13;
wire	SYNTHESIZED_WIRE_14;

assign	A = SYNTHESIZED_WIRE_18;
assign	B = SYNTHESIZED_WIRE_19;
assign	C = SYNTHESIZED_WIRE_20;




always@(posedge clk or negedge rst)
begin
if (!rst)
	begin
	SYNTHESIZED_WIRE_18 <= 0;
	end
else
	begin
	SYNTHESIZED_WIRE_18 <= SYNTHESIZED_WIRE_0;
	end
end


always@(posedge clk or negedge rst)
begin
if (!rst)
	begin
	SYNTHESIZED_WIRE_19 <= 0;
	end
else
	begin
	SYNTHESIZED_WIRE_19 <= SYNTHESIZED_WIRE_1;
	end
end

assign	SYNTHESIZED_WIRE_14 = SYNTHESIZED_WIRE_16 & SYNTHESIZED_WIRE_17;

assign	SYNTHESIZED_WIRE_13 = SYNTHESIZED_WIRE_18 ^ SYNTHESIZED_WIRE_19;


always@(posedge clk or negedge rst)
begin
if (!rst)
	begin
	SYNTHESIZED_WIRE_20 <= 0;
	end
else
	begin
	SYNTHESIZED_WIRE_20 <= SYNTHESIZED_WIRE_4;
	end
end

assign	SYNTHESIZED_WIRE_16 =  ~SYNTHESIZED_WIRE_18;

assign	SYNTHESIZED_WIRE_17 =  ~SYNTHESIZED_WIRE_19;

assign	SYNTHESIZED_WIRE_21 =  ~SYNTHESIZED_WIRE_20;

assign	SYNTHESIZED_WIRE_7 = SYNTHESIZED_WIRE_18 & SYNTHESIZED_WIRE_17 & SYNTHESIZED_WIRE_21;

assign	SYNTHESIZED_WIRE_0 = SYNTHESIZED_WIRE_7 | SYNTHESIZED_WIRE_8;

assign	SYNTHESIZED_WIRE_1 = SYNTHESIZED_WIRE_16 & SYNTHESIZED_WIRE_10;

assign	SYNTHESIZED_WIRE_10 = SYNTHESIZED_WIRE_19 ^ SYNTHESIZED_WIRE_20;

assign	SYNTHESIZED_WIRE_4 = SYNTHESIZED_WIRE_21 & SYNTHESIZED_WIRE_12;

assign	SYNTHESIZED_WIRE_12 = SYNTHESIZED_WIRE_13 | SYNTHESIZED_WIRE_14;

assign	SYNTHESIZED_WIRE_8 = SYNTHESIZED_WIRE_16 & SYNTHESIZED_WIRE_19 & SYNTHESIZED_WIRE_20;


endmodule
