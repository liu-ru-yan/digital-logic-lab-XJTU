module and61(
	input D0,D1,D2,D3,D4,D5,
	output Y
);
	wire Y1,Y2,Y3,Y4;


	and21 and21_1(D0,D1,Y1),
		  and21_2(D2,D3,Y2),
		  and21_3(D4,D5,Y3),
		  and21_4(Y1,Y2,Y4),
		  and21_5(.D0(Y3),.Y(Y),.D1(Y4));
endmodule