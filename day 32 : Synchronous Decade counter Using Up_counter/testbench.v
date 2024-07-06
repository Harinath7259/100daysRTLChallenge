
module testbench ;

 reg  clk;
 wire rst,q0,q1,q2,q3 ;
 
 always #30 clk = ~clk ;
 
 sync_4bitup_cntr s1(clk,rst,q0,q1,q2,q3);
 
 initial begin
 
  clk = 0;
  
 end
 
endmodule
