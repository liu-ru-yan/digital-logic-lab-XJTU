module Decoder38(A,Y);
	input [2:0] A;
	output reg[7:0] Y;
	integer i;

	always @(A) begin
		Y=8'b11111111;
		for(i=0;i<=7;i=i+1)
			if(A==i)
				Y[i]=0;
			else begin
				Y[i]=1;
			end
	end
endmodule