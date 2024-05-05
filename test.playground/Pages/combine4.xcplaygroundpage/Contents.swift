import Combine
import Foundation

class MyClass {
    var anInt: Int = 0 {
        didSet {
            print("anInt was set to: \(anInt)")
        }
    }
}

var object = MyClass()
let range = (0...2)
let subscription = range.publisher
    .map { $0 * 10}
    .assign(to: \.anInt, on: object)
subscription.cancel()
