module dff(D, Q, clk, load);

   input logic[26:0] D;
   input logic clk, load;
   output logic [26:0] Q;
   
   logic mod_clk;
   
   assign mod_clk = clk & load;

   always @(posedge mod_clk) begin
      Q <= D;
   end

endmodule
