module main(N, D, Sn, Sd, Mb, Ma, Ms, Mq, La, Lb, Lk, clk, Out);
    
    input logic[23:0] N, D;
    input logic[2:0]  Ma;
    input logic[1:0]  Mb;
    input logic       Sn, Sd, Ms, Mq, La, Lb, Lk, clk;
    output logic[26:0] Out;
    
    logic[26:0] IA, muxBOut, muxAOut, nExt, dExt, Rk, Ra, Rb;
    logic[26:0] truncOut;
    logic[53:0] multOut;
    
    //Set IA
    //0.833333 = 110101010101010101010101010
    //0.583333 = 100101010101010101010101010
    //0.908248 = 111010001000001011110101101
    //0.761802 = 110000110000010101101111010
    
    //Compute IA
    logic iaSelect;
    assign iaSelect = N[23] & N[22];
    logic[26:0] muxIA1Out, muxIA2Out;
    mux21 muxIA1(27'b110101010101010101010101010, 27'b100101010101010101010101010, muxIA1Out, iaSelect);
    mux21 muxIA2(27'b111010001000001011110101101, 27'b110000110000010101101111010, muxIA2Out, iaSelect);
    mux21 muxIA (muxIA1Out, muxIA2Out, IA, Ms);
    
    //Extend N and] D
    assign nExt = {3'b000, N};
    assign dExt = {3'b000, D};
    
    //Select from Mux B (3:1)
    //IA, nExt, Rk
    mux31 muxB(IA, nExt, Rk, muxBOut, Mb);
    //Select from Mux A
    //nExt, dExt, Ra, Rb, Rk, IA
    mux81 muxA(nExt, dExt, Ra, Rb, Rk, IA, 27'b0, 27'b0, muxAOut, Ma);
    
    //Put into multiplier
    multiplier mult(multOut, muxBOut, muxAOut);
    
    //Truncate
    truncate trunc(truncOut, multOut);
    
    //Push to Ra
    dff RA(truncOut, Ra, clk, La);
    
    //Push to Rb
    dff RB(truncOut, Rb, clk, Lb);
    
    //Set up subtract value
    logic[26:0] subValue;
    mux21 subMux(27'd2, 27'd3, subValue, Ms);
    
    //Subtract truncOut from subValue
    logic Cout;
    logic[26:0] subOut;
    subtract26 sub(subValue, truncOut, Cout, subOut);
    
    //Divide subOut by 2
    logic[26:0] divOut;
    div2 div(subOut, divOut);
    
    //Select whether or not we want the divide value
    logic[26:0] selectOut;
    mux21 muxDiv(subOut, divOut, selectOut, Ms);
    
    //Select whether or not we want modified value or not
    logic[26:0] modOut;
    mux21 muxMod(selectOut, truncOut, modOut ,Mq);
    
    //Push to Rk
    dff RK(modOut, Rk, clk, Lk);
    
    assign Out = truncOut[26:3];
    
endmodule