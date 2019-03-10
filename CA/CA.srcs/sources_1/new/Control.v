`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/27/2019 10:58:26 AM
// Design Name: 
// Module Name: ControlUnitFromFetch
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


module InstructionDecode(
    input clock,
    input wire [8:0] instruction,
    output reg [3:0] opcode,
    output reg [1:0] read_reg1,
    output reg [2:0] read_reg2,
    output reg [1:0] write_reg,
    output reg [2:0] immediate_data
    );
    
    always @(posedge clock) begin
        
        //first 4 bits always opcode
        opcode[3] = instruction[8];
        opcode[2] = instruction[7];
        opcode[1] = instruction[6];
        opcode[0] = instruction[5];
        
        
        //next two bits always destination, read from in arithmetic instructions
        read_reg1[1] = instruction[4];
        read_reg1[0] = instruction[3];
        
        write_reg[1] = instruction[4];
        write_reg[0] = instruction[3];
        
        
        read_reg2[2] = instruction[2]; 
        read_reg2[1] = instruction[1];
        read_reg2[0] = instruction[0];
        
    end
endmodule
