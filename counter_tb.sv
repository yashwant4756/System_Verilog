module stimulus;
 logic clk,reset;
  logic [2:0] cout;
  counter utt(clk,reset,cout);
  initial
    forever begin
      #5 clk =~clk;
    end
  initial
    begin
      clk=1'd0;
      reset = 0;
      #15 reset <=1'b1;
      #20 reset <= 1'b0;
      
      #200 $finish;
    end
  initial 
    begin
    $monitor($time, " Output of counter is %d",cout);
  end
endmodule
