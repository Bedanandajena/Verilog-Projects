`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.02.2024 11:01:21
// Design Name: 
// Module Name: four_to_onemux
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
module two_to_onemux(i,s,y);
input [1:0]i;
input s;
output  y;
wire [2:0]w;
not g1(w[0],s);
and g2(w[1],w[0],i[0]);
and g3(w[2],i[1],s);
or g4(y,w[1],w[2]);
endmodule

module four_to_onemux(i,s,y );
input [3:0]i;
input [1:0]s;
output y;
wire [1:0]p;

 two_to_onemux t1(i[1:0],s[0],p[0]);
 two_to_onemux t2(i[3:2],s[0],p[1]);
 two_to_onemux t3(p[1:0],s[1],y);
 



endmodule
