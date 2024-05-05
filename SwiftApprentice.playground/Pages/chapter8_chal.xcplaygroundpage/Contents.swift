import Foundation

//challenge 1
func repeatTask(times: Int, task: () -> Void) {
    for _ in 0..<times {
        task()
    }
}
repeatTask(times: 10, task: { print("Swift Apprentice is a great book!") })

//challenge 2
func fibonacci(_ number: Int) -> Int {
    if number == 1 || number == 2 {
        return 1
    } else {
        return fibonacci(number - 1) + fibonacci(number - 2)
    }
}
func mathSum(length: Int, series: (Int) -> Int) -> Int {
    var result = 0
    for i in 1...length {
        result += series(i)
    }
    return result
}
mathSum(length: 10, series: { $0 * $0 })
mathSum(length: 10, series: { fibonacci($0) })

//challenge 3
let appRatings = [
  "Calendar Pro": [1, 5, 5, 4, 2, 1, 5, 4],
  "The Messenger": [5, 4, 2, 5, 4, 1, 1, 2],
  "Socialise": [2, 1, 2, 2, 1, 2, 4, 2]
]
func average(dict: [String:[Int]]) -> [String: Int] {
    var averageRatings: [String: Int] = [:]
    appRatings.forEach { key, val in
        averageRatings[key] = val.reduce(0, +)/val.count
    }
    return averageRatings.filter { $0.value >= 3 }
}
average(dict: appRatings)
