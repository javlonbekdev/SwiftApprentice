//: [Previous](@previous)

import Foundation

func numberOfSpecialChars(_ word: String) -> Int {
    var dict: [String: String] = [:]
    for char in word {
        dict[char.lowercased()] = (dict[char.lowercased()] ?? "") + String(char)
    }
    return dict.values.filter { $0.lowercased() != $0 && $0.uppercased() != $0 }.count
}

numberOfSpecialChars("aaAbcBC")

var char = ["a": 4]
for i in char {
    
}
