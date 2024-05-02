`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.02.2024 23:41:29
// Design Name: 
// Module Name: tb_addersutractor
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


module tb_addersutractor(  );
reg [3:0]a,b;
reg c;
wire [3:0]sum;
wire c_out;
adder_subtractor s1(a,b,c,sum,c_out);
initial
begin
a=4'b0001;b=4'b0110;c=0;#40;
a=4'b0101;b=4'b0110;c=0;#40;
a=4'b1001;b=4'b0010;c=1;#40;
a=4'b1101;b=4'b1110;c=1;#40;
a=4'b1001;b=4'b1110;c=1;#40;
a=4'b1101;b=4'b1110;c=0;#40;
end

endmodule
