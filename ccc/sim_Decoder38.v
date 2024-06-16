module sim_Decoder38;
	reg[3:1] A;
	wire[7:0] Y0;

	Decoder38 test(.A(A),.Y(Y0));
	initial begin
		A=3'b000;
		repeat(10) #10 A=A+1;
	end
endmodule