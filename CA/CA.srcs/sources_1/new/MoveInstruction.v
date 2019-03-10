`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/27/2019 06:12:48 PM
// Design Name: 
// Module Name: MoveInstruction
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


module MoveInstruction(
    input wire [8:0] A, 
    input wire [8:0] B,
    output reg [8:0] O
    );
    
    always @(A, B, O) begin
    
    O[0] = A[0];
    O[1] = A[1];
    O[2] = A[2];
    O[3] = A[3];
    O[4] = A[4];
    O[5] = A[5];
    O[6] = A[6];
    O[7] = A[7];
    O[8] = A[8];
    
    end 
    
endmodule
