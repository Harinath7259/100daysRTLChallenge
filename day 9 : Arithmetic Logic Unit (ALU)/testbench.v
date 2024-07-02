
module testbench ;

 reg [7:0] a,b;
 reg [3:0] opcode;
 wire [15:0]out;
 reg [2:0] i;
 ALU a1(a,b,opcode,out);
 
 initial begin
 a = 200 ; b = 10;
 opcode[3] = 0 ;

 for (i =3'b0;i<3'b111;i = i+3'b001)begin
   opcode[2:0] = i;
   #75;
  end
  
  opcode[3] = 1;
 
 for(i = 3'b0;i<3'b111;i = i+1) begin
  opcode[2:0] = i;
  #75;
 end
 
 end  
endmodule
