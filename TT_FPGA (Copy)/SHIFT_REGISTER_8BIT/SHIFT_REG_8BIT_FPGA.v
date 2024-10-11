`timescale 1ns/1ps
`include "SHIFT_REG_8BIT.v"
`include "PULSE_DIV.v"

module SHIFT_REG_8BIT_FPGA(
    input CLK,
    input SER,
    input RST,
    output [7:0] Q
);
    wire _1Hz_Freq;
    PULSE_DIV pldv(
        .I_CLK(CLK),
        .O_CLK(_1Hz_Freq),
        .M(GND)
    );
    SHIFT_REG_8BIT srg8bit(
        .CLK(_1Hz_Freq),
        .SER(SER),
        .RST(RST),
        .Q(Q)
    );
endmodule