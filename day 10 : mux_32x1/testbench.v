
module testbench;

 reg [31:0] in;
 reg [4:0] sel;
 wire out;
 integer i;
 mux_32x1 m1(in,sel,out);
 
 initial begin
 in =  32'h10101010; sel = 0;
 for (i = 0;i<32;i = i+1)begin
  #32 sel = sel + 1;
  end
  
 end
endmodule 
