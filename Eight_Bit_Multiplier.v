`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/11/2023 09:11:37 PM
// Design Name: 
// Module Name: Eight_Bit_Multiplier
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


module Eight_Bit_Multiplier(
    input [7:0] A,
    input [7:0] B,
    output [15:0] P
);

reg [15:0] P_reg;
reg [7:0] B_reg;
reg [3:0] i;

assign P = P_reg;

always @* begin
    P_reg = 16'b0;
    B_reg = B;
    for (i = 0; i < 8; i = i + 1) begin
        if (B_reg[0] == 1) begin
            P_reg = P_reg + (A << i);
        end
        B_reg = B_reg >> 1;
    end
end

endmodule


