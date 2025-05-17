import Foundation

// MARK: - Rich N-ary Tree Node with Metadata
public class RichNode: Codable, Equatable {
  public var name: String
  public var metadata: [String: String]
  public var children: [RichNode]

  public init(
    name: String,
    metadata: [String: String] = [:],
    children: [RichNode] = []
  ) {
    self.name = name
    self.metadata = metadata
    self.children = children
  }

  public static func == (lhs: RichNode, rhs: RichNode) -> Bool {
    return lhs.name == rhs.name &&
           lhs.metadata == rhs.metadata &&
           lhs.children == rhs.children
  }
}
