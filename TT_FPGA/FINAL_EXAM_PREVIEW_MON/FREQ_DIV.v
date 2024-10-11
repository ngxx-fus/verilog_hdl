`timescale 1ns / 1ps

module FREQ_DIV(
	input I_CLK,
	input M,
	output reg O_CLK
);
	 reg [31:0] COUNT;
	 initial begin
		COUNT = 0;
		O_CLK = 0;
	 end
	 always @(negedge I_CLK) begin
		 if( M == 1 ) begin
				// 1Hz
				if( COUNT == 25_000_000 ) begin
					O_CLK = ~O_CLK;
					COUNT = 0;
				end else
					COUNT = COUNT + 1;
		 end
		 else begin
				if( COUNT > 12500000 )
					COUNT = 0;
				// 2Hz
				if( COUNT == 12_500_000) begin
					O_CLK = ~O_CLK;
					COUNT = 0;
				end else
					COUNT = COUNT + 1;
		 end
	 end
endmodule