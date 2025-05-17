import Foundation

extension CodableAlternativeSolution {
  public static var richNode_LocalExample: RichNode {
    RichNode(
      name: "Dashboard",
      metadata: ["type": "view"],
      children: [
        RichNode(name: "Header", metadata: ["component": "UIHeader"]),
        RichNode(name: "Content", metadata: ["component": "ListView"], children: [
          RichNode(name: "Item1"),
          RichNode(name: "Item2")
        ])
      ]
    )
  }

  public static var richNode_JSONExample: RichNode? {
    do {
      return try JSONReader.loadJSON(filename: "Rich_Tree", as: RichNode.self)
    } catch {
      print("Error: \(error)")
      return nil
    }
  }
}
