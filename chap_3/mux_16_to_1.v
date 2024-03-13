/*
Module name: MUX 16 to 1
Author: Nguyen Thanh Phu
*/
module MUX_16_to_1(en, w, sel, y);
    input en;
    input [15:0] w;
    input [3:0] sel;
    output reg y;

    always @(en, w, sel) 
    begin
        if(en == 0)
            y = 0;
        else 
            y = w[sel];    
    end
endmodule