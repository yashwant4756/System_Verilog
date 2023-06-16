module counter(clk,reset,cout);
  input logic clk,reset;
  output logic [2:0] cout;
  logic [2:0] next_state,cur_state;
  typedef enum {S0=3'd0,S1,S2,S3,S4} state;
  state s;
  always@(posedge clk)
    begin
      s = s.first();
      if(reset==1) begin
        cur_state<=s;
        cout<=0;
      end
      else if(cur_state==s.last()) begin
        next_state<=s.first;
      cout<=0;
      end
        else
          cur_state = next_state;
      
    end
  
  always@(posedge clk)
    begin
      case(cur_state)
        s.first():begin
          cur_state <= s.first();
          next_state<=s.next();
            cout<=1;
        end
        s.next():begin
         cur_state <= s.next();
          next_state<=s.next(2);
            cout<=2;
        end
        s.next(2):begin
          cur_state <= s.next(2);
          next_state<=s.next(3);
            cout<=3;
        end
        s.next(3):begin
          cur_state <= s.next(3);
          next_state<=s.last;
            cout<=4;
        end    
      endcase
    end
endmodule
