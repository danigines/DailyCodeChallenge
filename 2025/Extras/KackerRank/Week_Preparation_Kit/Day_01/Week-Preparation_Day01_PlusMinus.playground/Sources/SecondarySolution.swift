import Foundation

public struct SecondarySolution {
  /// Functional version using filter/count
  private static func plusMinus(_ arr: [Int]) {
    let total = Double(arr.count)
    guard total > 0 else {
      print("🔵 Result for \(arr) is:\n0.000000\n0.000000\n0.000000")
      return
    }

    let positives = Double(arr.filter { $0 > 0 }.count)
    let negatives = Double(arr.filter { $0 < 0 }.count)
    let zeros = Double(arr.filter { $0 == 0 }.count)

    print("\n🔵 Result for \(arr) is:")
    print(String(format: "%.6f", positives / total))
    print(String(format: "%.6f", negatives / total))
    print(String(format: "%.6f", zeros / total))
  }

  public static func runExample(with dataExamples: [[Int]]) {
    print("\n\n* * * * * * * * * * * * * *  SECONDARY SOLUTION  * * * * * * * * * * * * * *")
    for example in dataExamples {
      plusMinus(example)
    }
  }
}

/* MARK: - Complexity Secondary Solution
⏱️ Time:  O(n) x 3
🚀 Space: O(n) (intermediate filters)
*/
