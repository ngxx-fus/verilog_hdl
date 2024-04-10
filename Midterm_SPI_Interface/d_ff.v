`timescale 100ps/100ps
/*
Module name: D flipflop
CLR : k đồng bộ, đặt ngõ ra mức 0 khi CLR = 1, còn lại 0,z thì k tác động
PRE : k đồng bộ, đặt ngõ ra mức 1 khi PRE = 1, còn lại 0,z thì k tác động
NOTE: Khi cả posedge CLK, CLR, PRE cùng tác động thì ưu tiên CLR, PRE
*/

module d_ff(output reg Q, input DATA, input CLK, input CLR, input PRE);
    //posedge for "low-to-high edge"
    //negedge for "high-to-low edge"
    initial begin // vô kiểm tra bỏ qua cái này nhe :v
        Q = 1'b0;
        end
    always @(CLR, PRE)
        begin
            if( CLR == 1'b0 && PRE == 1'b0)
                Q = Q;
            else if(CLR == 1'b1 && PRE == 1'b0)
                #5 Q = 1'b0;
            else if(CLR == 1'b0 && PRE == 1'b1)
                #5 Q = 1'b1;
            else #5 Q = Q;
        end
    always @(posedge CLK)
        begin
            if( CLR == 1'b0 && PRE == 1'b0)
                #5 Q = DATA;
            else if(CLR == 1'b1 && PRE == 1'b0)
                #5 Q = 1'b0;
            else if(CLR == 1'b0 && PRE == 1'b1)
                #5 Q = 1'b1;
            else #5 Q = Q;
        end
endmodule
