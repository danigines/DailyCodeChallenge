import Foundation

public struct SecondarySolution {
  private static var dataExamples: [String] = [
    "01",    // Output: 0
    "10",    // Output: 1
    "001",   // Output: 3
    "111",   // Output: 3
    "226",   // Output: 3
    "11106"  // Output: 2
  ]

  private static func decodeWays(_ text: String) -> Int {
    let chars = Array(text)
    var memo = [Int: Int]() // Cache results for each index

    func dfs(_ i: Int) -> Int {
      if i == chars.count { return 1 } // Cache results for each index
      if chars[i] == "0" { return 0 } // No letter maps to '0'
      if let cached = memo[i] { return cached }

      var ways = dfs(i + 1) // Try decoding one digit

      if i + 1 < chars.count {
        let num = Int(String(chars[i...i + 1]))!
        if num <= 26 {
          ways += dfs(i + 2) // Try decoding two digits
        }
      }
      memo[i] = ways
      return ways
    }

    return dfs(0)
  }

  public static func runExample() {
    print("\n* * * * * * * * * * * * * *  SECONDARY SOLUTION  * * * * * * * * * * * * * *\n")
    for example in dataExamples {
      print(" 🔵 Decoode '\(example)' results: \(decodeWays(example))")
    }

  }
}
/* MARK: - Complexity - Solution
⏱️ Time:  O(n)
🚀 Space: O(n) stack + O(n) memo
*/
