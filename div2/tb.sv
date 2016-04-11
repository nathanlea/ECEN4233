module tb();

	logic[26:0] D, Q;
	
	div2 div(D, Q);
	
	initial 
	begin
		D = 27'd0; #10
		D = 27'd1; #10
		D = 27'd72492891; #10
		D = 27'h7ffffff; #10
		D = 27'h5aaaaaa; #10
		D = 27'h3555554;
	end
endmodule