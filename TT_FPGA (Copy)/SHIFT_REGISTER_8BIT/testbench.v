`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   06:56:02 09/25/2024
// Design Name:   SHIFT_REG_8BIT
// Module Name:   D:/DOC/NH_2024_2025_HK_01/ICSL316764/SHIFT_REGISTER_8BIT/testbench.v
// Project Name:  SHIFT_REGISTER_8BIT
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: SHIFT_REG_8BIT
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testbench;

	// Inputs
	reg CLK;
	reg EN;
	reg RST;
	reg SER;

	// Outputs
	wire [7:0] Q;

	// Instantiate the Unit Under Test (UUT)
	SHIFT_REG_8BIT uut (
		.CLK(CLK), 
		.EN(EN), 
		.RST(RST), 
		.SER(SER), 
		.Q(Q)
	);

	initial begin
		// Initialize Inputs
		CLK = 0;
		EN = 0;
		RST = 1;
		SER = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		#5 CLK=0;
			EN = 1;
		#5 CLK=1;
		#5 CLK=0;
			SER = 1;
		#5 CLK=1;
		#5 CLK=0;
			SER = 0;
		#5 CLK=1;
		#5 CLK=0;
			EN = 0;
		#5 CLK=1;
		#5 CLK=0;
			SER = 1;
		#5 CLK=1;
		#5 CLK=0;
			SER = 1;
		#5 CLK=1;
		#5 CLK=0;
			SER = 0;
		#5 CLK=1;
		#5 CLK=0;
			SER = 0;
		#5 CLK=1;
		#5 CLK=0;
			SER = 1;
		#5 CLK=1;
		#5 CLK=0;
			SER = 0;
		#5 CLK=1;
		#5 CLK=0;
			SER = 0;
		#5 CLK=1;		
		#5 CLK=0;
			SER = 0;
		#5 CLK=1;		
		#5 CLK=0;
			SER = 1;
		#5 CLK=1;		
		#5 CLK=0;
			RST = 0;
		#5 CLK=1;
		#5 CLK=0;
			SER = 0;
		#5 CLK=1;
	end
      
endmodule

