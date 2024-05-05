import Foundation

let cafeNormal = "café"
let cafeCombining = "caf\u{0065}\u{0301}"

cafeNormal.count
cafeCombining.count

let firstIndex = cafeCombining.index(before: cafeCombining.endIndex)
cafeCombining[firstIndex]

let fourthIndex = cafeCombining.index(cafeCombining.startIndex, offsetBy: 3)
let fourthChar = cafeCombining[fourthIndex]
fourthChar.unicodeScalars.count

let raw1 = #"Raw "No Escaping" \(no interpolation!). Use all the \ you want!"#
print(raw1)

let singleCharacter: Character = "٨"
singleCharacter.wholeNumberValue
print(cafeCombining.unicodeScalars)

let characters = "+\u{00bd}\u{21e8}\u{1f643}"
let arrowIndex = characters.firstIndex(of: "\u{21e8}")!
characters[arrowIndex] // ⇨

if let utf16Index = arrowIndex.samePosition(in: characters.utf16) {
    characters.utf16[utf16Index] // 8680
}
