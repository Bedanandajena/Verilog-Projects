`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.02.2024 23:11:33
// Design Name: 
// Module Name: comparator_mux
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

module four_to_1mux(i0,i1,i2,i3,s1,s0,y);
input i0,i1,i2,i3;
input s0,s1;
output y;
assign y = s1?(s0?i3:i2) : (s0?i1:i0);
endmodule

module comparator_mux(a,b,eq,lt,gt );
input a,b;
output eq,lt,gt;

four_to_1mux f1(1,0,0,1,a,b,eq);
four_to_1mux f2(0,1,0,0,a,b,lt);
four_to_1mux f3(0,0,1,0,a,b,gt);


endmodule
