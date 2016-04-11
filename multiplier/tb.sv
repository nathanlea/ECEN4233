module tb ();
   
   logic [26:0]  A, B;
   logic [53:0] Out;
   logic        clk;
   
  // instantiate device under test
  multiplier dut (Out, A, B);

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
        
        #10 A = 27'b00000000;
        #0  B = 27'b00000000;
        #5
        STest = 54'b000000000000;
        assert (Out == STest) else begin 
            $error("ERROR! Value A = %0d, B = %0d, \nS:%0d  !=  STest: %0d\n", A, B, Out, STest);
            errorCount++;
            end
        
        
        
        #10 A = 27'b11111111;
        #0  B = 27'b1111;
        #5
        STest = 54'd3825;
        assert (Out == STest) else begin 
            $error("ERROR! Value A = %0d, B = %0d, \nS:%0d  !=  STest: %0d\n", A, B, Out, STest);
            errorCount++;
            end
            
            
            
        #10 A = 27'b00001001;
        #0  B = 27'b0111;
        #5
        STest = 54'd63;
        assert (Out == STest) else begin 
            $error("ERROR! Value A = %0d, B = %0d, \nS:%0d  !=  STest: %0d\n", A, B, Out, STest);
            errorCount++;
            end
            
            
            
        #10 A = 27'b00101010;
        #0  B = 27'b0010;
        #5
        STest = 54'd84;
        assert (Out == STest) else begin 
            $error("ERROR! Value A = %0d, B = %0d, \nS:%0d  !=  STest: %0d\n", A, B, Out, STest);
            errorCount++;
            end
            
            
            
        #10 A = 27'b10000001;
        #0  B = 27'b0001;
        #5
        STest = 54'd129;
        assert (Out == STest) else begin 
            $error("ERROR! Value A = %0d, B = %0d, \nS:%0d  !=  STest: %0d\n", A, B, Out, STest);
            errorCount++;
            end
            
            
            
        #10 A = 27'b00000000;
        #0  B = 27'b0000;
        #5
        STest = 54'd0;
        assert (Out == STest) else begin 
            $error("ERROR! Value A = %0d, B = %0d, \nS:%0d  !=  STest: %0d\n", A, B, Out, STest);
            errorCount++;
            end
            
            
            
        #10 A = 27'b01111111;
        #0  B = 27'b0111;
        #5
        STest = 54'd889;
        assert (Out == STest) else begin 
            $error("ERROR! Value A = %0d, B = %0d, \nS:%0d  !=  STest: %0d\n", A, B, Out, STest);
            errorCount++;
            end
            
  
            
        #10 A = 27'b01110111;
        #0  B = 27'b1011;
        #5
        STest = 54'd1309;
        assert (Out == STest) else begin 
            $error("ERROR! Value A = %0d, B = %0d, \nS:%0d  !=  STest: %0d\n", A, B, Out, STest);
            errorCount++;
            end
        
        $display ("Test Complete");
    end
        
endmodule
