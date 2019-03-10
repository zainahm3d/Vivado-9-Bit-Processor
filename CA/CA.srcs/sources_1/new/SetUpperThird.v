`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/27/2019 06:07:30 PM
// Design Name: 
// Module Name: SetUpperThird
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


module SetUpperThird(
    input wire [8:0] A, 
    input wire [2:0] data,
    output reg [8:0] O
    );
    
    always @(A, data, O) begin
    
    O[0] = A[0];
    O[1] = A[1];
    O[2] = A[2];
    O[3] = A[3];
    O[4] = A[4];
    O[5] = A[5];
    O[6] = data[0];
    O[7] = data[1];
    O[8] = data[2];
    
    end 
    
endmodule
