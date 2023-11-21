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
// CREATED		"Thu Dec 01 21:36:53 2022"

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
wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_52;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_9;
wire	SYNTHESIZED_WIRE_11;
wire	[3:0] SYNTHESIZED_WIRE_53;
wire	[3:0] SYNTHESIZED_WIRE_54;
wire	[3:0] SYNTHESIZED_WIRE_55;
wire	[3:0] SYNTHESIZED_WIRE_56;
wire	[3:0] SYNTHESIZED_WIRE_57;
wire	[3:0] SYNTHESIZED_WIRE_58;
wire	[3:0] SYNTHESIZED_WIRE_18;
wire	SYNTHESIZED_WIRE_19;
wire	SYNTHESIZED_WIRE_21;
reg	DFF_inst60;
wire	SYNTHESIZED_WIRE_23;
reg	DFF_inst63;
wire	SYNTHESIZED_WIRE_24;
wire	SYNTHESIZED_WIRE_32;
wire	SYNTHESIZED_WIRE_34;
wire	SYNTHESIZED_WIRE_35;
wire	SYNTHESIZED_WIRE_36;
wire	SYNTHESIZED_WIRE_39;
wire	SYNTHESIZED_WIRE_40;
wire	SYNTHESIZED_WIRE_41;
wire	SYNTHESIZED_WIRE_43;
wire	SYNTHESIZED_WIRE_48;
wire	SYNTHESIZED_WIRE_49;
wire	SYNTHESIZED_WIRE_50;
wire	SYNTHESIZED_WIRE_51;

assign	SYNTHESIZED_WIRE_9 = 1;




count_60	b2v_inst(
	.clk(SYNTHESIZED_WIRE_0),
	.rst(SYNTHESIZED_WIRE_1),
	.out_10(clk_secB),
	.out_6(clk_secA));


count_60	b2v_inst1(
	.clk(SYNTHESIZED_WIRE_2),
	.rst(SYNTHESIZED_WIRE_52),
	.out_10(clk_minB),
	.out_6(clk_minA));

assign	SYNTHESIZED_WIRE_7 = SYNTHESIZED_WIRE_4 & SYNTHESIZED_WIRE_5;


PNU_CLK_DIV	b2v_inst11(
	.clk(clk),
	.rst_n(SYNTHESIZED_WIRE_52),
	.en(SYNTHESIZED_WIRE_7),
	.div_clk(piezo));
	defparam	b2v_inst11.cnt_num = 3822;


PNU_CLK_DIV	b2v_inst12(
	.clk(clk),
	.rst_n(SYNTHESIZED_WIRE_52),
	.en(SYNTHESIZED_WIRE_9),
	.div_clk(SYNTHESIZED_WIRE_0));
	defparam	b2v_inst12.cnt_num = 1000;

assign	SYNTHESIZED_WIRE_52 =  ~rst;


switch_six_row_segment	b2v_inst15(
	.clk(clk),
	.rst(SYNTHESIZED_WIRE_52),
	.switch(SYNTHESIZED_WIRE_11),
	.alr_hourA(SYNTHESIZED_WIRE_53),
	.alr_hourB(SYNTHESIZED_WIRE_54),
	.alr_minA(SYNTHESIZED_WIRE_55),
	.alr_minB(SYNTHESIZED_WIRE_56),
	.alr_secA(alr_secA),
	.alr_secB(alr_secB),
	.clk_hourA(SYNTHESIZED_WIRE_57),
	.clk_hourB(SYNTHESIZED_WIRE_58),
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
	.seg(SYNTHESIZED_WIRE_18));


b2seg_bus	b2v_inst17(
	.b_in(SYNTHESIZED_WIRE_18),
	.a(seg_ALTERA_SYNTHESIZED[0]),
	.b(seg_ALTERA_SYNTHESIZED[1]),
	.c(seg_ALTERA_SYNTHESIZED[2]),
	.d(seg_ALTERA_SYNTHESIZED[3]),
	.e(seg_ALTERA_SYNTHESIZED[4]),
	.f(seg_ALTERA_SYNTHESIZED[5]),
	.g(seg_ALTERA_SYNTHESIZED[6]));

assign	SYNTHESIZED_WIRE_35 =  ~clk_secA[1];


count_24	b2v_inst2(
	.clk(SYNTHESIZED_WIRE_19),
	.rst(SYNTHESIZED_WIRE_52),
	.out_10(SYNTHESIZED_WIRE_58),
	.out_3(SYNTHESIZED_WIRE_57));

assign	SYNTHESIZED_WIRE_36 =  ~clk_secA[3];

assign	SYNTHESIZED_WIRE_40 =  ~clk_minA[1];

assign	SYNTHESIZED_WIRE_2 = SYNTHESIZED_WIRE_21 | DFF_inst60;


count_24	b2v_inst3(
	.clk(alr_hour),
	.rst(SYNTHESIZED_WIRE_52),
	.out_10(SYNTHESIZED_WIRE_54),
	.out_3(SYNTHESIZED_WIRE_53));

assign	SYNTHESIZED_WIRE_19 = SYNTHESIZED_WIRE_23 | DFF_inst63;

assign	SYNTHESIZED_WIRE_41 =  ~clk_minA[3];


count_2	b2v_inst37(
	.clk(SYNTHESIZED_WIRE_24),
	.rst(SYNTHESIZED_WIRE_52),
	.A(SYNTHESIZED_WIRE_5));


count_60	b2v_inst4(
	.clk(alr_min),
	.rst(SYNTHESIZED_WIRE_52),
	.out_10(SYNTHESIZED_WIRE_56),
	.out_6(SYNTHESIZED_WIRE_55));



trigger	b2v_inst44(
	.Din(sec_rst),
	.CLK(clk),
	.rst_n(SYNTHESIZED_WIRE_52),
	.Dout(SYNTHESIZED_WIRE_34));


trigger	b2v_inst45(
	.Din(min_up),
	.CLK(clk),
	.rst_n(SYNTHESIZED_WIRE_52),
	.Dout(SYNTHESIZED_WIRE_21));


trigger	b2v_inst46(
	.Din(hour_up),
	.CLK(clk),
	
	.Dout(SYNTHESIZED_WIRE_23));


trigger	b2v_inst47(
	.Din(switch),
	.CLK(clk),
	.rst_n(SYNTHESIZED_WIRE_52),
	.Dout(SYNTHESIZED_WIRE_11));


trigger	b2v_inst48(
	.Din(alr_stop),
	.CLK(clk),
	.rst_n(SYNTHESIZED_WIRE_52),
	.Dout(SYNTHESIZED_WIRE_24));



four_bit_equal	b2v_inst5(
	.Ain(clk_minA),
	.Bin(SYNTHESIZED_WIRE_55),
	.equal(SYNTHESIZED_WIRE_48));








assign	SYNTHESIZED_WIRE_1 = SYNTHESIZED_WIRE_32 & SYNTHESIZED_WIRE_52;

assign	SYNTHESIZED_WIRE_32 =  ~SYNTHESIZED_WIRE_34;

assign	SYNTHESIZED_WIRE_39 = clk_secA[2] & clk_secA[0] & SYNTHESIZED_WIRE_35 & SYNTHESIZED_WIRE_36 & clk_secB[0] & clk_secB[3];


four_bit_equal	b2v_inst6(
	.Ain(clk_minB),
	.Bin(SYNTHESIZED_WIRE_56),
	.equal(SYNTHESIZED_WIRE_49));


always@(posedge clk or negedge SYNTHESIZED_WIRE_52)
begin
if (!SYNTHESIZED_WIRE_52)
	begin
	DFF_inst60 <= 0;
	end
else
	begin
	DFF_inst60 <= SYNTHESIZED_WIRE_39;
	end
end

assign	SYNTHESIZED_WIRE_43 = clk_minA[2] & clk_minA[0] & SYNTHESIZED_WIRE_40 & SYNTHESIZED_WIRE_41 & clk_minB[0] & clk_minB[3];


always@(posedge clk or negedge SYNTHESIZED_WIRE_52)
begin
if (!SYNTHESIZED_WIRE_52)
	begin
	DFF_inst63 <= 0;
	end
else
	begin
	DFF_inst63 <= SYNTHESIZED_WIRE_43;
	end
end


four_bit_equal	b2v_inst7(
	.Ain(SYNTHESIZED_WIRE_57),
	.Bin(SYNTHESIZED_WIRE_53),
	.equal(SYNTHESIZED_WIRE_50));


four_bit_equal	b2v_inst8(
	.Ain(SYNTHESIZED_WIRE_58),
	.Bin(SYNTHESIZED_WIRE_54),
	.equal(SYNTHESIZED_WIRE_51));

assign	SYNTHESIZED_WIRE_4 = SYNTHESIZED_WIRE_48 & SYNTHESIZED_WIRE_49 & SYNTHESIZED_WIRE_50 & SYNTHESIZED_WIRE_51;

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
