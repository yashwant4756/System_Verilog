class random;
  rand bit [4:0] key;
  randc bit [3:0] mode;
  constraint c_rand{key>2; key<14; mode>1; mode<6;};
endclass

module rand_1;
  random r;
  initial
    begin
      r=new();
      repeat(8) begin
        r.randomize with {key>5;mode>2;};
        $display("The values of random variable key and mode is %0d,%0d", r.key,r.mode);
      end
    end
endmodule
  
