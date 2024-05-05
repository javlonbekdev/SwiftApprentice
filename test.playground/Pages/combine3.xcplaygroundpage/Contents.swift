import Combine
import Foundation

let foodbank: Publishers.Sequence<[String], Never> = ["apple", "bread", "orange", "milk"].publisher

var timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()

let calendar = Calendar.current
let endDate = calendar.date(byAdding: .second, value: 5, to: Date())!

struct MyError: Error {}

func throwAtEndDate(foodItem: String, date: Date) throws -> String {
    if date < endDate {
        return "\(foodItem) at \(date)"
    } else {
        throw MyError()
    }
}
let subscription = foodbank.zip(timer)
    .tryMap({ (foodItem, timestamp) in
        try throwAtEndDate(foodItem: foodItem, date: timestamp)
    })
    .sink {
        (completion) in
        switch completion {
        case .finished:
            print ("completion: finished")
        case .failure(let error):
            print("completion with failure: \(error.localizedDescription)")
        }
    } receiveValue: {
        print("receive item \($0)")
    }
