`timescale 1ns / 1ps
`include "MOD8_UPCOUNTER.v"

module testbench;

	// Inputs
	reg I;
	reg CLK;
	reg RST;

	// Outputs
	wire [2:0] Q;
	wire LED;
	reg [32:0] i;
	// Instantiate the Unit Under Test (UUT)
	MOD8_UPCOUNTER uut (
		.I(I), 
		.CLK(CLK), 
		.RST(RST), 
		.Q(Q), 
		.LED(LED)
	);

	initial begin
		// Initialize Inputs
		I = 0;
		CLK = 0;
		RST = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		RST = 0;
		CLK = ~CLK; #5; CLK = ~CLK; #5;
		CLK = ~CLK; #5; CLK = ~CLK; #5;
		RST = 1;
		I = 0;
		CLK = ~CLK; #5; CLK = ~CLK; #5;
		CLK = ~CLK; #5; CLK = ~CLK; #5;
		I = 1;
		CLK = ~CLK; #5; CLK = ~CLK; #5;
		CLK = ~CLK; #5; CLK = ~CLK; #5;
		CLK = ~CLK; #5; CLK = ~CLK; #5;
		CLK = ~CLK; #5; CLK = ~CLK; #5;
		I = 0;
		CLK = ~CLK; #5; CLK = ~CLK; #5;
		CLK = ~CLK; #5; CLK = ~CLK; #5;
		CLK = ~CLK; #5; CLK = ~CLK; #5;
		I = 1;
		CLK = ~CLK; #5; CLK = ~CLK; #5;
		CLK = ~CLK; #5; CLK = ~CLK; #5;
		RST = 0;
		CLK = ~CLK; #5; CLK = ~CLK; #5;
		CLK = ~CLK; #5; CLK = ~CLK; #5;
		CLK = ~CLK; #5; CLK = ~CLK; #5;
		CLK = ~CLK; #5; CLK = ~CLK; #5;
		RST = 1;
		CLK = ~CLK; #5; CLK = ~CLK; #5;
		CLK = ~CLK; #5; CLK = ~CLK; #5;
		CLK = ~CLK; #5; CLK = ~CLK; #5;
		CLK = ~CLK; #5; CLK = ~CLK; #5;
		CLK = ~CLK; #5; CLK = ~CLK; #5;
		CLK = ~CLK; #5; CLK = ~CLK; #5;
		CLK = ~CLK; #5; CLK = ~CLK; #5;
		CLK = ~CLK; #5; CLK = ~CLK; #5;
		CLK = ~CLK; #5; CLK = ~CLK; #5;
		CLK = ~CLK; #5; CLK = ~CLK; #5;
		CLK = ~CLK; #5; CLK = ~CLK; #5;
		CLK = ~CLK; #5; CLK = ~CLK; #5;
		CLK = ~CLK; #5; CLK = ~CLK; #5;
		CLK = ~CLK; #5; CLK = ~CLK; #5;
		CLK = ~CLK; #5; CLK = ~CLK; #5;
		CLK = ~CLK; #5; CLK = ~CLK; #5;
		CLK = ~CLK; #5; CLK = ~CLK; #5;
		CLK = ~CLK; #5; CLK = ~CLK; #5;
		CLK = ~CLK; #5; CLK = ~CLK; #5;
		CLK = ~CLK; #5; CLK = ~CLK; #5;
		CLK = ~CLK; #5; CLK = ~CLK; #5;
		CLK = ~CLK; #5; CLK = ~CLK; #5;
		CLK = ~CLK; #5; CLK = ~CLK; #5;
		CLK = ~CLK; #5; CLK = ~CLK; #5;
	end
      
endmodule

