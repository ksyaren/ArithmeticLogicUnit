module ALU(
  input [3:0] A,
  input [3:0] B,
  input [3:0] operation,
  output [3:0] result
);

  // Adder
  wire [3:0] sum;
  assign sum = A + B;

  // Subtractor
  wire [3:0] diff;
  assign diff = A - B;

  // Bitwise AND
  wire [3:0] bitwise_and;
  assign bitwise_and = A & B;

  // Bitwise OR
  wire [3:0] bitwise_or;
  assign bitwise_or = A | B;

  // Bitwise XOR
  wire [3:0] bitwise_xor;
  assign bitwise_xor = A ^ B;

  // Bitwise NOT
  wire [3:0] bitwise_not;
  assign bitwise_not = ~A;

  // Output Multiplexer
  reg [3:0] alu_output;

  always @(*)
    case (operation)
      4'b0000: alu_output = sum;
      4'b0001: alu_output = diff;
      4'b0010: alu_output = bitwise_and;
      4'b0011: alu_output = bitwise_or;
      4'b0100: alu_output = bitwise_xor;
      4'b0101: alu_output = bitwise_not;
      default: alu_output = 4'b0;
    endcase

  assign result = alu_output;

endmodule