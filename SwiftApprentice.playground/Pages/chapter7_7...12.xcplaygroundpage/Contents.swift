import Foundation

//challenge 7
var dict5 = ["NY": "New York", "CA": "California"]
//dict5["CA"] = nil

//challenge 8
func longNames(dict: [String: String]) -> [String] {
    var result = [String]()
    for i in dict {
        if i.value.count > 8 {
            result.append(i.value)
        }
    }
    return result
}
longNames(dict: dict5)

//challenge 9
func merging(_ dict1: [String: String], with dict2: [String: String]) -> [String: String] {
    var result = dict1
    for i in dict2 {
        result[i.key] = i.value
    }
    return result
}
merging(dict5, with: ["NY": "New York", "CA2": "California"])

//challenge 10
func occurrencesOfCharacters(in text: String) -> [Character: Int] {
    var result = [Character: Int]()
    for i in text {
        if let a = result[i] {
            result[i] = a + 1
        } else {
            result[i] = 1
        }
    }
    return result
}
occurrencesOfCharacters(in: "hello")

//challenge 11
func isInvertible(_ dictionary: [String: Int]) -> Bool {
    return Set(dictionary.values).count == dictionary.count
}
isInvertible(["hello": 1, "salom": 2])

//challenge 12
var nameTitleLookup: [String: String?] = ["Mary": "Engineer", "Patrick": "Intern", "Ray": "Hacker"]
nameTitleLookup["Patrick"] = nil
nameTitleLookup.removeValue(forKey: "Ray")
nameTitleLookup
