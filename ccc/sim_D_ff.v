module sim_D_ff;
	reg CLK;
	wire Q,QN;
	reg D,EN,RST,OE;
	D_ff D_ff_1(Q,QN,D,EN,RST,CLK);

	initial fork
		D=1;
		EN=0;
		RST=0;
		CLK=0;
		OE=0;
		#10 begin RST=1; OE=1; end
		#50 begin RST=0; OE=0; end
		forever #55 EN=~EN;
		forever #20 D=~D;
		forever #25 CLK=~CLK;
	join
endmodule