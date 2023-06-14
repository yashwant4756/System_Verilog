module task_mod;
  real a;
  task kinetic_energy(input real m,v,output real kin_en);
    kin_en= 0.5 * (m*v*v);
  endtask
  initial
    begin
      kinetic_energy(1,2,a);
      $display("Kinetic energy in Joule=%.02f",a);
      kinetic_energy(15,5,a);
      $display("Kinetic energy in Joule=%.02f",a);
      
      kinetic_energy(3,4,a);
      $display("Kinetic energy in Joule=%.02f",a);
      
      
    end
endmodule
    
