import Foundation

extension CodableAlternativeSolution {
    public static var metadataNode_LocalExample: NodeWithMetadata {
      NodeWithMetadata("A", "root", 1.0, nil, NodeWithMetadata("B", "left", 0.5))
    }

    public static var metadataNode_JSONExample: NodeWithMetadata? {
      do {
        return try JSONReader.loadJSON(filename: "Metadata_Tree", as: NodeWithMetadata.self)
      } catch {
        print("Error: \(error)")
        return nil
      }
    }
  }
