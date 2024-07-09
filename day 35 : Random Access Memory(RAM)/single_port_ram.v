
module RAM #( parameter width = 8,
            parameter depth = 2**(10) ,
            parameter addr_width = 10
            )(input wr_en, clk, rst, [width-1:0] data_in,[addr_width-1:0] address, output  [width-1:0] data_out);
            
     reg [7:0] data ;
     reg [width-1:0] RAM [depth-1:0] ;
     integer i;
  
     always@(posedge clk or posedge rst ) begin
     
     if(rst) begin
      
       for(i = 0;i<depth;i=i+1) begin
         RAM[i] <= 32'h00000000 ;
       end
       
      end 
      else begin
       
       if(wr_en)
         RAM[address] <= data_in ;
         
       else
        data <= RAM[address];
           
      end
     end
     
     assign  data_out = data; 
     
endmodule
