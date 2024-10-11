`timescale 1ns / 1ps
`include "SANG_DAN_TAT_HET.v"

module testbench;
	reg CLK;
	reg RST;
	wire [7:0] Q;
	reg [31:0] i;
	SANGDAN_TATHET uut (
		.CLK(CLK), 
		.RST(RST), 
		.Q(Q)
	);
	initial begin
		CLK = 0;
		RST = 0;
		#10;
		RST = 1; 
		for( i = 0; i < 15; i = i +  1) begin  #5 CLK = ~CLK;  #5 CLK = ~CLK; end
		RST = 0; 
		for( i = 0; i < 15; i = i +  1) begin  #5 CLK = ~CLK;  #5 CLK = ~CLK; end
		for( i = 0; i < 15; i = i +  1) begin  #5 CLK = ~CLK;  #5 CLK = ~CLK; end

	end
      
endmodule

