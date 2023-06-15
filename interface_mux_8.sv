interface mux_a();
  logic [7:0] in;
 logic [2:0] sel;
 logic out;
  modport rtl(input in,sel,output out);
  modport tb(output in,sel ,input out);
  
endinterface

module mux_8(mux_a.rtl inf);
  
  always@(inf.in or inf.sel )
    begin
      case(inf.sel)
        3'd0 : inf.out<=inf.in[0];
        3'd1 : inf.out<=inf.in[1];
        3'd2 : inf.out<=inf.in[2];
        3'd3 : inf.out<=inf.in[3];
        3'd4 : inf.out<=inf.in[4];
        3'd5 : inf.out<=inf.in[5];
        3'd6 : inf.out<=inf.in[6];
        3'd7 : inf.out<=inf.in[7];
          
      endcase
    end
endmodule
