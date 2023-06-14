module stru;
  struct{int x; byte y; bit [7:0] z}my_struct;
  my_struct.x=123;
  my_struct.x=8'd27;
  $display("The value of x is %d",my_struct.x);
  
endmodule
  
