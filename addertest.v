
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.08.2023 22:58:54
// Design Name: 
// Module Name: addertest
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


module addertest;
reg a,b,c_in;
wire sum,c_out;
adderfull F1(a,b,c_in,sum,c_out);
initial
begin
a=0;b=1;c_in=1;
#40;
a=1;b=0;c_in=1;
#40;
a=1;b=0;c_in=1;
#40;
end   
endmodule
