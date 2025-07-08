import Foundation

/// Efficient, memory-safe log for last N orders using a circular buffer.
final public class OrderLog: OrderLoggingProtocol {
  private var buffer: [OrderEntryProtocol?]   // Fixed-size ring buffer
  private var writeIndex = 0                  // Next position to write
  private var count = 0                       // Number of writes performed
  private let size: Int                       // Maximum number of records

  public init(capacity: Int) {
    self.size = capacity
    self.buffer = Array(repeating: nil, count: capacity)
  }

  /// Adds a new order ID to the log
  public func record(_ entry: OrderEntryProtocol) {
    buffer[writeIndex] = entry
    writeIndex = (writeIndex + 1) % size  // Wrap around
    count += 1
  }

  /// Returns the ith last element (1 = most recent)
  public func getLast(_ i: Int) -> OrderEntryProtocol? {
    guard i > 0, i <= size, i <= count else { return nil }
    // Calculate the actual index
    let index = (writeIndex - i + size) % size
    return buffer[index]
  }
}
