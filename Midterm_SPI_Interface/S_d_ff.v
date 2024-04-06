/*
Module name: D flipflop
CLR : k đồng bộ, đặt ngõ ra mức 0 khi CLR = 1, còn lại 0,z thì k tác động
PRE : k đồng bộ, đặt ngõ ra mức 1 khi PRE = 1, còn lại 0,z thì k tác động
*/

module S_d_ff(output reg Q, input DATA, input CLK, input CLR, input PRE);
    //posedge for "low-to-high edge"
    //negedge for "high-to-low edge"
    initial begin // vô kiểm tra bỏ qua cái này nhe :v
        Q = 0;
        end
    always @(posedge CLK, CLR, PRE)
        begin
            if(CLK) Q=DATA;
            else if (CLR == 1 ) Q = 0 ;
                 else if (PRE == 1) Q = 1;
                      else Q = Q;
        end
endmodule
