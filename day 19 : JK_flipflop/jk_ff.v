
module jk_flipflop(input j,k,clk, output reg qn,qnbar);

always@(posedge clk)begin
 
 case({j,k})
  2'b00 : begin qn = qn ; qnbar = qnbar ; end
  2'b01 : begin qn = 0 ; qnbar = 1; end
  2'b10 : begin qn = 1 ; qnbar = 0; end
  2'b11 : begin qn = ~qn ; qnbar = ~qnbar; end 
 endcase
end
endmodule

