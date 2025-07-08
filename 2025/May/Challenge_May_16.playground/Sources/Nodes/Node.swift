import Foundation

// MARK: - Tree Node Class
public class Node: Codable, Equatable {
  public var val: String
  public var left: Node?
  public var right: Node?

  public init(
    _ val: String,
    _ left: Node? = nil,
    _ right: Node? = nil
  ) {
    self.val = val
    self.left = left
    self.right = right
  }

  // For testing purposes (deep equality)
  public static func == (lhs: Node, rhs: Node) -> Bool {
    return lhs.val == rhs.val &&
           lhs.left == rhs.left &&
           lhs.right == rhs.right
  }
}
