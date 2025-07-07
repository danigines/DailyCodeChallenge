import Foundation

public struct PrimarySolution {
  /// Estimates the value of π using a Monte Carlo method
  /// - Parameter n: The number of random points to generate
  /// - Returns: Estimated value of π
  private static func estimatePi(sampleCount n: Int) -> Double {
    // Edge case: 0 samples means undefined result
    guard n > 0 else { return 0 }

    var insideCircle = 0

    // Generate n random points within the square [0, 1] × [0, 1]
    for _ in 0..<n {
      let x = Double.random(in: 0...1)
      let y = Double.random(in: 0...1)

      // Check if the point lies inside the unit circle (radius = 1)
      if x * x + y * y <= 1 {
        insideCircle += 1
      }
    }

    // π ≈ 4 × (fraction of points inside the circle)
    return 4.0 * Double(insideCircle) / Double(n)
  }

  public static func runExample() {
    print("- - - - - - - - - - - - - - - PRIMARY SOLUTION - - - - - - - - - - - - - - -")
    let result = estimatePi(sampleCount: 1_000)
    print("π estimate: \(result)")
  }
}
