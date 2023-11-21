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
// CREATED		"Thu Dec 08 20:26:00 2022"

module termProject(
	alr_stop,
	sec_rst,
	min_up,
	hour_up,
	alr_min,
	alr_hour,
	clk,
	rst,
	switch,
	piezo,
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


input wire	alr_stop;
input wire	sec_rst;
input wire	min_up;
input wire	hour_up;
input wire	alr_min;
input wire	alr_hour;
input wire	clk;
input wire	rst;
input wire	switch;
output wire	piezo;
output wire	COM1;
output wire	COM2;
output wire	COM3;
output wire	COM4;
output wire	COM5;
output wire	COM6;
output wire	COM7;
output wire	COM8;
output wire	[6:0] seg;

wire	[3:0] alr_secA;
wire	[3:0] alr_secB;
wire	[3:0] clk_minA;
wire	[3:0] clk_minB;
wire	[3:0] clk_secA;
wire	[3:0] clk_secB;
wire	[6:0] seg_ALTERA_SYNTHESIZED;
wire	SYNTHESIZED_WIRE_59;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_60;
wire	SYNTHESIZED_WIRE_61;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_9;
wire	SYNTHESIZED_WIRE_12;
wire	[3:0] SYNTHESIZED_WIRE_62;
wire	[3:0] SYNTHESIZED_WIRE_63;
wire	[3:0] SYNTHESIZED_WIRE_64;
wire	[3:0] SYNTHESIZED_WIRE_65;
wire	[3:0] SYNTHESIZED_WIRE_66;
wire	[3:0] SYNTHESIZED_WIRE_67;
wire	[3:0] SYNTHESIZED_WIRE_20;
wire	SYNTHESIZED_WIRE_21;
wire	SYNTHESIZED_WIRE_23;
reg	DFF_inst60;
wire	SYNTHESIZED_WIRE_24;
wire	SYNTHESIZED_WIRE_26;
reg	DFF_inst63;
wire	SYNTHESIZED_WIRE_27;
wire	SYNTHESIZED_WIRE_29;
wire	SYNTHESIZED_WIRE_37;
wire	SYNTHESIZED_WIRE_39;
wire	SYNTHESIZED_WIRE_40;
wire	SYNTHESIZED_WIRE_41;
wire	SYNTHESIZED_WIRE_45;
wire	SYNTHESIZED_WIRE_46;
wire	SYNTHESIZED_WIRE_47;
wire	SYNTHESIZED_WIRE_50;
wire	SYNTHESIZED_WIRE_55;
wire	SYNTHESIZED_WIRE_56;
wire	SYNTHESIZED_WIRE_57;
wire	SYNTHESIZED_WIRE_58;

assign	SYNTHESIZED_WIRE_9 = 1;




count_60	b2v_inst(
	.clk(SYNTHESIZED_WIRE_59),
	.rst(SYNTHESIZED_WIRE_1),
	.out_10(clk_secB),
	.out_6(clk_secA));


count_60	b2v_inst1(
	.clk(SYNTHESIZED_WIRE_60),
	.rst(SYNTHESIZED_WIRE_61),
	.out_10(clk_minB),
	.out_6(clk_minA));

assign	SYNTHESIZED_WIRE_7 = SYNTHESIZED_WIRE_4 & SYNTHESIZED_WIRE_5;


PNU_CLK_DIV	b2v_inst11(
	.clk(clk),
	.rst_n(SYNTHESIZED_WIRE_61),
	.en(SYNTHESIZED_WIRE_7),
	.div_clk(piezo));
	defparam	b2v_inst11.cnt_num = 3822;


PNU_CLK_DIV	b2v_inst12(
	.clk(clk),
	.rst_n(SYNTHESIZED_WIRE_61),
	.en(SYNTHESIZED_WIRE_9),
	.div_clk(SYNTHESIZED_WIRE_59));
	defparam	b2v_inst12.cnt_num = 1000000;


trigger	b2v_inst13(
	.Din(alr_min),
	.CLK(clk),
	.rst_n(SYNTHESIZED_WIRE_61),
	.Dout(SYNTHESIZED_WIRE_29));

assign	SYNTHESIZED_WIRE_61 =  ~rst;


switch_six_row_segment	b2v_inst15(
	.clk(clk),
	.rst(SYNTHESIZED_WIRE_61),
	.switch(SYNTHESIZED_WIRE_12),
	.alr_hourA(SYNTHESIZED_WIRE_62),
	.alr_hourB(SYNTHESIZED_WIRE_63),
	.alr_minA(SYNTHESIZED_WIRE_64),
	.alr_minB(SYNTHESIZED_WIRE_65),
	.alr_secA(alr_secA),
	.alr_secB(alr_secB),
	.clk_hourA(SYNTHESIZED_WIRE_66),
	.clk_hourB(SYNTHESIZED_WIRE_67),
	.clk_minA(clk_minA),
	.clk_minB(clk_minB),
	.clk_secA(clk_secA),
	.clk_secB(clk_secB),
	.COM1(COM1),
	.COM2(COM2),
	.COM3(COM3),
	.COM4(COM4),
	.COM5(COM5),
	.COM6(COM6),
	.COM7(COM7),
	.COM8(COM8),
	.seg(SYNTHESIZED_WIRE_20));


trigger	b2v_inst16(
	.Din(alr_hour),
	.CLK(clk),
	.rst_n(SYNTHESIZED_WIRE_61),
	.Dout(SYNTHESIZED_WIRE_24));


b2seg_bus	b2v_inst17(
	.b_in(SYNTHESIZED_WIRE_20),
	.a(seg_ALTERA_SYNTHESIZED[0]),
	.b(seg_ALTERA_SYNTHESIZED[1]),
	.c(seg_ALTERA_SYNTHESIZED[2]),
	.d(seg_ALTERA_SYNTHESIZED[3]),
	.e(seg_ALTERA_SYNTHESIZED[4]),
	.f(seg_ALTERA_SYNTHESIZED[5]),
	.g(seg_ALTERA_SYNTHESIZED[6]));

assign	SYNTHESIZED_WIRE_40 =  ~clk_secA[1];


count_24	b2v_inst2(
	.clk(SYNTHESIZED_WIRE_21),
	.rst(SYNTHESIZED_WIRE_61),
	.out_10(SYNTHESIZED_WIRE_67),
	.out_3(SYNTHESIZED_WIRE_66));

assign	SYNTHESIZED_WIRE_41 =  ~clk_secA[3];

assign	SYNTHESIZED_WIRE_46 =  ~clk_minA[1];

assign	SYNTHESIZED_WIRE_60 = SYNTHESIZED_WIRE_23 | DFF_inst60;


count_24	b2v_inst3(
	.clk(SYNTHESIZED_WIRE_24),
	.rst(SYNTHESIZED_WIRE_61),
	.out_10(SYNTHESIZED_WIRE_63),
	.out_3(SYNTHESIZED_WIRE_62));

assign	SYNTHESIZED_WIRE_21 = SYNTHESIZED_WIRE_26 | DFF_inst63;

assign	SYNTHESIZED_WIRE_47 =  ~clk_minA[3];


count_2	b2v_inst37(
	.clk(SYNTHESIZED_WIRE_27),
	.rst(SYNTHESIZED_WIRE_61),
	.A(SYNTHESIZED_WIRE_5));


count_60	b2v_inst4(
	.clk(SYNTHESIZED_WIRE_29),
	.rst(SYNTHESIZED_WIRE_61),
	.out_10(SYNTHESIZED_WIRE_65),
	.out_6(SYNTHESIZED_WIRE_64));



trigger	b2v_inst44(
	.Din(sec_rst),
	.CLK(clk),
	.rst_n(SYNTHESIZED_WIRE_61),
	.Dout(SYNTHESIZED_WIRE_39));


trigger	b2v_inst45(
	.Din(min_up),
	.CLK(clk),
	.rst_n(SYNTHESIZED_WIRE_61),
	.Dout(SYNTHESIZED_WIRE_23));


trigger	b2v_inst46(
	.Din(hour_up),
	.CLK(clk),
	.rst_n(SYNTHESIZED_WIRE_61),
	.Dout(SYNTHESIZED_WIRE_26));


trigger	b2v_inst47(
	.Din(switch),
	.CLK(clk),
	.rst_n(SYNTHESIZED_WIRE_61),
	.Dout(SYNTHESIZED_WIRE_12));


trigger	b2v_inst48(
	.Din(alr_stop),
	.CLK(clk),
	.rst_n(SYNTHESIZED_WIRE_61),
	.Dout(SYNTHESIZED_WIRE_27));



four_bit_equal	b2v_inst5(
	.Ain(clk_minA),
	.Bin(SYNTHESIZED_WIRE_64),
	.equal(SYNTHESIZED_WIRE_55));








assign	SYNTHESIZED_WIRE_1 = SYNTHESIZED_WIRE_37 & SYNTHESIZED_WIRE_61;

assign	SYNTHESIZED_WIRE_37 =  ~SYNTHESIZED_WIRE_39;

assign	SYNTHESIZED_WIRE_45 = clk_secA[2] & clk_secA[0] & SYNTHESIZED_WIRE_40 & SYNTHESIZED_WIRE_41 & clk_secB[0] & clk_secB[3];


four_bit_equal	b2v_inst6(
	.Ain(clk_minB),
	.Bin(SYNTHESIZED_WIRE_65),
	.equal(SYNTHESIZED_WIRE_56));


always@(posedge SYNTHESIZED_WIRE_59 or negedge SYNTHESIZED_WIRE_61)
begin
if (!SYNTHESIZED_WIRE_61)
	begin
	DFF_inst60 <= 0;
	end
else
	begin
	DFF_inst60 <= SYNTHESIZED_WIRE_45;
	end
end

assign	SYNTHESIZED_WIRE_50 = clk_minA[2] & clk_minA[0] & SYNTHESIZED_WIRE_46 & SYNTHESIZED_WIRE_47 & clk_minB[0] & clk_minB[3];


always@(posedge SYNTHESIZED_WIRE_60 or negedge SYNTHESIZED_WIRE_61)
begin
if (!SYNTHESIZED_WIRE_61)
	begin
	DFF_inst63 <= 0;
	end
else
	begin
	DFF_inst63 <= SYNTHESIZED_WIRE_50;
	end
end


four_bit_equal	b2v_inst7(
	.Ain(SYNTHESIZED_WIRE_66),
	.Bin(SYNTHESIZED_WIRE_62),
	.equal(SYNTHESIZED_WIRE_57));


four_bit_equal	b2v_inst8(
	.Ain(SYNTHESIZED_WIRE_67),
	.Bin(SYNTHESIZED_WIRE_63),
	.equal(SYNTHESIZED_WIRE_58));

assign	SYNTHESIZED_WIRE_4 = SYNTHESIZED_WIRE_55 & SYNTHESIZED_WIRE_56 & SYNTHESIZED_WIRE_57 & SYNTHESIZED_WIRE_58;

assign	seg = seg_ALTERA_SYNTHESIZED;
assign	alr_secA[0] = 0;
assign	alr_secA[1] = 0;
assign	alr_secA[2] = 0;
assign	alr_secA[3] = 0;
assign	alr_secB[0] = 0;
assign	alr_secB[3] = 0;
assign	alr_secB[2] = 0;
assign	alr_secB[1] = 0;

endmodule
