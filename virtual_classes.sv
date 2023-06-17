virtual class base;
   virtual function void display();
      $display("Display the virtual base class");
    endfunction
endclass

class packet extends base;
  function void display();
    $display("Display the extended class");
  endfunction
endclass

module top;
  
  initial begin
    base obj1;
    packet obj2;
    obj2=new();
    obj2.display();
    obj1=obj2;
    obj1.display();
    obj2.display();
  end
endmodule;
  
  
  
  
