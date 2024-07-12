
module dual_port_RAM #(parameter data_width = 8, addr_width = 10, depth = 2**(addr_width))( data_in1, data_in2, 
                       addr_in1, addr_in2, wr_en1, wr_en2, clk, data_out1, data_out2);
  
  input [data_width-1:0] data_in1, data_in2;
  input [addr_width-1:0] addr_in1,addr_in2;
  input clk, wr_en1, wr_en2 ;
  output  [data_width-1:0] data_out1, data_out2 ;
  
  reg [data_width-1:0] RAM [depth-1:0] ;
  reg [data_width-1:0] out1, out2; 
  always@(posedge clk)
   begin 
     if(wr_en1)
        RAM[addr_in1] <= data_in1;
     else
        out1 <= RAM[addr_in1] ;
   end
 
  always@(posedge clk)
    begin
      if(wr_en2)
        RAM[addr_in2] <= data_in2;
      else
        out2 <= RAM[addr_in2] ;
    end
 
 assign data_out1 = out1 ;
 assign data_out2 = out2 ;
 
endmodule
