import Foundation

public struct JSONReader {
  /// Loads and decodes a JSON file from the playground's Resources folder
  public static func loadJSON<T: Decodable>(filename: String, as type: T.Type = T.self) throws -> T {
    guard let url = Bundle.main.url(forResource: filename, withExtension: "json") else {
      throw NSError(domain: "LoadJSON", code: 1, userInfo: [NSLocalizedDescriptionKey: "File not found: \(filename).json"])
    }
    let data = try Data(contentsOf: url)
    return try JSONDecoder().decode(T.self, from: data)
  }

}
