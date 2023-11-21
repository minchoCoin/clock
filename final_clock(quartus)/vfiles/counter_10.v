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
// CREATED		"Thu Dec 01 21:36:40 2022"

module counter_10(
	CLK,
	rst_n,
	A_out,
	B_out,
	C_out,
	D_out
);


input wire	CLK;
input wire	rst_n;
output wire	A_out;
output wire	B_out;
output wire	C_out;
output wire	D_out;

wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
reg	SYNTHESIZED_WIRE_15;
wire	SYNTHESIZED_WIRE_4;
reg	SYNTHESIZED_WIRE_16;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_7;
reg	SYNTHESIZED_WIRE_17;
reg	SYNTHESIZED_WIRE_18;
wire	SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_9;
wire	SYNTHESIZED_WIRE_10;
wire	SYNTHESIZED_WIRE_11;
wire	SYNTHESIZED_WIRE_12;
wire	SYNTHESIZED_WIRE_13;
wire	SYNTHESIZED_WIRE_14;

assign	A_out = SYNTHESIZED_WIRE_15;
assign	B_out = SYNTHESIZED_WIRE_16;
assign	C_out = SYNTHESIZED_WIRE_17;
assign	D_out = SYNTHESIZED_WIRE_18;




always@(posedge CLK or negedge rst_n)
begin
if (!rst_n)
	begin
	SYNTHESIZED_WIRE_15 <= 0;
	end
else
	begin
	SYNTHESIZED_WIRE_15 <= SYNTHESIZED_WIRE_0;
	end
end


always@(posedge CLK or negedge rst_n)
begin
if (!rst_n)
	begin
	SYNTHESIZED_WIRE_16 <= 0;
	end
else
	begin
	SYNTHESIZED_WIRE_16 <= SYNTHESIZED_WIRE_1;
	end
end


always@(posedge CLK or negedge rst_n)
begin
if (!rst_n)
	begin
	SYNTHESIZED_WIRE_17 <= 0;
	end
else
	begin
	SYNTHESIZED_WIRE_17 <= SYNTHESIZED_WIRE_2;
	end
end


always@(posedge CLK or negedge rst_n)
begin
if (!rst_n)
	begin
	SYNTHESIZED_WIRE_18 <= 0;
	end
else
	begin
	SYNTHESIZED_WIRE_18 <= SYNTHESIZED_WIRE_3;
	end
end

assign	SYNTHESIZED_WIRE_11 = SYNTHESIZED_WIRE_15 & SYNTHESIZED_WIRE_4;

assign	SYNTHESIZED_WIRE_7 =  ~SYNTHESIZED_WIRE_16;

assign	SYNTHESIZED_WIRE_14 = SYNTHESIZED_WIRE_16 & SYNTHESIZED_WIRE_5;

assign	SYNTHESIZED_WIRE_12 = SYNTHESIZED_WIRE_16 & SYNTHESIZED_WIRE_6;

assign	SYNTHESIZED_WIRE_13 = SYNTHESIZED_WIRE_7 & SYNTHESIZED_WIRE_17 & SYNTHESIZED_WIRE_18;

assign	SYNTHESIZED_WIRE_8 = SYNTHESIZED_WIRE_17 ^ SYNTHESIZED_WIRE_18;

assign	SYNTHESIZED_WIRE_9 =  ~SYNTHESIZED_WIRE_15;

assign	SYNTHESIZED_WIRE_2 = SYNTHESIZED_WIRE_8 & SYNTHESIZED_WIRE_9;

assign	SYNTHESIZED_WIRE_3 =  ~SYNTHESIZED_WIRE_18;

assign	SYNTHESIZED_WIRE_4 =  ~SYNTHESIZED_WIRE_18;

assign	SYNTHESIZED_WIRE_10 = SYNTHESIZED_WIRE_16 & SYNTHESIZED_WIRE_17 & SYNTHESIZED_WIRE_18;

assign	SYNTHESIZED_WIRE_0 = SYNTHESIZED_WIRE_10 | SYNTHESIZED_WIRE_11;

assign	SYNTHESIZED_WIRE_1 = SYNTHESIZED_WIRE_12 | SYNTHESIZED_WIRE_13 | SYNTHESIZED_WIRE_14;

assign	SYNTHESIZED_WIRE_5 =  ~SYNTHESIZED_WIRE_17;

assign	SYNTHESIZED_WIRE_6 =  ~SYNTHESIZED_WIRE_18;


endmodule
