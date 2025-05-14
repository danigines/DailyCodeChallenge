import UIKit
/* MARK: - Description
Given a list of numbers and a number K, return whether any two numbers from the list add up to K.
For example, given [10, 15, 3, 7] and k of 17, return true since 10 + 7 is 17.
Bonus: Can you do this in one pass?
 
Taken from suscribe: https://www.dailycodingproblem.com/
*/
// MARK: - Main Code
typealias PairSummingInputData = (numbers: [Int], k: Int)
func containsPairSumming(from data: PairSummingInputData) -> Bool {
  guard !data.numbers.isEmpty else { return false }
  var seen = Set<Int>()
  for number in data.numbers {
    let complement = data.k - number
    if seen.contains(complement) { return true }
    seen.insert(number)
  }
  return false
}
/* MARK: - Complexity Main Code
⏱️ Time:  O(n) — One pass through list.
🚀 Space: O(n) - Worst case, storing all numbers in set.
*/
// MARK: - Running Main Code
let examples: [PairSummingInputData] = [
  (numbers: [], k: 5),
  (numbers: [1, 2, 3, 4], k: 8),
  (numbers: [5, 1, 5], k: 10),
  (numbers: [10, 15, 3, 7], k: 17),
  (numbers: [-5, -2, 0, 2, 5], k: 0),
  (numbers: [20, 9, 24, 13, 22, 2, 15, 26, 17, 19, 1, 4, 23 ,8, 6, 12, 10, 7], k: 38)
]
print("- - - - - - - - - - - - - - - MAIN SOLUTION - - - - - - - - - - - - - - -")
for example in examples {
  let result = containsPairSumming(from: example)
  let printIcon = result ? "🟢" : "🔴"
  print("\nThe sum that results in '\(example.k)' in \(example.numbers) is: \(printIcon) \(result)")
}

// MARK: Alternative Solution: Brute Force (Not One Pass)
func containsPairBruteForce(from data: PairSummingInputData) -> Bool {
  for i in 0 ..< data.numbers.count {
    for j in i + 1 ..< data.numbers.count {
      if data.numbers[i] + data.numbers[j] == data.k { //Checks every pair
        return true
      }
    }
  }
  return false
}
// MARK: - Running Alternative Solution
print("\n\n\n* * * * * * * * * * * * * ALTERNATIVE SOLUTION * * * * * * * * * * * * *")
for example in examples {
  let result = containsPairBruteForce(from: example)
  let printIcon = result ? "🟢" : "🔴"
  print("\nThe sum that results in '\(example.k)' in \(example.numbers) is: \(printIcon) \(result)")
}
/* MARK: - Complexity Alternative Solution
⏱️ Time:  O(n²) - Outer loop runs N times (once for each element). Inner loop runs up to 'n - i - 1' times
                  The total number of comparisons is: 𝑛(𝑛 − 1) / 2 ⇒ 𝑂(𝑛^2)
🚀 Space: O(1)  - It just uses a couple of integers (i, j, maybe a sum).
                  So memory used is constant, regardless of the size of input.
*/
