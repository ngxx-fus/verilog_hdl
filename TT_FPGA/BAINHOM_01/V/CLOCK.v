`timescale 1ns / 1ps
`include "SECOND_CONTROL.v"
`include "MINUTE_CONTROL.v"
`include "HOUR_CONTROL.v"

module CLOCK_CONTROL(
    input CLOCK_CLK,
    input SET_SEC,
    input SET_MIN,
    input SET_HOUR,
    input INCR,
    output [7:0] SECOND,
    output [7:0] MINUTE,
    output [7:0] HOUR,
    output CARRY
);
    wire _sec_carry, _min_carry;

    SECOND_CONTROL sec_ctl(
        .SEC_CLK(CLOCK_CLK), 
        .SEC_INCR(INCR),
        .SEC_SET(SET_SEC),
        .CARRY(_sec_carry),
        .SECOND(SECOND)
    );
    MINUTE_CONTROL min_ctl(
        .MIN_CLK(_sec_carry), 
        .MIN_INCR(INCR), 
        .MIN_SET(SET_MIN),
        .CARRY(_min_carry),
        .MINUTE(MINUTE)
    );
    HOUR_CONTROL hour_ctl(
        .HOUR_CLK(_min_carry), 
        .HOUR_INCR(INCR), 
        .HOUR_SET(SET_HOUR),
        .HOUR(HOUR),
        .CARRY(CARRY)
    );

endmodule