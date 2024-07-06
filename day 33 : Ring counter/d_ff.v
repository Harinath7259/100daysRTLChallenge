
module d_ff(input d,preset,clk,rst, output reg qn,output qnbar);

 always@(posedge clk or posedge rst or posedge preset)begin
   if(preset)
     qn = 1;
   else if(rst)
     qn = 0;
   else 
     qn <= d;
   
 end 
 
 assign qnbar = ~qn;
   
endmodule
