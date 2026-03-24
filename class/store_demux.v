module store_demux(
  input store,
  input [1:0] sel,
  output reg A,
  output reg B,
  output reg C,
  output reg D
);

  always @(*) begin
    case (sel)
      2'b00: {D, C, B, A} <= {1'b0, 1'b0, 1'b0, store};
      2'b01: {D, C, B, A} <= {1'b0, 1'b0, store, 1'b0};
      2'b10: {D, C, B, A} <= {1'b0, store, 1'b0, 1'b0};
      2'b11: {D, C, B, A} <= {store, 1'b0, 1'b0, 1'b0};
    endcase
  end

endmodule
      
/*
This does the same idea, but for the store signal.
store is the button press
sel is the address
A, B, C, D are the store lines for each byte
How it works:
Only the selected byte gets store = 1
The other bytes get 0
That matters because you only want one memory location to update when you press the button.
*/
