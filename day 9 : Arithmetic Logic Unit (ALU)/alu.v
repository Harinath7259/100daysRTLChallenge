
module ALU(input [7:0] a,b,input [3:0]opcode,output reg [15:0] out );

 always@(a or b or opcode)begin
  if(opcode[3]==0)begin
 
   case(opcode[2:0])
   
   3'b000 : out = a + b;
   3'b001 : out = a - b;
   3'b010 : out = a * b;
   3'b011 : out = a / b;
   3'b100 : out = {a,b};
   3'b101 : out = a << 2;
   3'b110 : out = a >> 2;
   default :  out = 16'b0;
   
   endcase
   end
   
   else begin
   case(opcode[2:0])
   
   3'b000 :  out = a & b;
   3'b001 :  out = a | b;
   3'b010 :  out = ~(a & b);
   3'b011 :  out = ~(a | b);
   3'b100 :  out = a ^ b;
   3'b101 :  out = ~(a ^ b);
   default : out = 16'b0;
   
   endcase
   
  end
   
   end
endmodule
