module stimulus;
  logic clk,reset,seq_in,seq_out;
  sequence_det utt(clk,reset,seq_in,seq_out);
  initial
    begin
      reset=1'b1;
      #15 reset=1'b0;
    clk=1'b0;
    end
  initial 
    forever begin
    #5 clk=~clk;
    end
  initial
    begin
      $monitor($time," output sequence at input sequence %d is %d",seq_in,seq_out);
    end
  initial
    begin
      #10 seq_in=1'b0;
      #10 seq_in=1'b1;
      #10 seq_in=1'b0;
      #10 seq_in=1'b1;
      #10 seq_in=1'b1;
      #10 seq_in=1'b0;
      #10 seq_in=1'b1;
      #10 seq_in=1'b1;
      #20 $finish;
    end
endmodule
  
  
  
