
module testbench ;

 reg wr_en ,clk, rst;
 reg [7:0] data_in;
 wire [7:0] data_out;
 reg [9:0] address ;
 integer i;
 
 always #20 clk = ~clk ;
 
 RAM dut(wr_en, clk, rst, data_in, address, data_out);
 
 initial begin
  
  clk = 0;
  rst = 1;
  #15 wr_en = 1;rst = 0;
  for(i = 0;i <10 ;i=i+1) begin
    address = i;
    data_in = i*2;
    #40 ;
  end
  
  wr_en = 0;
  #1
  for(i = 0;i <15 ;i=i+1) begin
    address = i ;
    #40 ;
  end
  
 end
 
endmodule
