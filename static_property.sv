class packet;
  static int a=2;
  int b=3;
   //function void def();
     //packet obj =new();
  //endfunction
  
  function void display();
    $display("Value of a is %0d",a);
    $display("Value of b is %0d",b);
  endfunction
endclass

class gen extends packet;
 
  
  function void inc();
    a++;
    b++;
  end
  function void display_1();
    $display("Value of a is %0d",a);
    $display("Value of b is %0d",b);
  endfunction
endclass

module top;
  packet obj;
  gen obj1;
  gen obj2;
  
  initial begin
    obj = new();
  obj1=new();
    obj2 = new();
   obj.display();  
   obj1.inc();
   obj1.display_1();
   obj2.inc();
   obj2.display_1();
    
  end
 endmodule
  
 
