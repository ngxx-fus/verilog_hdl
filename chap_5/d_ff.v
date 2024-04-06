/*
Module name: D flipflop
Author: Nguyen Thanh Phu
*/
// this is a comment :v  :vvv 
module d_ff(output reg q, input d, input Clock);
    //posedge for "low-to-high edge"
    //negedge for "high-to-low edge"
    initial begin // vô kiểm tra bỏ qua cái này nhe :v
        q <= 0;
    end
    always @(posedge Clock)
        begin
                q <= d;
        end
endmodule