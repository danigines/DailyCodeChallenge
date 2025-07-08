import UIKit

let dataExamples: [[Int]] = [
  [],
  [1],
  [0, 0, 0],
  [-1, -2, -3],
  [1, 1, 0, -1, -1],
  [-4, 3, -9, 0, 4, 1]
]

PrimarySolution.runExample(with: dataExamples)
SecondarySolution.runExample(with: dataExamples)
AlternativeSolution.runExample(with: dataExamples)
