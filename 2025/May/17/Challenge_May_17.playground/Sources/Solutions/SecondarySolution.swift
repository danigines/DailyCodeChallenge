import Foundation

public struct SecondarySolution {
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

  private static func firstMissingPositive(_ nums: Numbers) -> Int {
    let set = Set(nums) // Fast lookup for existing numbers
    var i = 1
    // Incrementally find the first positive not in the set
    while set.contains(i) {
      i += 1
    }
    return i
  }

  public static func runExamples() {
    print("\n\n* * * * * * * * * * * * * *  SECONDARY SOLUTION  * * * * * * * * * * * * * *\n")
    for data in dataExamples {
      print(" 🟡 The First Missing Positive Integer in: \(data) is \(firstMissingPositive(data))")
    }
  }
}
/* MARK: - Complexity Secondary Solution
⏱️ Time:  O(n)
🚀 Space: O(n)
 This version is easy to implement but doesn’t meet the strict constant-space requirement
*/
