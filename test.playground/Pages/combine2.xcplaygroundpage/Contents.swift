import Combine
import UIKit

var subscription: Cancellable? = Timer.publish (every: 1, on: .main, in: .common)
    .autoconnect()
    .throttle(for: .seconds(2), scheduler: DispatchQueue.main, latest: true)
    .scan(0, { count, _ in
        count + 1
    })
    .filter { $0 > 2 }
    .sink {
        print("sink \($0)")
    } receiveValue: {
        print("receive value \($0)")
    }

RunLoop.main.schedule(after: .init(Date(timeIntervalSinceNow: 7))) {
    print("--- cancel sub")
    subscription = nil
}
