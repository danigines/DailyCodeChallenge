import Foundation

public struct PrimarySolution {
  /// Selects one element from a stream with uniform probability
  /// - Parameter stream: Sequence of elements (simulated as an array here for demo)
  /// - Returns: A randomly selected element from the stream
  private static func selectRandomElement<T>(from stream: AnySequence<T>) -> T? {
    var result: T? = nil
    var count = 0

    for element in stream {
      count += 1

      // Replace the current result with probability 1/count
      if Int.random(in: 1...count) == 1 {
        result = element
      }
    }

    return result
  }

  public static func runExample() {
    print("- - - - - - - - - - - - - - - PRIMARY SOLUTION - - - - - - - - - - - - - - -")
    let stream = AnySequence([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
    print("Random sample:", selectRandomElement(from: stream) ?? "nil")

    // To verify uniformity, run many times:
    var frequency: [Int: Int] = [:]

    for _ in 0..<10_000 {
      if let picked = selectRandomElement(from: stream) {
        frequency[picked, default: 0] += 1
      }
    }

    print("Distribution:", frequency)
  }
}
/* MARK: - Complexity - Solution
⏱️ Time:  O(n)
🚀 Space: O(1)
*/
