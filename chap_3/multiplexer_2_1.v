/*
Module name: Mux 2 to 1 :>
Author: Nguyen Thanh Phu
*/

module multiplexer_2_1(S, I, O);
    input S;
    input [1:0] I;
    output reg O;
    always @(S, I)
        begin
            O = (I[0] & (~S)) | (I[1] & S);
        end
endmodule