module sim_addr;
	reg A,B;
	reg Ci;
	wire S;
	wire Co;
	initial begin
		A=1'b0;B=1'b0;Ci=0;
	end
	always  begin
		#20 Ci=1'b1;
		#20 B=B+1'b1;	Ci=~Ci;
		#20 {A,B,Ci}=3'b011;
		#20 {A,B,Ci}=3'b100;
		repeat(3) begin
			#20 {A,B,Ci}={A,B,Ci}+1'b001;
		end
	end
	fulladder T(S,Co,A,B,Ci);
endmodule