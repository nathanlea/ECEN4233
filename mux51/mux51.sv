module mux51(A, B, C, D, E, Q, S);

   input logic[26:0] A, B, C, D, E;
   input logic [2:0] S;
   output logic [26:0] Q;

   logic [26:0]        W, X, Y;

   mux21 first(A, B, W, S[0]);
   mux21 second(C, D, X, S[0]);
   mux21 third(W, X, Y, S[1]);
<<<<<<< HEAD
   mux21 fourth(Y, E, Q, S[2]);
=======
   mux21 fourth(E, Y, Q, S[2]);
>>>>>>> e337c3dcc28ecb0dfd271251269d4eee925e96a3

endmodule // mux51
