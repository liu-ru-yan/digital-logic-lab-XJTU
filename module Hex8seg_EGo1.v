module Hex8seg_EGo1(

	input wire x0,x1,x2,x3,
	output wire [7:0] seg_cs_pin,
	output reg [7:0] seg_data_0_pin);
	wire [3:0] x;
	assign x ={x3,x2,x1,x0} ;
	assign seg_cs_pin=8'b0000_0001;

	always @(*) case(x)
		0: seg_data_0_pin=8'b0011_1111;
		1: seg_data_0_pin=8'b0000_0110;
		2: seg_data_0_pin=8'b0101_1011;
		3: seg_data_0_pin=8'b0100_1111;
		4: seg_data_0_pin=8'b0110_0110;
		5: seg_data_0_pin=8'b0110_1101;
		6: seg_data_0_pin=8'b0111_1101;
		7: seg_data_0_pin=8'b0000_0111;
		8: seg_data_0_pin=8'b0111_1111;
		9: seg_data_0_pin=8'b0110_1111;
		'hA : seg_data_0_pin=8'b0111_0111;
		'hB : seg_data_0_pin=8'b0111_1100;
		'hC : seg_data_0_pin=8'b0111_1001;
		'hD : seg_data_0_pin=8'b0101_1110;
		'hE: seg_data_0_pin=8'b0111_1000;
		'hF : seg_data_0_pin=8'b0111_1111;
	default:seg_data_0_pin=8'b0111_1111;
	endcase
endmodule

