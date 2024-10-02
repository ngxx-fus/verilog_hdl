`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:00:11 10/01/2024
// Design Name:   UPDN_COUNTER
// Module Name:   D:/DOC/NH_2024_2025_HK_01/ICSL316764/UPDOWN_COUNTER_SW/testbench.v
// Project Name:  UPDOWN_COUNTER_SW
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: UPDN_COUNTER
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////
`include "UPDN_COUNTER.v"
module testbench;

	// Inputs
	reg CLK;
	reg RST;
	reg M;
	reg [32:0] i;
	// Outputs
	wire [3:0] OUT;

	// Instantiate the Unit Under Test (UUT)
	UPDN_COUNTER uut (
		.CLK(CLK), 
		.RST(RST), 
		.M(M), 
		.OUT(OUT)
	);

	initial begin
		// Initialize Inputs
		CLK = 0;
		RST = 0;
		M = 0;

		// Wait 100 ns for global reset to finish
		#100;
		RST = 0; M = 0;
      for(i = 0; i < 16; i=i+1) begin 
			CLK = ~CLK; #5; CLK = ~CLK; #5; 
		end
		RST = 0; M = 1;
      for(i = 0; i < 16; i=i+1) begin 
			CLK = ~CLK; #5; CLK = ~CLK; #5; 
		end
		RST = 1; M = 0;
      for(i = 0; i < 16; i=i+1) begin 
			CLK = ~CLK; #5; CLK = ~CLK; #5; 
		end
		RST = 0; M = 1;
      for(i = 0; i < 16; i=i+1) begin 
			CLK = ~CLK; #5; CLK = ~CLK; #5; 
		end
		RST = 1; M = 0;
      for(i = 4; i < 11; i=i+1) begin 
			CLK = ~CLK; #5; CLK = ~CLK; #5; 
		end
		RST = 1; M = 1;
      for(i = 3; i < 9; i=i+1) begin 
			CLK = ~CLK; #5; CLK = ~CLK; #5; 
		end
	end
      
endmodule

