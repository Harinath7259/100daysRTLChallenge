
module SR_flipflop(input s, r, clk, rst, output reg qn, qnbar);

 always@(posedge clk or posedge rst)begin
  if(rst) begin
   qn = 0 ; qnbar = 1;
  end
  
  else
   begin
  case({s,r})
  
  2'b00 : begin qn = qn; qnbar = qnbar; end
  2'b01 : begin qn = 0 ; qnbar = 1; end
  2'b10 : begin qn = 1 ; qnbar = 0; end
  2'b11 : begin qn = 1'bx ; qnbar = 1'bx; end
  
  endcase
   end 
  end
endmodule
