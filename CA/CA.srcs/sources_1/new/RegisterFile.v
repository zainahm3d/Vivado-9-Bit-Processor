`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/17/2019 04:58:23 PM
// Design Name: 
// Module Name: RegisterFile
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


module RegisterFile(input wire reset,
 input wire clock, 
 input wire write_en, 
 input wire [2:0]op_index, //first register
 input wire [2:0]write_index, //destination register 
 input wire [8:0]write_data, 
 output wire [8:0]op0, //instruction operand 1
 output wire [8:0]op1); //instruction operand 2

 wire [8:0] r1_out, r2_out, r3_out, r4_out, r5_out, r6_out, r7_out, r8_out;

//General purpose
registerModule X(reset, clock, write_index, write_data, r1_out);
registerModule Y(reset, clock, write_index, write_data, r2_out);
registerModule M(reset, clock, write_index, write_data, r3_out);
registerModule A(reset, clock, write_index, write_data, r4_out);
registerModule B(reset, clock, write_index, write_data, r5_out);
registerModule C(reset, clock, write_index, write_data, r6_out);

//Z register
registerModule Z(reset, clock, write_index, 9'b000000000, r7_out);

//J register
registerModule J(reset, clock, write_index, r8_out);


RegisterMux m1(op_index0, r1_out, r2_out, r3_out, r4_out, r5_out, r6_out, r7_out, r8_out, op0);
RegisterMux m2(op_index1, r1_out, r2_out, r3_out, r4_out, r5_out, r6_out, r7_out, r8_out, op1);

endmodule

module registerModule(input reset, input clock, input wire En, input wire [8:0]Din, output reg [8:0]Dout);
    
    always @ (posedge clock) begin 
        if (reset)
            Dout <= 9'b000000000;
         
        else if (En == 1'b1 ) 
           Dout <= Din;
        end
    
endmodule
