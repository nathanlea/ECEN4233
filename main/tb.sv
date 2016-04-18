module tb ();
   
   logic[23:0]  N, D;
   logic[26:0]  Out;
   logic[2:0]   Ma;
   logic[1:0]   Mb;
   logic        Sn, Sd, Ms, Mq, La, Lb, Lk, clk;
   
  // instantiate device under test
  main dut (N, D, Sn, Sd, Mb, Ma, Ms, Mq, La, Lb, Lk, clk, Out);

  // generate clock
  always 
    begin
      clk = 1; #10; clk = 0; #10;
    end
    
   integer STest, errorCount;
   initial
     begin
        $display ("Testing... ");
        
        errorCount = 0;
        
        //Cycle 0
        #10 N = 24'b110000000000000000000000;
        #0  D = 24'b100000000000000000000000;
        #0  Mb = 2'd0;
        #0  Ma = 3'd5;
        #0  Ms = 1'b0;
        #0  Mq = 1'b1;
        #0  La = 1'b1;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        
        //STest = 27'b000000000000;
        //assert (Out == STest) else begin 
          //  $error("ERROR! Value N = %0d, D = %0d, \nS:%0d  !=  STest: %0d\n", N, D, Out, STest);
           // errorCount++;
            //end
        //Cycle 1
        #10 N = 24'b110000000000000000000000;
        #0  D = 24'b100000000000000000000000;
        #0  Mb = 2'd1;
        #0  Ma = 3'd4;
        #0  Ms = 1'b0;
        #0  Mq = 1'b1;
        #0  La = 1'b0;
        #0  Lb = 1'b1;
        #0  Lk = 1'b1;
        
        
        //Cycle 2
        #10 N = 24'b110000000000000000000000;
        #0  D = 24'b100000000000000000000000;
        #0  Mb = 2'd2;
        #0  Ma = 3'd1;
        #0  Ms = 1'b0;
        #0  Mq = 1'b1;
        #0  La = 1'b1;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        
        
        //Cycle 3
        #10 N = 24'b110000000000000000000000;
        #0  D = 24'b100000000000000000000000;
        #0  Mb = 2'd2;
        #0  Ma = 3'd4;
        #0  Ms = 1'b0;
        #0  Mq = 1'b1;
        #0  La = 1'b0;
        #0  Lb = 1'b1;
        #0  Lk = 1'b1;
       
        
        //Cycle 4
        #10 N = 24'b110000000000000000000000;
        #0  D = 24'b100000000000000000000000;
        #0  Mb = 2'd2;
        #0  Ma = 3'd2;
        #0  Ms = 1'b0;
        #0  Mq = 1'b1;
        #0  La = 1'b1;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        
        
        //Cycle 5
        #10 N = 24'b110000000000000000000000;
        #0  D = 24'b100000000000000000000000;
        #0  Mb = 2'd2;
        #0  Ma = 3'd3;
        #0  Ms = 1'b0;
        #0  Mq = 1'b1;
        #0  La = 1'b0;
        #0  Lb = 1'b1;
        #0  Lk = 1'b1;
        
        
        //Cycle 6
        #10 N = 24'b110000000000000000000000;
        #0  D = 24'b100000000000000000000000;
        #0  Mb = 2'd2;
        #0  Ma = 3'd4;
        #0  Ms = 1'b0;
        #0  Mq = 1'b1;
        #0  La = 1'b1;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        
        
        //Cycle 7
        #10 N = 24'b110000000000000000000000;
        #0  D = 24'b100000000000000000000000;
        #0  Mb = 2'd2;
        #0  Ma = 3'd2;
        #0  Ms = 1'b0;
        #0  Mq = 1'b1;
        #0  La = 1'b0;
        #0  Lb = 1'b1;
        #0  Lk = 1'b1;
        
        
        //Cycle 8
        #10 N = 24'b110000000000000000000000;
        #0  D = 24'b100000000000000000000000;
        #0  Mb = 2'd2;
        #0  Ma = 3'd3;
        #0  Ms = 1'b0;
        #0  Mq = 1'b1;
        #0  La = 1'b1;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        
        
        //Cycle 9
        #10 N = 24'b110000000000000000000000;
        #0  D = 24'b100000000000000000000000;
        #0  Mb = 2'd2;
        #0  Ma = 3'd4;
        #0  Ms = 1'b0;
        #0  Mq = 1'b1;
        #0  La = 1'b0;
        #0  Lb = 1'b1;
        #0  Lk = 1'b1;
        
        
        //Cycle 10
        #10 N = 24'b110000000000000000000000;
        #0  D = 24'b100000000000000000000000;
        #0  Mb = 2'd2;
        #0  Ma = 3'd2;
        #0  Ms = 1'b0;
        #0  Mq = 1'b1;
        #0  La = 1'b1;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        
        
        //Cycle 11
        #10 N = 24'b110000000000000000000000;
        #0  D = 24'b100000000000000000000000;
        #0  Mb = 2'd2;
        #0  Ma = 3'd3;
        #0  Ms = 1'b0;
        #0  Mq = 1'b1;
        #0  La = 1'b0;
        #0  Lb = 1'b1;
        #0  Lk = 1'b1;
        
        
        //Final
        #10 N = 24'b110000000000000000000000;
        #0  D = 24'b100000000000000000000000;
        #0  Mb = 2'd2;
        #0  Ma = 3'd2;
        #0  Ms = 1'b0;
        #0  Mq = 1'b1;
        #0  La = 1'b0;
        #0  Lb = 1'b0;
        #0  Lk = 1'b0;
        
        
        assert (Out == 24'b110000000000000000000000) else begin
            $error ("Crap");
            end
        
    end
        
endmodule
