module subtract26(input logic [26:0] A, B, output logic Cout, output logic [26:0] S);

    logic [27:0] g, p, c;
    logic [9:0] gGroupL1, pGroupL1;
    logic gGroupL2, pGroupL2;
	logic gGroupL3, pGroupL3;
	logic [27:0] SS, AA, BB;
    
    assign c[0] = 1'b1;
	assign AA = {1'b1, A[26:0]};
	assign BB = {1'b0, B[26:0]};
	
    
    rfa26 largeRFA(AA, BB, c, SS, g, p);
	
	assign S = {SS[26:0]};
    
    //Level 1
    // module bclg5 (input logic[4:0] g, p, input logic Cin, output logic [3:0] Cout, output logic gGroup, pGoup);
    bclg5 bclg5L1N1( g[4:0],   p[4:0],   c[0],   c[4:1],   gGroupL1[0], pGroupL1[0] );
    bclg5 bclg5L1N2( g[9:5],   p[9:5],   c[5],  c[9:6],   gGroupL1[1], pGroupL1[1] );
    bclg5 bclg5L1N3( g[14:10], p[14:10], c[10], c[14:11], gGroupL1[2], pGroupL1[2] );
    bclg5 bclg5L1N4( g[19:15], p[19:15], c[15], c[19:16], gGroupL1[3], pGroupL1[3] );
    bclg5 bclg5L1N5( g[24:20], p[24:20], c[20], c[24:21], gGroupL1[4], pGroupL1[4] );
	bclg3 bclg3L1N1( g[27:25], p[27:25], c[25], c[27:26], gGroupL1[5], pGroupL1[5] );
    
    //Level 2
    // module bclg5 (input logic[4:0] g, p, input logic Cin, output logic [3:0] Cout, output logic gGroup, pGoup);
    bclg5 bclg5L2N1( gGroupL1[4:0], pGroupL1[4:0], c[0], { c[20], c[15], c[10], c[5]  }, gGroupL2, pGroupL2 );
    
    //Level 3
    // module bclg3 (input logic[2:0] g, p, input logic Cin, output logic [1:0] Cout, output logic gGroup, pGoup);
    bclg2 bclg2L2N1( {gGroupL1[5], gGroupL2}, {pGroupL1[5], pGroupL2}, c[0], c[25], gGroupL3, pGroupL3 );
    
    //assign Cout = gGroupL3 | pGroupL3 & c[0];
	assign Cout = SS[27];

endmodule