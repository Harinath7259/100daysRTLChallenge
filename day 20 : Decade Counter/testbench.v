
module testbench ;

 reg clk,rst ;
 wire [3:0] q ;
 
 always #30 clk = ~clk ;
 
 decade_cntr in1(clk,rst,q);
 
 initial begin
 
 clk = 0;
 rst = 1;
 #20 rst = 0;
 
 end
endmodule
