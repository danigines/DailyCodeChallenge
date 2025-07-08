# The largest sum of non-adjacent numbers

## **Problem Description**

Given a list of integers, write a function that returns the largest sum of non-adjacent numbers.
Numbers can be `0` or **negative**.

 **Follow-up**: Can you do this in `O(N)` time and constant space?

## **Notes:**
We are given a list of integers.
- we must select a subset of non-adjacent elements such that their sum is maximized.
- Elements can be 0 or negative, so skipping is sometimes better.

## **Examples:**
`[2, 4, 6, 2, 5]` should return `13`, since we pick `2`, `6`, and `5`.
`[5, 1, 1, 5`] should return `10`, since we pick `5` and `5`.
