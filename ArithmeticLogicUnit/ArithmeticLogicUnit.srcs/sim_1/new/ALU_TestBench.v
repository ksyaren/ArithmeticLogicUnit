`timescale 1ns / 1ps

module ALU_Test;

  // Inputs
  reg [3:0] A;
  reg [3:0] B;
  reg [3:0] operation;

  // Outputs
  wire [3:0] result;

  // Instantiate the ALU module
  ALU dut (
    .A(A),
    .B(B),
    .operation(operation),
    .result(result)
  );

  // Initialize the inputs
  initial begin
    A = 4'b0101;
    B = 4'b0011;
    operation = 4'b0000; // Addition
    #10;
    operation = 4'b0001; // Subtraction
    #10;
    operation = 4'b0010; // Bitwise AND
    #10;
    operation = 4'b0011; // Bitwise OR
    #10;
    operation = 4'b0100; // Bitwise XOR
    #10;
    operation = 4'b0101; // Bitwise NOT
    #10;
    $finish;
  end

  // Display the results
  always @(result)
    begin
      $display("A = %b, B = %b, Operation = %b, Result = %b", A, B, operation, result);
    end

endmodule
