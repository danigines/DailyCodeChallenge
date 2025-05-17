import Foundation

// MARK: - Binary Tree Node with Metadata
public class NodeWithMetadata: Codable, Equatable {
  public let id: String
  public let label: String
  public let weight: Double
  public let createdAt: Date?
  public var left: NodeWithMetadata?
  public var right: NodeWithMetadata?

  public init(
    _ id: String,
    _ label: String,
    _ weight: Double,
    _ createdAt: Date? = nil,
    _ left: NodeWithMetadata? = nil,
    _ right: NodeWithMetadata? = nil
  ) {
    self.id = id
    self.label = label
    self.weight = weight
    self.createdAt = createdAt
    self.left = left
    self.right = right
  }

  public static func == (lhs: NodeWithMetadata, rhs: NodeWithMetadata) -> Bool {
    return lhs.id == rhs.id &&
           lhs.label == rhs.label &&
           lhs.weight == rhs.weight &&
           lhs.createdAt == rhs.createdAt &&
           lhs.left == rhs.left &&
           lhs.right == rhs.right
  }
}
