
module jk_latch(input j, k, rst, clk, output reg qn, qnbar);

 always@(j or k or clk or rst) begin
 
  if(rst) begin
    qn = 0;
    qnbar = 1;
  end
  if(clk) begin
   case({j,k})
    2'b00 : begin qn = qn; qnbar = qnbar ; end
    2'b01 : begin qn = 0; qnbar = 1; end
    2'b10 : begin qn = 1; qnbar = 0; end
    2'b11 : begin qn = ~qn ; qnbar = ~qnbar ; end
   endcase
  end
   
  else
   begin
   qn = qn; qnbar = qnbar;
   end
  end 
endmodule
