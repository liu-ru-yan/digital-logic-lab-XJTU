module Counter_74LS161(
	input CR_n,CP,D0,D1,D2,D3,LD_n,EP,ET,
	output Q0,Q1,Q2,Q3);
	wire [3:0] Data_in;
	reg [3:0] Data_out;
	assign Data_in={D3,D2,D1,D0};
	always @(posedge CP or negedge CR_n) begin
		if (CR_n==0) Data_out<=0;
		else if(LD_n==0) Data_out<=Data_in;
		else if(LD_n==1&&EP==0&&ET==0) Data_out<=Data_out;
		else if(LD_n==1&&EP==0&&ET==1) Data_out<=Data_out;
		else if(LD_n==1&&EP==1&&ET==0) Data_out<=Data_out;
		else if(LD_n==1&&EP==1&&ET==1) Data_out<=Data_out+1;
	end
	assign Q0=Data_out[0];
	assign Q1=Data_out[1];
	assign Q2=Data_out[2];
	assign Q3=Data_out[3];
endmodule