/*
Module name: D flipflop
clear : k đồng bộ, đặt ngõ ra mức 0
preset : k đồng bộ, đặt ngõ ra mức 1
*/

module d_ff(output reg q, input d, input clock, input clear, input preset);
    //posedge for "low-to-high edge"
    //negedge for "high-to-low edge"
    initial begin // vô kiểm tra bỏ qua cái này nhe :v
        q <= 0;
    end
    always @(posedge clock, clear, preset)
        begin
                if (clear == 1 && preset == 1) q<=q;
                else if (clear == 1 ) q <= 0 ;
                else if (preset == 1) q<=1;
                else q<=d;
        end
endmodule

// git config --global user.email msnp@outlook.com.vn
// git config --global user.name "ngxx-fus"