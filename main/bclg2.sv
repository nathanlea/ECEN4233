module bclg2 (input logic[1:0] g, p, input logic Cin, output logic Cout, output logic gGroup, pGroup);

    assign Cout = g[0] | ( p[0] & Cin );
    
    assign gGroup  = g[1] | ( p[1] & g[0] );
    assign pGroup  = p[1] & p[0];

endmodule