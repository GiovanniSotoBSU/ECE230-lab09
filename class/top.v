module top(
    input [15:0] sw,
    input btnC,
    output [15:0] led
);

  d_latch part1(
    .D(sw[0]),
    .E(btnC),
    .Q(led[0]),
    .NotQ(led[1])
  );

  memory_system part2(
    .data(sw[15:8]),
    .store(btnC),
    .addr(sw[7:6]),
    .memory(led[15:8])
  );
  assign led[7:2] = 6'b0;

endmodule

/*
This connects the board switches, button, and LEDs to both parts of the lab.
Part 1
sw[0] = D
btnC = E
led[0] = Q
led[1] = NotQ
Part 2
sw[15:8] = 8-bit data input
sw[7:6] = address
btnC = store
led[15:8] = selected memory output
*/
