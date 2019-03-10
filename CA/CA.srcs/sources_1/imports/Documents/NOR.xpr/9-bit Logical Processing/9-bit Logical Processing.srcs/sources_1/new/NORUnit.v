`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: ABS Enterprises
// Engineer: Noah Boot
// 
// Create Date: 02/16/2019 07:42:08 PM
// Design Name: 
// Module Name: NORUnit
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// Testing Git
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module NORUnit(
    A,
    B,
    O
    );
    
    input [8:0]A;
    input [8:0]B;
    output [8:0]O;

    NORGate gate0(A[0], B[0], O[0]);
    NORGate gate1(A[1], B[1], O[1]);
    NORGate gate2(A[2], B[2], O[2]);
    NORGate gate3(A[3], B[3], O[3]);
    NORGate gate4(A[4], B[4], O[4]);
    NORGate gate5(A[5], B[5], O[5]);
    NORGate gate6(A[6], B[6], O[6]);
    NORGate gate7(A[7], B[7], O[7]);
    NORGate gate8(A[8], B[8], O[8]);
    
endmodule

module NORGate(
    A,
    B,
    O
    );
    
    input A, B;
    output O;
    
    wire O = ~(A | B);
endmodule