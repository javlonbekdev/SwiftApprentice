import Combine

let meals: Publishers.Sequence<[String?], Never> = ["🍛", "🌭", "🌮", nil].publisher
let persons: Publishers.Sequence<[String?], Never> = ["Javlonbek", "Dev", "Alisher", "Nizomiddin"].publisher

let subscription = persons
    .zip(meals)
    .filter { $0 != nil && $1 != nil }
    .sink { print("Subscription: \($0)") } receiveValue: { print("\($0) enjoy \($1)") }

final class LevelManager {
    var level: Int = 0 {
        didSet {
            print("User's current level \(level)")
        }
    }
}

var subs = Set<AnyCancellable>()

let lvlManager = LevelManager()
let lvlRange = (0...100)
lvlRange
    .publisher
    .assign(to: \.level, on: lvlManager)
