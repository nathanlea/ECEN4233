module tb();
   
   logic [26:0]  A, B;
   logic [26:0]  Out;
   logic        clk, S;
   
  // instantiate device under test
  mux21 dut (A, B, Out, S);

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
        
        #10 A = 27'b00000000;
        #0  B = 27'b00000001;
		#0  S = 1'b0;
        #5
        STest = 27'b00000000;
        assert (Out == STest) else begin 
            $error("ERROR! Value A = %0d, B = %0d, \nS:%0d  !=  STest: %0d\n", A, B, Out, STest);
            errorCount++;
            end
			
        #10 A = 27'b00000000;
        #0  B = 27'b00000001;
		#0  S = 1'b1; 
        #5
        STest = 27'b00000001;
        assert (Out == STest) else begin 
            $error("ERROR! Value A = %0d, B = %0d, \nS:%0d  !=  STest: %0d\n", A, B, Out, STest);
            errorCount++;
            end
		$display ("Testing Complete...");
    end 
endmodule
