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
    wire [7:0] P_DATA_OUT;//dây nối 8 chân ngõ ra song song của thanh ghi dịch
    reg [3:0] COUNT_SENT;//đếm số bit đã gởi, kiểm soát trạng thái rỗng/đầy của thanh ghi dịch
    reg SHIFT_CLK;//dây nối đến chân CLK của thanh ghi dịch
    wire LOW, HIGH;

    initial begin
        COUNT_SENT = 4'b1000;//đến số liệu dữ đã gởi, ban đầu thanh ghi rỗng!
    end

    SHIFT_REGISTER_8BIT sender_shift_register(
        .CLK(SHIFT_CLK),
        .CLR(CLR),
        .P_DATA_IN(DATA),
        .S_DATA_IN(LOW),
        .SH_LD(~WRITE),
        .P_DATA_OUT(P_DATA_OUT)
    );

    always @(posedge SHIFT_CLK, CLR)
        if(CLR == 1)
            COUNT_SENT = 4'b1000;
        else
            if(TE == HIGH && EMPTY_STATE == LOW)
                COUNT_SENT = COUNT_SENT + 1;
    always @(posedge WRITE)
        COUNT_SENT = 4'b0000;
    always @(CLK))
        SHIFT_CLK = #10 CLK & TE;

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
    wire [7:0] P_DATA_OUT;//dây nối 8 chân ngõ ra song song của thanh ghi dịch
    reg [3:0] COUNT_RECEIVED;//đếm số bit đã nhận
    reg SHIFT_CLK;//dây nối đến chân CLK của thanh ghi dịch

    initial begin
        COUNT_RECEIVED = 0;//đến số liệu dữ đã nhận
    end

    SHIFT_REGISTER_8BIT receiver_shift_register (
        .CLK(SHIFT_CLK),
        .CLR(CLR),
        .P_DATA_IN(8'bzzzz_zzzz),//để trống vì không sử dụng
        .S_DATA_IN(MISO),
        .SH_LD(HIGH),//luôn ở trạng thái dịch, điều khiển bằng xung CLK
        .P_DATA_OUT(P_DATA_OUT)
    );

    always @(posedge SHIFT_CLK, CLR)
        if(CLR == 1)
            COUNT_RECEIVED = 4'b0000; // chưa nhận bit nào = rỗng
        else
            if( RE & (~FULL_STATE) & (~READ) == HIGH ) //vẫn cho phép nhận và chưa đầy
                COUNT_RECEIVED = COUNT_RECEIVED + 1;
    always @(posedge READ)
        COUNT_RECEIVED = 4'b0000;
    always @(posedge CLK, negedge CLK)
        SHIFT_CLK = #10 CLK & RE & (~FULL_STATE) & (~READ);
    //Có thêm (~READ) để khoá xung vì hoạt động đọc k tác động đến các FF-D 
    //bên trong thanh ghi và phải khoá xung clk nếu k dữ liệu sẽ thay đổi
    //và không đọc được
    //Khác với hoạt động ghi, hoạt động này can thiệp vào các FF-D bên trong
    //thanh ghi dịch thông qua các chân PRE,CLR nên không bị ảnh hưởng 
    //bởi xung CLK
    assign LOW = 1'b0;
    assign HIGH = 1'b1;  
    assign EMPTY_STATE        = (COUNT_RECEIVED == 4'B0000)?(HIGH):(LOW);
    assign FULL_STATE         = (COUNT_RECEIVED == 4'B1000)?(HIGH):(LOW);
    assign DATA               = (READ==1)?(P_DATA_OUT):(8'bzzzz_zzzz);
endmodule
