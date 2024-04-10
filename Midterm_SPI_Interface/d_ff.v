`timescale 100ps/100ps
/*
Module name: D flipflop
CLR : k d?ng b?, d?t ngõ ra m?c 0 khi CLR = 1, còn l?i 0,z thì k tác d?ng
PRE : k d?ng b?, d?t ngõ ra m?c 1 khi PRE = 1, còn l?i 0,z thì k tác d?ng
NOTE: Khi c? posedge CLK, CLR, PRE cùng tác d?ng thì uu tiên CLR, PRE
*/

module d_ff(output reg Q, input DATA, input CLK, input CLR, input PRE);
    //posedge for "low-to-high edge"
    //negedge for "high-to-low edge"
    initial begin // vô ki?m tra b? qua cái này nhe :v
        Q = 1'b0;
        end
    always @(CLK, CLR, PRE)
        begin
            if( CLR == 1'b0 && PRE == 1'b0)
                Q = (CLK == 1)?DATA:Q;
            else if(CLR == 1'b1 && PRE == 1'b0)
                #5 Q = 1'b0;
            else if(CLR == 1'b0 && PRE == 1'b1)
                #5 Q = 1'b1;
            else #5 Q = Q;
        end
endmodule
