class Unconstrained;
rand bit x; 
rand bit [1:0] y; 
endclass

class Imp1;
rand bit x;
rand bit [1:0] y;
constraint c_xy {
(x==0) -> y==0;
}
endclass

class Imp2;
rand bit x; 
rand bit [1:0] y; 
constraint c_xy {
y > 0;
(x==0) -> y==0;
}
endclass

class SolveBefore;
rand bit x; 
rand bit [1:0] y; 
constraint c_xy {
(x==0) -> y==0;
solve x before y;
}
endclass

module test;
  Unconstrained a=new();
  Imp1 b=new();
  Imp2 c=new();
  SolveBefore d=new();
  initial begin
    repeat(10) begin
    a.randomize();
      $display("The value of x and y is %0d,%0d",a.x,a.y);
    end
     repeat(10) begin
    b.randomize();
       $display("The value of x and y is %0d,%0d",b.x,b.y);
    end
     repeat(10) begin
    c.randomize();
       $display("The value of x and y is %0d,%0d",c.x,c.y);
    end
     repeat(10) begin
    d.randomize();
       $display("The value of x and y is %0d,%0d",d.x,d.y);
    end
      
  end
endmodule
