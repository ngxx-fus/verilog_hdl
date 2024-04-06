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

`include "shift_register_8bit.v" //nhập mô-đun 

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
    wire [7:0] P_DATA_OUT;//dây nối 8 chân ngõ ra song song của thanh ghi dịch
    reg [3:0] COUNT_RECEIVED;//đếm số bit đã nhận
    wire SHIFT_REGISTER_CLK;//dây nối đến chân CLK của thanh ghi dịch

    initial begin
        COUNT_RECEIVED = 0;//đến số liệu dữ đã nhận
    end

    SHIFT_REGISTER_8BIT shift_register_receiver (
        .CLK(SHIFT_REGISTER_CLK),
        .CLR(CLR),
        .P_DATA_IN(8'bzzzz_zzzz),//để trống vì không sử dụng
        .S_DATA_IN(MISO),
        .SH_LD(1'b1),//luôn ở trạng thái dịch, điều khiển bằng xung CLK
        .DATA_OUT(P_DATA_OUT)
    );

    always @(posedge SHIFT_REGISTER_CLK, CLR)
        if(CLR == 0)
            COUNT_RECEIVED = 0;
        else
            COUNT_RECEIVED = COUNT_RECEIVED + 1;
    //Có thêm (~READ) để khoá xung vì hoạt động đọc k tác động đến các FF-D 
    //bên trong thanh ghi và phải khoá xung clk nếu k dữ liệu sẽ thay đổi
    //và không đọc được
    //Khác với hoạt động ghi, hoạt động này can thiệp vào các FF-D bên trong
    //thanh ghi dịch thông qua các chân PRE,CLR nên không bị ảnh hưởng 
    //bởi xung CLK
    assign SHIFT_REGISTER_CLK = CLK & RE & (~COUNT_RECEIVED[3]) & (~READ);
    assign EMPTY_STATE        = (COUNT_RECEIVED == 4'h0)?(1'b1):(1'b0);
    assign FULL_STATE         = COUNT_RECEIVED[3];
    assign DATA               = (READ==1)?(P_DATA_OUT):(8'bzzzz_zzzz);
endmodule