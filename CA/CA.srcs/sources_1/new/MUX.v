`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/17/2019 08:40:45 PM
// Design Name: 
// Module Name: MUX
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

//input array length will change based on number of units in ALU
module MUX(input wire [3:0] select, 
input wire [8:0]add_sub_output, 
input wire [8:0]nor_output, 
input wire [8:0]rightShift_output,
input wire [8:0]leftShift_output,
input wire [8:0]compare_output,
input wire [8:0] set_lower_output,
input wire [8:0] set_middle_output,
input wire [8:0] set_upper_output,
input wire [8:0] move_output,
output reg [8:0]O);
    
    always @(add_sub_output, nor_output, rightShift_output, leftShift_output, compare_output, select,
    set_lower_output, set_middle_output, set_upper_output, move_output) begin 
    if (select == 4'b0000)
        O = add_sub_output;
    else if (select == 4'b0001) 
        O = nor_output;
    else if (select == 4'b0010) 
        O = rightShift_output;
    else if (select == 4'b0011) 
       O = leftShift_output;
    else if (select == 4'b0100)
       O = compare_output;
    else if (select == 4'b0101)
       O = set_lower_output;
    else if (select == 4'b0110)
       O = set_middle_output;
    else if (select == 4'b0111)
       O = set_upper_output;         
    else  //(select == 1000)
        O = move_output;
    end 
    
endmodule
