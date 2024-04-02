/*
Giải mã: Ngõ vào số nhị phân, ngõ ra thứ <số nhị phân> có mức 1, còn lại mức 0.
VD: ngõ vào 11B = 2D thì ngõ ra thứ 2 có mức 1 còn lại mức 0.
Tương tự cách làm khi HL = 0, ta chỉ việc thêm biến tmp/wo_HL và đão lại giá trị ngõ ra
Số ngõ ra là lũy thừa cơ số 2 của ngõ vào (trừ các chân chọn en/sel, chân HL, ...)
VD: có 2 ngõ vào các trạng thái từ 00->11 thì ngõ ra cần 4 cổng
*/
//-------------------encode 2 - 4 ---------------------------
//Dùng if else
module decode_2_4(
  input HL,
  input EN,
  input [1:0]IN,
  output[3:0] OUT
);
  reg [3:0] tmp;
  always @(EN,OUT)
  begin
    if(EN == 0) 
      tmp = 4'b0000;
    else
      if(IN == 0) 
        tmp = 4'b0001;
      else
        if(IN == 1) 
          tmp = 4'b0010;
        else  
          if(IN == 2) 
            tmp =4'b0100;
          else  
            tmp =4'b1000;
  end
  assign OUT = (HL==1)?(tmp):(~tmp);
endmodule

//Dùng case:
module decode_2_4_method0(
  input HL,
  input EN,
  input [1:0]IN,
  output[3:0] OUT
);
  reg [3:0] tmp;
  always @(EN,OUT)
  begin
    if(EN == 0) 
      tmp = 4'b0000;
    else
      case(IN)
        0 : tmp = 4'b0001;
        1 : tmp = 4'b0010;
        2 : tmp = 4'b0100;
        3 : tmp = 4'b1000;
      endcase
  end
  assign OUT = (HL==1)?(tmp):(~tmp);
endmodule

//Sử dụng toán tử:
module DEC24_method1(en, in, y);
    input en;
    input [1:0] in;
    output  reg [3:0] y;

    always @(en, in)
        begin
            if(en == 0)
                y = 0;
            else
                y = (in == 0)?(1):((in == 1)?(2):(in==2)?(4):(8));
        end
endmodule

//Sử dụng toán tử, dịch bit, K có HL:
module DEC24_method2(
    input EN,
    input [1:0] IN,
    output [3:0] Y
);
    assign Y = (EN==1)?(4'b0001<<IN):(0);
endmodule

//Sử dụng toán tử, dịch bit, có HL:
module DEC24_method3(
    input HL,
    input EN,
    input [1:0] IN,
    output [3:0] Y
);
    wire [3:0]temp;
    assign temp = (EN==1)?(4'b0001<<IN):(0);
    assign Y = (HL==1)?(temp):(~temp);
endmodule

//Sử dụng toán tử, dịch bit, có HL, mô hình hành vi:
module DEC24_method4(
    input HL,
    input EN,
    input [1:0] IN,
    output [3:0] Y
);
    reg [3:0]temp;
    always @(HL, EN, IN)
    	begin 
    	    temp = (EN==1)?(4'b0001<<IN):(0);
    	end
    assign Y = (HL==1)?(temp):(~temp);
endmodule

//Sử dụng toán tử, dịch bit, có HL, mô hình hành vi, không biến temp:
module DEC24_method5(
    input HL,
    input EN,
    input [1:0] IN,
    output reg[3:0]  Y
);
    always @(HL, EN, IN)
    	begin 
    	    Y = (HL==1) ? ((EN==1)?(4'b0001<<IN):(0)) :
    	                  ((EN==1)?(~(4'b0001<<IN)):(1));
    	end
endmodule

//Không có HL:
module encode_2_4_method6(
  input EN,
  input [1:0]IN,
  output reg [3:0] OUT
);
  always @(EN,OUT)
  begin
    if(EN == 0) 
      OUT = 4'b0000;
    else
      case(IN)
        0 : OUT = 4'b0001;
        1 : OUT = 4'b0010;
        2 : OUT = 4'b0100;
        3 : OUT = 4'b1000;
      endcase
  end
endmodule

//Không có EN:
module decode_2_4_method7(
  input [1:0]IN,
  output reg [3:0] OUT
);
  always @(OUT)
  begin
    case(IN)
      0 : OUT = 4'b0001;
      1 : OUT = 4'b0010;
      2 : OUT = 4'b0100;
      3 : OUT = 4'b1000;
    endcase
  end
endmodule