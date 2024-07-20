
module testbench ();
 reg clk;
 reg  reset;
 reg [1:0] select ;
 reg [5:0] money;
 
 
 wire Chocolate, icecream, cold_drink;
 wire [5:0] balance;
 
 always #30 clk = ~clk ;
 
vending_machine vm(clk, reset, select, money, balance, Chocolate, icecream, cold_drink);

 initial begin
  clk = 0;
  reset = 1;
   
   #25 money = 6'd10; select = 2'b00 ;
   #1 reset = 1;
   #70 money = 6'd20 ; select = 2'b01 ;
   #125 money = 6'd50 ; select = 2'b10 ;
   #175 money = 6'd10 ; select = 2'b00 ; 
   #225 money = 6'd20 ; select = 2'b01 ;
   #275  money = 6'd50 ; select = 2'b10 ;
   
 end 
  
endmodule
