`timescale 1ns/1ps
`include "SANG_DAN_TAT_DAN.v"
`include "PULSE_DIV.v"

module SANGDAN_TATDAN_FPGA(
    input CLK,
    input RST,
    output reg [7:0] Q
);
    wire _1Hz_Freq;
    PULSE_DIV pldv(
        .I_CLK(CLK),
        .O_CLK(_1Hz_Freq),
        .M(1)
    );
    SANGDAN_TATDAN sd_th(
        .CLK(_1Hz_Freq),
        .RST(RST),
        .Q(Q)
    );

endmodule