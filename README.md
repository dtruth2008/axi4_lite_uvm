AXI4-Lite Master/Slave with UVM Verification

A production-quality AXI4-Lite implementation with comprehensive 
UVM testbench demonstrating protocol compliance, constrained 
random verification, and functional coverage.

## Overview

This project implements the AMBA AXI4-Lite protocol with:
- Synthesizable RTL (Master and Slave)
- Full UVM verification environment
- Protocol compliance checking (SVA)
- Constrained random testing
- Functional coverage (>90% achieved)

Built as a learning project to demonstrate ASIC/SoC verification 
methodologies and transition from FPGA to ASIC design.

## Features

**RTL:**
- AXI4-Lite Master (transaction initiator)
- AXI4-Lite Slave (register bank, 8x32-bit registers)
- Full protocol compliance (handshaking, responses)
- Synthesizable, vendor-neutral SystemVerilog

**Verification:**
- UVM testbench with full agent
- Constrained random sequence generation
- Protocol checkers (SystemVerilog Assertions)
- Functional coverage models
- Self-checking scoreboard

## Quick Start
```bash
# Clone repository
git clone https://github.com/darrylmcgowan/axi4-lite-uvm.git
cd axi4-lite-uvm

# Run basic test (requires ModelSim/QuestaSim or Vivado)
make test TEST=basic_test

# Run all regression tests
make regression

# View coverage report
make coverage
```

## Architecture

[Insert block diagram here]

The design consists of:
1. **AXI4-Lite Master** - Initiates read/write transactions
2. **AXI4-Lite Slave** - Responds to transactions, implements register bank
3. **UVM Testbench** - Verifies protocol compliance and functional correctness

## Protocol Compliance

Implements AMBA AXI4-Lite specification:
- 32-bit data width
- 32-bit address width
- Single outstanding transaction
- No burst support (per spec)
- OKAY/SLVERR response types

## Verification Strategy

**Coverage-Driven Verification:**
- Address space: 100% of register addresses
- Data patterns: Random, all-0s, all-1s, walking patterns
- Transaction types: Read, write, error cases
- Protocol scenarios: Back-to-back, gaps, resets

**Assertion-Based Verification:**
- Valid/ready handshake compliance
- Address stability during handshake
- Write strobe alignment
- Response code correctness

## Test Cases

1. **basic_test** - Simple read/write sequences
2. **random_test** - Constrained random addresses and data
3. **error_test** - Invalid addresses, protocol violations
4. **stress_test** - Back-to-back transactions, maximum throughput

## Coverage Results

- Code Coverage: 98%
- Functional Coverage: 92%
- Assertion Coverage: 100%

## Skills Demonstrated

- SystemVerilog RTL design
- UVM verification methodology
- Protocol implementation (AXI4-Lite)
- Constrained random verification
- Functional coverage modeling
- SystemVerilog Assertions (SVA)
- Industry-standard design practices

## Author

**Darryl McGowan**  
Senior FPGA Design Engineer transitioning to ASIC/SoC design  
12+ years RTL design experience  

LinkedIn: [linkedin.com/in/darrylmcgowanjr](https://linkedin.com/in/darrylmcgowanjr)

## License

MIT License - feel free to use for learning or reference
```

---
