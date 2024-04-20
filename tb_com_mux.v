`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.02.2024 23:12:06
// Design Name: 
// Module Name: tb_com_mux
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


module tb_com_mux();
reg a,b;
wire eq,lt,gt;
comparator_mux c1(a,b,eq,lt,gt);
initial
begin
a=0;b=0;#50;
a=0;b=1;#50;
a=1;b=0;#50;
a=1;b=1;#50;
end






endmodule
