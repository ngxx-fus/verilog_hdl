/*
    Thanh ghi dịch 8bit
    Ngõ vào:
        - Xung CLK 
        - CLEAR : đạt toàn bộ ngõ ra trong thanh ghi dịch về 0
        - [4] P_DATA_IN : giá trị để đặt trước (vào song song)
        - S_DATA_IN : vào nối tiếp
        - SH_LD : đặt trước giá trị hoặc dịch
            + SH_LD = 0, ngưng dịch, vào song song (bằng cách động vào chân CLR, PRE của từng FF-D)
            + SH_LD = 1, dịch
    Ngõ ra
        - [4] DATA_OUT : kết nối tới từng FF-D bên trong
*/

`include "S_d_ff.v"

module S_SHIFT_REGISTER_4BIT (
    input CLK,
    input CLR,
    input [3:0] P_DATA_IN,
    input S_DATA_IN,
    input SH_LD,
    output  [3:0] DATA_OUT
);
    //Khai báo dây dẫn bên trong
    wire notSH_LD;
    wire notCLR;
    wire [3:0]D_CLR;// tín hiệu cuối cùng đến d-ff (tín hiệu clr theo data set-up hoặc buộc reset)
    wire [3:0]S_CLR;// tín hiệu từ DATA set-up
    wire [3:0]D_DATA;// dây dẫn nối đến chân D của từng d-ff
    wire [3:0]D_PRE;
    wire [3:0]S_PRE;
    
    S_d_ff dff0 (.CLK(CLK), .CLR(D_CLR[0]), .PRE(D_PRE[0]), .DATA(S_DATA_IN),   .Q(DATA_OUT[0]) );
    S_d_ff dff1 (.CLK(CLK), .CLR(D_CLR[1]), .PRE(D_PRE[1]), .DATA(DATA_OUT[0]), .Q(DATA_OUT[1]) );
    S_d_ff dff2 (.CLK(CLK), .CLR(D_CLR[2]), .PRE(D_PRE[2]), .DATA(DATA_OUT[1]), .Q(DATA_OUT[2]) );
    S_d_ff dff3 (.CLK(CLK), .CLR(D_CLR[3]), .PRE(D_PRE[3]), .DATA(DATA_OUT[2]), .Q(DATA_OUT[3]) );

    not(notSH_LD, SH_LD);
    // assign notSH_LD=SH_LD;
    not(notCLR, CLR);

    and(S_PRE[0], notSH_LD, D_DATA[3]); nor(S_CLR[0], SH_LD, D_DATA[3]);
    and(S_PRE[1], notSH_LD, D_DATA[2]); nor(S_CLR[1], SH_LD, D_DATA[2]);
    and(S_PRE[2], notSH_LD, D_DATA[1]); nor(S_CLR[2], SH_LD, D_DATA[1]);
    and(S_PRE[3], notSH_LD, D_DATA[0]); nor(S_CLR[3], SH_LD, D_DATA[0]);

    and(D_PRE[0], S_PRE[0], notCLR); or(D_CLR[0], S_CLR[0], CLR);
    and(D_PRE[1], S_PRE[1], notCLR); or(D_CLR[1], S_CLR[1], CLR);
    and(D_PRE[2], S_PRE[2], notCLR); or(D_CLR[2], S_CLR[2], CLR);
    and(D_PRE[3], S_PRE[3], notCLR); or(D_CLR[3], S_CLR[3], CLR);


    // assign D_DATA = P_DATA_IN;
    assign D_DATA = (SH_LD==0)?(P_DATA_IN):(4'bzzzz); // cách ly ngõ vào thiết lập của từng FF-D với ngõ vào song song khi không có tín hiệu LD (load)

endmodule

