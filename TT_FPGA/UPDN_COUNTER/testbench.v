`timescale 1ns / 1ps
`include "UPDN_COUNTER.v"

module testbench;

	// Inputs
	reg CLK;
	reg RST;

	// Outputs
	wire [3:0] OUT;
	reg [32:0] i;
	// Instantiate the Unit Under Test (UUT)
	UPDN_COUNTER uut (
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
        
		// Add stimulus here
		
		for(i = 0; i < 20; i = i + 1)begin
			#5 CLK = ~CLK;
			if( i == 3) RST = 1;
		end
	end
      
endmodule

