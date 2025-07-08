import Foundation

public struct AlternativeSolution {
  /// Alternative: compute min/max in one pass without sorting
  private static func miniMaxSum(_ arr: [Int]) {
    var minVal = Int.max
    var maxVal = Int.min
    var total: Int64 = 0

    for num in arr {
      let val = Int64(num)
      total += val
      minVal = min(minVal, num)
      maxVal = max(maxVal, num)
    }

    let minSum = total - Int64(maxVal)
    let maxSum = total - Int64(minVal)

    print("🟣 Result for \(arr) is: '\(minSum) \(maxSum)'")
  }

  public static func runExample(with dataExamples: [[Int]]) {
    print("\n\n^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ALTERNATIVE SOLUTION ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^")
    for example in dataExamples {
      miniMaxSum(example)
    }
  }
}

/* MARK: - Complexity Alternative Solution
⏱️ Time:  O(n)
🚀 Space: O(1)
*/
