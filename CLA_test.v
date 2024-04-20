`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.01.2024 00:19:09
// Design Name: 
// Module Name: CLA_test
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


module CLA_test( );
reg[3:0]a,b;
reg c1;
wire [3:0]s;
wire c0;
CLA_adder M1(a,b,c1,s,c0);
reg clk=0;
always #10 clk= ~clk;
initial
begin
a=6;b=8;c1=0;
#20;
a=7;b=11;c1=0;
#20;
a=12;b=9;c1=1;
#20;
a=13;b=4;c1=1;
#20;

end





endmodule
