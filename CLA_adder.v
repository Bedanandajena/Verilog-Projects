`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.01.2024 23:56:23
// Design Name: 
// Module Name: CLA_adder
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


module CLA_adder(a,b,c1,s,c0);
input[3:0]a,b;
input c1;
output[3:0]s;
output c0;
wire[3:0]g;
wire[3:0]p;
wire[4:0]c;
assign g=a&b;
assign p=a^b;
assign c[0]=c1;
genvar i;
generate
for(i=0;i<4;i=i+1)
begin
assign c[i+1]=g[i]|p[i] &c[i];
assign s[i]=p[i]^c[i];
end
endgenerate
assign c0=c[4];





endmodule
