module traffic_top(
	input EN,
	output [2:0] LED_main,LED_secondary,
	output [7:0] an,
	input clk,
	output [6:0] seg);
	wire clk_ls;
	wire [1:0] sel;
	clkdiv_ls u1(.clk(clk),.EN(EN),.COUNT_A_H(COUNT_A_H),.COUNT_A_L(COUNT_A_L),.LAMP_A(LAMP_A));

	wire [3:0] COUNT_A_H,COUNT_A_L;
	wire [2:0] LAMP_A;
	traffic_main u2(.clkdiv(clk_ls),.EN(EN),.COUNT_A_H(COUNT_A_H),.COUNT_A_L(COUNT_A_L),.LAMP_A(LAMP_A));

	wire [3:0] COUNT_B_H,COUNT_B_L;
	wire [2:0] LAMP_B;

	traffic_secondary u3(.EN(EN),.clkdiv(clk_ls));

	traffic_led u4(.D(LAMP_A),.CP(clk_ls),.Q(LED_main));
	traffic_led u5(.D(LAMP_B),.CP(clk_ls),.Q(LED_secondary));
	traffic_display u6(.s(s),.COUNT_A_H(COUNT_A_H),.COUNT_A_L(COUNT_A_L),.COUNT_B_H(COUNT_B_H),.COUNT_B_L(COUNT_B_L));