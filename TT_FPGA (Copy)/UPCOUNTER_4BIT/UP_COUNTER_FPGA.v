`timescale 1ns / 1ps
`include "PULSE_DIV.v"
`include "UP_COUNTER4BIT.v"
module UP_COUNTER_FPGA(
	input CLK, 
	input RST,
	output [3:0] OUT
);
	wire _2HZ_CLK;
	PULSE_DIV P_DIV(.I_CLK(CLK), .M(0), .O_CLK(_2HZ_CLK));
	UP_COUNTER4BIT U_C4B(.CLK(_2HZ_CLK), .RST(RST), .OUT(OUT));
endmodule
