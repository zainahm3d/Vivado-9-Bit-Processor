`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/20/2019 12:32:26 AM
// Design Name: 
// Module Name: RegisterMux
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


module RegisterMux(
    input wire [2:0]select, 
    input wire r1,
    input wire r2,
    input wire r3,
    input wire r4,
    input wire r5,
    input wire r6,
    input wire r7,
    input wire r8,
    
    output reg [8:0]O
    );
    
    always@ (select,r1,r2,r3,r4,r5,r6,r7,r8) begin
    
    if (select == 3'b000)
        O = r1;
    else if (select == 3'b001)
        O = r2;
    else if (select == 3'b010)
        O = r3;
    else if (select == 3'b011)
        O = r4;
    else if (select == 3'b100)
        O = r5;
    else if (select == 3'b101)
        O = r6;
    else if (select == 3'b110)
        O = r7;
    else if ( select == 3'b111)
        O = r8;
    else 
        O = 3'b000;
    end
    
endmodule
