module tb();
   
   logic [53:0]  A;
   logic [26:0]  Q;
   logic        clk;
   
  // instantiate device under test
  truncate dut (Q, A);

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
        
        #10 A = 54'b100000000000000000000000000000000000000000000000000000;
        #5
        STest = 27'b100000000000000000000000000;
        assert (Q == STest) else begin 
            $error("ERROR! Value A = %0d, \nS:%0d  !=  STest: %0d\n", A, Q, STest);
            errorCount++;
            end
			
        #10 A = 54'b1000000000000000000000000000;
        #5
        STest = 27'b00000001;
        assert (Q == STest) else begin 
            $error("ERROR! Value A = %0d, \nS:%0d  !=  STest: %0d\n", A, Q, STest);
            errorCount++;
            end
		$display ("Testing Complete...");
    end 
endmodule
