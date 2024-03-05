`include "half_adder.v"

module full_adder(in1, in2, cin, sum, cout);
    input in1, in2, cin;
    output reg s, cout;

    wire I1, I2, I3;

    always @(I2, I3)
        begin
                    half_adder HA1(.A(in1), .B(in2), .S(I1), .C(I2));
                    half_adder HA2(.A(I1), .B(cin), .S(sum), .C(I3));
                    cout = I2 | I3;
        end

endmodule