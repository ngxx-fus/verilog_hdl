/*
Module name: 
    + LED_SANG_DICH_TSP
    + LED_SANG_DICH_TSP_PST
    + LED_SANG_DICH_TTR_TNV
Author: Nguyen Thanh Phu
*/

module LED_SANG_DICH_TSP(
    input clk,
    input reset,
    input SS,
    output reg [7:0] LED8
);
    always @(posedge clk, reset) 
    begin
        if( reset == 1 )
            begin
                LED8 = 8'b1000_0000;
            end
        else 
            if( SS == 1)
                if( LED8 == 8'hFF )
                        LED8 = 0;
                else
                        LED8 = (LED8>>1) + 8'b1000_0000;
            else 
                LED8 = LED8;
    end

endmodule




module LED_SANG_DICH_TSP_PST(
    input clk,
    input rst,
    input SS,
    input MODE,
    output reg[7:0] LED8
);
    always @(posedge clk, rst) 
    begin
        if( rst == 1 )
                LED8 = 8'h00;
        else
            if( SS == 1 )
                if( LED8 == 8'h00 )
                        LED8 = (MODE==1)?(8'h80):(8'h01);
                else
                        LED8 = (MODE)?(LED8>>1):(LED8<<1);
            else 
                LED8 = LED8;
    end
endmodule

/*
Description:
    suppose that:
        reg [7:0] a = 8'b0000_0001;
        reg [7:0] b = 8'b1111_0001;
        reg c = 1;
    then:
        d = {a[4:0], c, b[7:5]} = 9'b00001_1_111
    the result follow these steps below:
        1. a[4:0] (slicing elements of a from 4 to 0 ) = 00001
        2. append to d, d = 00001
        3. append 1 (from c) to d, d = 00001_1
        4. appenb[7:5] (slicing elements of a from 7 to 5 ) = 111
        5. append to d, d = 00001_1_111
*/

module LED_SANG_DICH_TTR_TNV(
    input clk,
    input rst,
    input SS,
    input MODE,
    output reg[7:0] LED8
);
    always @(posedge clk, rst) 
    begin
        if( rst == 1 )
                LED8 = 0;
        else
            if( SS == 1 )
                if( LED8 == 8'h00 )
                        LED8 = (MODE==1)?(8'h18):(8'h81);
                else
                        LED8 = (MODE)?({LED8[7:4]<<1,LED8[3:0]>>1}):({LED8[7:4]>>1,LED8[3:0]<<1});
            else 
                LED8 = LED8;
    end
endmodule