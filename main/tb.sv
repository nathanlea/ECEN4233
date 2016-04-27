module tb ();
   
   logic[23:0]  N, D;
   logic[23:0]  Out;
   logic[2:0]   Ma, Mb;
   logic        Sn, Sd, Ms, Mq, La, Lb, Lk, Lf, clk, signOut, errorOut;
   integer i;
   
  // instantiate device under test
  main dut (N, D, Sn, Sd, Mb, Ma, Ms, Mq, La, Lb, Lk, Lf, clk, Out, signOut, errorOut); 

   initial
     begin
        $display ("Testing... ");
        
        #0 Lf = 1'b0;
        #0 Sn = 0;
        #0 Sd = 0;
        
        //Cycle 0
        #0  N = 24'b110000000000000000000000;
        #0  D = 24'b100000000000000000000000;
        #0  Mb = 3'd1;
        #0  Ma = 3'd5;
        #0  Ms = 1'b0;
        #0  Mq = 1'b0;
        #0  La = 1'b1;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 1;
        #10  La = 1'b0;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 0;
        #10
    
        //Cycle 1
        #0  N = 24'b110000000000000000000000;
        #0  D = 24'b100000000000000000000000;
        #0  Mb = 3'd0;
        #0  Ma = 3'd1;
        #0  Ms = 1'b0;
        #0  Mq = 1'b0;
        #0  La = 1'b0;
        #0  Lb = 1'b1;
        #0  Lk = 1'b1;
        #0  clk = 1;
        #10 La = 1'b0;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 0;
        #10
        
       #0 i = 0;
       while(i<5) begin
            #0  Mb = 3'd2;
            #0  Ma = 3'd2;
            
            #0  La = 1'b1;
            #0  clk = 1;
            
            #10 La = 1'b0;
            #0  Lb = 1'b0;
            #0  Lk = 1'b0;
            #0  clk = 0;
            
            #10        
            
            #0  Mb = 3'd2;
            #0  Ma = 3'd3;
            
            #0  Lb = 1'b1;
            #0  Lk = 1'b1;
            #0  clk = 1;
            
            #10 La = 1'b0;
            #0  Lb = 1'b0;
            #0  Lk = 1'b0;
            #0  clk = 0;
            
            #10 i = i+1;
        end
        
        //Final
        #0 N = 24'b110000000000000000000000;
        #0  D = 24'b100000000000000000000000;
        #0  Mb = 3'd2;
        #0  Ma = 3'd2;
        #0  Ms = 1'b0;
        #0  Mq = 1'b0;
        #0  La = 1'b0;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 1;
        #10 La = 1'b0;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 0;
        #10
        
        assert (Out == 24'b110000000000000000000000) else begin
            $error ("Crap");
            end
        
        //Cycle 0
        #0 N = 24'b110000000000000000000000;
        #0  D = 24'b110000000000000000000000;
        #0  Mb = 3'd1;
        #0  Ma = 3'd5;
        #0  Ms = 1'b0;
        #0  Mq = 1'b0;
        #0  La = 1'b1;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 1;
        #10 La = 1'b0;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 0;
        #10

        
        //Cycle 1
        #0 N = 24'b110000000000000000000000;
        #0  D = 24'b110000000000000000000000;
        #0  Mb = 3'd0;
        #0  Ma = 3'd1;
        #0  Ms = 1'b0;
        #0  Mq = 1'b0;
        #0  La = 1'b0;
        #0  Lb = 1'b1;
        #0  Lk = 1'b1;
        #0  clk = 1;
        #10 La = 1'b0;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 0;
        #10
        
        #0 i = 0;
       while(i<5) begin
            #0  Mb = 3'd2;
            #0  Ma = 3'd2;
            
            #0  La = 1'b1;
            #0  clk = 1;
            
            #10 La = 1'b0;
            #0  Lb = 1'b0;
            #0  Lk = 1'b0;
            #0  clk = 0;
            
            #10        
            
            #0  Mb = 3'd2;
            #0  Ma = 3'd3;
            
            #0  Lb = 1'b1;
            #0  Lk = 1'b1;
            #0  clk = 1;
            
            #10 La = 1'b0;
            #0  Lb = 1'b0;
            #0  Lk = 1'b0;
            #0  clk = 0;
            
            #10 i = i+1;
        end
        
        //Final
        #0 N = 24'b110000000000000000000000;
        #0  D = 24'b110000000000000000000000;
        #0  Mb = 3'd2;
        #0  Ma = 3'd2;
        #0  Ms = 1'b0;
        #0  Mq = 1'b0;
        #0  La = 1'b0;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 1;
        #10 La = 1'b0;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 0;
        #10
        
        assert (Out == 24'b100000000000000000000000) else begin
            $error ("Crap Again");
            end
            
        //Cycle 0
        #0  N = 24'b110000000000000000000000;
        #0  D = 24'b100110011001100110011010;
        #0  Mb = 3'd1;
        #0  Ma = 3'd5;
        #0  Ms = 1'b0;
        #0  Mq = 1'b0;
        #0  La = 1'b1;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 1;
        #10 La = 1'b0;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 0;
        #10

        
        //Cycle 1
        #0  Mb = 3'd0;
        #0  Ma = 3'd1;
        #0  Ms = 1'b0;
        #0  Mq = 1'b0;
        #0  La = 1'b0;
        #0  Lb = 1'b1;
        #0  Lk = 1'b1;
        #0  clk = 1;
        #10 La = 1'b0;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 0;
        #10
        
        #0 i = 0;
       while(i<5) begin
            #0  Mb = 3'd2;
            #0  Ma = 3'd2;
            
            #0  La = 1'b1;
            #0  clk = 1;
            
            #10 La = 1'b0;
            #0  Lb = 1'b0;
            #0  Lk = 1'b0;
            #0  clk = 0;
            
            #10        
            
            #0  Mb = 3'd2;
            #0  Ma = 3'd3;
            
            #0  Lb = 1'b1;
            #0  Lk = 1'b1;
            #0  clk = 1;
            
            #10 La = 1'b0;
            #0  Lb = 1'b0;
            #0  Lk = 1'b0;
            #0  clk = 0;
            
            #10 i = i+1;
        end
        
        //Final
        #0  Mb = 3'd2;
        #0  Ma = 3'd2;
        #0  Ms = 1'b0;
        #0  Mq = 1'b0;
        #0  La = 1'b0;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 1;
        #10 La = 1'b0;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 0;
        #10
        
        assert (Out == 24'b101000000000000000000000) else begin
            $error ("Error: 1.5/1.2 != 1.25");
            end
            
        //Cycle 0
        #0  N = 24'b110110011001100110011010;
        #0  D = 24'b111110011001100110011010;
        #0  Mb = 3'd1;
        #0  Ma = 3'd5;
        #0  Ms = 1'b0;
        #0  Mq = 1'b0;
        #0  La = 1'b1;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 1;
        #10 La = 1'b0;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 0;
        #10

        
        //Cycle 1
        #0  Mb = 3'd0;
        #0  Ma = 3'd1;
        #0  Ms = 1'b0;
        #0  Mq = 1'b0;
        #0  La = 1'b0;
        #0  Lb = 1'b1;
        #0  Lk = 1'b1;
        #0  clk = 1;
        #10 La = 1'b0;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 0;
        #10
        
        #0 i = 0;
       while(i<5) begin
            #0  Mb = 3'd2;
            #0  Ma = 3'd2;
            
            #0  La = 1'b1;
            #0  clk = 1;
            
            #10 La = 1'b0;
            #0  Lb = 1'b0;
            #0  Lk = 1'b0;
            #0  clk = 0;
            
            #10        
            
            #0  Mb = 3'd2;
            #0  Ma = 3'd3;
            
            #0  Lb = 1'b1;
            #0  Lk = 1'b1;
            #0  clk = 1;
            
            #10 La = 1'b0;
            #0  Lb = 1'b0;
            #0  Lk = 1'b0;
            #0  clk = 0;
            
            #10 i = i+1;
        end
        
        //Final
        #0  Mb = 3'd2;
        #0  Ma = 3'd2;
        #0  Ms = 1'b0;
        #0  Mq = 1'b0;
        #0  La = 1'b0;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 1;
        #10 La = 1'b0;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 0;
        #10
        
        assert (Out == 24'b011011111001011011111001) else begin
            $error ("Error: 1.7/1.9 != .8718");
            end
            
        //Cycle 0
        #0  N = 24'b101111000010100011110110;
        #0  D = 24'b101010111000010100011111;
        #0  Mb = 3'd1;
        #0  Ma = 3'd5;
        #0  Ms = 1'b0;
        #0  Mq = 1'b0;
        #0  La = 1'b1;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 1;
        #10 La = 1'b0;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 0;
        #10

        
        //Cycle 1
        #0  Mb = 3'd0;
        #0  Ma = 3'd1;
        #0  Ms = 1'b0;
        #0  Mq = 1'b0;
        #0  La = 1'b0;
        #0  Lb = 1'b1;
        #0  Lk = 1'b1;
        #0  clk = 1;
        #10 La = 1'b0;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 0;
        #10
        
        #0 i = 0;
       while(i<5) begin
            #0  Mb = 3'd2;
            #0  Ma = 3'd2;
            
            #0  La = 1'b1;
            #0  clk = 1;
            
            #10 La = 1'b0;
            #0  Lb = 1'b0;
            #0  Lk = 1'b0;
            #0  clk = 0;
            
            #10        
            
            #0  Mb = 3'd2;
            #0  Ma = 3'd3;
            
            #0  Lb = 1'b1;
            #0  Lk = 1'b1;
            #0  clk = 1;
            
            #10 La = 1'b0;
            #0  Lb = 1'b0;
            #0  Lk = 1'b0;
            #0  clk = 0;
            
            #10 i = i+1;
        end
        
        //Final
        #0  Mb = 3'd2;
        #0  Ma = 3'd2;
        #0  Ms = 1'b0;
        #0  Mq = 1'b0;
        #0  La = 1'b0;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 1;
        #10 La = 1'b0;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 0;
        #10
        
        assert (Out == 24'b100011000110101011111100) else begin
            $error ("Error: 1.47/1.34 != 1.097");
            end    
        
        //Cycle 0
        #0  N = 24'b100000000000000000000000;
        #0  D = 24'b110001010111001011100100;
        #0  Mb = 3'd1;
        #0  Ma = 3'd5;
        #0  Ms = 1'b0;
        #0  Mq = 1'b0;
        #0  La = 1'b1;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 1;
        #10 La = 1'b0;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 0;
        #10

        
        //Cycle 1
        #0  Mb = 3'd0;
        #0  Ma = 3'd1;
        #0  Ms = 1'b0;
        #0  Mq = 1'b0;
        #0  La = 1'b0;
        #0  Lb = 1'b1;
        #0  Lk = 1'b1;
        #0  clk = 1;
        #10 La = 1'b0;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 0;
        #10
        
        #0 i = 0;
       while(i<5) begin
            #0  Mb = 3'd2;
            #0  Ma = 3'd2;
            
            #0  La = 1'b1;
            #0  clk = 1;
            
            #10 La = 1'b0;
            #0  Lb = 1'b0;
            #0  Lk = 1'b0;
            #0  clk = 0;
            
            #10        
            
            #0  Mb = 3'd2;
            #0  Ma = 3'd3;
            
            #0  Lb = 1'b1;
            #0  Lk = 1'b1;
            #0  clk = 1;
            
            #10 La = 1'b0;
            #0  Lb = 1'b0;
            #0  Lk = 1'b0;
            #0  clk = 0;
            
            #10 i = i+1;
        end
        
        //Final
        #0  Mb = 3'd2;
        #0  Ma = 3'd2;
        #0  Ms = 1'b0;
        #0  Mq = 1'b0;
        #0  La = 1'b0;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 1;
        #10 La = 1'b0;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 0;
        #10
        
        assert (Out == 24'b010100101111101001111101) else begin
            $error ("Error: 1/1.5425686975 != 0.648269");
            end
            
        //Cycle 0
        #0  N = 24'b100011100011100011100100;
        #0  D = 24'b111111111111111111111111;
        #0  Mb = 3'd1;
        #0  Ma = 3'd5;
        #0  Ms = 1'b0;
        #0  Mq = 1'b0;
        #0  La = 1'b1;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 1;
        #10 La = 1'b0;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 0;
        #10

        
        //Cycle 1
        #0  Mb = 3'd0;
        #0  Ma = 3'd1;
        #0  Ms = 1'b0;
        #0  Mq = 1'b0;
        #0  La = 1'b0;
        #0  Lb = 1'b1;
        #0  Lk = 1'b1;
        #0  clk = 1;
        #10 La = 1'b0;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 0;
        #10
        
        #0 i = 0;
       while(i<5) begin
            #0  Mb = 3'd2;
            #0  Ma = 3'd2;
            
            #0  La = 1'b1;
            #0  clk = 1;
            
            #10 La = 1'b0;
            #0  Lb = 1'b0;
            #0  Lk = 1'b0;
            #0  clk = 0;
            
            #10        
            
            #0  Mb = 3'd2;
            #0  Ma = 3'd3;
            
            #0  Lb = 1'b1;
            #0  Lk = 1'b1;
            #0  clk = 1;
            
            #10 La = 1'b0;
            #0  Lb = 1'b0;
            #0  Lk = 1'b0;
            #0  clk = 0;
            
            #10 i = i+1;
        end
        
        //Final
        #0  Mb = 3'd2;
        #0  Ma = 3'd2;
        #0  Ms = 1'b0;
        #0  Mq = 1'b0;
        #0  La = 1'b0;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 1;
        #10 La = 1'b0;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 0;
        #10
        
        assert (Out == 24'b010001110001110001110010) else begin
            $error ("Error: 1.111111111/1.9999999 != 0.5555555");
            end
            
        //Cycle 0
        #0  N = 24'b101000000000000000000000;
        #0  D = 24'b111000000000000000000000;
        #0  Mb = 3'd1;
        #0  Ma = 3'd5;
        #0  Ms = 1'b0;
        #0  Mq = 1'b0;
        #0  La = 1'b1;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 1;
        #10 La = 1'b0;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 0;
        #10

        
        //Cycle 1
        #0  Mb = 3'd0;
        #0  Ma = 3'd1;
        #0  Ms = 1'b0;
        #0  Mq = 1'b0;
        #0  La = 1'b0;
        #0  Lb = 1'b1;
        #0  Lk = 1'b1;
        #0  clk = 1;
        #10 La = 1'b0;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 0;
        #10
        
        #0 i = 0;
       while(i<5) begin
            #0  Mb = 3'd2;
            #0  Ma = 3'd2;
            
            #0  La = 1'b1;
            #0  clk = 1;
            
            #10 La = 1'b0;
            #0  Lb = 1'b0;
            #0  Lk = 1'b0;
            #0  clk = 0;
            
            #10        
            
            #0  Mb = 3'd2;
            #0  Ma = 3'd3;
            
            #0  Lb = 1'b1;
            #0  Lk = 1'b1;
            #0  clk = 1;
            
            #10 La = 1'b0;
            #0  Lb = 1'b0;
            #0  Lk = 1'b0;
            #0  clk = 0;
            
            #10 i = i+1;
        end
        
        //Final
        #0  Mb = 3'd2;
        #0  Ma = 3'd2;
        #0  Ms = 1'b0;
        #0  Mq = 1'b0;
        #0  La = 1'b0;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 1;
        #10 La = 1'b0;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 0;
        #10
        
        assert (Out == 24'b010110110110110110110111) else begin
            $error ("Error: 1.25/1.75 != 0.7143");
            end
            
            
        //Cycle 0
        #0  N = 24'b110001110001110001110010;
        #0  D = 24'b101110001110001110001110;
        #0  Mb = 3'd1;
        #0  Ma = 3'd5;
        #0  Ms = 1'b0;
        #0  Mq = 1'b0;
        #0  La = 1'b1;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 1;
        #10 La = 1'b0;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 0;
        #10

        
        //Cycle 1
        #0  Mb = 3'd0;
        #0  Ma = 3'd1;
        #0  Ms = 1'b0;
        #0  Mq = 1'b0;
        #0  La = 1'b0;
        #0  Lb = 1'b1;
        #0  Lk = 1'b1;
        #0  clk = 1;
        #10 La = 1'b0;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 0;
        #10
        
        #0 i = 0;
       while(i<5) begin
            #0  Mb = 3'd2;
            #0  Ma = 3'd2;
            
            #0  La = 1'b1;
            #0  clk = 1;
            
            #10 La = 1'b0;
            #0  Lb = 1'b0;
            #0  Lk = 1'b0;
            #0  clk = 0;
            
            #10        
            
            #0  Mb = 3'd2;
            #0  Ma = 3'd3;
            
            #0  Lb = 1'b1;
            #0  Lk = 1'b1;
            #0  clk = 1;
            
            #10 La = 1'b0;
            #0  Lb = 1'b0;
            #0  Lk = 1'b0;
            #0  clk = 0;
            
            #10 i = i+1;
        end
        
        //Final
        #0  Mb = 3'd2;
        #0  Ma = 3'd2;
        #0  Ms = 1'b0;
        #0  Mq = 1'b0;
        #0  La = 1'b0;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 1;
        #10 La = 1'b0;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 0;
        #10
        
        assert (Out == 24'b100010011101100010011110) else begin
            $error ("Error: 1.555555555/1.44444444 != 1.07692");
            end
            
        //Cycle 0
        #0  N = 24'b111001001000100011011110;
        #0  D = 24'b100111110010110101000101;
        #0  Mb = 3'd1;
        #0  Ma = 3'd5;
        #0  Ms = 1'b0;
        #0  Mq = 1'b0;
        #0  La = 1'b1;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 1;
        #10 La = 1'b0;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 0;
        #10

        
        //Cycle 1
        #0  Mb = 3'd0;
        #0  Ma = 3'd1;
        #0  Ms = 1'b0;
        #0  Mq = 1'b0;
        #0  La = 1'b0;
        #0  Lb = 1'b1;
        #0  Lk = 1'b1;
        #0  clk = 1;
        #10 La = 1'b0;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 0;
        #10
        
        #0 i = 0;
       while(i<5) begin
            #0  Mb = 3'd2;
            #0  Ma = 3'd2;
            
            #0  La = 1'b1;
            #0  clk = 1;
            
            #10 La = 1'b0;
            #0  Lb = 1'b0;
            #0  Lk = 1'b0;
            #0  clk = 0;
            
            #10        
            
            #0  Mb = 3'd2;
            #0  Ma = 3'd3;
            
            #0  Lb = 1'b1;
            #0  Lk = 1'b1;
            #0  clk = 1;
            
            #10 La = 1'b0;
            #0  Lb = 1'b0;
            #0  Lk = 1'b0;
            #0  clk = 0;
            
            #10 i = i+1;
        end
        
        //Final
        #0  Mb = 3'd2;
        #0  Ma = 3'd2;
        #0  Ms = 1'b0;
        #0  Mq = 1'b0;
        #0  La = 1'b0;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 1;
        #10 La = 1'b0;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 0;
        #10
        
        assert (Out == 24'b101101111100010111101111) else begin
            $error ("Error: 1.78542684/1.243569 != 1.4357");
            end    
            
        $display("End of Division Testing!");
        $display("Inverse Testing");
        
        //Inverse
        //Cycle 0
        #0 Lf = 1'b1;
        #0 clk = 1;
        #10 Lf = 1'b0;
        #0 clk = 0;
        #10
        
        #0  Mb = 3'd3;
        #0  Ma = 3'd5;
        #0  Ms = 1'b0;
        #0  Mq = 1'b0;
        #0  La = 1'b1;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 1;
        #10 La = 1'b0;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 0;
        #10

        //Cycle 1
        #0  Mb = 3'd0;
        #0  Ma = 3'd6;
        #0  Ms = 1'b0;
        #0  Mq = 1'b0;
        #0  La = 1'b0;
        #0  Lb = 1'b1;
        #0  Lk = 1'b1;
        #0  clk = 1;
        #10 La = 1'b0;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 0;
        #10
        
        #0 i = 0;
       while(i<5) begin
            #0  Mb = 3'd2;
            #0  Ma = 3'd2;
            
            #0  La = 1'b1;
            #0  clk = 1;
            
            #10 La = 1'b0;
            #0  Lb = 1'b0;
            #0  Lk = 1'b0;
            #0  clk = 0;
            
            #10        
            
            #0  Mb = 3'd2;
            #0  Ma = 3'd3;
            
            #0  Lb = 1'b1;
            #0  Lk = 1'b1;
            #0  clk = 1;
            
            #10 La = 1'b0;
            #0  Lb = 1'b0;
            #0  Lk = 1'b0;
            #0  clk = 0;
            
            #10 i = i+1;
        end
        
        //Final
        #0  Mb = 3'd2;
        #0  Ma = 3'd2;
        #0  Ms = 1'b0;
        #0  Mq = 1'b0;
        #0  La = 1'b0;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 1;
        #10 La = 1'b0;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 0;
        #10
        
        assert (Out == 24'b010110010010011101000011) else begin
            $error ("Error 1/1.4357 != 0.6965107917785645");
            end
        
        $display("End of Inverse Testing");
        $display("Sqrt Testing");
        
        #0 D = 24'b0;
        
        //Cycle 0
        #0  N = 24'b110000000000000000000000;
        #0  Mb = 3'd0;
        #0  Ma = 3'd5;
        #0  Ms = 1'b1;
        #0  Mq = 1'b1;
        #0  La = 1'b0;
        #0  Lb = 1'b0;
        #0  Lk = 1'b1;
        #0  clk = 1;
        #10 La = 1'b0;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 0;
        #10

        //Cycle 1
        #0  Mb = 3'd0;
        #0  Ma = 3'd0;
        #0  Ms = 1'b1;
        #0  Mq = 1'b1;
        #0  La = 1'b1;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 1;
        #10 La = 1'b0;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 0;
        #10
        
        //Cycle 2
        #0  Mb = 3'd2;
        #0  Ma = 3'd0;
        #0  Ms = 1'b1;
        #0  Mq = 1'b0;
        #0  La = 1'b0;
        #0  Lb = 1'b1;
        #0  Lk = 1'b1;
        #0  clk = 1;
        #10 La = 1'b0;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 0;
        #10
        
        //Set initial case for the while loop
        #0 i = 0;
        #0  Mb = 3'd2;
        #0  Ms = 1'b1;
        
        while(i<4) begin
            #0  Ma = 3'd2;
            #0  Mq = 1'b1;
            
            #0  La = 1'b1;
            #0  clk = 1;
            
            #10 La = 1'b0;
            #0  Lb = 1'b0;
            #0  Lk = 1'b0;
            #0  clk = 0;
            
            #10
            
            #0  Ma = 3'd4;
            #0  Mq = 1'b1;
            
            #0  Lk = 1'b1;
            #0  clk = 1;
            
            #10 La = 1'b0;
            #0  Lb = 1'b0;
            #0  Lk = 1'b0;
            #0  clk = 0;
            
            #10
            
            #0  Ma = 3'd3;
            #0  Mq = 1'b0;
            
            #0  Lb = 1'b1;
            #0  Lk = 1'b1;
            #0  clk = 1;
            
            #10 La = 1'b0;
            #0  Lb = 1'b0;
            #0  Lk = 1'b0;
            #0  clk = 0;
            
            #10 i = i+1;
        end
        
        //Final
        #0  Mb = 3'd2;
        #0  Ma = 3'd2;
        #0  Ms = 1'b1;
        #0  Mq = 1'b1;
        #0  La = 1'b0;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 1;
        #10 La = 1'b0;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 0;
        #10
        
        assert (Out == 24'b100111001100010001110000) else begin
            $error ("Crap x4");
            end
            
                //Cycle 0
        #0 N = 24'b101000000000000000000000;
        #0  Mb = 3'd0;
        #0  Ma = 3'd5;
        #0  Ms = 1'b1;
        #0  Mq = 1'b1;
        #0  La = 1'b0;
        #0  Lb = 1'b0;
        #0  Lk = 1'b1;
        #0  clk = 1;
        #10 La = 1'b0;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 0;
        #10

        //Cycle 1
        #0  Mb = 3'd0;
        #0  Ma = 3'd0;
        #0  Ms = 1'b1;
        #0  Mq = 1'b1;
        #0  La = 1'b1;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 1;
        #10 La = 1'b0;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 0;
        #10
        
        //Cycle 2
        #0  Mb = 3'd2;
        #0  Ma = 3'd0;
        #0  Ms = 1'b1;
        #0  Mq = 1'b0;
        #0  La = 1'b0;
        #0  Lb = 1'b1;
        #0  Lk = 1'b1;
        #0  clk = 1;
        #10 La = 1'b0;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 0;
        #10
        
        //Set initial case for the while loop
        #0 i = 0;
        #0  Mb = 3'd2;
        #0  Ms = 1'b1;
        
        while(i<4) begin
            #0  Ma = 3'd2;
            #0  Mq = 1'b1;
            
            #0  La = 1'b1;
            #0  clk = 1;
            
            #10 La = 1'b0;
            #0  Lb = 1'b0;
            #0  Lk = 1'b0;
            #0  clk = 0;
            
            #10
            
            #0  Ma = 3'd4;
            #0  Mq = 1'b1;
            
            #0  Lk = 1'b1;
            #0  clk = 1;
            
            #10 La = 1'b0;
            #0  Lb = 1'b0;
            #0  Lk = 1'b0;
            #0  clk = 0;
            
            #10
            
            #0  Ma = 3'd3;
            #0  Mq = 1'b0;
            
            #0  Lb = 1'b1;
            #0  Lk = 1'b1;
            #0  clk = 1;
            
            #10 La = 1'b0;
            #0  Lb = 1'b0;
            #0  Lk = 1'b0;
            #0  clk = 0;
            
            #10 i = i+1;
        end
        
        //Final
        #0  Mb = 3'd2;
        #0  Ma = 3'd2;
        #0  Ms = 1'b1;
        #0  Mq = 1'b1;
        #0  La = 1'b0;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 1;
        #10 La = 1'b0;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 0;
        #10
        
        assert (Out == 24'b100011110001101110111101) else begin
            $error ("Error SQRT 1.25 != 1.118034");
            end
            
        //Cycle 0
        #0 N = 24'b100011100101110110101010;
        #0  Mb = 3'd0;
        #0  Ma = 3'd5;
        #0  Ms = 1'b1;
        #0  Mq = 1'b1;
        #0  La = 1'b0;
        #0  Lb = 1'b0;
        #0  Lk = 1'b1;
        #0  clk = 1;
        #10 La = 1'b0;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 0;
        #10

        //Cycle 1
        #0  Mb = 3'd0;
        #0  Ma = 3'd0;
        #0  Ms = 1'b1;
        #0  Mq = 1'b1;
        #0  La = 1'b1;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 1;
        #10 La = 1'b0;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 0;
        #10
        
        //Cycle 2
        #0  Mb = 3'd2;
        #0  Ma = 3'd0;
        #0  Ms = 1'b1;
        #0  Mq = 1'b0;
        #0  La = 1'b0;
        #0  Lb = 1'b1;
        #0  Lk = 1'b1;
        #0  clk = 1;
        #10 La = 1'b0;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 0;
        #10
        
        //Set initial case for the while loop
        #0 i = 0;
        #0  Mb = 3'd2;
        #0  Ms = 1'b1;
        
        while(i<4) begin
            #0  Ma = 3'd2;
            #0  Mq = 1'b1;
            
            #0  La = 1'b1;
            #0  clk = 1;
            
            #10 La = 1'b0;
            #0  Lb = 1'b0;
            #0  Lk = 1'b0;
            #0  clk = 0;
            
            #10
            
            #0  Ma = 3'd4;
            #0  Mq = 1'b1;
            
            #0  Lk = 1'b1;
            #0  clk = 1;
            
            #10 La = 1'b0;
            #0  Lb = 1'b0;
            #0  Lk = 1'b0;
            #0  clk = 0;
            
            #10
            
            #0  Ma = 3'd3;
            #0  Mq = 1'b0;
            
            #0  Lb = 1'b1;
            #0  Lk = 1'b1;
            #0  clk = 1;
            
            #10 La = 1'b0;
            #0  Lb = 1'b0;
            #0  Lk = 1'b0;
            #0  clk = 0;
            
            #10 i = i+1;
        end
        
        //Final
        #0  Mb = 3'd2;
        #0  Ma = 3'd2;
        #0  Ms = 1'b1;
        #0  Mq = 1'b1;
        #0  La = 1'b0;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 1;
        #10 La = 1'b0;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 0;
        #10
        
        assert (Out == 24'b100001101111110111110010) else begin
            $error ("Error SQRT 1.1122334455 != 1.05462");
            end
            
                //Cycle 0
        #0 N = 24'b100111001001011000111001;
        #0  Mb = 3'd0;
        #0  Ma = 3'd5;
        #0  Ms = 1'b1;
        #0  Mq = 1'b1;
        #0  La = 1'b0;
        #0  Lb = 1'b0;
        #0  Lk = 1'b1;
        #0  clk = 1;
        #10 La = 1'b0;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 0;
        #10

        //Cycle 1
        #0  Mb = 3'd0;
        #0  Ma = 3'd0;
        #0  Ms = 1'b1;
        #0  Mq = 1'b1;
        #0  La = 1'b1;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 1;
        #10 La = 1'b0;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 0;
        #10
        
        //Cycle 2
        #0  Mb = 3'd2;
        #0  Ma = 3'd0;
        #0  Ms = 1'b1;
        #0  Mq = 1'b0;
        #0  La = 1'b0;
        #0  Lb = 1'b1;
        #0  Lk = 1'b1;
        #0  clk = 1;
        #10 La = 1'b0;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 0;
        #10
        
        //Set initial case for the while loop
        #0 i = 0;
        #0  Mb = 3'd2;
        #0  Ms = 1'b1;
        
        while(i<4) begin
            #0  Ma = 3'd2;
            #0  Mq = 1'b1;
            
            #0  La = 1'b1;
            #0  clk = 1;
            
            #10 La = 1'b0;
            #0  Lb = 1'b0;
            #0  Lk = 1'b0;
            #0  clk = 0;
            
            #10
            
            #0  Ma = 3'd4;
            #0  Mq = 1'b1;
            
            #0  Lk = 1'b1;
            #0  clk = 1;
            
            #10 La = 1'b0;
            #0  Lb = 1'b0;
            #0  Lk = 1'b0;
            #0  clk = 0;
            
            #10
            
            #0  Ma = 3'd3;
            #0  Mq = 1'b0;
            
            #0  Lb = 1'b1;
            #0  Lk = 1'b1;
            #0  clk = 1;
            
            #10 La = 1'b0;
            #0  Lb = 1'b0;
            #0  Lk = 1'b0;
            #0  clk = 0;
            
            #10 i = i+1;
        end
        
        //Final
        #0  Mb = 3'd2;
        #0  Ma = 3'd2;
        #0  Ms = 1'b1;
        #0  Mq = 1'b1;
        #0  La = 1'b0;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 1;
        #10 La = 1'b0;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 0;
        #10
        
        assert (Out == 24'b100011011001001011011110) else begin
            $error ("Error SQRT 1.22333444455555 != 1.1060444");
            end

        //Cycle 0
        #0 N = 24'b111101000101110100010111;
        #0  Mb = 3'd0;
        #0  Ma = 3'd5;
        #0  Ms = 1'b1;
        #0  Mq = 1'b1;
        #0  La = 1'b0;
        #0  Lb = 1'b0;
        #0  Lk = 1'b1;
        #0  clk = 1;
        #10 La = 1'b0;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 0;
        #10

        //Cycle 1
        #0  Mb = 3'd0;
        #0  Ma = 3'd0;
        #0  Ms = 1'b1;
        #0  Mq = 1'b1;
        #0  La = 1'b1;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 1;
        #10 La = 1'b0;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 0;
        #10
        
        //Cycle 2
        #0  Mb = 3'd2;
        #0  Ma = 3'd0;
        #0  Ms = 1'b1;
        #0  Mq = 1'b0;
        #0  La = 1'b0;
        #0  Lb = 1'b1;
        #0  Lk = 1'b1;
        #0  clk = 1;
        #10 La = 1'b0;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 0;
        #10
        
        //Set initial case for the while loop
        #0 i = 0;
        #0  Mb = 3'd2;
        #0  Ms = 1'b1;
        
        while(i<4) begin
            #0  Ma = 3'd2;
            #0  Mq = 1'b1;
            
            #0  La = 1'b1;
            #0  clk = 1;
            
            #10 La = 1'b0;
            #0  Lb = 1'b0;
            #0  Lk = 1'b0;
            #0  clk = 0;
            
            #10
            
            #0  Ma = 3'd4;
            #0  Mq = 1'b1;
            
            #0  Lk = 1'b1;
            #0  clk = 1;
            
            #10 La = 1'b0;
            #0  Lb = 1'b0;
            #0  Lk = 1'b0;
            #0  clk = 0;
            
            #10
            
            #0  Ma = 3'd3;
            #0  Mq = 1'b0;
            
            #0  Lb = 1'b1;
            #0  Lk = 1'b1;
            #0  clk = 1;
            
            #10 La = 1'b0;
            #0  Lb = 1'b0;
            #0  Lk = 1'b0;
            #0  clk = 0;
            
            #10 i = i+1;
        end
        
        //Final
        #0  Mb = 3'd2;
        #0  Ma = 3'd2;
        #0  Ms = 1'b1;
        #0  Mq = 1'b1;
        #0  La = 1'b0;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 1;
        #10 La = 1'b0;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 0;
        #10
        
        assert (Out == 24'b101100001101101101111111) else begin
            $error ("Error SQRT 1.9090909090 != 1.381698");
            end
            
        //Cycle 0
        #0 N = 24'b111000000000000000000000;
        #0  Mb = 3'd0;
        #0  Ma = 3'd5;
        #0  Ms = 1'b1;
        #0  Mq = 1'b1;
        #0  La = 1'b0;
        #0  Lb = 1'b0;
        #0  Lk = 1'b1;
        #0  clk = 1;
        #10 La = 1'b0;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 0;
        #10

        //Cycle 1
        #0  Mb = 3'd0;
        #0  Ma = 3'd0;
        #0  Ms = 1'b1;
        #0  Mq = 1'b1;
        #0  La = 1'b1;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 1;
        #10 La = 1'b0;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 0;
        #10
        
        //Cycle 2
        #0  Mb = 3'd2;
        #0  Ma = 3'd0;
        #0  Ms = 1'b1;
        #0  Mq = 1'b0;
        #0  La = 1'b0;
        #0  Lb = 1'b1;
        #0  Lk = 1'b1;
        #0  clk = 1;
        #10 La = 1'b0;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 0;
        #10
        
        //Set initial case for the while loop
        #0 i = 0;
        #0  Mb = 3'd2;
        #0  Ms = 1'b1;
        
        while(i<4) begin
            #0  Ma = 3'd2;
            #0  Mq = 1'b1;
            
            #0  La = 1'b1;
            #0  clk = 1;
            
            #10 La = 1'b0;
            #0  Lb = 1'b0;
            #0  Lk = 1'b0;
            #0  clk = 0;
            
            #10
            
            #0  Ma = 3'd4;
            #0  Mq = 1'b1;
            
            #0  Lk = 1'b1;
            #0  clk = 1;
            
            #10 La = 1'b0;
            #0  Lb = 1'b0;
            #0  Lk = 1'b0;
            #0  clk = 0;
            
            #10
            
            #0  Ma = 3'd3;
            #0  Mq = 1'b0;
            
            #0  Lb = 1'b1;
            #0  Lk = 1'b1;
            #0  clk = 1;
            
            #10 La = 1'b0;
            #0  Lb = 1'b0;
            #0  Lk = 1'b0;
            #0  clk = 0;
            
            #10 i = i+1;
        end
        
        //Final
        #0  Mb = 3'd2;
        #0  Ma = 3'd2;
        #0  Ms = 1'b1;
        #0  Mq = 1'b1;
        #0  La = 1'b0;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 1;
        #10 La = 1'b0;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 0;
        #10
        
        assert (Out == 24'b101010010101001111111101) else begin
            $error ("Error SQRT 1.75 != 1.32287");
            end
            
                //Cycle 0
        #0 N = 24'b111100001111101010101101;
        #0  Mb = 3'd0;
        #0  Ma = 3'd5;
        #0  Ms = 1'b1;
        #0  Mq = 1'b1;
        #0  La = 1'b0;
        #0  Lb = 1'b0;
        #0  Lk = 1'b1;
        #0  clk = 1;
        #10 La = 1'b0;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 0;
        #10

        //Cycle 1
        #0  Mb = 3'd0;
        #0  Ma = 3'd0;
        #0  Ms = 1'b1;
        #0  Mq = 1'b1;
        #0  La = 1'b1;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 1;
        #10 La = 1'b0;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 0;
        #10
        
        //Cycle 2
        #0  Mb = 3'd2;
        #0  Ma = 3'd0;
        #0  Ms = 1'b1;
        #0  Mq = 1'b0;
        #0  La = 1'b0;
        #0  Lb = 1'b1;
        #0  Lk = 1'b1;
        #0  clk = 1;
        #10 La = 1'b0;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 0;
        #10
        
        //Set initial case for the while loop
        #0 i = 0;
        #0  Mb = 3'd2;
        #0  Ms = 1'b1;
        
        while(i<4) begin
            #0  Ma = 3'd2;
            #0  Mq = 1'b1;
            
            #0  La = 1'b1;
            #0  clk = 1;
            
            #10 La = 1'b0;
            #0  Lb = 1'b0;
            #0  Lk = 1'b0;
            #0  clk = 0;
            
            #10
            
            #0  Ma = 3'd4;
            #0  Mq = 1'b1;
            
            #0  Lk = 1'b1;
            #0  clk = 1;
            
            #10 La = 1'b0;
            #0  Lb = 1'b0;
            #0  Lk = 1'b0;
            #0  clk = 0;
            
            #10
            
            #0  Ma = 3'd3;
            #0  Mq = 1'b0;
            
            #0  Lb = 1'b1;
            #0  Lk = 1'b1;
            #0  clk = 1;
            
            #10 La = 1'b0;
            #0  Lb = 1'b0;
            #0  Lk = 1'b0;
            #0  clk = 0;
            
            #10 i = i+1;
        end
        
        //Final
        #0  Mb = 3'd2;
        #0  Ma = 3'd2;
        #0  Ms = 1'b1;
        #0  Mq = 1'b1;
        #0  La = 1'b0;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 1;
        #10 La = 1'b0;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 0;
        #10
        
        assert (Out == 24'b101011111010000011011111) else begin
            $error ("Error SQRT 1.88265 != 1.372096");
            end
            
        //Cycle 0
        #0 N = 24'b000000000000000000000000;
        #0  Mb = 3'd0;
        #0  Ma = 3'd5;
        #0  Ms = 1'b1;
        #0  Mq = 1'b1;
        #0  La = 1'b0;
        #0  Lb = 1'b0;
        #0  Lk = 1'b1;
        #0  clk = 1;
        #10 La = 1'b0;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 0;
        #10

        //Cycle 1
        #0  Mb = 3'd0;
        #0  Ma = 3'd0;
        #0  Ms = 1'b1;
        #0  Mq = 1'b1;
        #0  La = 1'b1;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 1;
        #10 La = 1'b0;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 0;
        #10
        
        //Cycle 2
        #0  Mb = 3'd2;
        #0  Ma = 3'd0;
        #0  Ms = 1'b1;
        #0  Mq = 1'b0;
        #0  La = 1'b0;
        #0  Lb = 1'b1;
        #0  Lk = 1'b1;
        #0  clk = 1;
        #10 La = 1'b0;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 0;
        #10
        
        //Set initial case for the while loop
        #0 i = 0;
        #0  Mb = 3'd2;
        #0  Ms = 1'b1;
        
        while(i<4) begin
            #0  Ma = 3'd2;
            #0  Mq = 1'b1;
            
            #0  La = 1'b1;
            #0  clk = 1;
            
            #10 La = 1'b0;
            #0  Lb = 1'b0;
            #0  Lk = 1'b0;
            #0  clk = 0;
            
            #10
            
            #0  Ma = 3'd4;
            #0  Mq = 1'b1;
            
            #0  Lk = 1'b1;
            #0  clk = 1;
            
            #10 La = 1'b0;
            #0  Lb = 1'b0;
            #0  Lk = 1'b0;
            #0  clk = 0;
            
            #10
            
            #0  Ma = 3'd3;
            #0  Mq = 1'b0;
            
            #0  Lb = 1'b1;
            #0  Lk = 1'b1;
            #0  clk = 1;
            
            #10 La = 1'b0;
            #0  Lb = 1'b0;
            #0  Lk = 1'b0;
            #0  clk = 0;
            
            #10 i = i+1;
        end
        
        //Final
        #0  Mb = 3'd2;
        #0  Ma = 3'd2;
        #0  Ms = 1'b1;
        #0  Mq = 1'b1;
        #0  La = 1'b0;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 1;
        #10 La = 1'b0;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 0;
        #10
        
        assert (Out == 24'b000000000000000000000000) else begin
            $error ("Error SQRT 0 != 0");
            end
            
            
        //Cycle 0
        #0 N = 24'b100110011000001010101001;
        #0  Mb = 3'd0;
        #0  Ma = 3'd5;
        #0  Ms = 1'b1;
        #0  Mq = 1'b1;
        #0  La = 1'b0;
        #0  Lb = 1'b0;
        #0  Lk = 1'b1;
        #0  clk = 1;
        #10 La = 1'b0;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 0;
        #10

        //Cycle 1
        #0  Mb = 3'd0;
        #0  Ma = 3'd0;
        #0  Ms = 1'b1;
        #0  Mq = 1'b1;
        #0  La = 1'b1;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 1;
        #10 La = 1'b0;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 0;
        #10
        
        //Cycle 2
        #0  Mb = 3'd2;
        #0  Ma = 3'd0;
        #0  Ms = 1'b1;
        #0  Mq = 1'b0;
        #0  La = 1'b0;
        #0  Lb = 1'b1;
        #0  Lk = 1'b1;
        #0  clk = 1;
        #10 La = 1'b0;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 0;
        #10
        
        //Set initial case for the while loop
        #0 i = 0;
        #0  Mb = 3'd2;
        #0  Ms = 1'b1;
        
        while(i<4) begin
            #0  Ma = 3'd2;
            #0  Mq = 1'b1;
            
            #0  La = 1'b1;
            #0  clk = 1;
            
            #10 La = 1'b0;
            #0  Lb = 1'b0;
            #0  Lk = 1'b0;
            #0  clk = 0;
            
            #10
            
            #0  Ma = 3'd4;
            #0  Mq = 1'b1;
            
            #0  Lk = 1'b1;
            #0  clk = 1;
            
            #10 La = 1'b0;
            #0  Lb = 1'b0;
            #0  Lk = 1'b0;
            #0  clk = 0;
            
            #10
            
            #0  Ma = 3'd3;
            #0  Mq = 1'b0;
            
            #0  Lb = 1'b1;
            #0  Lk = 1'b1;
            #0  clk = 1;
            
            #10 La = 1'b0;
            #0  Lb = 1'b0;
            #0  Lk = 1'b0;
            #0  clk = 0;
            
            #10 i = i+1;
        end
        
        //Final
        #0  Mb = 3'd2;
        #0  Ma = 3'd2;
        #0  Ms = 1'b1;
        #0  Mq = 1'b1;
        #0  La = 1'b0;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 1;
        #10 La = 1'b0;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 0;
        #10
        
        assert (Out == 24'b100011000010110100010010) else begin
            $error ("Error SQRT 1.1993 != 1.09512555");
            end
            
            
        //Cycle 0
        #0 N = 24'b010011110101001101010101;
        #0  Mb = 3'd0;
        #0  Ma = 3'd5;
        #0  Ms = 1'b1;
        #0  Mq = 1'b1;
        #0  La = 1'b0;
        #0  Lb = 1'b0;
        #0  Lk = 1'b1;
        #0  clk = 1;
        #10 La = 1'b0;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 0;
        #10

        //Cycle 1
        #0  Mb = 3'd0;
        #0  Ma = 3'd0;
        #0  Ms = 1'b1;
        #0  Mq = 1'b1;
        #0  La = 1'b1;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 1;
        #10 La = 1'b0;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 0;
        #10
        
        //Cycle 2
        #0  Mb = 3'd2;
        #0  Ma = 3'd0;
        #0  Ms = 1'b1;
        #0  Mq = 1'b0;
        #0  La = 1'b0;
        #0  Lb = 1'b1;
        #0  Lk = 1'b1;
        #0  clk = 1;
        #10 La = 1'b0;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 0;
        #10
        
        //Set initial case for the while loop
        #0 i = 0;
        #0  Mb = 3'd2;
        #0  Ms = 1'b1;
        
        while(i<4) begin
            #0  Ma = 3'd2;
            #0  Mq = 1'b1;
            
            #0  La = 1'b1;
            #0  clk = 1;
            
            #10 La = 1'b0;
            #0  Lb = 1'b0;
            #0  Lk = 1'b0;
            #0  clk = 0;
            
            #10
            
            #0  Ma = 3'd4;
            #0  Mq = 1'b1;
            
            #0  Lk = 1'b1;
            #0  clk = 1;
            
            #10 La = 1'b0;
            #0  Lb = 1'b0;
            #0  Lk = 1'b0;
            #0  clk = 0;
            
            #10
            
            #0  Ma = 3'd3;
            #0  Mq = 1'b0;
            
            #0  Lb = 1'b1;
            #0  Lk = 1'b1;
            #0  clk = 1;
            
            #10 La = 1'b0;
            #0  Lb = 1'b0;
            #0  Lk = 1'b0;
            #0  clk = 0;
            
            #10 i = i+1;
        end
        
        //Final
        #0  Mb = 3'd2;
        #0  Ma = 3'd2;
        #0  Ms = 1'b1;
        #0  Mq = 1'b1;
        #0  La = 1'b0;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 1;
        #10 La = 1'b0;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 0;
        #10
        
        assert (Out == 24'b011001001100001111110001) else begin
            $error ("Error SQRT .619 != .787");
            end
            
            
        //Cycle 0
        #0 N = 24'b110001011000011111101001;
        #0  Mb = 3'd0;
        #0  Ma = 3'd5;
        #0  Ms = 1'b1;
        #0  Mq = 1'b1;
        #0  La = 1'b0;
        #0  Lb = 1'b0;
        #0  Lk = 1'b1;
        #0  clk = 1;
        #10 La = 1'b0;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 0;
        #10

        //Cycle 1
        #0  Mb = 3'd0;
        #0  Ma = 3'd0;
        #0  Ms = 1'b1;
        #0  Mq = 1'b1;
        #0  La = 1'b1;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 1;
        #10 La = 1'b0;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 0;
        #10
        
        //Cycle 2
        #0  Mb = 3'd2;
        #0  Ma = 3'd0;
        #0  Ms = 1'b1;
        #0  Mq = 1'b0;
        #0  La = 1'b0;
        #0  Lb = 1'b1;
        #0  Lk = 1'b1;
        #0  clk = 1;
        #10 La = 1'b0;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 0;
        #10
        
        //Set initial case for the while loop
        #0 i = 0;
        #0  Mb = 3'd2;
        #0  Ms = 1'b1;
        
        while(i<4) begin
            #0  Ma = 3'd2;
            #0  Mq = 1'b1;
            
            #0  La = 1'b1;
            #0  clk = 1;
            
            #10 La = 1'b0;
            #0  Lb = 1'b0;
            #0  Lk = 1'b0;
            #0  clk = 0;
            
            #10
            
            #0  Ma = 3'd4;
            #0  Mq = 1'b1;
            
            #0  Lk = 1'b1;
            #0  clk = 1;
            
            #10 La = 1'b0;
            #0  Lb = 1'b0;
            #0  Lk = 1'b0;
            #0  clk = 0;
            
            #10
            
            #0  Ma = 3'd3;
            #0  Mq = 1'b0;
            
            #0  Lb = 1'b1;
            #0  Lk = 1'b1;
            #0  clk = 1;
            
            #10 La = 1'b0;
            #0  Lb = 1'b0;
            #0  Lk = 1'b0;
            #0  clk = 0;
            
            #10 i = i+1;
        end
        
        //Final
        #0  Mb = 3'd2;
        #0  Ma = 3'd2;
        #0  Ms = 1'b1;
        #0  Mq = 1'b1;
        #0  La = 1'b0;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 1;
        #10 La = 1'b0;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 0;
        #10
        
        assert (Out == 24'b100111110000001001100001) else begin
            $error ("Error SQRT 1.54321012345 != 1.2422600");
            end
            
            
        //Cycle 0
        #0 N = 24'b110010000000000000000000;
        #0  Mb = 3'd0;
        #0  Ma = 3'd5;
        #0  Ms = 1'b1;
        #0  Mq = 1'b1;
        #0  La = 1'b0;
        #0  Lb = 1'b0;
        #0  Lk = 1'b1;
        #0  clk = 1;
        #10 La = 1'b0;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 0;
        #10

        //Cycle 1
        #0  Mb = 3'd0;
        #0  Ma = 3'd0;
        #0  Ms = 1'b1;
        #0  Mq = 1'b1;
        #0  La = 1'b1;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 1;
        #10 La = 1'b0;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 0;
        #10
        
        //Cycle 2
        #0  Mb = 3'd2;
        #0  Ma = 3'd0;
        #0  Ms = 1'b1;
        #0  Mq = 1'b0;
        #0  La = 1'b0;
        #0  Lb = 1'b1;
        #0  Lk = 1'b1;
        #0  clk = 1;
        #10 La = 1'b0;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 0;
        #10
        
        //Set initial case for the while loop
        #0 i = 0;
        #0  Mb = 3'd2;
        #0  Ms = 1'b1;
        
        while(i<4) begin
            #0  Ma = 3'd2;
            #0  Mq = 1'b1;
            
            #0  La = 1'b1;
            #0  clk = 1;
            
            #10 La = 1'b0;
            #0  Lb = 1'b0;
            #0  Lk = 1'b0;
            #0  clk = 0;
            
            #10
            
            #0  Ma = 3'd4;
            #0  Mq = 1'b1;
            
            #0  Lk = 1'b1;
            #0  clk = 1;
            
            #10 La = 1'b0;
            #0  Lb = 1'b0;
            #0  Lk = 1'b0;
            #0  clk = 0;
            
            #10
            
            #0  Ma = 3'd3;
            #0  Mq = 1'b0;
            
            #0  Lb = 1'b1;
            #0  Lk = 1'b1;
            #0  clk = 1;
            
            #10 La = 1'b0;
            #0  Lb = 1'b0;
            #0  Lk = 1'b0;
            #0  clk = 0;
            
            #10 i = i+1;
        end
        
        //Final
        #0  Mb = 3'd2;
        #0  Ma = 3'd2;
        #0  Ms = 1'b1;
        #0  Mq = 1'b1;
        #0  La = 1'b0;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 1;
        #10 La = 1'b0;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 0;
        #10
        
        assert (Out == 24'b101000000000000000000000) else begin
            $error ("Error SQRT 1.5625 != 1.25");
            end
        $display("End of Square Root Testing");
        $display("Inverse of Squrare Root");
        
        //Inverse
        
        //Cycle 0
        #0 Lf = 1'b1;
        #0 clk = 1;
        #10 Lf = 1'b0;
        #0 clk = 0;
        #10
        
        #0  Mb = 3'd3;
        #0  Ma = 3'd5;
        #0  Ms = 1'b0;
        #0  Mq = 1'b0;
        #0  La = 1'b1;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 1;
        #10 La = 1'b0;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 0;
        #10

        //Cycle 1
        #0  Mb = 3'd0;
        #0  Ma = 3'd6;
        #0  Ms = 1'b0;
        #0  Mq = 1'b0;
        #0  La = 1'b0;
        #0  Lb = 1'b1;
        #0  Lk = 1'b1;
        #0  clk = 1;
        #10 La = 1'b0;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 0;
        #10
        
        #0 i = 0;
        while(i<5) begin
            #0  Mb = 3'd2;
            #0  Ma = 3'd2;
            
            #0  La = 1'b1;
            #0  clk = 1;
            
            #10 La = 1'b0;
            #0  Lb = 1'b0;
            #0  Lk = 1'b0;
            #0  clk = 0;
            
            #10        
            
            #0  Mb = 3'd2;
            #0  Ma = 3'd3;
            
            #0  Lb = 1'b1;
            #0  Lk = 1'b1;
            #0  clk = 1;
            
            #10 La = 1'b0;
            #0  Lb = 1'b0;
            #0  Lk = 1'b0;
            #0  clk = 0;
            
            #10 i = i+1;
        end
        
        //Final
        #0  Mb = 3'd2;
        #0  Ma = 3'd2;
        #0  Ms = 1'b0;
        #0  Mq = 1'b0;
        #0  La = 1'b0;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 1;
        #10 La = 1'b0;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        #0  clk = 0;
        #10
        
        assert (Out == 24'b011001100110011001100110) else begin
            $error ("ERROR 1/1.25 != 0.8");
            end
        
        $display("Sign Testing");
        
        //Test the sign bit
        Ms = 0;
        Sn = 1;
        Sd = 1;
        #20
        assert (signOut == 0 && errorOut == 0) else begin
            $error ("Error sign test 1");
            end
        
        Ms = 1;
        Sn = 1;
        Sd = 1;
        #20
        assert (errorOut == 1) else begin
            $error ("Error sign test 2");
            end
            
        Ms = 0;
        Sn = 1;
        Sd = 0;
        #20
        assert (signOut == 1 && errorOut == 0) else begin
            $error ("Error sign test 3");
            end
            
        Ms = 1;
        Sn = 0;
        Sd = 1;
        #20
        assert (signOut == 0 && errorOut == 0) else begin
            $error ("Error sign test 4");
            end
            
        $display("Testing Complete!");
    end
endmodule