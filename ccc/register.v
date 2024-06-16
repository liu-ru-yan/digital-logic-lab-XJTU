module register(Q,D,OE,CLK);
	parameter N=8;
	output reg [N-1:0] Q;
	input [N:1] D;
	input OE,CLK;

	always @(posedge CLK or posedge OE) begin
		if (OE) Q<=8'bzzzzzzzz;
		else Q<=D;
	end
endmodule