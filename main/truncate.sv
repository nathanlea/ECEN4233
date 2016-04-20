module truncate(Q, D);

   input logic[53:0] D;
   output logic [26:0] Q;

   assign Q = D[52:26];

endmodule // truncate
