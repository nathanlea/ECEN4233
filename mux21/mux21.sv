module mux21(A, B, Q, S);

   input logic[26:0] A, B;
   input logic S;
   output logic [26:0] Q;

   assign Q = S ? B : A;

endmodule // mux21

   
