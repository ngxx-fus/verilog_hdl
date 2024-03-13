/*
Module name: Only using for show wave
Author: Nguyen Thanh Phu
*/
`timescale 1ns/1ns
`include "CNT4b_HW.v"

module show_wave;
    reg[3:0] MAX, MIN;
    reg SS, MODE, rst;
    reg[4:0] index;
    wire [3:0] O;

CNT4b test_CNT4b(
    .rst(rst),
    .SS(SS),
    .MODE(MODE),
    .clk(index[0]),
    .MAX(MAX),
    .MIN(MIN),
    .OUT(O)
);

initial begin
    $dumpfile("show_wave.vcd"); 
    $dumpvars(0, show_wave);
    MIN = 4'b1001;
    MAX = 4'b1110;
    SS = 1;
    MODE = 0;
    rst = 1;
    #2 rst = 0;
    
    for (index = 5'b00000; index < 5'b10000 ; index=index+1) 
        begin
            #4;
        end
    $display("Test completed!");
end
endmodule

/*
iverilog -o show_wave.vvp show_wave.v; vvp show_wave.vvp; gtkwave show_wave.vcd
*/