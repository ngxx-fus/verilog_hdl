`include "d_ff.v"
//Vào nối tiếp, ra nối tiếp
module shift_reg_4bit_ver1(
    input Clock,
    input In,
    output Q
);
    wire w0, w1, w2;
    d_ff dff1(.Clock(Clock), .d(In), .q(w0));
    d_ff dff2(.Clock(Clock), .d(w0), .q(w1));
    d_ff dff3(.Clock(Clock), .d(w1), .q(w2));
    d_ff dff4(.Clock(Clock), .d(w2), .q(Q));
endmodule

//vào nối tiếp ra song song
module shift_reg_4bit_ver2(
    input Clock,
    input In,
    output[3:0]Q
);

    d_ff dff1(.Clock(Clock), .d(In), .q(Q[0]));
    d_ff dff2(.Clock(Clock), .d(Q[0]), .q(Q[1]));
    d_ff dff3(.Clock(Clock), .d(Q[1]), .q(Q[2]));
    d_ff dff4(.Clock(Clock), .d(Q[2]), .q(Q[3]));
endmodule