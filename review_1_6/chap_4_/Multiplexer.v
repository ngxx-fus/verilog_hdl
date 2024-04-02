/*
Đa hợp/ghép kênh:
Đặc điểm ngõ vào bao gồm hai loại chân:
- Chân chọn : sel / select (là số bit cần để biểu diễn số lượng ngõ vào)
- Các chân dữ liệu vào.
Ngõ ra:
- 01 chân duy nhất.
--------------------------------------
Nguyên tắc hoạt động:
Các chân sel/select chọn ngõ ra sẽ được lấy từ ngõ vào nào.
*/


module multiplexer_2_1(S, I, O);
    input S;
    input [1:0] I;
    output reg O;
    always @(S, I)
        begin
            O = (I[0] & (~S)) | (I[1] & S);
        end
endmodule

module mux_4_to_1(in, sel, out, en);
    input [3:0]in;
    input [1:0]sel;
    input en;
    output out;

    wire en;
    wire [3:0]in;
    wire [1:0]sel;
    reg out;
    //reg out;//increase cost for each IC if using reg

    always @(en, in, sel) 
        if( en == 0)
            out = 0;
        else
            begin
                case (sel)
                    0 : out = in[0]; 
                    1 : out = in[1]; 
                    2 : out = in[2]; 
                    default : out = in[3]; 
                endcase
            end
endmodule


module MUX_8_to_1(en, w, sel, y);
    input en;
    input [7:0] w;
    input [2:0] sel;
    output reg y;

    always @(en, w, sel) 
    begin
        if(en == 0)
            y = 0;
        else 
            y = w[sel];    
    end
endmodule

module MUX_16_to_1(en, w, sel, y);
    input en;
    input [15:0] w;
    input [3:0] sel;
    output reg y;

    always @(en, w, sel) 
    begin
        if(en == 0)
            y = 0;
        else 
            y = w[sel];    
    end
endmodule