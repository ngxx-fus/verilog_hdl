`timescale 1ns / 1ps
`include "UPDN_COUNTER.v"
`include "PULSE_DIV.v"
module UPDN_COUNTER_FPGA(
	input CLK, 
	input RST,
	output [3:0] OUT
);
    wire _1Hz_CLK;
    PULSE_DIV pulse_div(.I_CLK(CLK), .M(GND), .O_CLK(_1Hz_CLK));
    UPDN_COUNTER updn_counter(.CLK(_1Hz_CLK), .RST(RST), .OUT(OUT));

endmodule
