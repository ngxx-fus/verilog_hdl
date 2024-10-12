`timescale 1ns / 1ps
`include "MOD60.v"

module testbench;

	// Inputs
	reg RST;
	reg CLK;
	// Outputs
	wire [7:0] NUM;

	// Instantiate the Unit Under Test (UUT)
	MOD60 uut (
		.RST(RST), 
		.CLK(CLK), 
		.NUM(NUM)
	);

	initial begin
		// Initialize Inputs
		RST = 0;
		CLK = 0;

		// Wait 100 ns for global reset to finish
		forever begin
			#10 CLK = ~CLK;
		end
		
	end
      
endmodule

