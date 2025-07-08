import Foundation

/// Unified protocol for logging and retrieving orders
public protocol OrderEntryProtocol {
  var id: String { get set }
  var timestamp: Date { get set }
  var userID: String? { get set } // Optional user metadata
}
