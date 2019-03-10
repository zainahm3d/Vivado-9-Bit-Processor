`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/08/2019 05:48:54 PM
// Design Name: 
// Module Name: CPU9bits
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


module CPU9bits(
    input wire clock,
    input wire reset,
    output reg halt
    );
    
    //for ALU 
    wire [3:0]opcode;
    wire [8:0]ALUinput1;
    wire [8:0]ALUinput2;
    wire [2:0]immediateData;
    wire [8:0]ALUoutput;
    
    //for register file 
    wire write_en;
    wire [2:0]op_index0; //first register
    wire [2:0]op_index1;//second register
    wire [2:0]write_index; //destination
    wire [8:0]write_data;
    wire [8:0]op0; //instruction operand 1
    wire [8:0]op1; //instruction operand 2
    
    //for fetch unit
    wire instructionFromFetch;
    
    ALU alu(opcode, ALUinput1, ALUinput2, immediateData, ALUoutput);
    RegisterFile regFile(reset, clock, op_index0, op_index1, write_index, write_data, op0, op1);
    FetchUnit fetch(clock, instructionFromFetch);
    //InstructionDecode control(clock, instructionFromFetch, opcode, 
    
endmodule
