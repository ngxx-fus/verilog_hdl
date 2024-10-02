`timescale 1ns / 1ps
`include "FREQ_DIV.v"
`include "UPDOWN_COUNTER.v"

module FINAL_EXAM(
    input CLK50MHz,
    input RST,
    input S0,
    input S1,
    input S2,
    output [4:0] Q
);
    wire lower_freq;
    FREQ_DIV fd(
        .I_CLK(CLK50MHz),
        .M(S1),
        .O_CLK(lower_freq)
    );
    UPDOWN_COUNTER updown_counter(
        .CLK(lower_freq),
        .RST(RST),
        .U_D(S0),
        .P_C(S2),
		  .Q(Q)
    );
endmodule