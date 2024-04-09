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
        - [8] P_DATA_OUT : kết nối tới từng FF-D bên trong
*/

`include "shift_register_4bit.v"

module SHIFT_REGISTER_8BIT (
    input CLK,
    input CLR,
    input [7:0] P_DATA_IN,
    input S_DATA_IN,
    input SH_LD,
    output  [7:0] P_DATA_OUT
);

    SHIFT_REGISTER_4BIT shift_register_0(
        .CLK(CLK),
        .CLR(CLR),
        .P_DATA_IN(P_DATA_IN[7:4]),
        .S_DATA_IN(S_DATA_IN),
        .SH_LD(SH_LD),
        .P_DATA_OUT(P_DATA_OUT[7:4])
    );
    SHIFT_REGISTER_4BIT shift_register_1(
        .CLK(CLK),
        .CLR(CLR),
        .P_DATA_IN(P_DATA_IN[3:0]),
        .S_DATA_IN(P_DATA_OUT[4]),
        .SH_LD(SH_LD),
        .P_DATA_OUT(P_DATA_OUT[3:0])
    );
endmodule

