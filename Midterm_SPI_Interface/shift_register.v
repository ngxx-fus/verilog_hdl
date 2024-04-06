/*
    Thanh ghi dịch 8bit
    Ngõ vào:
        - Xung CLK 
        - CLEAR : đạt toàn bộ ngõ ra trong thanh ghi dịch về 0
        - [8] P_DATA_IN : giá trị để đặt trước (vào song song)
        - S_DATA_IN : vào nối tiếp
        - SH_LD : đặt trước giá trị hoặc dịch
            + SH_LD = 0, vào song song, ngưng Dịch
            + SH_LD = 1, dịch
    Ngõ ra
        - [8] DATA_OUT : kết nối tới từng FF-D bên trong
*/

`include "d_ff.v"

module SHIFT_REGISTER (
    input CLK,
    input CLR,
    input [7:0] P_DATA_IN,
    input S_DATA_IN,
    input SH_LD,
    output  [7:0] DATA_OUT
);
    //Khai báo dây dẫn bên trong
    wire notSH_LD;
    wire notCLR;
    wire [7:0]D_CLR;// tín hiệu cuối cùng đến d-ff
    wire [7:0]S_CLR;// tín hiệu từ DATA set-up
    wire [7:0]D_PRE;
    wire [7:0]S_PRE;
    
    d_ff dff0 (.CLK(CLK), .CLR(D_CLR[0]), .PRE(D_PRE[0]), .DATA(S_DATA_IN),   .Q(DATA_OUT[0]) );
    d_ff dff1 (.CLK(CLK), .CLR(D_CLR[1]), .PRE(D_PRE[1]), .DATA(DATA_OUT[0]), .Q(DATA_OUT[1]) );
    d_ff dff2 (.CLK(CLK), .CLR(D_CLR[2]), .PRE(D_PRE[2]), .DATA(DATA_OUT[1]), .Q(DATA_OUT[2]) );
    d_ff dff3 (.CLK(CLK), .CLR(D_CLR[3]), .PRE(D_PRE[3]), .DATA(DATA_OUT[2]), .Q(DATA_OUT[3]) );
    d_ff dff4 (.CLK(CLK), .CLR(D_CLR[4]), .PRE(D_PRE[4]), .DATA(DATA_OUT[3]), .Q(DATA_OUT[4]) );
    d_ff dff5 (.CLK(CLK), .CLR(D_CLR[5]), .PRE(D_PRE[5]), .DATA(DATA_OUT[4]), .Q(DATA_OUT[5]) );
    d_ff dff6 (.CLK(CLK), .CLR(D_CLR[6]), .PRE(D_PRE[6]), .DATA(DATA_OUT[5]), .Q(DATA_OUT[6]) );
    d_ff dff7 (.CLK(CLK), .CLR(D_CLR[7]), .PRE(D_PRE[7]), .DATA(DATA_OUT[6]), .Q(DATA_OUT[7]) );

    not(notSH_LD, SH_LD);
    not(notCLR, CLR);

    and(D_PRE[0], S_PRE[0], notCLR); or(D_CLR[0], S_CLR[0], CLR);
    and(D_PRE[1], S_PRE[1], notCLR); or(D_CLR[1], S_CLR[1], CLR);
    and(D_PRE[2], S_PRE[2], notCLR); or(D_CLR[2], S_CLR[2], CLR);
    and(D_PRE[3], S_PRE[3], notCLR); or(D_CLR[3], S_CLR[3], CLR);
    and(D_PRE[4], S_PRE[4], notCLR); or(D_CLR[4], S_CLR[4], CLR);
    and(D_PRE[5], S_PRE[5], notCLR); or(D_CLR[5], S_CLR[5], CLR);
    and(D_PRE[6], S_PRE[6], notCLR); or(D_CLR[6], S_CLR[6], CLR);
    and(D_PRE[7], S_PRE[7], notCLR); or(D_CLR[7], S_CLR[7], CLR);

    and(S_PRE[0], notSH_LD, P_DATA_IN[7]); nor(S_CLR[0], notSH_LD, P_DATA_IN[7]);
    and(S_PRE[1], notSH_LD, P_DATA_IN[6]); nor(S_CLR[1], notSH_LD, P_DATA_IN[6]);
    and(S_PRE[2], notSH_LD, P_DATA_IN[5]); nor(S_CLR[2], notSH_LD, P_DATA_IN[5]);
    and(S_PRE[3], notSH_LD, P_DATA_IN[4]); nor(S_CLR[3], notSH_LD, P_DATA_IN[4]);
    and(S_PRE[4], notSH_LD, P_DATA_IN[3]); nor(S_CLR[4], notSH_LD, P_DATA_IN[3]);
    and(S_PRE[5], notSH_LD, P_DATA_IN[2]); nor(S_CLR[5], notSH_LD, P_DATA_IN[2]);
    and(S_PRE[6], notSH_LD, P_DATA_IN[1]); nor(S_CLR[6], notSH_LD, P_DATA_IN[1]);
    and(S_PRE[7], notSH_LD, P_DATA_IN[0]); nor(S_CLR[7], notSH_LD, P_DATA_IN[0]);


endmodule

