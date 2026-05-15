`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.05.2026 22:19:00
// Design Name: 
// Module Name: fir_filter_tb
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


module fir_filter_tb;

reg clk;
reg signed [7:0] x;
wire signed [15:0] y;

fir_filter uut(
    .clk(clk),
    .x(x),
    .y(y)
);

always #5 clk = ~clk;

initial begin

    clk = 0;

    x = 1; #10;
    x = 2; #10;
    x = 3; #10;
    x = 4; #10;
    x = 5; #10;
    x = 6; #10;

    $finish;

end

endmodule
