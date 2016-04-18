module bclg3 (input logic[2:0] g, p, input logic Cin, output logic [1:0] Cout, output logic gGroup, pGroup);

    assign Cout[0] = g[0] | ( p[0] & Cin );
    assign Cout[1] = g[1] | ( p[1] & g[0] ) | ( p[1] & p[0] & Cin );
    
    assign gGroup  = g[2] | ( p[2] & g[1] ) | ( p[2] & p[1] & g[0] );
    assign pGroup  = p[2] & p[1] & p[0];

endmodule