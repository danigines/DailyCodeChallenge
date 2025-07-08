import Foundation

public struct SecondarySolution {
  private struct Pair<A, B> {
    let first: A?
    let second: B?
  }

  private static var dataExamples: [Pair<Any?, Any?>] = [
    cons(3, 4),
    cons("first", "second"),
    cons(nil as Int?, 5),
    cons(3.5, "Three")
  ]

  private static func cons<A, B>(_ a: A, _ b: B) -> Pair<A, B> {
    return Pair(first: a, second: b)
  }

  private static func car<A, B>(_ pair: Pair<A, B>) -> A? {
    return pair.first
  }

  private static func cdr<A, B>(_ pair: Pair<A, B>) -> B? {
    return pair.second
  }

  public static func runExamples() {
    print("\n\n* * * * * * * * * * * * * *  SECONDARY SOLUTION  * * * * * * * * * * * * * *")
    for data in dataExamples {
      let pair = data
      let car = car(pair)
      let cdr = cdr(pair)
      print("\n 🟡 pair: \(pair)")
      print(" 🟡 car: \(String(describing: car))")
      print(" 🟡 cdr: \(String(describing: cdr))")
    }
  }
}
/* MARK: - Complexity Secondary Solution
⏱️ Time:  O(1)
🚀 Space: O(1)

Everything is constant-time functional evaluation.
*/
