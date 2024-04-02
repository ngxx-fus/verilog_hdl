/*
Module name: 8 bit up counter
Author: Nguyen Thanh Phu
*/

`include "d_ff.v"

module UP_CNT8b(
    input clk,
    input rst,
    input SS,
    output reg [7:0] OUT
);

    always @(posedge clk, rst, SS) 
    begin
            if( rst == 1) 
                OUT = 0;
            else
                    if(SS == 1)
                        OUT = OUT+1;
                    else
                        OUT = OUT;
    end


endmodule

//rut gon xiu

module UP_CNT8b(
    input clk,
    input rst,
    input SS,
    output reg [7:0] OUT
);

    always @(posedge clk, rst, SS) 
    begin
            if( rst == 1) 
                OUT = 0;
            else
                OUT = OUT+SS;
    end


endmodule

