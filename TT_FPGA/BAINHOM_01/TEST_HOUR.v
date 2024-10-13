`timescale 1ns / 1ps
`include "HOUR_CONTROL.v"

module TT;
	reg HOUR_CLK;
	reg HOUR_INCR;
	reg HOUR_SET;
	wire CARRY;
	wire [7:0] HOUR;
	HOUR_CONTROL uut (
		.HOUR_CLK(HOUR_CLK), 
		.HOUR_INCR(HOUR_INCR), 
		.HOUR_SET(HOUR_SET), 
		.CARRY(CARRY), 
		.HOUR(HOUR));
	initial begin
		// Initialize Inputs
		HOUR_CLK = 0;
		forever #5 HOUR_CLK=~HOUR_CLK;
	end
	initial begin
		HOUR_INCR = 0;#2;
		forever #5 HOUR_INCR=~HOUR_INCR;		
	end
	initial begin	
		HOUR_SET = 1;
		forever #300 HOUR_SET=~HOUR_SET;
	end
      
endmodule
