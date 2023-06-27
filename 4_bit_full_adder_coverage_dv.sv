odule fulladder4bit(sum,c_out,a,b,c_in);
  output logic [3:0] sum;
  output logic  c_out;
  input logic [3:0] a,b;
  input logic c_in;
  
  logic c1,c2,c3;
  
  fulladd fa0(sum[0],c1,a[0],b[0],c_in);
  fulladd fa1(sum[1],c2,a[1],b[1],c1);
  fulladd fa2(sum[2],c3,a[2],b[2],c2);
  fulladd fa3(sum[3],c_out,a[3],b[3],c3);
endmodule

module fulladd(sum0,c_out0,a0,b0,c_in0);
  output logic sum0,c_out0;
  input logic a0,b0,c_in0;

  assign sum0 = a0^b0^c_in0;
  assign c_out0 = ((a0&b0)|c_in0&(a0^b0));
endmodule
  
  
