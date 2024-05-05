import Foundation

// challenge 2
func wordCount(str: String) -> Int {
    var result = 1
    for i in str {
        if i.isWhitespace {
            result += 1
        }
    }
    return result
}
wordCount(str: "Assalomu alaykum varohmatullohi va barokatuh")

// challenge 3
func nameFormat(name: String) -> String {
    let index = name.firstIndex(of: ",")!
    let lastName = name[..<index]
    let firstName = name[name.index(index, offsetBy: 2)...]
    return firstName + " " + lastName
}
nameFormat(name: "Dev, Javlonbek")

// challenge 4
"hello".components(separatedBy: "l")
func components(str: String, separatedBy: Character) -> [String] {
    var result = [String]()
    var element = ""
    for i in str {
        if i == separatedBy {
            result.append(element)
            element = ""
        } else {
            element.append(String(i))
        }
    }
    return result + [element]
}
components(str: "hello", separatedBy: "l")

// challenge 5
func wordReverser(str: String) -> String {
    var result = String()
    var element = ""
    for i in str {
        if i == " " {
            result += (result.isEmpty ? "" : " ") + element
            element = ""
        } else {
            element = String(i) + element
        }
    }
    return result + " " + element
}
wordReverser(str: "My dog is called Rover")
