`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/10/2019 03:14:52 PM
// Design Name: 
// Module Name: pcTestBench
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


module pcTestBench();
    reg clk;
    reg increment = 1;
//    reg [8:0] add = 9'b000000000;
    PCRegister pc(.clock(clk), .inc(increment), .address(add));
 
    initial begin 
    clk = 1'b0;
    increment = 1'b1;
    end
        
endmodule
