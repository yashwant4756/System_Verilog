// or browse Examples
class base;
   function int pkt(input int a,b);
     int c;
    c = a*b;
    $display("Display the value of c is %0d",c);
     return c;
  endfunction
endclass

class packet extends base;

  function int pkt(input int e,f);
    int g;
     g = e+f;
    $display("Display the vale of c is %0d",g);
    return g;
  endfunction
endclass

module top;
  base obj1;
  packet obj2;
  initial begin
    obj1=new();
   obj1.pkt(5,4);
  obj2=new();
  obj2.pkt(8,3);
  obj1=obj2;
    obj1.pkt(5,4);
    obj2.pkt(8,3);
   
  end
endmodule;
  
  
