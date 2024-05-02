`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.02.2024 23:41:04
// Design Name: 
// Module Name: adder_subtractor
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
module full_adder(a,b,c,sum,c_out);
input a,b,c;
output sum,c_out;
assign sum=a^b^c;
assign c_out=(a&b)|(b&c)|(c&a);
endmodule


module adder_subtractor(a,b,c,sum,c_out );
input [3:0]a,b;
input c;
output [3:0]sum;
output c_out;
wire [2:0]p;
wire [3:0]w;

xor g1(w[0],c,b[0]);
xor g2(w[1],c,b[1]);
xor g3(w[2],c,b[2]);
xor g4(w[3],c,b[3]);

full_adder f1(a[0],w[0],c,sum[0],p[0]);
full_adder f2(a[1],w[1],p[0],sum[1],p[1]);
full_adder f3(a[2],w[2],p[1],sum[2],p[2]);
full_adder f4(a[3],w[3],p[2],sum[3],c_out);







endmodule
