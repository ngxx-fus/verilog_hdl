`timescale 1ns / 1ps
`include "CLOCK.v"
module TEST_CLOCK_CONTROL;

	// Inputs
	reg CLOCK_CLK;
	reg SET_SEC;
	reg SET_MIN;
	reg SET_HOUR;
	reg INCR;

	// Outputs
	wire [7:0] SECOND;
	wire [7:0] MINUTE;
	wire [7:0] HOUR;
	wire CARRY;

	// Instantiate the Unit Under Test (UUT)
	CLOCK_CONTROL uut (
		.CLOCK_CLK(CLOCK_CLK), 
		.SET_SEC(SET_SEC), 
		.SET_MIN(SET_MIN), 
		.SET_HOUR(SET_HOUR), 
		.INCR(INCR), 
		.SECOND(SECOND), 
		.MINUTE(MINUTE), 
		.HOUR(HOUR), 
		.CARRY(CARRY)
	);

	initial begin
		// Initialize Inputs
		CLOCK_CLK = 0;
		SET_SEC = 0;		SET_MIN = 0;		SET_HOUR = 0;
		INCR = 0;
		// Add stimulus here
		SET_SEC = 0;		SET_MIN = 0;		SET_HOUR = 0;
		#375;
		SET_SEC = 1;		SET_MIN = 0;		SET_HOUR = 0;
		#375;	
		SET_SEC = 0;		SET_MIN = 1;		SET_HOUR = 0;
		#375;
		SET_SEC = 0;		SET_MIN = 0;		SET_HOUR = 1;
		#375;
	end
	
	initial begin
		forever begin
			#5 CLOCK_CLK = ~ CLOCK_CLK;
		end
	end

	initial begin
		forever begin
			#7 INCR = ~ INCR;
		end
	end

endmodule

