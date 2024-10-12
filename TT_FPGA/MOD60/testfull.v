`timescale 1ns / 1ps
module testfull;

	// Inputs
	reg _50MHz_CLK;
	reg RST;

	// Outputs
	wire clk;
	wire stb;
	wire dio;

	// Instantiate the Unit Under Test (UUT)
	MOD60_FPGA uut (
		._50MHz_CLK(_50MHz_CLK), 
		.RST(RST), 
		.clk(clk), 
		.stb(stb), 
		.dio(dio)
	);

	initial begin
		// Initialize Inputs
		_50MHz_CLK = 0;
		RST = 0;

		forever begin
			#10 _50MHz_CLK = ~_50MHz_CLK;
		end
	end
      
endmodule

