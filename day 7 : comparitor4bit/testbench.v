
module testbench;

reg [3:0] a,b;
wire a_less_b,a_equal_b,a_greater_b;

comparitor_4bit c(a,b,a_less_b,a_greater_b,a_equal_b);

initial begin
a = 8 ; b = 5;
#100 a = 14 ; b = 5;
#100 a = 3 ; b = 3;
#200 a = 2 ; b = 8;
#200 a = 4 ; b = 5;
#100 a = 12 ; b = 12;

end
endmodule
