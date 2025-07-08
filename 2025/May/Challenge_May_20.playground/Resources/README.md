# Decode Ways (Dynamic Programming)

## **Problem Description**

Given the mapping `a = 1`, `b = 2`, ... `z = 26`, and an encoded message, count the number of ways it can be decoded.

For example, the message `'111'` would give 3, since it could be decoded as `'aaa', 'ka', and 'ak'`.

You can assume that the messages are decodable.
For example, `001` is not allowed.

## **Notes:**
⚠️ Constraint:
- The string is valid (i.e., doesn’t contain invalid encodings like `01`, `30`, etc.)
- Each valid substring must be between `1` and `26`

## **Examples:**
- `111` → `3` ("aaa", "ka", "ak")
- `12` → `2` ("ab", "l")
- `226` → `3` ("bbf", "bz", "vf")
