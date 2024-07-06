
module test_bench ;

 reg preset,clk,rst;
 wire q0,q1,q2,q3 ;
 
 always #40 clk = ~clk;
 
 ring_counter r1(clk,rst,preset,q0,q1,q2,q3);
 
 initial begin
  clk = 0;
  rst = 1;
  #40 rst = 0;
  preset = 1;
  #10 preset = 0;
 end
 
endmodule
