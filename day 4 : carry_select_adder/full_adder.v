
module full_adder(input a,b,cin,output sum,cout );

half_adder h1(a,b,s1,c1);
half_adder h2(s1,cin,sum,c2);
assign cout = c1 | c2;


endmodule
