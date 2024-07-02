
module Testbench ;

 reg j ,k, clk ;
 wire qn, qnbar;
 
 always #60 clk = ~clk ;
 
 jk_flipflop i1( j, k, clk, qn, qnbar);
 
 initial begin
 
  j =1 ; k =0 ; clk = 0;
 #100 j = 0 ; k = 1;
 #100 j = 0 ; k = 0;
 #100 j = 1 ; k = 1;
 #100 j = 1 ; k = 1;
 #100 j = 1 ; k = 0 ;
 #100 j = 0 ; k = 0;
 #100 j = 1 ; k = 1;
 #100 j = 1 ; k = 0;
 
 end
  
endmodule
