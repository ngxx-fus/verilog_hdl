/*
Module name: D flipflop
Author: Nguyen Thanh Phu
*/

module d_ff(output reg q, input d, input Clock);
    //posedge for "low-to-high edge"
    //negedge for "high-to-low edge"
    initial begin
        q <= 0;
    end
    always @(posedge Clock)
        begin
                q <= d;
        end
endmodule