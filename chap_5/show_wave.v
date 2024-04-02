/*
Module name: Only using for show wave
Author: Nguyen Thanh Phu
*/
`timescale 1ns/1ns
`include "CNT4b_HW.v"

module show_wave;
    reg[3:0] MAX, MIN;
    reg SS, MODE, rst;
    reg[5:0] index;
    wire[7:0] out;
    reg In;
    wire [3:0] O;
    wire [3:0] paralel_O;
    wire  serial_O;

    LED_SANG_DICH_TTR_TNV LED8(
        index[0],
        rst,
        SS,
        MODE,
        out
    );


initial begin
    $dumpfile("show_wave.vcd"); 
    $dumpvars(0, show_wave);
    MIN = 4'b1001;
    MAX = 4'b1110;
    SS = 1;
    MODE = 0;
    rst = 0;
    #2 rst = 0;
    In = 0;
MODE = 1;
    rst = 1;
        #5 index[0] = 1;
        #5 index[0] = 0;
        #5 index[0] = 1;
        #5 index[0] = 0;
        #5 index[0] = 1;
        #5 index[0] = 0;
    rst = 0;
        #5 index[0] = 1;
        #5 index[0] = 0;
        #5 index[0] = 1;
        #5 index[0] = 0;
    SS = 0;
        #5 index[0] = 1;
        #5 index[0] = 0;
        #5 index[0] = 1;
        #5 index[0] = 0;
        #5 index[0] = 1;
        #5 index[0] = 0;
    SS = 1;

        #5 index[0] = 1;
        #5 index[0] = 0;
        #5 index[0] = 1;
        #5 index[0] = 0;
        #5 index[0] = 1;
        #5 index[0] = 0;
        #5 index[0] = 1;
        #5 index[0] = 0;
        #5 index[0] = 1;
        #5 index[0] = 0;
        #5 index[0] = 1;
        #5 index[0] = 0;
        #5 index[0] = 1;
        #5 index[0] = 0;
        #5 index[0] = 1;
        #5 index[0] = 0;
        #5 index[0] = 1;
        #5 index[0] = 0;
        #5 index[0] = 1;
        #5 index[0] = 0;
        #5 index[0] = 1;
        #5 index[0] = 0;
        #5 index[0] = 1;
        #5 index[0] = 0;
        #5 index[0] = 1;
        #5 index[0] = 0;
        #5 index[0] = 1;
        #5 index[0] = 0;
        #5 index[0] = 1;
        #5 index[0] = 0;
        #5 index[0] = 1;
        #5 index[0] = 0;
        #5 index[0] = 1;
        #5 index[0] = 0;
        #5 index[0] = 1;
        #5 index[0] = 0;

MODE = 0;
    rst = 1;
        #5 index[0] = 1;
        #5 index[0] = 0;
        #5 index[0] = 1;
        #5 index[0] = 0;
        #5 index[0] = 1;
        #5 index[0] = 0;
    rst = 0;
        #5 index[0] = 1;
        #5 index[0] = 0;
        #5 index[0] = 1;
        #5 index[0] = 0;
    SS = 0;
        #5 index[0] = 1;
        #5 index[0] = 0;
        #5 index[0] = 1;
        #5 index[0] = 0;
        #5 index[0] = 1;
        #5 index[0] = 0;
    SS = 1;

        #5 index[0] = 1;
        #5 index[0] = 0;
        #5 index[0] = 1;
        #5 index[0] = 0;
        #5 index[0] = 1;
        #5 index[0] = 0;
        #5 index[0] = 1;
        #5 index[0] = 0;
        #5 index[0] = 1;
        #5 index[0] = 0;
        #5 index[0] = 1;
        #5 index[0] = 0;
        #5 index[0] = 1;
        #5 index[0] = 0;
        #5 index[0] = 1;
        #5 index[0] = 0;
        #5 index[0] = 1;
        #5 index[0] = 0;

    $display("Test completed!");
end
endmodule

/*
iverilog -o show_wave.vvp show_wave.v; vvp show_wave.vvp; gtkwave show_wave.vcd
*/