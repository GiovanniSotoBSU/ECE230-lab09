module mux4x8(
  input [7:0] A,
  input [7:0] B,
  input [7:0] C,
  input [7:0] D,
  input [1:0] sel,
  output reg [7:0] Y
);

  always @(*) begin
    case(sel)
      2'b00: Y <= A;
      2'b01: Y <= B;
      2'b10: Y <= C;
      2'b11: Y <= D;
    endcase
  end

endmodule
  
/*
This chooses which stored byte gets shown on the LEDs.
Inputs A, B, C, D are the 4 stored bytes
sel is the address
Y is the chosen output
How it works:
If sel = 00, show byte A
If sel = 01, show byte B
If sel = 10, show byte C
If sel = 11, show byte D
*/
