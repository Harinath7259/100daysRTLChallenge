
module testbench_fsm ;

 reg in;
 reg clk;
 reg rst;
 wire out;
 //integer i ;
 always #40 clk = ~clk ;
 
 FSM DUT(.in(in), .clk(clk), .rst(rst), .out(out));
 
 initial begin 
 
   clk = 0;
   rst = 1;
   #3 rst = 0;
  
   #15 in = 1;
   #60 in = 0;
   #60 in = 1;
   #60 in = 1;
   #60 in = 1;
   #60 in = 1;
   #60 in = 1;
   #60 in = 0;
   #60 in = 0;
   #60 in = 1;
   #60 in = 1;
   #60 in = 1;
   #60 in = 1; 
   #60 in = 1;
   #60 in = 1;
   #60 in = 1;
   #60 in = 1;
   
 end
endmodule
