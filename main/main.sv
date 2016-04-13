module main(N, D, Sn, Sd, Mb, Ma, Ms, La, Lb, Lk, clk, Out);
    
    input logic[23:0] N, D;
    input logic[2:0]  Ma;
    input logic[1:0]  Mb;
    input logic       Sn, Sd, Ms, La, Lb, Lk, clk;
    output logic[26:0] Out;
    
    logic[26:0] IA, muxBOut, muxAOut, nExt, dExt;
    logic[53:0] multOut;
    
    //Set IA
    assign IA = 27'b0;
    
    //Extend N and] D
    assign nExt = {3'b000, N};
    assign dExt = {3'b000, D};
    
    //Select from Mux B (3:1)
    //IA, nExt, Rk
    mux31 muxB(IA, nExt, 27'b0, muxBOut, Mb);
    //Select from Mux A
    //nExt, dExt, Ra, Rb, Rk, IA
    mux51 muxA(nExt, dExt, 27'b0, 27'b0, IA, muxAOut, Ma);
    
    //Put into multiplier
    multiplier mult(multOut, muxBOut, muxAOut);
    
    //Truncate
    truncate trunc(Out, multOut);
    
endmodule