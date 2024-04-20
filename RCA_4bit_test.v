
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.08.2023 23:27:02
// Design Name: 
// Module Name: RCA_4bit_test
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


module RCA_4bit_test;
reg [3:0] a,b;
reg c_in;
wire [3:0] sum;
wire c_out;
RCA_4bit X1(a,b,c_in,sum,c_out);
initial
begin
a=4'b0011;b=4'b1001;c_in=0;
#40;
a=4'b1000;b=4'b0110;c_in=0;
#40;



end


    
endmodule
