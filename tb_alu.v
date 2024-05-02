`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.02.2024 11:49:04
// Design Name: 
// Module Name: tb_alu
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


module tb_alu(  );
reg [3:0]a,b;
reg [2:0]s;
wire [3:0]y;
alu a1(a,b,s,y);
initial
begin
a=4'b0010;b=4'b1001;
s=3'b000;#40;
s=3'b001;#40;
s=3'b010;#40;
s=3'b011;#40;
s=3'b100;#40;
s=3'b101;#40;
s=3'b110;#40;
s=3'b111;#40;
end


endmodule
