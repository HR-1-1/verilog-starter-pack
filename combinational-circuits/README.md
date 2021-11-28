# Combinational Circuits
## Modeling styles
1. Gate-level
2. Dataflow
3. Behavioural
4. Switch-level
## Basics
- 12 Basic gates defined as Predefined primitives. `buf` and `not` are n-output, while the others are n-input.
- 4 Logic levels (High, Low, Unknown, High Impedance)
- 11 Net types (to represent the physical connections between structural entities)
- 
## Useful things to know
- Nested instantiations is allowed but Nested declarations are not. 
- The `case` items have an implied priority. 
- Inserting `_` in a number has no effect (and obv improves readability).
