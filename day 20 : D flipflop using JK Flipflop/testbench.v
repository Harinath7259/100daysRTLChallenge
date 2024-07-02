
module testbench ;

 reg j,k, clk;
 wire qn, qnbar ;
 
 always #60 clk = ~clk ;
 
 jk_flipflop d1( j, k, clk, qn, qnbar);
 
 initial begin
 clk = 0;
 repeat(16) begin
   j = $random ;
   k = $random ;
   #45;
 end 
 end
 
endmodule
