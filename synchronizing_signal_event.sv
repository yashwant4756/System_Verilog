module tb;
  reg [1:0] a;
  reg clk=0;
  always #5 clk=~clk;
  
  initial begin
    #100;
    $finish();
  end
  
  covergroup c@(posedge clk);
     //option.per_instance=1;
    coverpoint a{
      bins b2={[1:3]};
    }
  endgroup
  
  initial begin
    c cg=new();
   
    for(int i=0;i<10;i++)
      begin
        @(posedge clk)
        a=$urandom();
        $display($time," The value of a is %0d",a);
      end
  end
endmodule
