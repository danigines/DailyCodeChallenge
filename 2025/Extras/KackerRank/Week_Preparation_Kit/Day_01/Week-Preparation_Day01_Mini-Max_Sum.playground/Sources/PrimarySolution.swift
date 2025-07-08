import Foundation

public struct PrimarySolution {
  private static func miniMaxSum(_ arr: [Int]) {
    let totalSum = arr.reduce(0, +)
    if let min = arr.min(), let max = arr.max() {
      let minSum = totalSum - max
      let maxSum = totalSum - min
      print("🟢 Result for \(arr) is: '\(minSum) \(maxSum)'")
    }
  }

  public static func runExample(with dataExamples: [[Int]]) {
    print("- - - - - - - - - - - - - - - PRIMARY SOLUTION - - - - - - - - - - - - - - -")
    for example in dataExamples {
      miniMaxSum(example)
    }
  }
}

/* MARK: - Complexity Primary Solution
⏱️ Time:  O(n)
🚀 Space: O(1)
*/
