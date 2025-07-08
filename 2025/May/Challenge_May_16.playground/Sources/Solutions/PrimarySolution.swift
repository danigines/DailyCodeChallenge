import Foundation

//MARK: Primary Solution: DFS
public struct PrimarySolution {
/*
⚙️ Explanation of Key Logic
 * "#" is used as a marker for nil — like null in JSON
 * Serialization uses preorder traversal (root → left → right)
 * Deserialization uses a recursive approach, consuming values in order
Why use split + index rather than removing items from the front of the array?
 * Avoids O(n) shifting for each removeFirst() call
 * index += 1 is O(1) and very efficient
*/
  public static func serialize(_ root: Node?) -> String {
    guard let root = root else { return "#" }
    return "\(root.val),\(serialize(root.left)),\(serialize(root.right))"
  }
  
  public static func deserialize(_ data: String) -> Node? {
    let values = data.split(separator: ",").map(String.init)
    var index = 0
    
    func helper() -> Node? {
      guard index < values.count else { return nil }
      let val = values[index]
      index += 1
      
      if val == "#" { return nil }
      
      let node = Node(val)
      node.left = helper()
      node.right = helper()

      return node
    }
    
    return helper()
  }
}
/* MARK: - Complexity Solution
⏱️ Time:  O(n) — for both serialize and deserialize — visiting each node once
🚀 Space: O(n) - for recursion + string or array storage
*/
