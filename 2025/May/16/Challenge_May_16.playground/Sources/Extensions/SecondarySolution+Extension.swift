import Foundation

extension SecondarySolution {
    public static var sideNode_LocalExample: Node {
      Node("root", Node("left", Node("left.left")), Node("right"))
    }
    
    public static var sideNode_JSONExample: Node? {
      do {
        return try JSONReader.loadJSON(filename: "Sides_Tree", as: Node.self)
      } catch {
        print("Error: \(error)")
        return nil
      }
    }
    
    public static var letterNode_LocalExample: Node {
      Node("A", Node("B", Node("D")), Node("C"))
    }
    
    public static var letterNode_JSONExample: Node? {
      do {
        return try JSONReader.loadJSON(filename: "Letter_Tree", as: Node.self)
      } catch {
        print("Error: \(error)")
        return nil
      }
    }
  }
