`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/17/2019 04:07:53 PM
// Design Name: 
// Module Name: clockModule
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


module clockModule();

reg clk;

initial begin
    clk = 1'b0;
end

always begin
    #5 clk = ~clk;
end
endmodule
