module disable_fork;
  int d,clock;
   function int arthi(int a,b,c);
          return a+b-c;
      endfunction
  initial 
    begin
        #3;
      clock=0;
        fork
          begin
             #5 $display($time," Process one execution");
          end
          begin
            $display($time," Process second execution");
            d=arthi(4,5,2);
          end
          begin
            #5 $display($time, " Output of function arthi when input %0d,%0d,%0d is %0d",arthi.a,arthi.b,arthi.c,d);
          end
        join_none
      $display("Came out of fork-join", $time);
      #5 disable fork;
      $display($time," clock become one");
        clock=1; 
        //clock become 1 when //time =3
    end
endmodule
  
