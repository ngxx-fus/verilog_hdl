`timescale 1ps / 1ps
`include "CLOCK_FPGA.v"

module TEST_CLOCk_FPGA;

	// Inputs
	reg _50MHz_CLK;
	reg CLOCK_SET;
	reg CLOCK_INCR;

	// Outputs
	wire clk;
	wire stb;
	wire dio;

	integer i, j;

	// Instantiate the Unit Under Test (UUT)
	CLOCK_FPGA uut (
		._50MHz_CLK(_50MHz_CLK), 
		.CLOCK_SET(CLOCK_SET), 
		.CLOCK_INCR(CLOCK_INCR), 
		.clk(clk), 
		.stb(stb), 
		.dio(dio)
	);

	initial begin
		// Initialize Inputs
		_50MHz_CLK = 0;
		CLOCK_SET = 0;
		CLOCK_INCR = 0;

		#10;
       
		for( i = 0; j < 75; j = j + 1)begin
			#5000 CLOCK_INCR = ~CLOCK_INCR;
			for( i = 0; i < 50_000_000; i = i + 1) begin
				#5 _50MHz_CLK = ~_50MHz_CLK;
				#5 _50MHz_CLK = ~_50MHz_CLK;
			end
			CLOCK_INCR = ~CLOCK_INCR;
		end

		#5000 CLOCK_SET = ~CLOCK_SET;
		#5000 CLOCK_SET = ~CLOCK_SET;
		for( i = 0; j < 75; j = j + 1)begin
			#5000 CLOCK_INCR = ~CLOCK_INCR;
			for( i = 0; i < 50_000_000; i = i + 1) begin
				#5 _50MHz_CLK = ~_50MHz_CLK;
				#5 _50MHz_CLK = ~_50MHz_CLK;
			end
			CLOCK_INCR = ~CLOCK_INCR;
		end

		#5000 CLOCK_SET = ~CLOCK_SET;
		#5000 CLOCK_SET = ~CLOCK_SET;
		for( i = 0; j < 75; j = j + 1)begin
			#5000 CLOCK_INCR = ~CLOCK_INCR;
			for( i = 0; i < 50_000_000; i = i + 1) begin
				#5 _50MHz_CLK = ~_50MHz_CLK;
				#5 _50MHz_CLK = ~_50MHz_CLK;
			end
			CLOCK_INCR = ~CLOCK_INCR;
		end

		#5000 CLOCK_SET = ~CLOCK_SET;
		#5000 CLOCK_SET = ~CLOCK_SET;
		for( i = 0; j < 75; j = j + 1)begin
			#5000 CLOCK_INCR = ~CLOCK_INCR;
			for( i = 0; i < 50_000_000; i = i + 1) begin
				#5 _50MHz_CLK = ~_50MHz_CLK;
				#5 _50MHz_CLK = ~_50MHz_CLK;
			end
			CLOCK_INCR = ~CLOCK_INCR;
		end
		
		#5000 CLOCK_SET = ~CLOCK_SET;
		#5000 CLOCK_SET = ~CLOCK_SET;
		for( j = 0; j < 75; j = j + 1)begin
			#5000 CLOCK_INCR = ~CLOCK_INCR;
			for( i = 0; i < 50_000_000; i = i + 1) begin
				#5 _50MHz_CLK = ~_50MHz_CLK;
				#5 _50MHz_CLK = ~_50MHz_CLK;
			end
			CLOCK_INCR = ~CLOCK_INCR;
		end
	end

endmodule

