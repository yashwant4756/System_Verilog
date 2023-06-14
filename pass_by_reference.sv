module argument_passing;
  int  a,b,c,d;
  function int arthi(ref int a,b,c);
     a=a-b+c;
    return arthi;
  endfunction
  initial
    begin
      a=10;
      b=5;
      c=4;
      d=arthi(a,b,c);
      $display("The vale of a is %0d",a);
      $display("The vale of b is %0d",b);
      $display("The vale of c is %0d",c);
      $display("The vale of d is %0d",d);
      
    end
endmodule
