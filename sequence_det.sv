module sequence_det(clk,reset,seq_in,seq_out);
  input logic clk,reset,seq_in;
  output logic seq_out;
  logic [1:0] cur_state;
  typedef enum{S0,S1,S2,S3} state;
  state s;
  always@(posedge clk)
    begin
      s = s.first();
      if(reset==1)
        cur_state<=s;
        seq_out<=0;
    end
  
  always@(posedge clk)
    begin
      case(cur_state)
        s:begin
        cur_state <= seq_in?s.next():s;
          seq_out<=0;
        end
        s.next():begin
         cur_state <=  seq_in?s.next():s.next(2);
        seq_out<=0;
        end
        s.next(2):begin
         cur_state <= seq_in?s.next(3):s;
        seq_out<=0;
        end
        s.next(3):begin
         cur_state <=  seq_in? s.next():s.next(2);
        seq_out<= seq_in?1:0;
        end
      default: begin
        cur_state<=s;
               seq_out<=0;        
      end
      endcase
    end
endmodule
