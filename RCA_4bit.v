
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.08.2023 23:14:00
// Design Name: 
// Module Name: RCA_4bit
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


module RCA_4bit(a,b,c_in,s,c_out);
input [3:0] a,b;
input c_in;
output [3:0]s;
output c_out;
wire c0,c1,c2;
adderfull f1(a[0],b[0],c_in,s[0],c0);
adderfull f2(a[1],b[1],c0,s[1],c1);
adderfull f3(a[2],b[2],c1,s[2],c2);
adderfull f4(a[3],b[3],c2,s[3],c_out);







endmodule
