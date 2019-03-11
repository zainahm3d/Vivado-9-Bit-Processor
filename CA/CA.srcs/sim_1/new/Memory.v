`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Zain Ahmed
// 
// Create Date: 03/10/2019 04:15:27 PM
// Design Name: 
// Module Name: Memory
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


module Memory(
input wire [8:0] address,
    input readEN,
    input writeEN,
    input wire [8:0] writeData,
    output reg [8:0] readData
    );
    
    reg [511: 0] MemoryLocation;
    
    always @(readEN)begin
        if (readEN == 1) begin
            readData = MemoryLocation[address];
        end
        
        else if (writeEN == 1)begin
            MemoryLocation[address] = writeData;
        end
        
        else begin
        end
    end

endmodule