module tb;
  reg [1:0] a;
  reg rst=0;
  initial begin
    rst =1;
    #30;
    rst=0;
    #100 $finish;
  end
  
  covergroup c;
    option.per_instance=1;
    coverpoint a iff(!rst);
  endgroup
  
  initial begin
    c cg=new();
    for(int i=0;i<10;i++) begin
      a=$urandom();
      cg.sample();
      #10;
    end
  end
    initial begin
      $dumpfile("dump.vcd");
      $dumpvars();  
  end
    
endmodule
