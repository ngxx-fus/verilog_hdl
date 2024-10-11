<<<<<<< HEAD
`timescale 1ns / 1ps
module UPDOWN_COUNTER(
	input CLK, 
    input RST, // reset-High
	input P_C, // 1: pause 0: cont
	input U_D, // 1: up    0: down
	output reg [4:0] Q
);
    initial begin
        Q <= 0;
    end

	always @(posedge CLK)begin
		if( RST == 1 )begin
			Q <= 0;
        end else begin
            if( P_C == 0 )begin
                if(U_D == 1)begin
                    //UP COUNT
                    if(Q == 19) 
                        Q <= 0;
                    else
                        Q <= Q + 1;
                end else begin
                    //DOWN COUNT
                    if(Q == 0) 
                        Q <= 19;
                    else
                        Q <= Q - 1;
                end
            end else begin
                Q <= Q;
            end
        end
	end
=======
`timescale 1ns / 1ps
module UPDOWN_COUNTER(
	input CLK, 
    input RST, // reset-High
	input P_C, // 1: pause 0: cont
	input U_D, // 1: up    0: down
	output reg [4:0] Q
);
    initial begin
        Q <= 0;
    end

	always @(posedge CLK)begin
		if( RST == 1 )begin
			Q <= 0;
        end else begin
            if( P_C == 0 )begin
                if(U_D == 1)begin
                    //UP COUNT
                    if(Q == 19) 
                        Q <= 0;
                    else
                        Q <= Q + 1;
                end else begin
                    //DOWN COUNT
                    if(Q == 0) 
                        Q <= 19;
                    else
                        Q <= Q - 1;
                end
            end else begin
                Q <= Q;
            end
        end
	end
>>>>>>> 5d5427b5e3d7d0ff635a19a952f7d5c8c188b2e9
endmodule