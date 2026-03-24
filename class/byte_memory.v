module byte_memory(
  input [7:0] data,
  input store,
  output reg [7:0] memory
);

  always @(data, store) begin
    if (store)
      memory <= data;
  end

endmodule
/*
This is the 8-bit version of the same idea.
data[7:0] is the 8-bit value you want to store
store is the save signal
memory[7:0] is the stored value
How it works:
When store = 1, it saves all 8 bits from data
When store = 0, it keeps the old 8-bit value
*/
