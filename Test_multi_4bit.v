`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.08.2023 10:20:32
// Design Name: 
// Module Name: Test_multi_4bit
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


module Test_multi_4bit;
reg [3:0] A,B;
wire [7:0] P;
Multi_4bit M1(A,B,P);
initial
begin
A=4'b0011;B=4'b0010;
#40;
A=4'b1001;B=4'b0011;
#40;
A=4'b1011;B=4'b0011;
#40;
A=4'b0010;B=4'b0111;
#40;
A=4'b1010;B=4'b1010;
#40;
A=4'b1000;B=4'b0110;
#40;











end

    
endmodule
