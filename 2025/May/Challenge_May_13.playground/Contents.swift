// MARK: - Description
/*
There's a staircase with N steps, and you can climb 1 or 2 steps at a time.
Given N, write a function that returns the number of unique ways you can climb the staircase.
The order of the steps matters.

For example, if N is 4, then there are 5 unique ways:
1, 1, 1, 1
2, 1, 1
1, 2, 1
1, 1, 2
2, 2

What if, instead of being able to climb 1 or 2 steps at a time, you could climb any number from a set of positive integers X?

For example, if X = {1, 3, 5}, you could climb 1, 3, or 5 steps at a time.
Generalize your function to take in X.
 
Taken from https://www.dailycodingproblem.com/
*/

// MARK: - Code
import UIKit

typealias StaircaseInputData = (numberOfSteps: Int, stepsRange: [Int])
typealias StaircaseOutputData = (numberOfPaths: Int, paths: [[Int]])

func allStaircasePaths(from data: StaircaseInputData) -> StaircaseOutputData {
  guard data.numberOfSteps > 0 else {
    return (numberOfPaths: 0, paths: [])
  }

  let validSteps = data.stepsRange.filter { $0 > 0 }
  guard !validSteps.isEmpty else {
    return (numberOfPaths: 0, paths: [])
  }

  let paths = staircasePaths(
    current: 0,
    target: data.numberOfSteps,
    steps: validSteps,
    path: []
  )
  return (numberOfPaths: paths.count, paths: paths)
}

private func staircasePaths(current: Int, target: Int, steps: [Int], path: [Int]) -> [[Int]] {
  if current == target { return [path] }
  if current > target { return [] }
  var allPaths = [[Int]]()

  for step in steps {
    let newPath = path + [step]
    let subPaths = staircasePaths(
      current: current + step,
      target: target,
      steps: steps,
      path: newPath
    )
    allPaths.append(contentsOf: subPaths)
  }
  return allPaths
}

// MARK: - Runing
let examples: [StaircaseInputData] = [
  (numberOfSteps: 1, stepsRange: [1]),
  (numberOfSteps: 1, stepsRange: [1, 2]),
  (numberOfSteps: 2, stepsRange: [1]),
  (numberOfSteps: 2, stepsRange: [1, 2]),
  (numberOfSteps: 3, stepsRange: [1]),
  (numberOfSteps: 3, stepsRange: [1, 2]),
  (numberOfSteps: 3, stepsRange: [1, 2, 3]),
  (numberOfSteps: 4, stepsRange: [1]),
  (numberOfSteps: 4, stepsRange: [1, 2]),
  (numberOfSteps: 4, stepsRange: [1, 2, 3]),
  (numberOfSteps: 4, stepsRange: [1, 2, 3, 4]),
  (numberOfSteps: 5, stepsRange: [1]),
  (numberOfSteps: 5, stepsRange: [1, 2]),
  (numberOfSteps: 5, stepsRange: [1, 2, 3]),
  (numberOfSteps: 5, stepsRange: [1, 2, 3, 4]),
  (numberOfSteps: 5, stepsRange: [1, 2, 3, 4, 5]),
  (numberOfSteps: 10, stepsRange: [2, 5, 10])
]

print("- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -")
for testCase in examples {
  let result = allStaircasePaths(from: testCase)
  let printIcon = testCase.numberOfSteps > 0 ? "🟢" : "🔴"
  print("\n\(printIcon) Stair Case N: \(testCase.numberOfSteps) | X: \(testCase.stepsRange) -> The result is: \(result.numberOfPaths) path(s), which are: \(result.paths) !")
}
// MARK: - Complexity
/*
 ⏱️ Time: In the worst case, we need to check all elements in X for each step from 1 to N. So the time complexity is O(N * |X|), where |X| is the size of the set X.
 🚀 Space: O(N) for storing intermediate results.
*/
