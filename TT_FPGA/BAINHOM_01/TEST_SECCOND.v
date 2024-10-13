`timescale 1ns / 1ps
`include "SECOND_CONTROL.v"

module TEST_SECCOND;

	// Inputs
	reg SEC_CLK;
	reg SEC_INCR;
	reg SEC_SET;

	// Outputs
	wire CARRY;
	wire [7:0] SECOND;
	integer i;
	// Instantiate the Unit Under Test (UUT)
	SECOND_CONTROL uut (
		.SEC_CLK(SEC_CLK), 
		.SEC_INCR(SEC_INCR), 
		.SEC_SET(SEC_SET), 
		.CARRY(CARRY), 
		.SECOND(SECOND)
	);

	initial begin
		// Initialize Inputs
		SEC_CLK = 0;SEC_INCR = 0;SEC_SET = 0;
		SEC_SET = 0;
		for( i = 0; i < 175; i=i+1) begin
			#5 SEC_CLK = ~SEC_CLK; #5 SEC_INCR = ~SEC_INCR;
			#5 SEC_CLK = ~SEC_CLK; #5 SEC_INCR = ~SEC_INCR;
		end			
		SEC_SET = 1;
		for( i = 0; i < 175; i=i+1) begin
			#5 SEC_CLK = ~SEC_CLK; #5 SEC_INCR = ~SEC_INCR;
			#5 SEC_CLK = ~SEC_CLK; #5 SEC_INCR = ~SEC_INCR;
		end			
	end
      
endmodule

