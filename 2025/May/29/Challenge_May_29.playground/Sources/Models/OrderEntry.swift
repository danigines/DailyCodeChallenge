import Foundation

/// Struct representing an order + metadata
public struct OrderEntry: OrderEntryProtocol {
  public var id: String
  public var timestamp: Date
  public var userID: String?

  init(id: String, userID: String? = nil, timestamp: Date = Date()) {
    self.id = id
    self.userID = userID
    self.timestamp = timestamp
  }
}

