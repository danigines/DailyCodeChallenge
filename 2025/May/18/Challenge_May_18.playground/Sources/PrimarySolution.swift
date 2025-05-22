import Foundation

public struct PrimarySolution {
  private typealias Pair = ((_ T: Any?,_ U: Any?) -> Any) -> Any
  private static var dataExamples: [Pair] = [
    cons(3, 4),
    cons("first", "second"),
    cons(nil as Int?, 5),
    cons(3.5, "Three")
  ]

  private static func cons<T, U>(_ a: T?, _ b: U?) -> ((T?, U?) -> Any) -> Any {
    // Returns a closure that takes a function f, and applies f(a, b).
    return { f in f(a, b) }
  }

  private static func car<T, U>(_ pair: ((T?, U?) -> Any) -> Any) -> T? {
    // Calls pair with a function (a, b) → a. That function extracts the first value.
    return pair({ a, _ in a as Any }) as? T
  }

  private static func cdr<T, U>(_ pair: ((T?, U?) -> Any) -> Any) -> U? {
    // Calls pair with a function (a, b) → b. That function extracts the second value.
    return pair({ _, b in b as Any }) as? U
  }

  public static func runExamples() {
    print("- - - - - - - - - - - - - - - PRIMARY SOLUTION - - - - - - - - - - - - - - -")
    for data in dataExamples {
      let pair = data
      let car = car(pair)
      let cdr = cdr(pair)
      print("\n 🟢 pair: \(String(describing: pair))")
      print(" 🟢 car: \(String(describing: car))")
      print(" 🟢 cdr: \(String(describing: cdr)))")
    }
  }
}
/* MARK: - Complexity Primary Solution
⏱️ Time:  O(1)
🚀 Space: O(1)

Everything is constant-time functional evaluation.
*/
