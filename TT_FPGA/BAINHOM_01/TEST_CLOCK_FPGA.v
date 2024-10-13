`timescale 1ns / 1ps
`include "CLOCK_FPGA.v"
module TEST_CLOCK_FPGA;

	// Inputs
	reg CLOCK_CLK;
	reg CLOCK_SET;
	reg CLOCK_INCR;

	// Outputs
	wire CARRY;
	wire [7:0] MINUTE;
	wire [7:0] SECOND;
	wire [7:0] HOUR;

	// Instantiate the Unit Under Test (UUT)
	CLOCK_FPGA uut (
		.CLOCK_CLK(CLOCK_CLK), 
		.CLOCK_SET(CLOCK_SET), 
		.CLOCK_INCR(CLOCK_INCR), 
		.CARRY(CARRY), 
		.MINUTE(MINUTE), 
		.SECOND(SECOND), 
		.HOUR(HOUR)
	);

	initial begin
		// Initialize Inputs
		CLOCK_CLK = 0;
		CLOCK_SET = 0;
		CLOCK_INCR = 0;

		// Wait 100 ns for global reset to finish
		#200;
		#10 CLOCK_SET = 1; #10 CLOCK_SET = 0;
		#100;
		#10 CLOCK_SET = 1; #10 CLOCK_SET = 0;
		#200;
		#10 CLOCK_SET = 1; #10 CLOCK_SET = 0;
		#200;
		#10 CLOCK_SET = 1; #10 CLOCK_SET = 0;
	end
	initial begin
		#5
		forever #10 CLOCK_INCR = ~CLOCK_INCR;
	end
	initial begin
		forever #10 CLOCK_CLK = ~CLOCK_CLK;
	end
endmodule

