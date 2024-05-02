`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.02.2024 11:48:38
// Design Name: 
// Module Name: alu
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


module alu(a,b,s,y  );
input [3:0]a,b;
input [2:0]s;
output reg [3:0]y;
always@(a or b or s)
begin
case(s)
3'b000: y =a+b;
3'b001: y =a-b;
3'b010: y =a^b;
3'b011: y =a&b;
3'b100: y =a|b;
3'b101: y = ~(a^b);
3'b110: y =a<<b;//left shift
3'b111: y =a>>b;//right shift
default: y= 8'bxxxxxxxx;
endcase
end

endmodule
