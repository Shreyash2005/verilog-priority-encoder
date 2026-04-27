# verilog-priority-encoder
Designed and verified priority encoder circuits in Verilog, including PE4:2 and PE8:3 modules with simulation testbenches and FPGA implementation.
# Verilog Priority Encoder

This project implements and verifies priority encoder circuits in Verilog for EEC 180 Digital Systems II.

## Project Overview

The goal of this lab was to design combinational priority encoder circuits and verify them through simulation and FPGA testing on the DE10-Lite board.

## What I Built

- 4-to-2 priority encoder using Verilog
- 8-to-3 priority encoder using two 4-to-2 priority encoder modules
- Valid output logic to detect whether any input is active
- Self-checking testbench for functional verification
- Random stimulus testbench using `$random`
- FPGA implementation using DE10-Lite switches and LEDs

## Tools Used

- Verilog
- ModelSim
- Intel Quartus Prime
- Terasic DE10-Lite FPGA Board

