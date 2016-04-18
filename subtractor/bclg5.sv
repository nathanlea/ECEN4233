module bclg5 (input logic[4:0] g, p, input logic Cin, output logic [3:0] Cout, output logic gGroup, pGroup);

    assign Cout[0] = g[0] | p[0] & Cin;
    assign Cout[1] = g[1] | ( p[1] & g[0] ) | ( p[1] & p[0] & Cin );
    assign Cout[2] = g[2] | ( p[2] & g[1] ) | ( p[2] & p[1] & g[0] ) | ( p[2] & p[1] & p[0] & Cin );
    assign Cout[3] = g[3] | ( p[3] & g[2] ) | ( p[3] & p[2] & g[1] ) | ( p[3] & p[2] & p[1] & g[0]) | ( p[3] & p[2] & p[1] & p[0] & Cin );
    
    assign gGroup  = g[4] | ( p[4] & g[3] ) | ( p[4] & p[3] & g[2] ) | ( p[4] & p[3] & p[2] & g[1]) | ( p[4] & p[3] & p[2] & p[1] & g[0] );
    assign pGroup =  p[4] & p[3] & p[2] & p[1] & p[0];

endmodule