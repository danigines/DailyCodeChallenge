import Foundation

extension CodableAlternativeSolution {
  public static var naryNode_LocalExample: NaryNode {
    NaryNode("A", [
      NaryNode("B", [NaryNode("E"), NaryNode("F")]),
      NaryNode("C"),
      NaryNode("D")
    ])
  }

  public static var naryNode_JSONExample: NaryNode? {
    do {
      return try JSONReader.loadJSON(filename: "NonBinaryLetter_Tree", as: NaryNode.self)
    } catch {
      print("Error: \(error)")
      return nil
    }
  }
}
