/*
Module name: sender
Ngõ vào:
    bus 8 dây DATA  : dữ liệu vào song song
    SER : dữ liệu vào nối tiếp
    CLR : xoá hết thanh ghi, đặt FULL về 0
    SH_LD  : Đọc ghi, SH_LD = 0 ghi, SH_LD = 1 dịch
        *Chế độ ghi, đồng bộ với xung SCLK: 
            + Ngưng dịch
            + Set trạng thái của thanh ghi theo trạng thái ngõ vào
        *Chế độ dịch SH_LD = 1:
            + DATA[8] ở trạng thái trở kháng cao
            + Dịch ngõ vào SER
            + Dịch ngõ ra MOSI
Ngõ ra:
    MOSI : Dữ liệu ra nối tiếp theo SCLK
    FULL_STATE : 1 khi dữ liệu chưa dịch ra hết và 0 khi sẵn sàng ghi
    EMPTY_STATE : 1 khi dữ liệu chưa dịch ra hết và 0 khi sẵn sàng ghi
*/

`include "shift_register.v" //nhập mô-đun 

module sender (
    input [7:0] DATA, 
    input [7:0] SER,
    input CLEAR,
    input SH_LD,
    input CLK,
    output [7:0] MOSI, 
    output FULL_STATE, 
    output EMPTY_STATE 
);
    SHIFT_REGISTER shift_register (.CLK(CLK),.CLR(CLEAR),.P_DATA_IN(DATA),.S_DATA_IN(SER),.SH_LD(SH_LD),.DATA_OUT(MOSI));

endmodule   