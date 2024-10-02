`timescale 1ns / 1ps
`include "FREQ_DIV.v"
`include "MOD8_UPCOUNTER.v"

module FINAL(
   input I,
	input CLK, 
	input RST,
	output [2:0] Q,
   output LED
);
    wire _1Hz_CLK;
    FREQ_DIV freq_div(
        .I_CLK(CLK), 
        .M(1), 
        .O_CLK(_1Hz_CLK)
    );
    MOD8_UPCOUNTER mod8_upcounter(
        .CLK(_1Hz_CLK), 
        .I(I), 
        .RST(RST),
        .Q(Q),
        .LED(LED)
    );
endmodule