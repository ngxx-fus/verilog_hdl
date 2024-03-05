`timescale 1ns/1ns
`include "not.v"

module show_wave;
    reg A;
    wire O;
    not_gate N(.in(A), .out(O));

    initial
        begin
            $dumpfile("show_wave.vcd");
            $dumpvars(0, show_wave);
            A = 0; 
            #20 A = 1; 
            #20 A = 0; 
            #20 A = 1; 
            #20 A = 0; 
        end


endmodule

// cd ./dir   : từ vị trí hiện tại vào bên trong thư mục dir
// cd .. : từ vị trí hiện tại, quay trở ra thư mục bố
// cls : xoa mang hinh tren terminal