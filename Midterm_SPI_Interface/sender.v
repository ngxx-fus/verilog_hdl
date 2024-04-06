/*
Module name: sender
Ngõ vào:
    bus 8 dây DATA  : dữ liệu vào song song  (ghi bởi controller)
    CLR : xoá hết thanh ghi, đặt FULL về 0
    WRITE  : Ghi, WRITE = 1 ghi, WRITE = 0 dịch
        *Chế độ ghi, đồng bộ với xung SCLK, WRITE = 1: 
            + Ngưng dịch
            + Set trạng thái của thanh ghi theo trạng thái ngõ vào [7:0] DATA
        *Chế độ dịch WRITE = 0:
            + [7:0] DATA ở trạng thái trở kháng cao?????
            + Dịch ngõ vào SER theo điều khiển của TE
            + Dịch ngõ ra MOSI theo điều khiển của TE
    TE (Transfering-enable) : Cho phép gởi khi TE = 1, khoá xung CLK đến thanh ghi dịch khi TE = 0
Ngõ ra:
    MOSI : Dữ liệu ra nối tiếp theo SCLK
    FULL_STATE : 1 - thanh ghi đầy (khi chưa gởi đi bit nào)
    EMPTY_STATE : 1 - khi đã gởi hết 8 bit
*/

`include "shift_register_8bit.v" //nhập mô-đun 

module sender (
    input [7:0] DATA, 
    input CLR,
    input WRITE,
    input TE,
    input CLK,
    output MOSI, 
    output FULL_STATE, 
    output EMPTY_STATE 
);
    wire [7:0] P_DATA_OUT;//dây nối 8 chân ngõ ra song song của thanh ghi dịch
    reg [2:0] COUNT_SENT;//đếm số bit đã gởi 
    wire SHIFT_REGISTER_CLK;//dây nối đến chân CLK của thanh ghi dịch
    
    initial begin
        COUNT_SENT = 0;//đến số liệu dữ đã gởi
    end

    SHIFT_REGISTER_8BIT shift_register_sender (
        .CLK(SHIFT_REGISTER_CLK),
        .CLR(CLR),
        .P_DATA_IN(DATA),
        .S_DATA_IN(1'b0),
        .SH_LD(~WRITE),
        .DATA_OUT(P_DATA_OUT)
    );

    always @(posedge SHIFT_REGISTER_CLK, WRITE, CLR)
        if(CLR == 1)
            COUNT_SENT = 0;
        else if( WRITE == 1) COUNT_SENT = 4'b111;
             else
                 COUNT_SENT = COUNT_SENT - SHIFT_REGISTER_CLK;

    assign SHIFT_REGISTER_CLK = CLK & TE & (~EMPTY_STATE);
    assign MOSI               = P_DATA_OUT[7];
    assign EMPTY_STATE        = (COUNT_SENT == 3'h0)?(1'b1):(1'b0);
    assign FULL_STATE         = (COUNT_SENT == 3'h7)?(1'b1):(1'b0);

endmodule   