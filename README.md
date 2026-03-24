# Sequential Circuits: Latches

In this lab, you learned about the basic building block of sequential circuits: the latch.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Names
Team 43: Dylan Owen, Giovanni Soto
## Summary
In this lab, we learned how to use sequential logic, and how it is different than combinational logic, mainly by storing values over time. We learned how to use always, and reg outputs to build D-latches and a four-byte system.

## Lab Questions

###  Why can we not just use structural Verilog to implement latches?
A latch needs feedback to create a combinational loop. We can give the behavior of the memory using behavioral Verilog. 

### What is the meaning of always @(*) in a sensitivity block?
This means the block should run whenever there is an input change inside the block. This avoids listing each and every signal.

### What importance is memory to digital circuits?
Memory allows circuits to keep values instead of just reacting to inputs. This helps the computer store information.