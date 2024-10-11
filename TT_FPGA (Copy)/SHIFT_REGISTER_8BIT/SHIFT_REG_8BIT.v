`timescale 1ns / 1ps

module SHIFT_REG_8BIT(
	input CLK,
	input RST,// Active-low
	input SER,
	output reg [7:0]Q
);
	initial begin
		Q = 0;
	end
	always @(posedge CLK) begin
		if(RST == 1) begin
			Q <= 0;
		end else begin
			Q <= (Q<<1) | SER;
		end
	end

endmodule
