import Foundation

public class GCDScheduler {
  private var workItem: DispatchWorkItem?

  ///This leverages GCD, which is the canonical and high-performance way to schedule asynchronous work in iOS
  public func schedule(
    after milliseconds: Int,
    repeating: Bool = false,
    _ task: @escaping () -> Void
  ) {
    let delay = DispatchTime.now() + .milliseconds(milliseconds)

    let item = DispatchWorkItem { [weak self] in
      task()
      if repeating {
        // Avoid strong reference cycles
        self?.schedule(after: milliseconds, repeating: repeating, task)
      }
    }

    self.workItem = item

    DispatchQueue.global().asyncAfter(deadline: delay, execute: item)
  }

  public func cancel() {
    workItem?.cancel()
  }
}

