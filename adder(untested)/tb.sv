module tb ();
   logic 	Cout;
   logic [26:0] A, B, S;
   logic clk;
   
  // instantiate device under test
  subtract26 dut (A, B, Cout, S);

  // generate clock
  always 
    begin
      clk = 1; #10; clk = 0; #10;
    end
    
   integer ATest, BTest, CoutTest, STest, errorCount;
   initial
     begin
        $display ("Subtract Testing...");
        
        for(ATest = 0; ATest<=3; ATest++)
        begin
            for(BTest = 0; BTest<=134000000; BTest+=512)
            begin
                #45 A = ATest & 8'b11111111;
                #0  B = BTest & 8'b11111111;
                #5
                STest = (ATest-BTest) & 8'b11111111;
                assert (S == STest) else begin 
                    $error("ERROR! Value A = %0d + B = %0d \nS:%0d  !=  STest: %0d\n", A, B, S, STest);
                    errorCount++;
                    end
            end
        end
        $display ("Test Complete");
    end
endmodule
