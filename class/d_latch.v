module d_latch(
  input D, E,
  output reg Q,
  output NotQ
);

  always @(D, E) begin
    if (E)
      Q <= D;
    
  end

  assign NotQ = ~Q;

endmodule
/*
This is the 1-bit memory part.
D is the value you want to save
E is the enable/store signal
Q is the saved value
NotQ is just the opposite of Q
How it works:
When E is 1, the latch copies D into Q
When E goes back to 0, it keeps whatever value was last stored
NotQ is always the inverse of Q
*/
