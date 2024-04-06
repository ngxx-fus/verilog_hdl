/*
Module name: D flipflop
CLR : k đồng bộ, đặt ngõ ra mức 0
PRE : k đồng bộ, đặt ngõ ra mức 1
*/

module d_ff(output reg Q, input DATA, input CLK, input CLR, input PRE);
    //posedge for "low-to-high edge"
    //negedge for "high-to-low edge"
    initial begin // vô kiểm tra bỏ qua cái này nhe :v
        Q <= 0;
    end
    always @(posedge CLK, CLR, PRE)
        begin
                if (CLR == 1 && PRE == 1) Q<=Q;
                else if (CLR == 1 ) Q <= 0 ;
                     else if (PRE == 1) Q<=1;
                          else Q<=DATA;
        end
endmodule

// git config --global user.email msnp@outlook.com.vn
// git config --global user.name "ngxx-fus"