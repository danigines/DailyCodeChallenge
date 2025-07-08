import Foundation

public struct AlternativeSolution {
  private static func plusMinus(_ arr: [Int]) {
    let totalCount = Double(arr.count)
    
    guard totalCount > 0 else {
      print("🟣 Result for \(arr) is:\n0.000000\n0.000000\n0.000000")
      return
    }

    let counts = arr.reduce(into: (pos: 0, neg: 0, zero: 0)) { result, num in
      if num > 0 {
        result.pos += 1
      } else if num < 0 {
        result.neg += 1
      } else {
        result.zero += 1
      }
    }

    print("\n🟣 Result for \(arr) is:")
    print(String(format: "%.6f", Double(counts.pos) / totalCount))
    print(String(format: "%.6f", Double(counts.neg) / totalCount))
    print(String(format: "%.6f", Double(counts.zero) / totalCount))
  }

  public static func runExample(with dataExamples: [[Int]]) {
    print("\n\n^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ALTERNATIVE SOLUTION ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^")
    for example in dataExamples {
      plusMinus(example)
    }
  }
}

/* MARK: - Complexity Alternative Solution
⏱️ Time:  O(n)
🚀 Space: O(1)
*/
