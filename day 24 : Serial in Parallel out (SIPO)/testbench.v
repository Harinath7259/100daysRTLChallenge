
module testbench ;

 reg d, clk, clr;
 wire [3:0] q;
 
 always #40 clk = ~clk ;
 
 sipo DUT(d, clk, clr, q);
 
 initial begin
  clk = 0;
  clr = 1;
  #20 clr = 0;
  
  repeat(25) begin
   d = $random ;
   #40;
  end
 
 end 
endmodule
