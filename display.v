module display(
	input clk,rst,
	input [7:0]bcd_s,bcd_m,bcd_h,
	output [6:0] seg,
	output [6:0] seg1,
	output reg [7:0] an);
	reg[20:0] count;
	reg[3:0] digit;
	reg[3:0]digit1;
	always@(posedge clk,posedge rst)
	if(rst)
		count =0;
	else 
		count =count+1;
	always @(posedge clk)
	case(count [20:18])
		1:begin
			an=8'b0010_0000;
			digit1=bcd_h[7:4];
		end
		2:begin
			an=8'b0001_0000;
		end
		3:begin
			an=
			digit=
		end
		4:begin
			an=
			digit=
		end
		5:begin
			an=
			digit=
		end
		6:begin
			an=
			digit=
		end
	endcase
		seg7 U4_1(.din(digit),.dout(seg));
		seg7 U4_2(.din(digit1),.dout(seg1));
endmodule