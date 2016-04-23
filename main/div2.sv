module div2(D, Q, C);

   input logic[26:0] D;
   input logic C;
   output logic[26:0] Q;

   assign Q = {C, D[26:1]};

endmodule // div2
