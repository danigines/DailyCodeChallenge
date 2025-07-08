import Foundation

public struct SecondarySolution {
  private static func miniMaxSum(_ arr: [Int]) {
    let sorted = arr.sorted()
    let minSum = sorted.prefix(4).reduce(0, +)
    let maxSum = sorted.suffix(4).reduce(0, +)
    print("🔵 Result for \(arr) is: '\(minSum) \(maxSum)'")
  }

  public static func runExample(with dataExamples: [[Int]]) {
    print("\n\n* * * * * * * * * * * * * *  SECONDARY SOLUTION  * * * * * * * * * * * * * *")
    for example in dataExamples {
      miniMaxSum(example)
    }
  }
}

/* MARK: - Complexity Secondary Solution
⏱️ Time:  O(n log n)
🚀 Space: O(n)
*/
