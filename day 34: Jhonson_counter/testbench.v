
module testbench ;

 reg clk,rst;
 wire qn3,qn2,qn1,qn0 ;
 always #40 clk = ~clk ;

 jhonson_cntr j1(clk,rst,qn3,qn2,qn1,qn0);

 initial begin

  clk = 0;
  rst = 1;
  #2 rst = 0;
 
 end
endmodule
