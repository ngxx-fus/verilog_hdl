module half_adder(input A, input B, output S, output C);
    
    wire A,B; //for default
    reg S,C;//for "always"

    always @(A, B)
        begin
            #5
            S = A^B; //#2 for delay 2 time unit
            C = A&B;// do not use assign :v
        end

endmodule