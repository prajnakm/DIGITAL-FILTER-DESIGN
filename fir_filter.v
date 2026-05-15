`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.05.2026 22:16:27
// Design Name: 
// Module Name: fir_filter
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


module fir_filter(
    input clk,
    input signed [7:0] x,
    output reg signed [15:0] y
);

reg signed [7:0] delay1, delay2, delay3;

always @(posedge clk)
begin

    // Shift previous samples
    delay3 <= delay2;
    delay2 <= delay1;
    delay1 <= x;

    // FIR Equation
    y <= (1*x) + (2*delay1) + (3*delay2) + (4*delay3);

end

endmodule