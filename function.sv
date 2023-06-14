module function_temp;
  int a;
  function int line_y_cor(input int x);
    line_y_cor=x+3;
  endfunction
  
  initial 
    begin
      a=line_y_cor(2);
      $display("The value of y coordinate is %0d",a);
      a=line_y_cor(4);
      $display("The value of y coordinate is %0d",a);
      
      a=line_y_cor(5);
      $display("The value of y coordinate is %0d",a);
      
    end
  endmodule
    
