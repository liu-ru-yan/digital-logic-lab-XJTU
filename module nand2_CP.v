module nand2_CP(
	input a,b,
	output y,
	input CP);
	reg yi,yt;
	assign y = yi;
	always @(negedge CP) begin
		yt<=~(a&b);
	end
	always @(posedge CP) begin
		yi<=yt;
	end
endmodule