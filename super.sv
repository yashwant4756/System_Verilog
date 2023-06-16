class course;
  int course_fee = 1000;
  task fee(input int learing_class_fee,material_fee);
    course_fee=learing_class_fee+material_fee + course_fee;
  endtask
  function void display();
    $display("Total course fee is %0d",course_fee);
  endfunction
endclass

class new_course extends course;
  int a;
  task  fee_a(input int new_subject_fee);
    a = new_subject_fee + super.course_fee;
  endtask
  
endclass

module test;
  course c;
   new_course c1;
  initial begin
    c = new();
  c1 = new();
    c.fee(2000,3500);
  c.display();
   c1.fee_a(4000);
    $display("Total new course fee is %0d",(c1.a+c.course_fee));
  end
endmodule
  
  
