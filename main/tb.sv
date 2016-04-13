module tb ();
   
   logic[23:0]  N, D;
   logic[26:0]  Out;
   logic[2:0]   Ma;
   logic[1:0]   Mb;
   logic        Sn, Sd, Ms, La, Lb, Lk, clk;
   
  // instantiate device under test
  main dut (N, D, Sn, Sd, Mb, Ma, Ms, La, Lb, Lk, clk, Out);

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
        
        #10 N = 24'b00000000;
        #0  D = 24'b00000000;
        #0  Mb = 1'b1;
        #0  Ma = 1'b0;
        #5
        STest = 27'b000000000000;
        assert (Out == STest) else begin 
            $error("ERROR! Value N = %0d, D = %0d, \nS:%0d  !=  STest: %0d\n", N, D, Out, STest);
            errorCount++;
            end
            
        #10 N = 24'b00000000;
        #0  D = 24'b00000010;
        #0  Mb = 1'b1;
        #0  Ma = 1'b0;
        #5
        STest = 27'b0000000000;
        assert (Out == STest) else begin 
            $error("ERROR! Value N = %0d, D = %0d, \nS:%0d  !=  STest: %0d\n", N, D, Out, STest);
            errorCount++;
            end
            
        #10 N = 24'h800000;
        #0  D = 24'h800000;
        #0  Mb = 1'b1;
        #0  Ma = 1'b0;
        #5
        STest = 27'h80000;
        assert (Out == STest) else begin 
            $error("ERROR! Value N = %0d, D = %0d, \nS:%0d  !=  STest: %0d\n", N, D, Out, STest);
            errorCount++;
            end
        
        $display ("Test Complete");
    end
        
endmodule
