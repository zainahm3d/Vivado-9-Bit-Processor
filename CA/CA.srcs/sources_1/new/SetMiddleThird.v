`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/27/2019 10:53:14 AM
// Design Name: 
// Module Name: SetMiddleThird
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


module SetMiddleThird(
    input wire [8:0] A, 
    input wire [2:0] data,
    output reg [8:0] O
    );
    
    always @(A, data, O) begin
    
    O[0] = A[0];
    O[1] = A[1];
    O[2] = A[2];
    O[3] = data[0];
    O[4] = data[1];
    O[5] = data[2];
    O[6] = A[6];
    O[7] = A[7];
    O[8] = A[8];
    
    end 
endmodule
