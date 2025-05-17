import Foundation

// MARK: Secondary Solution: Using BFS (Level Order) Instead of DFS
public struct SecondarySolution {
  public static func serialize(_ root: Node?) -> String {
    guard let root = root else { return "#" }
    var result = [String]()
    var queue = [Node?](arrayLiteral: root)

    while !queue.isEmpty {
      let current = queue.removeFirst()
      if let node = current {
        result.append(node.val)
        queue.append(node.left)
        queue.append(node.right)
      } else {
        result.append("#")
      }
    }

    return result.joined(separator: ",")
  }

  public static func deserialize(_ data: String) -> Node? {
    let values = data.split(separator: ",").map(String.init)
    guard values[0] != "#" else { return nil }

    let root = Node(values[0])
    var queue = [root]
    var i = 1

    while i < values.count {
      let current = queue.removeFirst()
      
      if values[i] != "#" {
        let left = Node(values[i])
        current.left = left
        queue.append(left)
      }
      i += 1
      
      if i < values.count && values[i] != "#" {
        let right = Node(values[i])
        current.right = right
        queue.append(right)
      }

      i += 1
    }

    return root
  }
}
/* MARK: - Complexity Solution
⏱️ Time:  O(n) —
🚀 Space: O(n) - Uses a queue for BFS
*/
