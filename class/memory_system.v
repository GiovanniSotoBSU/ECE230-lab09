module memory_system(
  input [7:0] data,
  input store,
  input [1:0] addr,
  output [7:0] memory
);

  wire[7:0] data0, data1, data2, data3;
  wire store0, store1, store2, store3;
  wire [7:0] mem0, mem1, mem2, mem3;

  data_demux dm_data(
    .data(data),
    .se(addr),
    .A(data0),
    .B(data1),
    .C(data2),
    .D(data3)
  ):

  store_demux dm_store(
    .store(store),
    .sel(addr),
    .A(store0),
    .B(store1),
    .C(store2),
    .D(store3)
  );

  byte_memory byte0(
    .data(data0),
    .store(store0),
    .memory(mem0)
  );

  byte_memory byte1(
    .data(data1),
    .store(store1),
    .memory(mem1)
  );

  byte_memory byte2(
    .data(data2),
    .store(store2),
    .memory(mem2)
  );

  byte_memory byte3(
    .data(data3),
    .store(store3),
    .memory(mem3)
  );

  mux4x8 out_mux(
    .A(mem0),
    .B(mem1),
    .C(mem2),
    .D(mem3),
    .sel(addr),
    .Y(memory)
  );

endmodule

/*
This is the main memory circuit for Part 2.
It combines everything:
sends the input data to the selected byte
sends the store signal to the selected byte
keeps four separate 8-bit memory values
shows the selected byte on the output LEDs
Step by step:
data_demux sends the input data to one of four byte memories
store_demux sends the button press to that same one byte memory
each byte_memory stores its own value
mux4x8 picks the selected stored byte and sends it to the LEDs
*/
  
