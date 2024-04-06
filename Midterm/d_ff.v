/*
Module name: D flipflop
clear : k đồng bộ, đặt ngõ ra mức 0
preset : k đồng bộ, đặt ngõ ra mức 1
*/

module d_ff(output reg q, input d, input Clock);
    //posedge for "low-to-high edge"
    //negedge for "high-to-low edge"
    initial begin // vô kiểm tra bỏ qua cái này nhe :v
        q <= 0;
    end
    always @(posedge Clock)
        begin
                q <= d;
                if ()
        end
endmodule

// git config --global user.email msnp@outlook.com.vn
// git config --global user.name "ngxx-fus"