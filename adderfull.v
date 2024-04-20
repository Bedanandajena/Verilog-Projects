
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.08.2023 23:01:42
// Design Name: 
// Module Name: adderfull
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


module adderfull(a,b,c_in,sum,c_out);
input a,b,c_in;
output sum,c_out;
assign sum=a^b^c_in;
assign c_out=(a&b)|(b&c_in)|(c_in&a);




   
endmodule
