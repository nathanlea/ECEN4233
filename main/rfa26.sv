module rfa26(input logic [27:0] A, B, Cin, output logic [27:0] S, g, p);

    logic [27:0] K;    
    
    subtract subINT[27:0](B[27:0], K[27:0]);
    
    rfa rfa510[27:0](A[27:0], K[27:0], Cin[27:0], S[27:0], g[27:0], p[27:0]);
    
    endmodule