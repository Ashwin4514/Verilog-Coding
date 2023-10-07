`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/11/2023 09:36:10 PM
// Design Name: 
// Module Name: tb_multiplier_8bit
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


module tb_multiplier_8bit;

    // Inputs
    reg [7:0] A;
    reg [7:0] B;

    // Output
    wire [15:0] P;

    // Instantiate the multiplier module
    
    Eight_Bit_Multiplier uut (.A(A),.B(B),.P(P));
    // Clock generation
    reg clk;
    always begin
        #5 clk = ~clk; // Generate a clock with a period of 10 time units
    end

    // Testbench initialization
    initial begin
        clk = 0;

        // Apply stimulus
        A = 8'b10101010; // Example input A
        B = 8'b11001100; // Example input B

        // Wait a few clock cycles before checking the result

        // Check the result
        if (P == 16'b0010010111110000) begin
            $display("Test Passed: P = 16'b%b", P);
        end else begin
            $display("Test Failed: P = 16'b%b", P);
        end

        // Finish the simulation
        $finish;
    end

endmodule

