import Foundation

public struct PrimarySolution {
  // We use a sliding window defined by two pointers (left, right) and a hash map to track character frequencies.
  private static func longestSubstringWithKDistinct(_ s: String, _ k: Int) -> Int {
    // Edge case: If k is 0, we can't have any valid substring
    guard k > 0 else { return 0 }

    // Convert the string to an array of characters for easy indexing (Swift Strings are not random-access)
    let chars = Array(s)

    var left = 0               // Left boundary of our sliding window
    var maxLength = 0            // Track the longest valid substring found
    var charCount: [Character: Int] = [:]  // Dictionary to count character frequencies in the current window

    // Expand the right side of the window one character at a time
    for right in 0..<chars.count {
      let rightChar = chars[right]
      // Add the current character to our frequency dictionary
      charCount[rightChar, default: 0] += 1

      // If we now have more than k distinct characters, we need to shrink the window
      while charCount.count > k {
        let leftChar = chars[left] // Character to remove from the left side of the window

        // Decrease its count
        charCount[leftChar]! -= 1

        // If its count becomes 0, remove it from the dictionary to keep only distinct characters
        if charCount[leftChar] == 0 {
          charCount.removeValue(forKey: leftChar)
        }

        // Move the left pointer forward to shrink the window
        left += 1
      }

      // Update the maxLength if this window is larger than any seen before
      maxLength = max(maxLength, right - left + 1)
    }

    return maxLength
  }

  public static func runExample() {
    print("- - - - - - - - - - - - - - - PRIMARY SOLUTION - - - - - - - - - - - - - - -")
    let s = "abcba"
    let k = 2
    let result = longestSubstringWithKDistinct(s, k)
    print("Longest Substring form '\(s)' with at Most '\(k)' Distinct Characters: \(result)")
  }
}

/* MARK: - Complexity Primary Solution
⏱️ Time:  O(n)
🚀 Space: O(k)
*/
