module D_ff(Q,QN,D,EN,RST,CLK);
	output reg Q,QN;
	input D;
	input EN,RST,CLK;

	always @(posedge CLK) begin
		if (RST) begin
			// reset
			Q<=1'b0;
			QN<=1'b1;
		end
		else if (EN) begin
			Q<=D;
			QN<=~D;
		end
	end
endmodule