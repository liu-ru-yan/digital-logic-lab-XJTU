module sim_encoder83;
	reg[7:0] x;
	wire[2:0] y;

	encoder83_case test(.I(x),.Y(y));
	initial 
	begin
		x=1;
		repeat(7) #10 x=x*2;
		#10 x=10;
		repeat (130) #5 x=x+1;
	end

endmodule