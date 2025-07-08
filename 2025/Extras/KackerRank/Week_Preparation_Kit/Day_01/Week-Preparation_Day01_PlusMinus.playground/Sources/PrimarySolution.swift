import Foundation

public struct PrimarySolution {
  /// Prints the ratio of positive, negative, and zero elements
  /// Each ratio is printed to exactly 6 decimal places
  private static func plusMinus(_ arr: [Int]) {
    let total = Double(arr.count)
    guard total > 0 else {
      print("🟢 Result for \(arr) is:\n0.000000\n0.000000\n0.000000")
      return
    }

    var positive = 0
    var negative = 0
    var zero = 0

    // Count each category in one pass
    for num in arr {
      if num > 0 {
        positive += 1
      } else if num < 0 {
        negative += 1
      } else {
        zero += 1
      }
    }

    // Convert counts to ratios
    let posRatio = Double(positive) / total
    let negRatio = Double(negative) / total
    let zeroRatio = Double(zero) / total

    // Print each value with fixed 6-digit precision
    print("\n🟢 Result for \(arr) is:")
    print(String(format: "%.6f", posRatio))
    print(String(format: "%.6f", negRatio))
    print(String(format: "%.6f", zeroRatio))
  }
  
  public static func runExample(with dataExamples: [[Int]]) {
    print("- - - - - - - - - - - - - - - PRIMARY SOLUTION - - - - - - - - - - - - - - -")
    for example in dataExamples {
      plusMinus(example)
    }
  }
}

/* MARK: - Complexity Primary Solution
⏱️ Time:  O(n)
🚀 Space: O(1)
*/
