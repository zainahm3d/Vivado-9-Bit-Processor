`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/17/2019 05:20:13 PM
// Design Name: 
// Module Name: PCRegister
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


module PCRegister(input clock, input inc, output reg [8:0]address);


always @ (posedge clock) begin
    
    address <= address + inc;
    
    end 
endmodule
