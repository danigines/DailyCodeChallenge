import UIKit
/* MARK: - Description
Given an array of integers, return a new array such that each element at index i of the new array is the product of all the numbers in the original array except the one at i.

For example, if our input was [1, 2, 3, 4, 5], the expected output would be [120, 60, 40, 30, 24].
If our input was [3, 2, 1], the expected output would be [2, 3, 6].

Follow-up: what if you can't use division?
*/

// MARK: Primary Solution: Using Division
typealias ArrayNumbers = [Int]
func productArrayWithDivision(_ nums: ArrayNumbers) -> ArrayNumbers {
  let zeroCount = nums.filter { $0 == 0 }.count
  if zeroCount > 1 {
    return Array(repeating: 0, count: nums.count)
  }
  let totalProduct = nums.reduce(1) { $0 * ($1 == 0 ? 1 : $1) }

  return nums.map {
    if zeroCount == 1 {
      return $0 == 0 ? totalProduct : 0
    } else {
      return totalProduct / $0
    }
  }
}
/* MARK: - Complexity Primary Solution
⏱️ Time:  O(n) - All operations loop through the array once, so the total time complexity is O(n).
🚀 Space: O(n) - So, aside from the result array, we’re not storing any additional data structures of significant size.
*/

// MARK: Alternative Solution: Without Division (Prefix & Suffix)
func productArray(_ nums: ArrayNumbers) -> ArrayNumbers {
  let n = nums.count
  guard n > 0 else { return [] }

  var prefix = [Int](repeating: 1, count: n)
  var suffix = [Int](repeating: 1, count: n)
  var result = [Int](repeating: 1, count: n)

  // Build prefix product
  for i in 1..<n {
    prefix[i] = prefix[i - 1] * nums[i - 1]
  }

  /* Build suffix product (from end)
  This loop starts at the second-to-last element (n - 2) and moves backward to index 0.
  We do this in reverse, because: *At each step i, we compute suffix[i] using suffix[i + 1]
  So we must already have computed suffix[i + 1]
  This is a right-to-left scan.
  */
  for i in stride(from: n - 2, through: 0, by: -1) {
    suffix[i] = suffix[i + 1] * nums[i + 1]
  }

  // Multiply prefix and suffix
  for i in 0..<n {
    result[i] = prefix[i] * suffix[i]
  }

  return result
}
/* MARK: - Alternative Primary Solution
⏱️ Time:  O(n) — We loop through the array three times.
🚀 Space: O(n) - prefix[], suffix[] & resul[]t have size n.
*/

// MARK: - Running
let examples: [ArrayNumbers] = [
  [],              // []           -> Empty array
  [1],             // [1]          -> Only one element
  [0, 0, 2],       // [0, 0, 0]    -> All zeroes
  [3, 2, 1],       // [2, 3, 6]
  [0, 1, 2, 3],    // [6, 0, 0, 0] -> One diferent zero
  [1, 2, 3, 4, 5], // [120, 60, 40, 30, 24]
  [1, 3, 5, 7, 5]  // [525, 175, 105, 75, 105]
]
print("- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -")
for example in examples {
  print("\n🟢 The  PRIMARY  result from product of numbers in \(example) is: \(productArrayWithDivision(example))")
  print("🟠 The SECONDARY result from product of numbers in \(example) is: \(productArray(example))")
}
