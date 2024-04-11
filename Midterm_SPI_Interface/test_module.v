`timescale 1ns/1ns
`include "sender_receiver.v"
`include "clk_generator.v"

module show_wave(
    output MOSI,
    output MISO,
    output S_FULL_STATE,
    output S_EMPTY_STATE,
    output R_FULL_STATE,
    output R_EMPTY_STATE,
    output clk_out,
    output [7:0] DATA_OUT
);
    reg[7:0] DATA_IN;
    reg CLR = 0;
    reg WRITE = 0;
    reg READ = 0;
    reg TE = 0;
    reg RE = 0;

    clk_gen clk_gen_ins(.clk(clk_out));

    SENDER sender_test(
        .DATA(DATA_IN), 
        .CLR(CLR),
        .WRITE(WRITE),
        .TE(TE),
        .CLK(clk_out),
        .MOSI(MOSI), 
        .FULL_STATE(S_FULL_STATE), 
        .EMPTY_STATE(S_EMPTY_STATE)
    );
    RECEIVER receiver_test(
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

    //---------------- Tr?ng thái ban d?u
    DATA_IN = 8'b0100_0011;
    #20;
    //---------------- Nh?n CLR
    CLR = 0;
    CLR = 1 ; #10;
    CLR = 0;
    //---------------- Ghi d? li?u lên thanh ghi
    WRITE = 1;
    #10;
    WRITE = 0;
    //---------------- R?i, k ghi, k truy?n
    #20
    DATA_IN = 8'b0101_1111;
    WRITE = 1;
    #10;
    WRITE = 0;
    #20;
    //---------------- Truy?n d? li?u
    TE = 1; RE = 1;
    #80;

    #30;
    TE = 0; RE = 0;
    //---------------- R?i
    #30;
    //---------------- Ð?c d? li?u t? receiver
    READ = 1;
    #20;
    READ = 0;
    //---------------- xoá thanh ghi hai bên
    CLR = 1;
    #10;
    CLR = 0;
    //---------------- Ghi d? li?u chu?n b? g?i
    WRITE = 1;
    #7;
    WRITE = 0;
    #9
    //---------------- G?i d? li?u, nhung bên nh?n chua k ch?p nh?n
    TE = 1; RE = 0;
    #30;
    RE = 1;
    #50;

    #30;
    TE = 0; RE = 0;
    #50;
    //---------------- Th? d?c d? li?u
    READ = 1;
    #20;
    READ = 0;
    //----------------
end
endmodule

