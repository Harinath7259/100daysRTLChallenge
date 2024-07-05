
module testbench ;

 reg serial_in_lshft, serial_in_rshft,clk,rst;
 reg [3:0] b;
 reg [1:0] sel;
 wire [3:0] out;
 integer i;
 
 always #40 clk = ~clk;
 
 universal_shft_reg i1(serial_in_rshft,serial_in_lshft,clk,rst,b,sel,out);
 
 initial begin
  
  clk = 0;
  for(i =0;i<10;i=i+1)begin
    serial_in_lshft = $random;
    serial_in_rshft = $random;
    rst = $random;
    b = $random;
    sel = $random;
    
    #100;
   end
  end
    
endmodule
