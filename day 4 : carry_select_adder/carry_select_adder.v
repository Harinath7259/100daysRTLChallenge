
module carry_select_adder(input [3:0] a,b,input cin,output [3:0] sum,output cout);
wire [3:0] s1;
wire [3:0] s2;
ripple_CA r1(a,b,0,s1,c1);
ripple_CA r2(a,b,1,s2,c2);

mux21 m1(s1[0],s2[0],cin,sum[0]);
mux21 m2(s1[1],s2[1],cin,sum[1]);
mux21 m3(s1[2],s2[2],cin,sum[2]);
mux21 m4(s1[3],s2[3],cin,sum[3]);

mux21 m5(c1,c2,cin,cout);

endmodule
