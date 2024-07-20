
module elevator( clk, rst, g,f1,f2,f3, floor);

 input clk;
 input rst;
 input g, f1, f2, f3;
 output [1:0] floor;

 reg [1:0] state ;
 parameter A = 2'b00, B = 2'b01, C = 2'b10, D = 2'b11 ;
 
 always@(posedge clk or posedge rst) begin
 
   if(rst)
     state <= A;
   else begin
   
   case(state)
     
     A : begin
          case(1)
           g :  state <= A;
           f1 : state <= B;
           f2 : state <= C;
           f3 : state <= D;
         endcase
         end
         
     B : begin
          case(1)
           g :  state <= A;
           f1 : state <= B;
           f2 : state <= C;
           f3 : state <= D;
         endcase
         end
         
     C : begin
          case(1)
           g :  state <= A;
           f1 : state <= B;
           f2 : state <= C;
           f3 : state <= D;
         endcase
         end
         
     D : begin
          case(1)
           g :  state <= A;
           f1 : state <= B;
           f2 : state <= C;
           f3 : state <= D;
         endcase
         end
   default : state <= A; 
      
    endcase
    
  end

  end
  assign floor = state ;
  
endmodule
