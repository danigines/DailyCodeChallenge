import Foundation

/* MARK: Alternative Solution: Variant Using Codable
Benefits of Codable Variant
 * No custom logic for traversal — handled by Swift
 * JSON is readable and portable (easy to debug, log, or transmit)
 * Easier to evolve with additional properties (id, metadata, etc.)
*/
public struct CodableAlternativeSolution {
  public static func serialize<T: Encodable>(_ root: T?) -> String? {
    let encoder = JSONEncoder()
    encoder.outputFormatting = .prettyPrinted

    guard let root = root,
          let data = try? encoder.encode(root)
    else { return nil }

    return String(data: data, encoding: .utf8)
  }

  public static func deserialize<T: Decodable>(_ jsonString: String?, as type: T.Type = T.self) -> T? {
    guard let data = jsonString?.data(using: .utf8),
          let node = try? JSONDecoder().decode(T.self, from: data)
    else { return nil }

    return node
  }
}
/* MARK: - Complexity Solution
⏱️ Time:  O(n)
🚀 Space: O(n)
So, it’s effectively the same complexity as your manual DFS/BFS solutions.
The benefit is:
 * Less custom code
 * Standardized format (can send via API, save as file, etc.)
*/
