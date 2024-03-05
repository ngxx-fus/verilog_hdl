`timescale 1ns/1ns
`include "full_adder.v"

module show_wave;
    reg A,B,C,D,en;

    wire OS, OC, O;

    half_adder_ hadder( .C(OC), .A(A), .S(OS), .B(B));


initial begin
    $dumpfile("show_wave.vcd"); 
    $dumpvars(0, show_wave);
    A=0; B=0; C=0;D=0; en=0;selll=0;
    #20
    A=1; B=1; C=1;D=1; en=0;selll=1;
    #20
    A=1; B=1; C=1;D=1; en=0;selll=2;
    #20
    A=1; B=1; C=1;D=1; en=0;selll=3;
    #20
    A=0; B=0; C=1;D=0; en=0;selll=0;
    #20
    A=0; B=1; C=0;D=0; en=1;selll=1;
    #20
    A=0; B=1; C=1;D=0; en=1;selll=2;
    #20
    A=1; B=0; C=0;D=1;en=1;selll=3;
    #20
    A=1; B=0; C=1;D=1;en=1;selll=0;
    #20
    A=1; B=1; C=0;D=1;en=1;selll=1;
    #20
    A=1; B=1; C=1;D=0;en=1;selll=2;
    #40
    $display("Test completed!");
end
endmodule

/*
iverilog -o show_wave.vvp show_wave.v; vvp show_wave.vvp; gtkwave show_wave.vcd
*/