import Foundation

public struct PrimarySolution {
    private static var dataExamples: [[Int]] = [
        [2, 4, 6, 2, 5],    // 13
        [5, 1, 1, 5],       // 10
        [10],               // 10
        [],                 // 0
        [-1, -2, -3],       // 0
        [4, -1, 5, -3, 6]   // 15
    ]

    private static func maxNonAdjacentSum(_ nums: [Int]) -> Int {
        var include = 0  // Max sum including the previous element
        var exclude = 0  // Max sum excluding the previous element

        for num in nums {
            let newInclude = exclude + num           // Include current, skip previous
            exclude = max(include, exclude)          // Update exclude to best of previous step
            include = newInclude                     // Update include to new computed value
        }

        return max(include, exclude)
    }

    public static func runExample() {
        print("- - - - - - - - - - - - - - - PRIMARY SOLUTION - - - - - - - - - - - - - - -")
        for example in dataExamples {
            print("\n 🟩 The Max NonAdjacent Sum for '\(example)' is: '\(maxNonAdjacentSum(example))'")
        }
    }
}
/* MARK: - Complexity Primary Solution
⏱️ Time:  O(n)
🚀 Space: O(1)
*/
