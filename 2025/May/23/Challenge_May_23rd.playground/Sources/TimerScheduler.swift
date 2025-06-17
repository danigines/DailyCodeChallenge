import Foundation

public class TimerScheduler {
  private var timer: Timer?

  ///This is more UIKit-friendly (main-thread-safe), particularly useful if the function involves UI updates.
  public func schedule(
    after milliseconds: Int,
    repeating: Bool = false,
    _ task: @escaping () -> Void
  ) {
    let interval = Double(milliseconds) / 1000.0
    timer = Timer.scheduledTimer(withTimeInterval: interval, repeats: repeating) { _ in
      task()
    }
  }

  public func cancel() {
    timer?.invalidate()
    timer = nil
  }
}
