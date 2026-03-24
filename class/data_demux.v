module data_demux(
  input [7:0] data,
  input [1:0] sel,
  output reg [7:0] A,
  output reg [7:0] B,
  output reg [7:0] C,
  output reg [7:0] D
);

  always @(*) begin
    case (sel)
      2'b00: {D, C, B, A} <= {8'b0, 8'b0, 8'b0, data};
      2'b01: {D, C, B, A} <= {8'b0, 8'b0, data, 8'b0};
      2'b10: {D, C, B, A} <= {8'b0, data, 8'b0, 8'b0};
      2'b11: {D, C, B, A} <= {data, 8'b0, 8'b0, 8'b0};
    endcase
  end

endmodule

/*
This sends the input data to only one of the 4 memory locations.
data is the 8-bit value coming in
sel is the 2-bit address
A, B, C, D are the 4 outputs
How it works:
If sel = 00, data goes to A
If sel = 01, data goes to B
If sel = 10, data goes to C
If sel = 11, data goes to D
The other outputs get zero.
*/
