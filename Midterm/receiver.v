/*
Module name: sender
Ngõ vào:
    SER : dữ liệu vào nối tiếp (thường nối đất)
    CLR : xoá hết thanh ghi nhận, đặt FULL về 0. EMPTY về 1
    SH_LD  : 
        *Chế độ đọc bởi người dùng, đồng bộ với xung SCLK, SH_LD = 0: 
            + Set trạng thái của [8] DATA theo trạng thái của thanh ghi
        *Chế độ dịch SH_LD = 1:
            + Ngõ ra của thanh ghi vào OUT
            + [8] DATA ở trạng thái trở kháng cao
            + Dịch từ MISO vào thanh ghi
    SCLK
Ngõ ra:
    OUT : Dữ liệu ra nối tiếp từ thanh ghi (thường để trống)
    [8] DATA : Dữ liệu ra song song
    FULL_STATE : 
        0 : Thanh ghi chưa đầy, còn ghi được tiếp
        1 : Thanh ghi đầy, không thể ghi thêm
    EMPTY_STATE : 
        1 : Thanh ghi rỗng, sẵn sàng ghi
        0 : Thanh ghi không rỗng

*/

