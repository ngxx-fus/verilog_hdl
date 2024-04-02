/*
Mã hóa: ngõ ra biểu diễn số nhị phân cho biết ngõ vào nào có mức một.
*mỗi thời điểm chỉ có một ngõ vào có mức 1.*
VD: ngõ vào 0001B = 1D thì ngõ ra 01B = 1D
VD: ngõ vào 1000B = 8D thì ngõ ra 11B = 3D
Tương tự cách làm khi HL = 0, ta chỉ việc thêm biến tmp/wo_HL và đão lại giá trị ngõ ra
Số ngõ vào là lũy thừa cơ số 2 của ngõ ra(trừ các chân chọn en/sel, chân HL, ...)
VD: có 2 ngõ ra các trạng thái từ 00->11 thì ngõ vào cần 4 cổng
*/

module encode_4_2(
  input [3:0]IN,
  output reg [2:0] OUT
);
  always @(OUT)
  begin
    case(IN)
      4'b0001 : OUT = 2'b00;
      4'b0010 : OUT = 2'b01;
      4'b0100 : OUT = 2'b10;
      4'b1000 : OUT = 2'b11;
    endcase
  end
endmodule

module encode_8_3_(
  input [7:0]IN,
  output reg [2:0] OUT
);
  always @(OUT)
  begin
    case(IN)
      8'h01 : OUT = 3'b000;
      8'h02 : OUT = 3'b001;
      8'h04 : OUT = 3'b010;
      8'h08 : OUT = 3'b011;
      8'h10 : OUT = 3'b100;
      8'h20 : OUT = 3'b101;
      8'h40 : OUT = 3'b110;
      8'h80 : OUT = 3'b111;
    endcase
  end
endmodule

module encode_8_3_EN(
  input EN,
  input [7:0]IN,
  output reg [2:0] OUT
);
  always @(OUT)
  begin
    if(EN == 0)
      OUT = 0;
    else
      case(IN)
        8'h01 : OUT = 3'b000;
        8'h02 : OUT = 3'b001;
        8'h04 : OUT = 3'b010;
        8'h08 : OUT = 3'b011;
        8'h10 : OUT = 3'b100;
        8'h20 : OUT = 3'b101;
        8'h40 : OUT = 3'b110;
        8'h80 : OUT = 3'b111;
      endcase
  end
endmodule

module encode_8_3_EN_HL(
  input HL,
  input EN,
  input [7:0]IN,
  output [2:0] OUT
);
  reg [2:0] tmp;
  always @(OUT)
  begin
    if(EN == 0)
      tmp = 0;
    else
      case(IN)
        8'h01 : tmp = 3'b000;
        8'h02 : tmp = 3'b001;
        8'h04 : tmp = 3'b010;
        8'h08 : tmp = 3'b011;
        8'h10 : tmp = 3'b100;
        8'h20 : tmp = 3'b101;
        8'h40 : tmp = 3'b110;
        8'h80 : tmp = 3'b111;
      endcase
  end
  assign OUT = (HL==1)?(tmp):(~tmp);
endmodule