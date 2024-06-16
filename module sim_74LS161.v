module sim_74LS161;
	reg CP,D_0,D_1;
	wire CR_n;
	initial begin
		CP=1;D_0=0;D_1=0;
		#30 D_1=1;
	end
	always #10 CP=~CP;
	assign CR_n =~(Q1&Q2) ;

	Counter_74LS161 T(CR_n,CP,D_0,D_0,D_0,D_0,D_1,D_1,D_1,Q0,Q1,Q2,Q3);
endmodule