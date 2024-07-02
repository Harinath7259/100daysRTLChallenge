
module testbench ;

reg j, k, clk,rst;
wire qn, qnbar;
always #50 clk = ~clk ;

master_slave_jkff m1(j,k,rst ,clk,qn,qnbar);

initial begin
clk = 0;
rst = 1;
#20 rst = 0;
  
repeat(30) begin
 j =$random ;
 k = $random;
 #33;
 end

 end
endmodule
