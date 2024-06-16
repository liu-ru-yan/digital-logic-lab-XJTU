module sim_register;
	reg OE,CLK;
	reg [7:0] D;
	wire [7:0] Q;
	register test(.OE(OE),.CLK(CLK),.D(D),.Q(Q));
	initial fork
		OE=1;
		CLK=0;
		D=8'b10101110;
		#20 OE=~OE;
	join
	always #10 CLK=~CLK;
endmodule