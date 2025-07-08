import Foundation

public struct SecondarySolution {
    private static var dataExamples: [[Int]] = [
        [2, 4, 6, 2, 5],    // 13
        [5, 1, 1, 5],       // 10
        [10],               // 10
        [],                 // 0
        [-1, -2, -3],       // 0
        [4, -1, 5, -3, 6]   // 15
    ]

    private static func maxNonAdjacentSumDP(_ nums: [Int]) -> Int {
        guard !nums.isEmpty else { return 0 }

        var dp = [Int](repeating: 0, count: nums.count + 1)
        dp[1] = max(0, nums[0])

        for i in 1..<nums.count {
            let include = nums[i] + dp[i - 1]
            let exclude = dp[i]
            dp[i + 1] = max(include, exclude)
        }

        return dp[nums.count]
    }

    public static func runExample() {
        print("\n\n* * * * * * * * * * * * * *  SECONDARY SOLUTION  * * * * * * * * * * * * * *")
        for example in dataExamples {
            print("\n 🟦 The Max NonAdjacent Sum for '\(example)' is: '\(maxNonAdjacentSumDP(example))'")
        }
    }
}
/* MARK: - Complexity Secondary Solution
⏱️ Time:  O(n)
🚀 Space: O(n)
*/
