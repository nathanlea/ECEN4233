module tb();
   
   logic [26:0]  A, B, C, D, E;
   logic [26:0]  Out;
   logic [2:0]   S;
   logic         clk;
   
  // instantiate device under test
  mux51 dut (A, B, C, D, E, Out, S);

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
        #0  D = 27'b00000100;
        #0  E = 27'b00000101;
		#0  S = 3'b000;
        #5
        STest = 27'b00000000;
        assert (Out == STest) else begin 
            $error("ERROR! Value A = %0d, B = %0d, C = %0d, D = %0d, E = %0d, \nS:%0d  !=  STest: %0d\n", A, B, C, D, E, Out, STest);
            errorCount++;
            end
			
        #10 A = 27'b00000000;
        #0  B = 27'b00000001;
        #0  C = 27'b00000011;
        #0  D = 27'b00000100;
        #0  E = 27'b00000101;
		#0  S = 3'b001; 
        #5
        STest = 27'b00000001;
        assert (Out == STest) else begin 
            $error("ERROR! Value A = %0d, B = %0d, C = %0d, D = %0d, E = %0d, \nS:%0d  !=  STest: %0d\n", A, B, C, D, E, Out, STest);
            errorCount++;
            end
            
        #10 A = 27'b00000000;
        #0  B = 27'b00000001;
        #0  C = 27'b00000011;
        #0  D = 27'b00000100;
        #0  E = 27'b00000101;
        #0  S = 3'b010; 
        #5
        STest = 27'b00000011;
        assert (Out == STest) else begin 
            $error("ERROR! Value A = %0d, B = %0d, C = %0d, D = %0d, E = %0d, \nS:%0d  !=  STest: %0d\n", A, B, C, D, E, Out, STest);
            errorCount++;
            end
            
        #10 A = 27'b00000000;
        #0  B = 27'b00000001;
        #0  C = 27'b00000011;
        #0  D = 27'b00000100;
        #0  E = 27'b00000101;
		#0  S = 3'b011; 
        #5
        STest = 27'b00000100;
        assert (Out == STest) else begin 
            $error("ERROR! Value A = %0d, B = %0d, C = %0d, D = %0d, E = %0d, \nS:%0d  !=  STest: %0d\n", A, B, C, D, E, Out, STest);
            errorCount++;
            end
            
        #10 A = 27'b00000000;
        #0  B = 27'b00000001;
        #0  C = 27'b00000011;
        #0  D = 27'b00000100;
        #0  E = 27'b00000101;
		#0  S = 3'b100; 
        #5
        STest = 27'b00000101;
        assert (Out == STest) else begin 
            $error("ERROR! Value A = %0d, B = %0d, C = %0d, D = %0d, E = %0d, \nS:%0d  !=  STest: %0d\n", A, B, C, D, E, Out, STest);
            errorCount++;
            end
            
        #10 A = 27'b00000000;
        #0  B = 27'b00000001;
        #0  C = 27'b00000011;
        #0  D = 27'b00000100;
        #0  E = 27'b00000101;
		#0  S = 3'b101; 
        #5
        STest = 27'b00000101;
        assert (Out == STest) else begin 
            $error("ERROR! Value A = %0d, B = %0d, C = %0d, D = %0d, E = %0d, \nS:%0d  !=  STest: %0d\n", A, B, C, D, E, Out, STest);
            errorCount++;
            end
            
        #10 A = 27'b00000000;
        #0  B = 27'b00000001;
        #0  C = 27'b00000011;
        #0  D = 27'b00000100;
        #0  E = 27'b00000101;
		#0  S = 3'b110; 
        #5
        STest = 27'b00000101;
        assert (Out == STest) else begin 
            $error("ERROR! Value A = %0d, B = %0d, C = %0d, D = %0d, E = %0d, \nS:%0d  !=  STest: %0d\n", A, B, C, D, E, Out, STest);
            errorCount++;
            end
            
        #10 A = 27'b00000000;
        #0  B = 27'b00000001;
        #0  C = 27'b00000011;
        #0  D = 27'b00000100;
        #0  E = 27'b00000101;
		#0  S = 3'b111; 
        #5
        STest = 27'b00000101;
        assert (Out == STest) else begin 
            $error("ERROR! Value A = %0d, B = %0d, C = %0d, D = %0d, E = %0d, \nS:%0d  !=  STest: %0d\n", A, B, C, D, E, Out, STest);
            errorCount++;
            end
            
		$display ("Testing Complete...");
    end 
endmodule
