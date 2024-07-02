
module testbench ;

reg T, clk ,rst;
wire qn, qnbar;

always #60 clk = ~clk ;

T_flipflop I1(T, rst,clk, qn, qnbar);

initial begin
clk = 0;rst = 1;
#20 rst = 0;
repeat(20) begin
 T = $random ;
 #45 ;
end
$display(" T = %b, clk = %b, qn = %b, qnbar = %b",T,clk,qn,qnbar);

end
endmodule
