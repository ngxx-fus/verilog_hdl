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

    always @(clk, rst, SS) 
    begin
            if( rst == 1) 
                OUT = 0;
            else
                begin 
                    if(SS == 1)
                        if( clk ) 
                            begin
                                OUT <= OUT+1;
                            end
                end
    end


endmodule