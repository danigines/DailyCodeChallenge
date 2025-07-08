import Foundation

/// Unified protocol for logging and retrieving orders
public protocol OrderLoggingProtocol {
  func record(_ entry: OrderEntryProtocol)
  func getLast(_ i: Int) -> OrderEntryProtocol?
}
