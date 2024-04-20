`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.09.2023 22:53:14
// Design Name: 
// Module Name: test_8to1mux
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


module test_8to1mux();
reg [7:0]i;
reg [2:0]s;
wire y;
 mux_8to1  X1(i,s,y);
 initial
 begin
 i=8'b01100110;s=3'b000;#50;
 i=8'b011000110;s=3'b001;#50;
 i=8'b01100110;s=3'b010;#50;
 i=8'b01100110;s=3'b011;#50;
 i=8'b01100110;s=3'b100;#50;
 i=8'b01100110;s=3'b101;#50;
 i=8'b01100110;s=3'b110;#50;
 i=8'b01100110;s=3'b111;#50;
 
 end
 


    
endmodule
