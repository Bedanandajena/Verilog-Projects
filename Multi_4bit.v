`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.08.2023 10:03:43
// Design Name: 
// Module Name: Multi_4bit
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


module Multi_4bit(A,B,P);
input [3:0] A,B;
output [7:0] P;

wire [3:0] c,d,e,f;
wire [4:0] s,r,g;



assign c[0]=B[0]&A[0];
assign c[1]=B[0]&A[1];
assign c[2]=B[0]&A[2];
assign c[3]=B[0]&A[3];
assign d[0]=B[1]&A[0];
assign d[1]=B[1]&A[1];
assign d[2]=B[1]&A[2];
assign d[3]=B[1]&A[3];
assign e[0]=B[2]&A[0];
assign e[1]=B[2]&A[1];
assign e[2]=B[2]&A[2];
assign e[3]=B[2]&A[3];
assign f[0]=B[3]&A[0];
assign f[1]=B[3]&A[1];
assign f[2]=B[3]&A[2];
assign f[3]=B[3]&A[3];

RCA_4bit X1({1'b0,c[3:1]},d[3:0],1'b0,s[3:0],s[4]);
RCA_4bit X2(s[4:1],e[3:0],1'b0,r[3:0],r[4]);
RCA_4bit X3(r[4:1],f[3:0],1'b0,g[3:0],g[4]);

assign P[0]=c[0];
assign P[1]=s[0];
assign P[2]=r[0];
assign P[3]=g[0];
assign P[4]=g[1];
assign P[5]=g[2];
assign P[6]=g[3];
assign P[7]=g[4];










    
endmodule
