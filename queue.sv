module queue;
  bit [7:0] queue0[$];
  string queue1[$];
  
  initial begin
    queue0 ={0,1,2,3,4};
    queue1 = {"red","blue","green"};
    
    $display("Size of queue0 is %0d",queue0.size());
    foreach(queue0[i]) $display("queue0[%0d]=%0d",i,queue0[i]);
    $display("Size of queue1 is %0d",queue1.size());
    foreach(queue1[i]) $display("queue1[%0d]=%0s",i,queue1[i]);
    queue0.push_back(5);
    queue0.pop_front();
    queue1.push_back("yellow");
    queue1.push_front("pink");
     foreach(queue0[i]) $display("queue0[%0d]=%0d",i,queue0[i]);
     foreach(queue1[i]) $display("queue1[%0d]=%0s",i,queue1[i]);
    
    
  end
endmodule
    
