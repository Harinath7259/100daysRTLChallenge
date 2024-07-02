
module multiplier4x1 (input [3:0] a,b, output [7:0] out );

 
 wire [12:0] c;
 wire [7:0] s;
 
  //for out[0]

  assign out[0] = a[0]&b[0];
  HA h1(a[1]&b[0],a[0]&b[1],out[1],c[0]);
  
  FA f1(a[2]&b[0],a[1]&b[1],c[0],s[0],c[1]);
  
  FA f2(a[3]&b[0],a[2]&b[1],c[1],s[1],c[2]);
  
  HA h2(a[3]&b[1],c[2],s[2],c[3]);
  
  HA h3(b[2]&a[0],s[0],out[2],c[4]);
  
  FA f3(a[1]&b[2],s[1],c[4],s[3],c[5]);
  
  FA f4(a[2]&b[2],s[2],c[5],s[4],c[6]);
  
  FA f5(a[3]&b[2],c[3],c[6],s[5],c[7]);
  
  HA h4(s[3],a[0]&b[3],out[3],c[8]);
  
  FA f6(a[1]&b[3],s[4],c[8],out[4],c[9]);
  
  FA f7(a[2]&b[3],s[5],c[9],out[5],c[10]);
  
  FA f8(a[3]&b[3],c[7],c[10],out[6],out[7]);
  
  

endmodule
