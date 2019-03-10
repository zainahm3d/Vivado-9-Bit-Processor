`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/10/2019 02:56:10 PM
// Design Name: 
// Module Name: fetchTestBench
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


module fetchTestBench();

reg [0:0] cl;
wire [8:0] ins;


FetchUnit dog(
    .clock(cl),
    .instruction(ins)
);

initial begin
cl = 1;
#5
cl = 0;
#5
cl = 1;
#5
cl = 0;
end


endmodule
