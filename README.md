# Full-Adder
This repository contains the Verilog code for a simple 1-bit full adder and a comprehensive testbench to verify its functionality. This project is a fundamental example in digital logic design and serves as a great starting point for learning hardware description languages like Verilog.

What is a Full Adder?
A full adder is a digital combinational circuit that performs the arithmetic sum of three input bits. It takes three inputs: a, b, and a carry-in bit (cin). It produces two outputs: a sum bit and a carry-out bit (cout). It's a fundamental building block for larger arithmetic circuits like multi-bit adders and arithmetic logic units (ALUs).

How It Works
The Verilog implementation uses continuous assignments (assign) to describe the combinational logic for the sum and cout outputs.

Sum Logic
The sum output is the result of the exclusive-OR (XOR) operation on the three inputs. An XOR gate outputs 1 if an odd number of its inputs are 1.
Verilog
assign sum = a ^ b ^ cin;

Carry-Out Logic
The cout (carry-out) is generated whenever at least two of the three inputs are 1. This is achieved by OR-ing the AND combinations of every pair of inputs.
Verilog
assign cout = (a & b) | (b & cin) | (cin & a);

