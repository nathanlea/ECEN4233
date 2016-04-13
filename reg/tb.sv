module tb();
   
   logic [26:0]  A;
   logic [26:0]  Out;
   logic         load;
   logic         clk;
   
  // instantiate device under test
  dff dut (A, Out, clk, load);

  // generate clock
  always 
    begin
      clk = 1; #10; clk = 0; #10;
    end
    
   integer STest, errorCount;
   initial
     begin
        $display ("Testing...");
        
        errorCount = 0;
        
        #10 A = 27'b00000001;
        #0  load = 1'b1;
        #12
        STest = 27'b00000001;
        assert (Out == STest) else begin 
            $error("ERROR! Value A = %0d, load = %0d, \nS:%0d  !=  STest: %0d\n", A, load, Out, STest);
            errorCount++;
            end
			
        #10 A = 27'b00000010;
        #0  load = 1'b0;
        #10
        STest = 27'b00000001;
        assert (Out == STest) else begin 
            $error("ERROR! Value A = %0d, load = %0d, \nS:%0d  !=  STest: %0d\n", A, load, Out, STest);
            errorCount++;
            end
            
        #10 A = 27'b00000011;
        #0  load = 0'b1;
        STest = 27'b00000001;
        assert (Out == STest) else begin 
            $error("ERROR! Value A = %0d, load = %0d, \nS:%0d  !=  STest: %0d\n", A, load, Out, STest);
            errorCount++;
            end

        #10 A = 27'b00000100;
        #0  load = 1'b0;
        STest = 27'b00000011;
        assert (Out == STest) else begin 
            $error("ERROR! Value A = %0d, load = %0d, \nS:%0d  !=  STest: %0d\n", A, load, Out, STest);
            errorCount++;
            end
        #8
        #10 A = 27'b00000101;
        #0  load = 1'b1;
        #10
        STest = 27'b00000101;
        assert (Out == STest) else begin 
            $error("ERROR! Value A = %0d, load = %0d, \nS:%0d  !=  STest: %0d\n", A, load, Out, STest);
            errorCount++;
            end
            
        #10 A = 27'b00000110;
        #0  load = 1'b1;
        #10
        STest = 27'b00000110;
        assert (Out == STest) else begin 
            $error("ERROR! Value A = %0d, load = %0d, \nS:%0d  !=  STest: %0d\n", A, load, Out, STest);
            errorCount++;
            end
            
		$display ("Testing Complete...");
    end 
endmodule
