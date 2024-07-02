
module testbench ;

 reg in,clk,rst,r ; 
 wire [3:0]  out ;
 
 always #40 clk = ~clk ;
 
 integer i;
 
 bidir_shift_reg DUT (in,clk,rst,r,out);
 
 initial begin
  
   clk = 0;
   rst = 1;
   #50 rst = 0;
   
   for(i = 0 ; i < 10 ; i = i +1) begin
     in = $random ;
     r = $random ;
     
     #100;
   end
  end
 
endmodule
