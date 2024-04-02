/*
Giải đa hợp/phân kênh:
Đặc điểm ngõ vào bao gồm hai loại chân:
- Chân chọn : sel / select (là số bit cần để biểu diễn số lượng ngõ ra)
- 01 chân dữ liệu vào
Ngõ ra:
- Các chân dữ liệu ra
--------------------------------------
Nguyên tắc hoạt động:
Các chân sel/select chọn ngõ vào sẽ truyền dữ liệu (nối đến) ngõ ra nào.
*/

/*
Với các bài toán có HL (tác động mức cao/thấp), ta giải bài toán theo hướng
bình thường vào đảo lại ở cuối bài.
*/

module demux_1_to_4(HL, en, sel, in, out);
    input [1:0] sel;
    input en, HL, in;
    output [3:0] out;

    reg[3:0]  wo_HL; //wo_HL = without HL

    always @(in, sel, HL, en) 
    begin
        if( en == 0 ) wo_HL = 4'b0000;
        else
            begin
                case(sel)
                    0 : wo_HL = (in==1)?(4'b0001):(4'b0000);
                    1 : wo_HL = (in==1)?(4'b0010):(4'b0000);
                    2 : wo_HL = (in==1)?(4'b0100):(4'b0000);
                    3 : wo_HL = (in==1)?(4'b1000):(4'b0000);
                endcase
            end
    end
    assign out = (HL == 0) ? ~wo_HL : wo_HL;
endmodule

//Ngoài dùng case ra ta có thể biến đổi biểu thức rồi mới kết hợp.
module demux_1_to_4_simlified(HL, en, sel, in, out);
    input [1:0] sel;
    input en, HL, in;
    output [3:0] out;

    reg[3:0]  wo_HL; //wo_HL = without HL

    always @(sel, in, HL, en) 
    begin
        if( en == 0 ) wo_HL = 4'b0000;
        else
            begin
                wo_HL[0] = in & (~sel[1]) & (~sel[0]);
                wo_HL[1] = in & (~sel[1]) & (sel[0]);
                wo_HL[2] = in & (sel[1]) & (~sel[0]);
                wo_HL[3] = in & (sel[1]) & (sel[0]);
            end
    end
    assign out = (HL == 0) ? ~wo_HL : wo_HL;
endmodule

//Việc viết biểu thức ngõ ra có thể làm bài toán ngắn hơn, nhưng dễ sai hơn!
/*
Module name: Demux 1 to 8
Author: Nguyen Thanh Phu
*/

module demux_1_to_8(S, IN, OUT);    
    input IN;
    input [2:0] S;
    output reg[7:0] OUT;

    always @( S, IN )
    begin
        OUT[0] = ~S[0] & ~S[1] & ~S[2];
        OUT[1] = ~S[0] & ~S[1] & S[2];
        OUT[2] = ~S[0] & S[1] & ~S[2];
        OUT[3] = ~S[0] & S[1] & S[2];
        OUT[4] = S[0] & ~S[1] & ~S[2];
        OUT[5] = S[0] & ~S[1] & S[2];
        OUT[6] = S[0] & S[1] & ~S[2];
        OUT[7] = S[0] & S[1] & S[2];
    end
endmodule

//Tương tự khi có HL, ta thêm một reg tmp/wo_HL 
//để lưu tạm giá trị khi HL = 1
//rồi đão lại nếu HL = 0
//Về kích thước, wo_HL/tmp có cùng số reg/wire với ngõ ra
module demux_1_to_8_HL(HL, S, IN, OUT);    
    input IN, HL;
    input  [2:0] S;
    output [7:0] OUT;

    reg [7:0]wo_HL;

    always @( S, IN )
        begin
            wo_HL[0] = ~S[0] & ~S[1] & ~S[2];
            wo_HL[1] = ~S[0] & ~S[1] & S[2];
            wo_HL[2] = ~S[0] & S[1] & ~S[2];
            wo_HL[3] = ~S[0] & S[1] & S[2];
            wo_HL[4] = S[0] & ~S[1] & ~S[2];
            wo_HL[5] = S[0] & ~S[1] & S[2];
            wo_HL[6] = S[0] & S[1] & ~S[2];
            wo_HL[7] = S[0] & S[1] & S[2];
        end
    assign OUT = (HL == 1)?(wo_HL):(~wo_HL);
endmodule