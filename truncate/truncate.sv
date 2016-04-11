module truncate(Q, D);

   input logic[53:0] D;
   output logic [26:0] Q;

   assign Q = D[53:27];

endmodule; // truncate
