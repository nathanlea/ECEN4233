module mux31(A, B, C, Q, S);

   input logic[26:0] A, B, C;
   input logic [1:0] S;
   output logic [26:0] Q;

   logic [26:0]        W;

   mux21 first(A, B, W, S[0]);
<<<<<<< HEAD
   mux21 second(W, C, Q, S[1]);
=======
   mux21 second(C, W, Q, S[1]);
>>>>>>> e337c3dcc28ecb0dfd271251269d4eee925e96a3

endmodule // mux31
