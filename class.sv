class collage_fee;
  int total_fee,due_fee,late_fee,deposit_fee;
 
  function int rem_fee();
    return due_fee;
  endfunction
  
  task transaction(input int deposit_fee);
    total_fee=20000;
    if(deposit_fee==total_fee)
      late_fee=0;
    else begin
      late_fee=2000;
    due_fee=total_fee - deposit_fee +late_fee;
    end
  endtask
endclass

module collage;
  initial begin
  collage_fee obj=new();
  obj.transaction(10000);
  $display("Student due fee is %0d",obj.rem_fee());
  end
endmodule

  
  
  
  
    
    
    
  
  
