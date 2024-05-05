import Foundation

func numberOfSpecialChars(_ word: String) -> Int {
    var dictLow = [Character: Int]()
    var dictUpp = [Character: Int]()
    var result = 0
    var index = 0
    for char in word {
        if char.isLowercase {
            dictLow[char] = index
        } else if dictUpp[char] == nil {
            dictUpp[char] = index
        }
        index += 1
    }
    for i in dictLow {
        if let uppVal = dictUpp[Character(i.key.uppercased())] {
            if i.value < uppVal {
                result += 1
            }
        }
    }
    return result
}
numberOfSpecialChars("aaAbcBC")
