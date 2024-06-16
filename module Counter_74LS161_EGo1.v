module Counter_74LS161_EGo1(
	input CP,D_0,D_1,
	output wire[7:0] seg_cs_pin,
	output wire[7:0] seg_data_0_pin);
	wire clk_100M,clk_100,clk_40,clk_20,clk_10,clk_5,clk_1;
	clk_div C(CP,clk_100,clk_40,clk_20,clk_10,clk_5,clk_1);
	Counter_74LS161 T(CR_n,clk_1,D_0,D_0,D_0,D_0,D_1,D_1,D_1,Q0,Q1,Q2,Q3);
	Hex8seg_EGo1 H(Q0,Q1,Q2,Q3,seg_cs_pin,seg_data_0_pin);
	//nand2 N(Q2,Q1,CR_n);
	nand2_CP N(Q2,Q0,CR_n,clk_l);
endmodule