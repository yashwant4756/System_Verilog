module str;
  string A;
  string B;
  string C;
  initial
    begin
      A="ABCD";
      B="TECHNOLOGIES";
      C="tests";
      $display("%d",A.len());
      $display("%s",A.getc(4));
      $display("%s",A.tolower());
      $display("%s",C.toupper());
      $display("%s",B.compare(A));
      $display("%s",C.icompare(B));
    end
endmodule
      
