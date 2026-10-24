# 4-bit-ALU-Verilog
# 4-bit Arithmetic Logic Unit (ALU)

## Overview
This project implements a 4-bit Arithmetic Logic Unit (ALU) using Verilog HDL. The ALU performs basic arithmetic and bitwise logical operations on two 4-bit inputs.

## Operations

| Select (`sel`) | Operation |
|---|---|
| `000` | Addition |
| `001` | Subtraction |
| `010` | Bitwise AND |
| `011` | Bitwise OR |
| `100` | Bitwise XOR |

## Tools Used
- Verilog HDL
- EDA Playground
- Icarus Verilog
- EPWave (waveform visualization)

## Verification
A Verilog testbench applies input combinations to the ALU and checks the resulting output in simulation.

## How to Run
1. Open EDA Playground.
2. Paste `alu.v` into the Design editor.
3. Paste `testbench.v` into the Testbench editor.
4. Select Icarus Verilog and run the simulation.
5. Inspect the console output and waveforms.

## Future Improvements
- Add a zero flag.
- Test arithmetic boundary cases.
- Expand the instruction set.
