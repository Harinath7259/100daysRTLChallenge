
module testbench ;
 
 reg S, R, clk;
 wire Qn ,Qnbar ;
  
 always #75 clk =~clk ;
 
 sr_ff f(S, R, clk,  Qn, Qnbar);

 initial begin
  S = 1 ; R = 0 ;  clk =0;
 #100  S = 1 ; R = 0 ; 
 #100 S = 0 ; R = 0 ; 
 #100 S = 0 ; R = 1;
 #100 S = 1 ; R = 1;
 #100 S = 1 ; R = 0;
 #100 S = 0 ; R = 1;
 #100 S = 0 ; R = 0;
 #100 S = 1 ; R = 1;
 #100 S = 1 ; R = 0;
 end
 
endmodule
