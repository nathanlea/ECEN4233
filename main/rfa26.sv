module rfa53(input logic [26:0] A, B, Cin, output logic [26:0] S, g, p);

    logic [26:0] K;    
    
    subtract subINT[26:0](B[26:0], K[26:0]);
    
    rfa rfa510[26:0](A[26:0], K[26:0], Cin[26:0], S[26:0], g[26:0], p[26:0]);
    
    endmodule