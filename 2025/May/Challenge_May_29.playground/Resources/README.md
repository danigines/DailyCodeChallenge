# Record Last N Order IDs

## ***Problem Description***

You run an e-commerce website and want to record the last `N order` ids in a log.

Implement a data structure to accomplish this, with the following API:
- `record(order_id)`: adds the order_id to the log.
- `get_last(i)`: gets the **ith** last element from the log. `i` is guaranteed to be smaller than or equal to `N`.

You should be as efficient with time and space as possible.

## ***Notes:***
✅ <ins>Objective</ins>

Implement a rolling log (fixed-size circular buffer) with two operations:
```swift
record(order_id: String)
get_last(i: Int) -> String
```
- `record(order_id)` adds a new order
- `get_last(i)` returns the ith most recent order _(1 = most recent)_
- Only the last `N` orders must be retained
- Time and space efficiency are key

🔍 <ins>Constraints</ins>
- You know **N** ahead of time (max capacity of log)
- get_last(i) is always valid (i ≤ N)
- Assume thread safety is not required for now
