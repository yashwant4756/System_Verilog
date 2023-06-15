module testbench(mux_a.tb inf);

  initial
    begin
      inf.in[0]=0;
      inf.in[1]=1;
      inf.in[2]=1;
      inf.in[3]=0;
      inf.in[4]=0;
      inf.in[5]=1;
      inf.in[6]=0;
      inf.in[7]=1;
      
      
      #5 inf.sel= 3'd3;
      #5 inf.sel= 3'd5;
      #5 inf.sel= 3'd7;
      #5 inf.sel= 3'd2;
      #5 inf.sel= 3'd3;
      #10 $finish;
    end
  initial
    $monitor($time, " Output of mux when sel=%d is %d",inf.sel,inf.out);
endmodule

module top_module;
  
    
      mux_a utt();
      mux_8 dut(utt);
      testbench test(utt);
    
endmodule
