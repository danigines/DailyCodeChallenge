import Foundation

// MARK: - N-ary Tree Node
public class NaryNode: Codable, Equatable {
  public var val: String
  public var children: [NaryNode]?

  public init(
    _ val: String,
    _ children: [NaryNode]? = nil
  ) {
    self.val = val
    self.children = children
  }

  public static func == (lhs: NaryNode, rhs: NaryNode) -> Bool {
    return lhs.val == rhs.val &&
           lhs.children == rhs.children
  }
}
