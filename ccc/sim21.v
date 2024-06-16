module sim_and21;
	reg D0,D1;
	wire Y;

	initial begin
		D0=0;D1=0;
		#10 D0=1;D1=0;
		#10 D0=0;D1=1;
		#10 D0=1;D1=1;
		#10 D0=0;D1=0;
	end

	and21 and21t(D0,D1,Y);
endmodule