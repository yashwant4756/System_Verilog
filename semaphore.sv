program semaphore_1;
  semaphore sema =new(1);
  initial begin
    repeat(3) begin
      fork
        begin
          $display($time," 1:Waiting for key");
          sema.get(1);
          $display($time," 1:Got the key");
          #10;
          sema.put(1);
          $display($time," 1:Returning back key");
          #10;
          $display($time, " Display the time after execution of process 1");
        end
        begin
          $display($time," 2:Waiting for key");
          sema.get(1);
          $display($time," 2:Got the key");
          #10;
          sema.put(1);
          $display($time," 2:Returning back key");
          #10;
          $display($time," Display the time after execution of process 2");
        end
      join
    end
    #100;
    end
endprogram
