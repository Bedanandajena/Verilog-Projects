`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.08.2023 00:13:17
// Design Name: 
// Module Name: mux_8to1
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


module mux_8to1(i,s,y);
input [7:0]i;
input [2:0]s;
output y;
wire [7:0]w;
assign w[0]=(!s[2])&(!s[1])&(!s[0])&i[0];
assign w[1]=(!s[2])&(!s[1])&(s[0])&i[1];
assign w[2]=(!s[2])&(s[1])&(!s[0])&i[2];
assign w[3]=(!s[2])&(s[1])&(s[0])&i[3];
assign w[4]=(s[2])&(!s[1])&(!s[0])&i[4];
assign w[5]=(s[2])&(!s[1])&(s[0])&i[5];
assign w[6]=(s[2])&(s[1])&(!s[0])&i[6];
assign w[7]=(s[2])&(s[1])&(s[0])&i[7];

assign y=w[0]|w[1]|w[2]|w[3]|w[4]|w[5]|w[6]|w[7];





    
endmodule
