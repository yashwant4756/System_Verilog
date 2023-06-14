module associative_array;
  int a_array[*]; // associative array of unspecified index
  bit [7:0] a_array1[string];
  int index;
  initial begin
  
    a_array[0]=20;
    a_array[1]=30;
    repeat(3)begin
      a_array[index]=index*3;
      index=index+2;
    end
      
       $display("Number of entries in a_array is %0d",a_array.num());
      $display("Associative array a_array entries and values are");
      foreach(a_array[i]) $display("a_array[%0d]=%0d",i,a_array[i]);      
    end
    endmodule
      
  
