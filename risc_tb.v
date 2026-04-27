`timescale 1ns/1ps

module tb_risc4bit;

reg clk;
reg [3:0] A, B;
reg [1:0] opcode;
wire [3:0] result;

// Instantiate DUT
risc4bit uut (
    .clk(clk),
    .A(A),
    .B(B),
    .opcode(opcode),
    .result(result)
);

// Clock generation
always #5 clk = ~clk;

initial begin
    clk = 0;

    // Test ADD
    A = 4'b0010; B = 4'b0011; opcode = 2'b00;
    #10;

    // Test SUB
    opcode = 2'b01;
    #10;

    // Test AND
    opcode = 2'b10;
    #10;

    // Test OR
    opcode = 2'b11;
    #10;

    $finish;
end

endmodule
