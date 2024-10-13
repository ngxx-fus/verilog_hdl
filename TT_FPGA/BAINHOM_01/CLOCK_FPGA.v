`timescale 1ns / 1ps
`include "CLOCK.v"
`include "CHOOSE.v"


module CLOCK_FPGA(
    input CLOCK_CLK, CLOCK_SET, CLOCK_INCR,
	 output CARRY,
    output [7:0] MINUTE, SECOND, HOUR
);
    wire [2:0] _set;

    CHOOSE choose(.I(CLOCK_SET), .RST(GND), .O(_set));

    CLOCK_CONTROL clock_ctl(
        .CLOCK_CLK(CLOCK_CLK),
        .SET_SEC(_set[0]),
        .SET_MIN(_set[1]),
        .SET_HOUR(_set[2]),
        .INCR(CLOCK_INCR),
        .SECOND(SECOND),
        .MINUTE(MINUTE),
        .HOUR(HOUR),
		  .CARRY(CARRY)
    );

endmodule