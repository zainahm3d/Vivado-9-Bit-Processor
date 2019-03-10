`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/27/2019 11:00:51 AM
// Design Name: 
// Module Name: fetchMoved
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


module fetchMoved(
    input [8:0] PC,
    input clock,
    output wire [8:0] instruction,
    output wire inc_PC
    );
    
    reg [8:0] mem_addr;
    
    always @(posedge clock) begin
        mem_addr[0] = PC[0];
        mem_addr[1] = PC[1];
        mem_addr[2] = PC[2];
        mem_addr[3] = PC[3];
        mem_addr[4] = PC[4];
        mem_addr[5] = PC[5];
        mem_addr[6] = PC[6];
        mem_addr[7] = PC[7];
        mem_addr[8] = PC[8];
    end
    
    //Contents at mem_addr will be read and placed in instruction
    

endmodule
