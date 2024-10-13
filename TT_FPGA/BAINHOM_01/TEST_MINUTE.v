`timescale 1ns / 1ps
`include "MINUTE_CONTROL.v"

module TT;
	reg MIN_CLK;
	reg MIN_INCR;
	reg MIN_SET;
	wire CARRY;
	wire [7:0] MINUTE;
	MINUTE_CONTROL uut (
		.MIN_CLK(MIN_CLK), 
		.MIN_INCR(MIN_INCR), 
		.MIN_SET(MIN_SET), 
		.CARRY(CARRY), 
		.MINUTE(MINUTE));
	initial begin
		// Initialize Inputs
		MIN_CLK = 0;
		forever #5 MIN_CLK=~MIN_CLK;
	end
	initial begin
		MIN_INCR = 0;#2;
		forever #5 MIN_INCR=~MIN_INCR;		
	end
	initial begin	
		MIN_SET = 1;
		forever #300 MIN_SET=~MIN_SET;
	end
      
endmodule
