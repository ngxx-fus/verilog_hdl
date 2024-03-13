/*
Module name: 4 bit shift register
Author: Nguyen Thanh Phu
*/
`include "D_FF.v"

module shift_reg_4bit(
    input Clock,
    input In,
    output reg [3:0]Q
);
    d_ff dff1(.Clock(Clock), .d(In), .q(Q[0]));
    d_ff dff2(.Clock(Clock), .d(Q[0]), .d(Q[1]));
    d_ff dff3(.Clock(Clock), .d(Q[1]), .d(Q[2]));
    d_ff dff4(.Clock(Clock), .d(Q[2]), .d(Q[3]));
endmodule