`timescale 1ps / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:03:12 09/23/2024
// Design Name:   PULSE_DIV
// Module Name:   D:/DOC/NH_2024_2025_HK_01/ICSL316764/UPCOUNTER_4BIT_MOD10/TB.v
// Project Name:  UPCOUNTER_4BIT
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: PULSE_DIV
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TB;

	// Inputs
	reg I_CLK;
	reg M;
	reg i;
	// Outputs
	wire O_CLK;

	// Instantiate the Unit Under Test (UUT)
	PULSE_DIV uut (
		.I_CLK(I_CLK), 
		.M(M), 
		.O_CLK(O_CLK)
	);

	initial begin
		// Initialize Inputs
		I_CLK = 0;
		M = 0;
		for( i = 0; i< 50000000; i = i + 1) begin
			I_CLK = 0; #1;
			I_CLK = 1; #1;
		end
		
        
		// Add stimulus here

	end
      
endmodule

