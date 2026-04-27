module risc4bit(
    input clk,
    input [3:0] A,
    input [3:0] B,
    input [1:0] opcode,
    output reg [3:0] result
);

always @(posedge clk) begin
    case(opcode)
        2'b00: result <= A + B;   // ADD
        2'b01: result <= A - B;   // SUB
        2'b10: result <= A & B;   // AND
        2'b11: result <= A | B;   // OR
    endcase
end

endmodule
