
module testbench ;

 reg [3:0] in;
 reg clk, rst ;
 wire [3:0] out;
 
 always #20 clk = ~ clk ;
 
 pipo DUT(in, clk, rst, out);
 
 initial begin
 
 clk = 0;
 rst = 1;
 #40;
 rst =0;
 
 repeat(10) begin
  in = $random ;
 #90;
 end
   
 end
endmodule
