import Foundation

public struct PrimarySolution {
  public static func runExample() {
    print("- - - - - - - - - - - - - - - PRIMARY SOLUTION - - - - - - - - - - - - - - -")
    let logger: OrderLoggingProtocol = OrderLog(capacity: 3)

    logger.record(OrderEntry(id: "001", userID: "u1"))
    logger.record(OrderEntry(id: "002", userID: "u2"))
    logger.record(OrderEntry(id: "003", userID: "u3"))
    
    if let last = logger.getLast(1) {
      print("Most recent: \(last.id), \n - user: \(last.userID ?? "nil"), \n - at: \(last.timestamp)")
    }

    logger.record(OrderEntry(id: "004", userID: "u4"))
  
    if let oldest = logger.getLast(3) {
      print("\nOldest in log: \(oldest.id), \n - user: \(oldest.userID ?? "nil")")
    }
      
    logger.record(OrderEntry(id: "005", userID: "u5"))

    if let oldest = logger.getLast(3) {
      print("\nOldest in log: \(oldest.id), \n - user: \(oldest.userID ?? "nil")")
    }
  }
}

/* MARK: - Complexity Primary Solution
 | Operation     | Buffer   |
 | ------------- | -------- |
 | `record`      | O(1)     |
 | `getLast(i)`  | O(1)     |
 | Space         | O(N)     |
*/
