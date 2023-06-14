module Dynamic_array;
  bit [7:0] d_array[];  //declaration 
  int d_array1[];
  
  initial begin
    $display("Display Size of Memory before allocation");
    $display("Size of d_array %0d",d_array.size());
    $display("Size of d_array1 %0d",d_array1.size());
  
  d_array=new[5]; //dynamic array of 5 elements
  d_array1=new[3];
    $display("Display Size of Memory after allocation");
    $display("Size of d_array %0d",d_array.size());
    $display("Size of d_array1 %0d",d_array1.size());
  
  d_array={0,1,2,3}; // array initialization
    foreach(d_array1[j]) d_array1[j]=j;
    
    $display("Dispaly the values of d_array");
    foreach(d_array[i]) $display("d_array[%0d]=%0d",i,d_array[i]);
    
    $display("Dispaly the values of d_array1");
    foreach(d_array1[i]) $display("d_array[%0d]=%0d",i,d_array1[i]);
    
  d_array=new[10]; // increasing the size of array by overriding the old values
        $display("Size of d_array %0d",d_array.size());
    $display("Dispaly the values of d_array");
    foreach(d_array[i]) $display("d_array[%0d]=%0d",i,d_array[i]);
    
    d_array1=new[10](d_array1); //increasing the size of array by retaining thre old values
    $display("Size of d_array %0d",d_array1.size());
    $display("Dispaly the values of d_array1");
    foreach(d_array1[j]) $display("d_array[%0d]=%0d",j,d_array1[j]);
    
  end 
endmodule
  
  
