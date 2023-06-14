module stimulus;
  logic clk;
  logic write;
  logic read;
  logic [3:0] address;
  logic [7:0] data_in;
  logic [7:0] data_out;
  
  memory uut(clk,write,read,address,data_in,data_out);
  initial
     forever begin
      #5 clk=~clk;
    end
  initial
    begin
      clk=1'd0;
      #10 write<=1'b1;
         address<=4'd1;
      data_in<= 8'd2;
      #5 read<=1'b1;
      address <=1'b1;
      
      $monitor($time," Data entered in memory at address %d is %d and Stored data in memory at address %d is %d ",address,data_in,address,data_out);
      
      #100 $finish;
    end
endmodule
