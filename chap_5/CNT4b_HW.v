/*
Module name: 4 bit Up/Down counter
Author: Nguyen Thanh Phu
*/

module CNT4b(
    clk,//clock
    rst,//reset
    SS,//Stop-Start 0-1
    MODE, //Down-Up 0-1
    MIN,//inital
    MAX,//final
    OUT//output
);
    input clk, rst, SS, MODE;
    input [3:0] MIN, MAX;
    output reg [3:0] OUT;

    always @(posedge clk, rst, SS, MODE) 
    begin
            if( rst == 1) 
                if(MODE == 1)
                    OUT = MIN;
                else 
                    OUT = MAX;
            else
                begin 
                    if(SS == 1)
                        if( clk ) 
                                if(MODE == 1)
                                    if( OUT == MAX ) 
                                        OUT = MIN;
                                    else 
                                        OUT = OUT + 1;
                                else
                                    if(OUT == MIN) 
                                        OUT = MAX;
                                    else 
                                        OUT = OUT - 1;
                end
    end

endmodule