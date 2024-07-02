
module testbench ;

 reg  [3:0] t;
 reg clk,rst;
 wire  count0,count1,count2,count3 ;
 
 always #30 clk = ~clk ;
 
 async_4bitcounter DUT(t,clk,rst,count0,count1,count2,count3);
 
 initial begin
  t = 4'b1111 ;
  clk = 0 ;
  rst = 1;
  #10 rst = 0;
  
  end
  
endmodule
