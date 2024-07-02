
module testbench ;

 reg si,clk ;
 wire so;
 
 always #20 clk = ~clk ;
 
 siso DUT (si,clk,so);
 
 initial begin
  
  clk = 0;
  
  repeat(50)begin
    si = $random ;
    $display($time," si= %b , so =%b",si,so);
    #20; 
  end
  end
  
endmodule
