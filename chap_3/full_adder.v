`include "half_adder.v"

module full_adder(input A, input B, input carry_in, output sum, output carry_out);
    
    wire A, B, carry_in, carry_out, sum;
    wire I1, I2, I3;
    half_adder ha1(.A(A), .B(B), .S(I1), .C(I2));
    half_adder ha2(.A(I1), .B(carry_in), .S(sum), .C(I3));
    or(carry_out, I2, I3);     // assign #2 carry_out = I2 || I3; //don't use for register
endmodule

/**
Built-in gate primitives:
    and, nand, nor, or, xor, xnor, buf, not, bufif0, bufif1, notif0, notif1
Ex:
    nand(out, in1, in2);
*/