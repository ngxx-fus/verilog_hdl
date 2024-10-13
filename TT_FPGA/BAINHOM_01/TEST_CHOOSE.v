`timescale 1ns / 1ps
`include "CHOOSE.v"
module TEST_CHOOSE;

	// Inputs
	reg I;
	reg RST;

	// Outputs
	wire [2:0] O;

	CHOOSE uut (
		.I(I), 
		.RST(RST), 
		.O(O)
	);

	initial begin
		I = 0;
		RST = 0;
		#10;
	end

    initial begin 
        forever #5 I = ~I;
    end

endmodule
