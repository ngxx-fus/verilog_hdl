/*
Module name: DECODE 2 to 4
Author: Nguyen Thanh Phu
Note: 
+ Method 1 : Using POS to reduce output Y
+ Method 2 : Using case
+ Method 3 : Using if-else
+ Method 4 :  Shorthand for if-else statement
*/
module DEC24_method1(en, in, y);
    input en;
    input [1:0] in;
    output reg [3:0] y;

    always @(en, in)
        begin
            if(en == 0)
                y = 4'b0000;
            else 
                begin
                    y[0] = (~in[1]) & (~in[0]);
                    y[1] = (~in[1]) & (in[0]);
                    y[2] = (in[1]) & (~in[0]);
                    y[3] = (in[1]) & (in[0]);
                end
        end
endmodule


module DEC24_method2(en, in, y);
    input en;
    input [1:0] in;
    output  reg [3:0] y;

    always @(en, in)
        begin
            if(en == 0)
                y = 4'b0000;
            else
                case (in)
                    2'b00 : y = 4'b0001; // y = 1
                    2'b01 : y = 4'b0010; // y = 2
                    2'b10 : y = 4'b0100; // y = 4
                    2'b11 : y = 4'b1000; // y = 8
                endcase
        end
endmodule

module DEC24_method3(en, in, y);
    input en;
    input [1:0] in;
    output  reg [3:0] y;

    always @(en, in)
        begin
            if(en == 0)
                y = 4'b0000;
            else
                if( in == 2'b00 ) y = 4'b0001; // in == 0
                    else if( in == 2'b01) y = 4'b0010;  // in == 1
                        else if( in == 2'b10 )  y = 4'b0100;  // in == 2
                            else if( in == 2'b11) y = 4'b1000;  //in == 3
        end
endmodule

module DEC24_method4(en, in, y);
    input en;
    input [1:0] in;
    output  reg [3:0] y;

    always @(en, in)
        begin
            if(en == 0)
                y = 0;
            else
                y = (in == 0)?(y=1):((in == 1)?(y=2):(in==2)?(y=4):(y=8));
        end
endmodule