`timescale 1ns / 1ps
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

//The fir_filter_tb.v file contains the testbench code used to verify the functionality of the FIR digital filter design.
//The testbench generates the required clock signal and input samples for simulation.
//The input signal x is declared as signed 8-bit data and the output signal y is declared as signed 16-bit data.
//The FIR filter module is instantiated as uut (Unit Under Test).
//The always #5 clk = ~clk statement generates a clock signal that toggles every 5 nanoseconds for synchronous filter operation.
//The initial block is used to apply different input sample values during simulation.
//The clock signal is initialized to 0 at the beginning of simulation.
//Sequential input samples 1, 2, 3, 4, 5, and 6 are applied to the filter using the input signal x.
//The #10 delay statements provide sufficient simulation time for observing filter output changes in the waveform.
//As new input samples are applied, the FIR filter processes current and previous samples to generate filtered output values.
//The $finish statement stops the simulation after all input samples are processed.
//This testbench verifies correct sample shifting, FIR filtering operation, and synchronous output generation using waveform analysis.
