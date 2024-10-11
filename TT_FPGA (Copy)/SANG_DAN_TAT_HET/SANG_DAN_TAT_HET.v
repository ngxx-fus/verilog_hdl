`timescale 1ns/1ps

module SANGDAN_TATHET(
    input CLK,
    input RST,
    output reg [7:0] Q
);
    always @( posedge CLK ) begin
        if( RST )
            Q <= 0;
        else
            if( Q == 8'b1111_1111 )
                Q <= 0;
            else
                Q <= (Q<<1) | 1;

    end
endmodule