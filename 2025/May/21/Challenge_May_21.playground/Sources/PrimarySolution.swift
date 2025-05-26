import Foundation

public struct PrimarySolution {
  private static func countUnivalSubtrees(_ root: Node?) -> Int {
    var count = 0
    _ = isUnivalSubtree(root, &count)
    return count
  }

  // MARK: - Helper Function
  private static func isUnivalSubtree(_ node: Node?, _ count: inout Int) -> Bool {
    guard let node = node else { return true }

    let leftUnival = isUnivalSubtree(node.left, &count)
    let rightUnival = isUnivalSubtree(node.right, &count)

    if !leftUnival || !rightUnival {
      return false
    }

    if let left = node.left, left.val != node.val {
      return false
    }

    if let right = node.right, right.val != node.val {
      return false
    }

    count += 1
    return true
  }

  public static func runExample() {
    print("- - - - - - - - - - - - - - - PRIMARY SOLUTION - - - - - - - - - - - - - - -\n")
    let root = Node(0,
      Node(1),
      Node(0,
        Node(1,
          Node(1),
          Node(1)
        ),
        Node(0)
      )
    )
    print(" 🟢 Unival Subtrees for '\(root)' count is: \(countUnivalSubtrees(root))") // Output: 5

  }
}
/* MARK: - Complexity Primary Solution
⏱️ Time:  O(n)
🚀 Space: O(h) — for recursion stack (up to tree height)
 n = number of nodes
 h = height of tree
*/
