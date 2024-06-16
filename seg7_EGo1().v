module seg7_EGo1(
	input [3:0]din,
	output reg [6:0] dout);
	always @(*) begin
		case(din)
		0:dout=7'b011_1111;
		1:dout=7'b000_0110;
		2:dout=7'b101_1011;
		3:dout=7'b100_1111;
		4:dout=7'b110_0110;
		5:dout=7'b110_1101;
		6:dout=7'b111_1101;
		7:dout=7'b000_0111;
		8:dout=7'b111_1111;
		9:dout=7'b110_1111;
		default:dout=7'b111_1111;
		endcase
	end
endmodule