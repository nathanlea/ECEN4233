module subtract(input logic B, output logic Bout);

    assign Bout = B ^ 1'b1;
  
endmodule