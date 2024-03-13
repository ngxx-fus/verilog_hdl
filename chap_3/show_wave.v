`timescale 1ns/1ns
`include "shift_reg_4bit.v"

module show_wave;
    reg[1:0] in;
    reg[4:0] index;
    wire O;

    multiplexer_2_1    multiplexer_2_1_( index[2], {index[1], index[0]}, O );


initial begin
    $dumpfile("show_wave.vcd"); 
    $dumpvars(0, show_wave);
    for (index = 5'b00000; index < 5'b10000 ; index=index+1) 
    begin
        #5;
    end
    $display("Test completed!");
end
endmodule

/*
iverilog -o show_wave.vvp show_wave.v; vvp show_wave.vvp; gtkwave show_wave.vcd
*/