import Foundation

public struct PrimarySolution {
  private static var dataExamples: [String] = [
    "01",  // Output: 0
    "10",  // Output: 1
    "001",   // Output: 3
    "111",   // Output: 3
    "226",   // Output: 3
    "11106"  // Output: 2
  ]

  private static func decodeWays(_ text: String) -> Int {
    let chars = Array(text)
    let textLength = chars.count
    if textLength == 0 || chars[0] == "0" { return 0 }

    var dp = [Int](repeating: 0, count: textLength + 1)
    dp[0] = 1 // empty string
    dp[1] = 1 // first digit is guaranteed valid

    for i in 2...textLength {
      let oneDigit = Int(String(chars[i - 1]))!
      let twoDigit = Int(String(chars[i - 2...i - 1]))!

      // A single digit must not be '0'
      if oneDigit != 0 {
        dp[i] += dp[i - 1]
      }
      // Valid 2-digit mapping (like "10" to "26")
      if twoDigit >= 10 && twoDigit <= 26 {
        dp[i] += dp[i - 2]
      }
    }

    return dp[textLength]
  }

  public static func runExample() {
    print("- - - - - - - - - - - - - - - PRIMARY SOLUTION - - - - - - - - - - - - - - -\n")
    for example in dataExamples {
      print(" 🟢 Decoode '\(example)' results: \(decodeWays(example))")
    }

  }
}
/* MARK: - Complexity - Solution
⏱️ Time:  O(n)
🚀 Space: O(n)
Where textLength = text.count
*/
