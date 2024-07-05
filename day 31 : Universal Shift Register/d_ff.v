
module d_ff(input d, clk, rst, output reg qn ,qnbar);

 always@(posedge clk or posedge rst)
  
  if(rst) begin
    qn <= 0;
    qnbar <= 1;
  end
  
  else begin
  
   qn    <= d;
   qnbar <= ~d;
   
  end
   
endmodule
