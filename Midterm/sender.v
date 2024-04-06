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

