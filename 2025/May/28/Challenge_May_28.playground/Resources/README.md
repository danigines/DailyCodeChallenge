# Pick a Random Element from a Large Stream (Uniformly)

## ***Problem Description***

Given a stream of elements too large to store in memory, pick a random element from the stream with uniform probability.

## ***Notes:***
✅ <ins>Objective</ins>

Given a stream of unknown or extremely large size (too big to fit into memory), select one element such that **each has equal probability** of being picked.

🔍 <ins>Constraints</ins>
- Can't store the entire stream in memory
- Must use constant space
- Cannot know stream length ahead of time