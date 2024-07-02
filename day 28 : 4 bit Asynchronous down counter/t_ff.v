
module t_flipflop(input t,clk,rst,output reg qn,output qnbar);

always@(posedge clk or posedge rst) begin
  if(rst) begin
    qn <= 0;
  end
  
  else begin
   case(t)
   
    0 : qn <= qn ;
    1 : qn <= ~qn ;
    
   endcase
 end
 
 end
 assign qnbar = ~qn ;
  
endmodule
