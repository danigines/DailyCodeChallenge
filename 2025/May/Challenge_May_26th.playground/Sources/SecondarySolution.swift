import Foundation

public struct SecondarySolution {
  private static func longestSubstringBruteForce(_ s: String, _ k: Int) -> Int {
    // If k is 0, we can't have any valid substring
    guard k > 0 else { return 0 }

    let chars = Array(s)  // Convert the string to an array of characters for indexed access
    var maxLength = 0   // We'll track the maximum valid substring length found

    // Try all possible starting points of substrings
    for start in 0..<chars.count {
      var seen: Set<Character> = []  // To track the distinct characters in the current substring
      var count = 0          // Current substring length

      // Try all possible end points starting from `start`
      for end in start..<chars.count {
        seen.insert(chars[end])  // Add the new character to the set

        // If the set exceeds k distinct characters, stop this inner loop
        if seen.count > k {
          break
        }

        count += 1        // Valid character, so increase count
      }

      // Update the maximum length found
      maxLength = max(maxLength, count)
    }

    return maxLength
  }

  public static func runExample() {
    print("\n\n* * * * * * * * * * * * * *  SECONDARY SOLUTION  * * * * * * * * * * * * * *")
    let s = "abcba"
    let k = 2
    let result = longestSubstringBruteForce(s, k)
    print("Longest Substring form '\(s)' with at Most '\(k)' Distinct Characters: \(result)")
  }
}

/* MARK: - Complexity Secondary Solution
⏱️ Time:  O(n^2)
🚀 Space: O(k) per loop iteration
*/
