`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.02.2024 11:17:19
// Design Name: 
// Module Name: tb_mux
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


module tb_mux();
reg [3:0]i;
reg [1:0]s;
wire y;
 four_to_onemux m1(i,s,y);
 initial
 begin
 i=4'b1000;s=2'b00;#50;
  i=4'b1000;s=2'b01;#50;
 i=4'b1000;s=2'b10;#50;
 i=4'b1000;s=2'b11;#50;

 end

endmodule
