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
