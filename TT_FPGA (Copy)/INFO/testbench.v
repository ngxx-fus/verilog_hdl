`timescale 1ns / 1ps

module testbench;

	// Inputs
	reg _50MHz_CLK;

	// Outputs
	wire clk;
	wire stb;
	wire dio;
	reg [31:0] i;
	// Instantiate the Unit Under Test (UUT)
	INFOR uut (
		._50MHz_CLK(_50MHz_CLK), 
		.clk(clk), 
		.stb(stb), 
		.dio(dio)
	);

	initial begin
		// Initialize Inputs
		_50MHz_CLK = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		for(i=0;i<50_000_000;i=i+1)begin 
			#10 _50MHz_CLK = ~_50MHz_CLK;
			#10 _50MHz_CLK = ~_50MHz_CLK;
		end
	end
      
endmodule

