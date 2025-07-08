import Foundation
public struct SecondarySolution {
    public static func runExample() {
        print("\n\n* * * * * * * * * * * * * *  SECONDARY SOLUTION  * * * * * * * * * * * * * *")
        let logger: OrderLoggingProtocol = NaiveOrderLog(capacity: 3)

        logger.record(OrderEntry(id: "101", userID: "u101"))
        logger.record(OrderEntry(id: "102", userID: "u102"))
        logger.record(OrderEntry(id: "103", userID: "u103"))
        
        if let last = logger.getLast(1) {
          print("Most recent: \(last.id), \n - user: \(last.userID ?? "nil"), \n - at: \(last.timestamp)")
        }

        logger.record(OrderEntry(id: "104", userID: "u104"))
      
        if let oldest = logger.getLast(3) {
          print("\nOldest in log: \(oldest.id), \n - user: \(oldest.userID ?? "nil")")
        }
          
        logger.record(OrderEntry(id: "105", userID: "u105"))

        if let oldest = logger.getLast(3) {
          print("\nOldest in log: \(oldest.id), \n - user: \(oldest.userID ?? "nil")")
        }
      }
}

/* MARK: - Complexity Secondary Solution
 | Operation     | Naive Array               |
 | ------------- | ------------------------- |
 | `record`      | O(n) (removeFirst shifts) |
 | `getLast(i)`  | O(1)                      |
 | Space         | O(N)                      |
*/
