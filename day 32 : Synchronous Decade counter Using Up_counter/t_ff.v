
module t_ff(input t,clk,rst, output reg qn,output qnbar);

 initial qn = 0;
 
 always@(posedge clk or posedge rst) 
   
   if(rst)
    qn <= 0;
   else begin
   
    if(t)
     qn <= ~qn;
    else
     qn <= qn ;
   end
   
 assign qnbar = ~qn ;
 
endmodule
