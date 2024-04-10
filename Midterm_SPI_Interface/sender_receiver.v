`timescale 100ps/100ps
`include "shift_register_8bit.v" //nhập mô-đun 

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
    wire [7:0] P_DATA_OUT;//dây n?i 8 chân ngõ ra song song c?a thanh ghi d?ch
    reg [3:0] COUNT_SENT;//d?m s? bit dã g?i, ki?m soát tr?ng thái r?ng/d?y c?a thanh ghi d?ch
    reg SHIFT_CLK;//dây n?i d?n chân CLK c?a thanh ghi d?ch
    wire LOW, HIGH;

    initial begin
        COUNT_SENT = 4'b1000;//d?n s? li?u d? dã g?i, ban d?u thanh ghi r?ng!
    end

    SHIFT_REGISTER_8BIT sender_shift_register(
        .CLK(SHIFT_CLK),
        .CLR(CLR),
        .P_DATA_IN(DATA),
        .S_DATA_IN(LOW),
        .SH_LD(~WRITE),
        .P_DATA_OUT(P_DATA_OUT)
    );

    always @(SHIFT_CLK, CLR, WRITE)
        if(CLR == 1)
            COUNT_SENT = 4'b1000;
        else if(WRITE == 1)
				 COUNT_SENT = 4'b0000;
				 else if(TE == HIGH && EMPTY_STATE == LOW)
                  COUNT_SENT = COUNT_SENT + 1;
    always @(CLK)
        SHIFT_CLK = #5 CLK & TE;

    assign LOW = 1'b0;
    assign HIGH = 1'b1;  
    // assign SHIFT_CLK = #1 CLK & TE & (~EMPTY_STATE);
    assign MOSI = (TE == HIGH)?(P_DATA_OUT[0]):(LOW);
    assign EMPTY_STATE = (COUNT_SENT == 4'b1000) ? HIGH : LOW;
    assign FULL_STATE = ((COUNT_SENT == 4'b0000))? HIGH : LOW;
endmodule     



//--------------------------------------------------------------------------------------------------
/*
Module name: receiver
Ngõ vào:
    MISO: dữ liệu nhận về, dịch vào thanh ghi
    CLR : xoá hết thanh ghi, FULL_STATE=0, EMPTY_STATE=1
    READ  : Đọc, READ = 1 đọc, READ = 0 dịch dữ liệu vào
        *Chế độ đọc, đồng bộ với xung SCLK, READ = 1: 
            + Ngưng dịch
            + Set trạng thái của [7:0] DATA thành trạng thái của 8 ngõ ra thanh ghi
        *Chế độ dịch READ = 0:
            + [7:0] DATA ở trạng thái trở kháng cao?????
            + Dịch ngõ vào MISO theo điều khiển của RE
            + Dịch ngõ ra MOSI theo điều khiển của RE
    RE (Receiving-enable) : Cho phép nhận khi RE = 1, khoá xung CLK đến thanh ghi dịch khi RE = 0
Ngõ ra:
    DATA[7:0] : Dữ liệu ra song song (đọc bởi controller)
    FULL_STATE : 1 - thanh ghi đầy (đã nhận đủ 8bit)
    EMPTY_STATE : 1 - thi ghi rỗng (chưa nhận được bit nào)
*/

module receiver (
    input CLR,
    input READ,
    input RE,
    input MISO,
    input CLK,
    output [7:0]DATA,
    output FULL_STATE, 
    output EMPTY_STATE 
);
    wire LOW, HIGH;
    wire [7:0] P_DATA_OUT;//dây n?i 8 chân ngõ ra song song c?a thanh ghi d?ch
    reg [3:0] COUNT_RECEIVED;//d?m s? bit dã nh?n
    reg SHIFT_CLK;//dây n?i d?n chân CLK c?a thanh ghi d?ch

    initial begin
        COUNT_RECEIVED = 0;//d?n s? li?u d? dã nh?n
    end

    SHIFT_REGISTER_8BIT receiver_shift_register (
        .CLK(SHIFT_CLK),
        .CLR(CLR),
        .P_DATA_IN(8'bzzzz_zzzz),//d? tr?ng vì không s? d?ng
        .S_DATA_IN(MISO),
        .SH_LD(HIGH),//luôn ? tr?ng thái d?ch, di?u khi?n b?ng xung CLK
        .P_DATA_OUT(P_DATA_OUT)
    );

    always @(SHIFT_CLK, CLR, READ)
        if(CLR == HIGH || READ == HIGH)
            COUNT_RECEIVED = 4'b0000; // chua nh?n bit nào = r?ng
        else
            if( RE & (~FULL_STATE) & (~READ) == HIGH ) //v?n cho phép nh?n và chua d?y
                COUNT_RECEIVED = COUNT_RECEIVED + 4'b0001;

    always @(CLK)
        SHIFT_CLK = #5 CLK & RE & (~FULL_STATE) & (~READ);
    assign LOW = 1'b0;
    assign HIGH = 1'b1;  
    assign EMPTY_STATE        = (COUNT_RECEIVED == 4'B0000)?(HIGH):(LOW);
    assign FULL_STATE         = (COUNT_RECEIVED == 4'B1000)?(HIGH):(LOW);
    assign DATA               = (READ==1)?(P_DATA_OUT):(8'bzzzz_zzzz);
endmodule
