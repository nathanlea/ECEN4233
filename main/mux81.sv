module mux81(A, B, C, D, E, F, G, H, Q, S);

   input logic[26:0] A, B, C, D, E, F, G, H;
   input logic [2:0] S;
   output logic [26:0] Q;

   logic [26:0]        W, X, Y, Z, M, N;

   mux21 first(A, B, W, S[0]);
   mux21 second(C, D, X, S[0]);
   mux21 third(E, F, Y, S[0]);
   mux21 fourth(G, H, Z, S[0]);
   mux21 fifth(W, X, M, S[1]);
   mux21 sixth(Y, Z, N, S[1]);
   mux21 seventh(M, N, Q, S[2]);

endmodule // mux51
