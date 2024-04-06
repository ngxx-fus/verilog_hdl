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
    wire [8]D_CLR;
    wire [8]D_PRE;
    
    d_ff dff0 (.CLK(CLK), .CLR(D_CLR[0]), .PRE(D_PRE[0]), .DATA(S_DATA_IN), .Q(DATA_OUT[0]) );
    d_ff dff1 (.CLK(CLK), .CLR(D_CLR[1]), .PRE(D_PRE[1]), .DATA(DATA_OUT[0]), .Q(DATA_OUT[1]) );
    d_ff dff2 (.CLK(CLK), .CLR(D_CLR[2]), .PRE(D_PRE[2]), .DATA(DATA_OUT[1]), .Q(DATA_OUT[2]) );
    d_ff dff3 (.CLK(CLK), .CLR(D_CLR[3]), .PRE(D_PRE[3]), .DATA(DATA_OUT[2]), .Q(DATA_OUT[3]) );
    d_ff dff4 (.CLK(CLK), .CLR(D_CLR[4]), .PRE(D_PRE[4]), .DATA(DATA_OUT[3]), .Q(DATA_OUT[4]) );
    d_ff dff5 (.CLK(CLK), .CLR(D_CLR[5]), .PRE(D_PRE[5]), .DATA(DATA_OUT[4]), .Q(DATA_OUT[5]) );
    d_ff dff6 (.CLK(CLK), .CLR(D_CLR[6]), .PRE(D_PRE[6]), .DATA(DATA_OUT[5]), .Q(DATA_OUT[6]) );
    d_ff dff7 (.CLK(CLK), .CLR(D_CLR[7]), .PRE(D_PRE[7]), .DATA(DATA_OUT[6]), .Q(DATA_OUT[7]) );

    if(SH_LD == 0){
        D_PRE[0] = P_DATA_IN[0]; D_CLR[0] = ~P_DATA_IN[0];
        D_PRE[1] = P_DATA_IN[1]; D_CLR[1] = ~P_DATA_IN[1];
        D_PRE[2] = P_DATA_IN[2]; D_CLR[2] = ~P_DATA_IN[2];
        D_PRE[3] = P_DATA_IN[3]; D_CLR[3] = ~P_DATA_IN[3];
        D_PRE[4] = P_DATA_IN[4]; D_CLR[4] = ~P_DATA_IN[4];
        D_PRE[5] = P_DATA_IN[5]; D_CLR[5] = ~P_DATA_IN[5];
        D_PRE[6] = P_DATA_IN[6]; D_CLR[6] = ~P_DATA_IN[6];
        D_PRE[7] = P_DATA_IN[7]; D_CLR[7] = ~P_DATA_IN[7];
        
    }else{
        D_CLR = 8'h00;
        D_PRE = 8'h00;
        
    }
endmodule