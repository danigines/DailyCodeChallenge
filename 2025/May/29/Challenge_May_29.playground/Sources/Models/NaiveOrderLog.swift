import Foundation

/// Simple but inefficient version using array shifting
final public class NaiveOrderLog: OrderLoggingProtocol {
  private var log: [OrderEntryProtocol] = [] //[OrderEntry]()
  private let capacity: Int

  public init(capacity: Int) {
    self.capacity = capacity
  }

  public func record(_ entry: OrderEntryProtocol) {
    log.append(entry)
    if log.count > capacity {
      log.removeFirst() // Inefficient: O(n)
    }
  }

  public func getLast(_ i: Int) -> OrderEntryProtocol? {
    guard i > 0, i <= log.count else { return nil }
    return log[log.count - i]
  }
}
