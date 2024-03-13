/*
Module name: Only using for show wave
Author: Nguyen Thanh Phu
*/
`timescale 1ns/1ns
`include "CNT4b_HW.v"
`include "shift_reg_4bit.v"

module show_wave;
    reg[3:0] MAX, MIN;
    reg SS, MODE, rst;
    reg[5:0] index;
    reg In;
    wire [3:0] O;
    wire [3:0] paralel_O;
    wire  serial_O;

CNT4b test_CNT4b(
    .rst(rst),
    .SS(SS),
    .MODE(MODE),
    .clk(index[0]),
    .MAX(MAX),
    .MIN(MIN),
    .OUT(O)
);

shift_reg_4bit_ver2 test_shift_reg_4bit_ver2(
    .Clock(index[0]),
    .In(In),
    .Q(paralel_O)
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
    In = 0;
    for (index = 6'b00_0000; index < 6'b11_1111 ; index=index+1) 
        begin
            if(index > 6'b00_1101 &&  index < 6'b01_0000) In = 1;
            else if(index > 6'b01_0001 &&  index < 6'b01_0100) In = 1; else In = 0;
            #4;
        end
    $display("Test completed!");
end
endmodule

/*
iverilog -o show_wave.vvp show_wave.v; vvp show_wave.vvp; gtkwave show_wave.vcd
*/