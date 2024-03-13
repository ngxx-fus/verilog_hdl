/*
Module name: Decode 2 to 4
Author: Nguyen Thanh Phu
Note:
+ Method 1: using case
+ Method 2: using reduced POS  for output "out"
*/
module decode_2_to_4(HL, en, in, out);
    input [1:0] in;
    input en,  HL;
    output [3:0]out;

    reg[3:0]  wo_HL; //wo_HL = without HL

    always @(in, en, HL) 
    begin
        if( en == 0 ) wo_HL = 4'b0000;
        else
            begin
                case(in)
                    0 : wo_HL = 1;
                    1 : wo_HL = 2;
                    2 : wo_HL = 4;
                    3 : wo_HL = 8;
                endcase;
            end
    end
    assign out = (HL == 0) ? ~wo_HL : wo_HL;

endmodule;

module decode_2_to_4_simplified(HL, en, in, out);
    input [1:0] in;
    input en,  HL;
    output [3:0]out;

    reg[3:0]  wo_HL; //wo_HL = without HL

    always @(in, en, HL) 
    begin
        if( en == 0 ) wo_HL = 4'b0000;
        else
            begin
                wo_HL[0] = (~in[1]) & (~in[0]);
                wo_HL[1] =  (~in[1]) & (in[0]);
                wo_HL[2] =  (in[1]) & (~in[0]);
                wo_HL[3] =  (in[1]) & (in[0]);
            end
    end
    assign out = (HL == 0) ? ~wo_HL : wo_HL;

endmodule;