module CNT4b(
    clk,//clock
    rst,//reset
    SS,//Stop-Start 0-1
    MODE, //Down-Up 0-1
    MIN,//inital
    MAX,//final
    OUT//output
);
    input clk, rst, SS, MODE;
    input [3:0] MIN, MAX;
    output reg [3:0] OUT;

    always @(posedge clk, rst) 
    begin
            if( rst == 1) 
                if(MODE == 1)
                    OUT = MIN;
                else 
                    OUT = MAX;
            else
                    if(SS == 1)
                        if(MODE == 1)
                            if( OUT == MAX ) 
                                OUT = MIN;
                            else 
                                OUT = OUT + 1;
                        else
                            if(OUT == MIN) 
                                OUT = MAX;
                            else 
                                OUT = OUT - 1;
                    else
                        OUT = OUT;
    end

endmodule

//rut gon xiu
module updown_CNT4b_method1(
    clk,//clock
    rst,//reset
    SS,//Stop-Start 0-1
    MODE, //Down-Up 0-1
    MIN,//inital
    MAX,//final
    OUT//output
);
    input clk, rst, SS, MODE;
    input [3:0] MIN, MAX;
    output reg [3:0] OUT;

    always @(posedge clk, rst) 
    begin
            if( rst == 1) 
                OUT = (MODE==1)?(MIN):(MAX);
            else
                        if(MODE == 1)
                            if( OUT == MAX ) 
                                OUT = MIN;
                            else 
                                OUT = OUT + SS;
                        else
                            if(OUT == MIN) 
                                OUT = MAX;
                            else 
                                OUT = OUT - SS;
    end

endmodule


//rut mon :))
module updown_CNT4b_method2(
    clk,//clock
    rst,//reset
    SS,//Stop-Start 0-1
    MODE, //Down-Up 0-1
    MIN,//inital
    MAX,//final
    OUT//output
);
    input clk, rst, SS, MODE;
    input [3:0] MIN, MAX;
    output reg [3:0] OUT;

    always @(posedge clk, rst) 
            if( rst == 1) 
                if(MODE == 1)
                    OUT = MIN;
                else 
                    OUT = MAX;
            else
                OUT = (MODE==1)?(  (OUT==MAX)?(MIN):(OUT+SS) ):
                                (  (OUT==MIN)?(MAX):(OUT-SS) );


endmodule