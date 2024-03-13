/*
Module name: Demux 1 to 4
Author: Nguyen Thanh Phu
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
                    0 : wo_HL = (in==1)?(1):(0);
                    1 : wo_HL = (in==1)?(2):(0);
                    2 : wo_HL = (in==1)?(4):(0);
                    3 : wo_HL = (in==1)?(8):(0);
                endcase
            end
    end
    assign out = (HL == 0) ? ~wo_HL : wo_HL;
endmodule;






















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
endmodule;
