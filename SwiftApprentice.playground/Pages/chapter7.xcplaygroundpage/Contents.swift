
import Foundation

var players = ["Alice", "Bob", "Cindy", "Dan"]

let upcomingPlayerSlice = players[1...2]
//print(upcomingPlayerSlice.indices)

players[1] = "Bobby"
//print(upcomingPlayerSlice[1])

players.firstIndex(of: "Dan")

players = ["Anna", "Donna", "Craig", "Brian", "Dan", "Eli", "Franklin"]
players.swapAt(1, 3)

//print(players)
let playersCopy = players.sorted()

//print(playersCopy)

var pairs: [String: Int] = [:]

pairs = ["Alice": 2, "Bob": 3, "Don": 6]

pairs.reserveCapacity(2)

print(pairs)

var bobData = [
  "name": "Bob",
  "profession": "Card Player",
  "country": "USA"
]
bobData.updateValue("CA", forKey: "state")
bobData["city"] = "San Francisco"
print(bobData)
