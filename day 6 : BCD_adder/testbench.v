
module testbench ;

reg [7:0] a,b;
reg cin;
wire [7:0] sum;
wire cout;

BCD_adder b1(a,b,cin,sum,cout);

initial begin

a = 8'b00101001 ; b=8'b01000100; cin =0;
#100 a = 8'b00111001 ; b = 8'b00101001;
#200 a = 8'b00100011 ; b = 8'b00100101;cin =1;
#200 a = 8'b01001000 ; b = 8'b00101001;
#200 a = 8'b00011001 ; b = 8'b00101001;
#200 a = 8'b01100100 ; b = 8'b00010001;

end

endmodule
