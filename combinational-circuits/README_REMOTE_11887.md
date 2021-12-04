# Combinational Circuits
## Index of Models
### Basic Arithmetic
1. [Half Adder](https://github.com/HR-1-1/verilog-starter-pack/blob/main/combinational-circuits/basic-arithmetic/half_adder.v)
2. [Full Adder](https://github.com/HR-1-1/verilog-starter-pack/blob/main/combinational-circuits/basic-arithmetic/full_adder.v)
3. Four-bit adder
4. Half Subtractor 
5. Full Subtractor
### Advanced Arithmetic
6. Four-bit Binary Adder-Subtractor
7. BCD Adder
8. Two-bit by two-bit binary multiplier
9. Four-bit by three-bit binary multiplier
10. Magnitutde comparator
### Coders
11. Two-to-four-line decoder
12. Four-to-sixteen-line decoder
13. Octal-to-Binary encoder
14. Priority encoder
### Multiplexers
15. Four-to-one-line multiplexer
16. 4 bit two-to-one line multiplexer

## Modeling styles
1. Gate-level
2. Dataflow
3. Behavioural
4. Switch-level
## Simulation types
1. Functional verification
2. Timing verification
## Basics
- 12 Basic gates defined as Predefined primitives. `buf` and `not` are n-output, while the others are n-input.
- 4 Logic levels (High, Low, Unknown, High Impedance)
- 11 Net types (to represent the physical connections between structural entities)
- 
## Useful things to know
- Nested instantiations is allowed but Nested declarations are not. 
- The `case` items have an implied priority. 
- Inserting `_` in a number has no effect (except obv improving readability).
