`timescale 1ns / 1ps
`include "DOWNCOUNTER_4BIT.v"
module testbench;

	// Inputs
	reg CLK;
	reg RST;

	// Outputs
	wire [3:0] OUT;
	reg [32:0] i;
	// Instantiate the Unit Under Test (UUT)
	DOWNCOUNTER_4BIT uut (
		.CLK(CLK), 
		.RST(RST), 
		.OUT(OUT)
	);

	initial begin
		// Initialize Inputs
		CLK = 0;
		RST = 0;

		// Wait 100 ns for global reset to finish
		#100;
      RST = 1; #5 RST = 0;
		for(i = 0; i < 19; i=i+1) begin 
			CLK = ~CLK; #5; CLK = ~CLK; #5; 
		end
		for(i = 0; i < 19; i=i+1) begin 
			CLK = ~CLK; #5; CLK = ~CLK; #5; 
		end		
		
		RST = 1;
		for(i = 0; i < 19; i=i+1) begin 
			CLK = ~CLK; #5; CLK = ~CLK; #5; 
		end
		for(i = 0; i < 19; i=i+1) begin 
			CLK = ~CLK; #5; CLK = ~CLK; #5; 
		end	
	end
      
endmodule

