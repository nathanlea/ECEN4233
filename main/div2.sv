module div2(D, Q);

   input logic[26:0] D;
   output logic[26:0] Q;

   assign Q = {1'b0, D[26:1]};

endmodule // div2
