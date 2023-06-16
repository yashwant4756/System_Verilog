
class packet_c;
	bit [31:0] src, dst;
function new(int src, int dst = 10);
	this.src = src;
	this.dst = dst;
endfunction
  
  function void display();
    $display("src = %0d dst = %0d",src,dst);
  endfunction
endclass

module way_2;
packet_c pkt_h;
  initial begin pkt_h = new(45,23);
  pkt_h.display();
  
end
endmodule
