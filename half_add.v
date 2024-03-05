module half_adder(A,B,C, S);
input A,B;
output C,S;

wire A,B;
reg S,C;

always @(A, B) 
    begin//hai biến được theo giỏi, có sự thay đổi thì bắt đầu tính toán
        S = A ^ B;//bitwise
        C = A & B; //bitwise
    end

endmodule


