/*
Module name: Demux 1 to 8
Author: Nguyen Thanh Phu
*/

module demux_1_to_8(S, IN, OUT);    
    input IN;
    input [2:0] S;
    output reg[7:0] OUT;

    always @( S, IN )
    begin
        OUT[0] = ~S[0] & ~S[1] & ~S[2];
        OUT[1] = ~S[0] & ~S[1] & S[2];
        OUT[2] = ~S[0] & S[1] & ~S[2];
        OUT[3] = ~S[0] & S[1] & S[2];
        OUT[4] = S[0] & ~S[1] & ~S[2];
        OUT[5] = S[0] & ~S[1] & S[2];
        OUT[6] = S[0] & S[1] & ~S[2];
        OUT[7] = S[0] & S[1] & S[2];
    end
endmodule