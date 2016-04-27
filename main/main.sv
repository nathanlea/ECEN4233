module main(N, D, Sn, Sd, Mb, Ma, Ms, Mq, La, Lb, Lk, Lf, clk, Out, signOut, errorOut);
    
    input logic[23:0] N, D;
    input logic[2:0]  Ma, Mb;
    input logic       Sn, Sd, Ms, Mq, La, Lb, Lk, Lf, clk;
    output logic[23:0] Out;
	output logic signOut, errorOut;
    
    logic[26:0] IA, muxBOut, muxAOut, nExt, dExt, Rk, Ra, Rb, Rf, rnd_1, rnd_2;
    logic [23:0] r_Out;
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
    mux21 muxIA1(27'b011010101010101010101010101, 27'b010010101010101010101010101, muxIA1Out, iaSelect);
    mux21 muxIA2(27'b011101000100000101111010110, 27'b011000011000001010110111101, muxIA2Out, iaSelect);
    mux21 muxIA (muxIA1Out, muxIA2Out, IA, Ms);
    
    //Extend N and] D
    assign nExt = {N, 3'b000};
    assign dExt = {D, 3'b000};
    
    //Select from Mux B (5:1)
    //IA, nExt, Rk, 1, X
    mux51 muxB(IA, nExt, Rk, 27'b100000000000000000000000000, 27'b0, muxBOut, Mb);
    //Select from Mux A
    //nExt, dExt, Ra, Rb, Rk, IA, Rf, X
    mux81 muxA(nExt, dExt, Ra, Rb, Rk, IA, Rf, 27'b0, muxAOut, Ma);
    
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
    mux21 subMux(27'b000000000000000000000000000, 27'b100000000000000000000000000, subValue, Ms);
    
    //Subtract truncOut from subValue
    logic Cout;
    logic[26:0] subOut;
    subtract26 sub(subValue, truncOut, Cout, subOut);
    
    //Divide subOut by 2
    logic[26:0] divOut;
    div2 div(subOut, divOut, Cout);
    
    //Select whether or not we want the divide value
    logic[26:0] selectOut;
    mux21 muxDiv(subOut, divOut, selectOut, Ms);
    
    //Select whether or not we want modified value or not
    logic[26:0] modOut;
    mux21 muxMod(selectOut, truncOut, modOut ,Mq);
    
    //Push to Rk
    dff RK(modOut, Rk, clk, Lk);
	
	assign rnd_1 = truncOut + 27'b000000000000000000000000001;
	
	assign r_Out = ( truncOut[0] & truncOut[1] & truncOut[2] ) ? rnd_1[26:3] : truncOut[26:3];
    
    assign rnd_2 = rnd_1 + 27'b000000000000000000000000001;
	
	assign Out = ( rnd_1[0] & rnd_1[1] & rnd_1[2] ) ? rnd_2[26:3] : r_Out;
	
	assign errorOut = Ms & Sn;
	
	assign signOut = Ms ? 1'b0 : Sn ^ Sd;
	
	//Push Rf, only for getting the inverse of the final
	dff RF(rnd_1, Rf, clk, Lf);
    
    //assign Out = truncOut[26:3];
    
endmodule