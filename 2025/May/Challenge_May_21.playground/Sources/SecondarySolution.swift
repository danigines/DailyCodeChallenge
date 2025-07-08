import Foundation

public struct SecondarySolution {
  // MARK: - Count Function (with returned tuple)
  private static func countUnivalSubtreesAlt(_ root: Node?) -> Int {
    return univalHelper(root).count
  }

  // MARK: - Helper Function
  private static func univalHelper(_ node: Node?) -> (count: Int, isUnival: Bool) {
    guard let node = node else { return (0, true) }

    let (leftCount, leftUnival) = univalHelper(node.left)
    let (rightCount, rightUnival) = univalHelper(node.right)

    let total = leftCount + rightCount
    let isUnival = leftUnival && rightUnival &&
      (node.left == nil || node.left!.val == node.val) &&
      (node.right == nil || node.right!.val == node.val)

    return (total + (isUnival ? 1 : 0), isUnival)
  }

  public static func runExample() {
    print("\n\n\n* * * * * * * * * * * * * *  SECONDARY SOLUTION  * * * * * * * * * * * * * *\n")
    let root = Node(0,
      Node(1),
      Node(0,
        Node(1, Node(1), Node(1)),
        Node(0)
      )
    )
    print(" 🔵 Unival Subtrees for '\(root)' count is: \(countUnivalSubtreesAlt(root))") // Output: 5

  }
}
/* MARK: - Complexity Secondary Solution
⏱️ Time:  O(n)
🚀 Space: O(h) — for recursion stack (up to tree height)
 n = number of nodes
 h = height of tree
*/
