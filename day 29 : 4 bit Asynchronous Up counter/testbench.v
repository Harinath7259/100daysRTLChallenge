
module testbench ;

 reg clk,rst ;
 wire q0,q1,q2,q3 ;
 
 always #30 clk = ~clk ;
 
 async_4bit_upcntr in1(clk,rst,q0,q1,q2,q3);
 
 initial begin
 
 clk = 0;
 rst = 1;
 #20 rst  = 0;
 
 end
endmodule
