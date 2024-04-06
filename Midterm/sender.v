/*
Module name: sender
Ngõ vào:
    bus 8 dây DATA  : dữ liệu vào song song
    CLR : xoá hết thanh ghi, đặt FULL về 0
    SH_LD  : Đọc ghi, SH_LD = 0 ghi, SH_LD = 1 dịch
        *Chế độ ghi, đồng bộ với xung SCLK: 
            + Ngưng dịch
            + Set trạng thái của thanh ghi theo trạng thái ngõ vào
        *Chế độ dịch SH_LD = 1:
            + DATA[8] ở trạng thái trở kháng cao
            + Dịch ngõ vào SER
            + Dịch ngõ ra MOSI
    TE (Transfering-enable) : Cho phép gởi
Ngõ ra:
    MOSI : Dữ liệu ra nối tiếp theo SCLK
    FULL_STATE : 1 khi dữ liệu chưa dịch ra hết và 0 khi sẵn sàng ghi
    EMPTY_STATE : 1 khi dữ liệu chưa dịch ra hết và 0 khi sẵn sàng ghi
*/

`include "shift_register.v" //nhập mô-đun 

module sender (
    input [7:0] DATA, 
    input CLR,
    input SH_LD,
    input TE,
    input CLK,
    output [7:0] MOSI, 
    output FULL_STATE, 
    output EMPTY_STATE 
);
    wire [7:0] P_DATA_OUT;
    reg [3:0] SR_count_sent;//đếm số bit đã gởi 
    reg SS;
    wire SHREG_CLK;
    wire SHREG_CLR;

    initial begin
        SR_count_sent <= 0;
    end

    SHIFT_REGISTER shift_register (
        .CLK(SHREG_CLK),
        .CLR(CLR),
        .P_DATA_IN(DATA),
        .S_DATA_IN(1'b0),
        .SH_LD(SH_LD),
        .DATA_OUT(P_DATA_OUT)
    );

    and(SHREG_CLK, CLK, TE, ~SR_count_sent[3]);

    always @(posedge SHREG_CLK)
        if(CLR == 1)
            SR_count_sent = 0;
        else
            SR_count_sent = SR_count_sent + 1;

    assign MISO = P_DATA_OUT[7];
    assign EMPTY_STATE = SR_count_sent[0]&SR_count_sent[1]&SR_count_sent[2]&SR_count_sent[3];
    assign FULL_STATE = SR_count_sent[3];

endmodule   