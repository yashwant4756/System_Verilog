module fixed_array;
  int arr1[6];
  int arr2[4:0]; //single dimension array
  int arr3[2:0][3:0]; // two dimension array
  bit [2:0][7:0] arr4; // packed array
  bit [7:0] arr5[2:0]; //unpacked array
  initial begin
    arr1='{0,1,2,3,4,5};
    arr2='{1,1,2,3,5};
    arr3='{'{0,1,2,3},'{4,5,6,7},'{8,9,10,11}};
    arr4='{{0,1,2,3,4,5,6,7},{4,5,6,7,8,9,10,11},{8,9,10,11,12,13,14,15}};
    arr5='{'{0,1,2,3,4,5,6,7},'{4,5,6,7,8,9,10,11},'{8,9,10,11,12,13,14,15}};
    
    
    $display("Displaying of arr1 ");
    for(int i=0;i<6;i=i+1) begin
      $display("arr1[%0d]= %0d",i,arr1[i]);
    end
    
    $display("Displaying of arr2 ");
    for(int i=0;i<5;i=i+1)begin
      $display("arr2[%0d]=%0d",i,arr2[i]);
    end
    
    $display("Displaying of arr3 ");
    for(int i=0;i<2;i=i+1) begin
      for(int j=0;j<3;j=j+1)begin
        $display("arr3[%0d][%0d]=%0d",i,j,arr3[i][j]);
      end
    end
    
  end
    endmodule
  
