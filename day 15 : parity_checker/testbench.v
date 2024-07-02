
module testbench ;

reg [3:0]data;
wire valid;
integer i;
parity_checker p (.data(data), .valid(valid));

initial begin
 
for(i =0 ; i<10 ; i = i+1)
begin

data = $random;
#100;

end
end
endmodule
