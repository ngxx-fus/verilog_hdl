`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:53:12 10/01/2024
// Design Name:   UPDN_COUNTER
// Module Name:   D:/DOC/NH_2024_2025_HK_01/ICSL316764/UPDN_COUNTER/HEHE.v
// Project Name:  UPDN_COUNTER
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

module HEHE;

	// Inputs
	reg CLK;
	reg RST;

	// Outputs
	wire [3:0] OUT;

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

	end
      
endmodule

