`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/18/2019 10:07:03 PM
// Design Name: 
// Module Name: LeftShiftUnit
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

module RightShiftUnit(
    input wire [8:0]A,
    input wire [2:0]B,
    output reg [8:0]O
    );
    
    always @ (A, B, O) begin
        O = A >>> B;
    end
endmodule