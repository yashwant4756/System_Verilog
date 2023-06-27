module testbench();
   logic [3:0] sum;
   logic  c_out;
   logic [3:0] a,b;
   logic c_in;
  
  fulladder4bit uut(sum,c_out,a,b,c_in);
    
  covergroup cov;
    option.per_instance = 1;
    c1: coverpoint a{bins b1 = {[0:3]};
                      bins b2 = default;}
  c2: coverpoint b;
  c3: coverpoint c_in;
endgroup

  cov cg = new();
  initial begin
    
  forever 
      begin
        cg.sample();
      #5;
     end
  end
  initial begin
    $monitor($time," The values of a=%0d,b=%0d,cin=%0d,sum=%0d,cout=%0d",a,b,c_in,sum,c_out);
    repeat(5) begin
    a = $random;
      b = $random;
      c_in = $random;
      #5;
    end
  
    $display("Coverage = %f",cg.get_coverage());
      $finish;
  end
endmodule
    
    
