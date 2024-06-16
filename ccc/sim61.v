module sim_and61();
	reg D0,D1,D2,D3,D4,D5;
	wire Y;
	integer i;

	initial begin
		D0=0;
		D1=0;
		D2=0;
		D3=0;
		D4=0;
		D5=0;
		#5 {D0,D1,D2,D3,D4,D5}=6'b100000;
		fork
			forever #5 D1=~D1;
			repeat(5) #10 D2=~D2;
		join

	end
	initial fork
		while(1) begin #15 D3=~D3; end
		for(i=0;i<10;i=i+1) #20 D4=~D4;
	join
	always begin
		#10 D5=~D5;
	end
	and61 and61_1(D0,D1,D2,D3,D4,D5,Y);
endmodule
