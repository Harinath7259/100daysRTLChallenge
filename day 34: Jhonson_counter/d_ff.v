
module d_ff(input d,clk,rst,output reg qn, output qnbar);

 initial qn =0 ;

 always@(posedge clk or posedge rst)begin
  
   if(rst)
   
     qn <= 0;
     
   else begin
     
     qn <= d; 
     
   end
 end
 
 assign qnbar = ~qn ;
 
endmodule
