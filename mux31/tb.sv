module tb();
   
   logic [26:0]  A, B, C;
   logic [26:0]  Out;
   logic [1:0]   S;
   logic         clk;
   
  // instantiate device under test
  mux31 dut (A, B, C, Out, S);

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
        #0  C = 27'b00000011;
		#0  S = 2'b00;
        #5
        STest = 27'b00000000;
        assert (Out == STest) else begin 
            $error("ERROR! Value A = %0d, B = %0d, C = %0d, \nS:%0d  !=  STest: %0d\n", A, B, C, Out, STest);
            errorCount++;
            end
			
        #10 A = 27'b00000000;
        #0  B = 27'b00000001;
        #0  C = 27'b00000011;
		#0  S = 2'b01; 
        #5
        STest = 27'b00000001;
        assert (Out == STest) else begin 
            $error("ERROR! Value A = %0d, B = %0d, C = %0d, \nS:%0d  !=  STest: %0d\n", A, B, C, Out, STest);
            errorCount++;
            end
            
        #10 A = 27'b00000000;
        #0  B = 27'b00000001;
        #0  C = 27'b00000011;
		#0  S = 2'b10; 
        #5
        STest = 27'b00000011;
        assert (Out == STest) else begin 
            $error("ERROR! Value A = %0d, B = %0d, C = %0d, \nS:%0d  !=  STest: %0d\n", A, B, C, Out, STest);
            errorCount++;
            end
            
        #10 A = 27'b00000000;
        #0  B = 27'b00000001;
        #0  C = 27'b00000011;
		#0  S = 2'b11; 
        #5
        STest = 27'b00000011;
        assert (Out == STest) else begin 
            $error("ERROR! Value A = %0d, B = %0d, C = %0d, \nS:%0d  !=  STest: %0d\n", A, B, C, Out, STest);
            errorCount++;
            end
		$display ("Testing Complete...");
    end 
endmodule
