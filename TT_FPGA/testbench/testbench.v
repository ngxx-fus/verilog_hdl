// Verilog Test Fixture Template

  `timescale 1 ns / 1 ps

  module testbench;
          reg [3:0] VAR;
          wire A,B,Cin,Cout;

          FA uut (
                  .A(A),.B(B),.Cin(Cin),.Cout(Cout)
          );

   initial begin
      #10; // GSR is set for 100 ns
		for(VAR = 0;VAR<8;VAR = VAR+1) begin
			#10;
		end
		assign A = VAR[0];
		assign B = VAR[1];
		assign Cin = VAR[2];
	end
  endmodule
