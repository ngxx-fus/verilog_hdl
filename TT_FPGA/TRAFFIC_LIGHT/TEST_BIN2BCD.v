`timescale 1ns / 1ps
`include "BIN2BCD.v"
module tb;
	reg [6:0] BIN;
	wire [7:0] BCD;
	BIN2BCD uut (
		.BIN(BIN), 
		.BCD(BCD)
	);
	initial begin
	for( BIN = 0; BIN < 100; BIN=BIN+1) begin
		#5;
	end
	end      
endmodule