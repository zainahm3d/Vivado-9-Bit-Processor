`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/27/2019 10:44:42 AM
// Design Name: 
// Module Name: XorUnit
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


module XorUnit(input wire [8:0] A, 
    input wire [8:0]B,
    output reg [8:0]O
    );
    
    always @(A, B, O) begin 
    
        O = A^B;
    end
    
endmodule
