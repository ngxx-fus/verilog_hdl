`timescale 1ps / 1ps

module TB;

	reg I_CLK;
	reg M;
	reg i;
	wire O_CLK;
	PULSE_DIV uut (
		.I_CLK(I_CLK), 
		.M(M), 
		.O_CLK(O_CLK)
	);

	initial begin
		I_CLK = 0;
		M = 0;
		for( i = 0; i< 50000000; i = i + 1) begin
			I_CLK = 0; #1;
			I_CLK = 1; #1;
		end

	end
      
endmodule

