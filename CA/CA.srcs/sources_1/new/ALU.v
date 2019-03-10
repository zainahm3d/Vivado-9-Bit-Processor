`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/17/2019 03:11:24 PM
// Design Name: 
// Module Name: ALU
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


module ALU(input wire [3:0]opcode, input wire [8:0]A, input wire [8:0] B, input wire [2:0]data, output wire [8:0]O);
   
   wire [8:0]nor_result; 
   wire [8:0]add_result;
   wire [8:0]left_shift_result;
   wire [8:0]right_shift_result;
   wire [8:0]compare_result;
   wire [8:0]set_lower_result;
   wire [8:0]set_middle_result;
   wire [8:0]set_upper_result;
   wire [8:0] move_result;
   
    
   NORUnit Nor(A, B, nor_result);
   Adder Add(A, B, 1'b0, add_result);
   RightShiftUnit Rshift(A, B, right_shift_result);
   LeftShiftUnit Lshift(A, B, left_shift_result);
   Compare Compare(A, B, compare_result);
   SetLowerThird SLT(A, data, set_lower_result);
   SetMiddleThird SMT(A, data, set_middle_result);
   SetUpperThird SUT(A, data, set_upper_result);
   MoveInstruction Move(A, data, move_result);
   
   MUX Mux(opcode, add_result, nor_result, left_shift_result, right_shift_result, compare_result,
   set_lower_result, set_middle_result, set_upper_result, move_result, O);
   
endmodule
