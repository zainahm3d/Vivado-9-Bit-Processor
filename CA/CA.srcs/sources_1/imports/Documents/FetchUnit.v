`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/17/2019 09:38:39 PM
// Design Name: 
// Module Name: FetchUnit
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


module FetchUnit(
    input clock,
    output wire [8:0] instruction
    );
    
    wire [8:0] instructionAddress;
    wire [8:0] incrementedAddress;
    
    PCRegister pcReg(clock, incrementedAddress, instructionAddress);
    Fetch Fetch(clock, instructionAddress, instruction);
    Add1 Add1(instructionAddress, incrementedAddress);
    
    
    
endmodule

module Fetch(
    input clock,
    input [8:0]read_address,
    output [8:0] instruction
);

    

endmodule 


module Add1(
    input wire [8:0]A, 
    output reg [8:0]O
);

    always @ (A, O) begin
    
    O <= A + 1;
    
    end

endmodule 