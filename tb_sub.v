`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.02.2024 00:20:34
// Design Name: 
// Module Name: tb_sub
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


module tb_sub(   );
reg [3:0]a,b;
reg c;
wire [3:0]diff;
subtractor s1(a,b,c,diff);
initial
begin
a=4'b0011;b=4'b1001;c=0;#40;
a=4'b1011;b=4'b0001;c=1;#40;
a=4'b1000;b=4'b0011;c=0;#40;
a=4'b0011;b=4'b1001;c=1;#40;
a=4'b1111;b=4'b0111;c=0;#40;
a=4'b1011;b=4'b0011;c=1;#40;

end

endmodule
