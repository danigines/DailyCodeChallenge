import Foundation

/* 🧩 Idea:
Use the array itself like a hash map. Place each number at the index corresponding to its value:

 * Try to move value x to index x - 1
 * For example, 1 should be at index 0, 2 at index 1, etc.
 * After this rearrangement, scan the array:
   ^ If array[i] != i + 1, then i + 1 is the missing positive
*/

public typealias Numbers = [Int]

public struct PrimarySolution {
  private static var dataExamples: [Numbers] = [
    [],              // Output: 1
    [1],             // Output: 2
    [2],             // Output: 1
    [-1, -2],        // Output: 1
    [-1, 0],         // Output: 1
    [1, 2, 0],       // Output: 3
    [3, 4, -1, 1],   // Output: 2
    [1, 6, 3, 7, 2]  // Output: 4
  ]

  private static func firstMissingPositive(_ nums: inout Numbers) -> Int {
    let n = nums.count

    for i in 0..<n {
      // Makes sure we only try to place valid positive numbers
      // Avoids swapping with self or creating infinite loops on duplicates
      while nums[i] > 0, nums[i] <= n, nums[i] != nums[nums[i] - 1] {
        // Puts each number where it should be (like a bucket sort)
        nums.swapAt(i, nums[i] - 1)
      }
    }

    for i in 0..<n {
      if nums[i] != i + 1 {
        return i + 1
      }
    }

    return n + 1
  }
  
  public static func runExamples() {
    print("- - - - - - - - - - - - - - - PRIMARY SOLUTION - - - - - - - - - - - - - - -\n")
      for i in 0..<dataExamples.count {
      print(" 🟢 The First Missing Positive Integer in: \(dataExamples[i]) is \(firstMissingPositive(&dataExamples[i]))")
    }
  }
}
/* MARK: - Complexity Primary Solution
⏱️ Time:  O(n)
🚀 Space: O(1)
 We visit each element at most twice. No extra structures are used.
*/
