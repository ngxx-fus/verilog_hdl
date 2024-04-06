/*
Module name: Only using for show wave
Author: Nguyen Thanh Phu
*/
`timescale 1ns/1ns
`include "sender.v"
`include "receiver.v"
`include "clk_generator.v"

module show_wave;
    reg[7:0] DATA_IN = 8'b0110_0010;
    reg CLR = 0;
    reg WRITE = 0;
    reg READ = 0;
    reg TE = 0;
    reg RE = 0;
    wire MOSI;
    wire MISO;
    wire S_FULL_STATE;
    wire S_EMPTY_STATE;
    wire R_FULL_STATE;
    wire R_EMPTY_STATE;
    wire clk_out;
    wire [7:0] DATA_OUT;

    clk_gen clk_gen_ins(.clk(clk_out));

    sender sender_test(
        .DATA(DATA_IN), 
        .CLR(CLR),
        .WRITE(WRITE),
        .TE(TE),
        .CLK(clk_out),
        .MOSI(MOSI), 
        .FULL_STATE(S_FULL_STATE), 
        .EMPTY_STATE(S_EMPTY_STATE)
    );
    receiver receiver_test(
        .CLR(CLR),
        .READ(READ),
        .RE(RE),
        .MISO(MISO),
        .CLK(clk_out),
        .DATA(DATA_OUT),
        .FULL_STATE(R_FULL_STATE), 
        .EMPTY_STATE(R_EMPTY_STATE)
    );

    assign MISO = MOSI;

initial begin
    $dumpfile("show_wave.vcd"); 
    $dumpvars(0, show_wave);
    //---------------- Trạng thái ban đầu
    #20;
    //---------------- Nhấn CLR
    CLR = 0;
    CLR = 1 ; #10;
    CLR = 0;
    //---------------- Ghi dữ liệu lên thanh ghi
    WRITE = 1;
    #10;
    WRITE = 0;
    //---------------- Rỗi, k ghi, k truyền
    #40;
    //---------------- Truyền dữ liệu
    TE = 1; RE = 1;
    #80;

    #30;
    TE = 0; RE = 0;
    //---------------- Rỗi
    #30;
    //---------------- Đọc dữ liệu từ receiver
    READ = 1;
    #20;
    READ = 0;
    //---------------- xoá thanh ghi hai bên
    CLR = 1;
    #10;
    CLR = 0;
    //---------------- Ghi dữ liệu chuẩn bị gởi
    WRITE = 1;
    #5;
    WRITE = 0;
    //---------------- Gởi dữ liệu, nhưng bên nhận chưa k chấp nhận
    TE = 1; RE = 0;
    #80;

    #30;
    TE = 0; RE = 0;
    //---------------- Thử đọc dữ liệu
    READ = 1;
    #20;
    READ = 0;
    //----------------
    $display("Test completed!");
end
endmodule

/*
iverilog -o show_wave.vvp show_wave.v; vvp show_wave.vvp; gtkwave show_wave.vcd
*/