`timescale 1ns / 1ps
`include "UP_COUNTER4BIT.v"

module testbench;
	reg CLK;
	reg RST;
	wire [3:0] OUT;
	reg [31:0] i;
	UP_COUNTER4BIT uut (
		.CLK(CLK), 
		.RST(RST), 
		.OUT(OUT)
	);

	initial begin
		CLK = 0;
		RST = 0;
		#5;
		RST = 1;
		#100;
      for( i = 0; i< 19; i = i + 1) begin #5 CLK = ~CLK; #5 CLK = ~CLK; end
      for( i = 0; i< 19; i = i + 1) begin #5 CLK = ~CLK; #5 CLK = ~CLK; end
		RST = 0;
      for( i = 0; i< 19; i = i + 1) begin #5 CLK = ~CLK; #5 CLK = ~CLK; end
      for( i = 0; i< 19; i = i + 1) begin #5 CLK = ~CLK; #5 CLK = ~CLK; end
	end
endmodule

