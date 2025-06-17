import Foundation

public struct PrimarySolution {
  public static func runExample() {
    let scheduler = GCDScheduler()

    scheduler.schedule(after: 1000, repeating: true) {
      print("Repeating GCD job at \(Date())")
    }

    // Cancel after 5 seconds
    DispatchQueue.global().asyncAfter(deadline: .now() + 5) {
      scheduler.cancel()
      print("Cancelled GCD scheduler")
    }

  }
}
/* MARK: - Complexity Primary Solution
⏱️ Time:  O(1) scheduling
🚀 Space: O(1) per job
*/
