import Foundation

public struct SecondarySolution {
  public static func runExample() {
    let timerScheduler = TimerScheduler()

    timerScheduler.schedule(after: 1000, repeating: true) {
      print("Repeating Timer job at \(Date())")
    }

    // Cancel after 5 seconds
    DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
      timerScheduler.cancel()
      print("Cancelled Timer scheduler")
    }

  }
}
/* MARK: - Complexity Secondary Solution
⏱️ Time:  O(1) scheduling
🚀 Space: O(1) per job
*/
