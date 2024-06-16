module clk_div(
	input clk_100M,
	output clk_100,clk_50,clk_20,clk_10,clk_5,clk_1);
	reg [15:0] cnt_khz;
	reg [11:0] cnt_hz;
	reg clk_1k,clk_100_reg,clk_50_reg,clk_20_reg,clk_10_reg,clk_5_reg,clk_1_reg;
	initial begin
		cnt_khz=0;cnt_hz=0;clk_1k=0;clk_100_reg=0;clk_50_reg=0;clk_20_reg=0;clk_10_reg=0;clk_5_reg=0;clk_1_reg=0;

	end
	always @(posedge clk_100M) begin
		cnt_khz<=cnt_khz+1;
		if(cnt_khz==16'hC34F)
			clk_1k<=~clk_1k;
	end
	always @(posedge clk_1k) begin
		cnt_hz<=cnt_hz+1;
	end
	always @(posedge clk_1k) begin
		if(cnt_hz[2:0]==3'b100) clk_100_reg<=~clk_100_reg;
		else if(cnt_hz[3:0]==4'b1001) clk_50_reg<=~clk_50_reg;
		else if(cnt_hz[4:0]==5'b11000) clk_20_reg<=~clk_20_reg;
		else if(cnt_hz[5:0]==6'b110001) clk_10_reg<=~clk_10_reg;
		else if(cnt_hz[6:0]==7'b1100011) clk_5_reg<=~clk_5_reg;
		else if(cnt_hz[8:0]==9'b11_1110_011) clk_1_reg<=~clk_1_reg;
	end
	assign clk_100 =clk_100_reg ;
	assign clk_50 =clk_50_reg ;
	assign clk_20 =clk_20_reg ;
	assign clk_10 =clk_10_reg ;
	assign clk_5 =clk_5_reg ;
	assign clk_1 =clk_1_reg ;
endmodule