
module testbench ;

 reg en1, en2, clk;
 reg [9:0] addr_in1, addr_in2;
 reg [7:0] data_in1, data_in2 ;
 wire [7:0] data_out1, data_out2;
 integer i;
 
 always #25 clk = ~clk ;
 
 dual_portRAM DUT(data_in1, data_in2, addr_in1, addr_in2, en1,en2,clk,data_out1,data_out2);
 
 initial begin
  
  clk = 0;
  en1 = 1;en2=0;
  #2 ;
  for(i = 0;i<7;i=i+1) begin
     addr_in1 = i;
     data_in1 = i*2;
     #40;
  end
  
  en1 =0;en2 =1;
  #2 ;
  for(i = 0; i<7;i=i+1) begin
    addr_in2 = 10+i ;
    data_in2 = i*3 ;
    #40;
  end 
  #2 ; 
  
  en1 = 0 ;en2 = 0;
  
  for(i = 0;i<7;i=i+1)begin
    addr_in1 = i;
    addr_in2 = 10 + i;
    #35;
  end
  
  end
 
   
endmodule
