module enum_method;
  typedef enum{red,blue,green.yellow,pink} colour;
  colour r;
  initial
    begin
      r=r.first();
      $display("%s",r.name);
       r=r.next();
      $display("%s",r.name);
       r=r.last();
      $display("%s",r.name);
       r=r.prev();
      $display("%s",r.name);
    end
endmodule
