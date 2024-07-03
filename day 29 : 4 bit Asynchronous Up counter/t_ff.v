
module t_flipflop(input t,clk,rst, output reg qn,output qbar);

always@(posedge clk or posedge rst) begin

 if(rst) begin
  qn = 0 ;
 end
 
 else begin
 
  case(t) 
   1'b0 : qn = qn ;
   1'b1 : qn = ~qn ;
  endcase
  
  end
  
  end
 assign qbar = ~qn ;
  
endmodule

