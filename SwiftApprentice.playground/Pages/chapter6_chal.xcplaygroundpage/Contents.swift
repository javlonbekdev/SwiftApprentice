
import Foundation

// challenge 2
func divideOfWhole(_ value: Int, _ divisor: Int) -> Int? {
    if value % divisor == 0 {
        return value / divisor
    }
    return nil
}

if divideOfWhole(10, 2) == nil {
    print("Not divisible :[.")
} else {
    print("Yep, it divides \(divideOfWhole(10, 2)!) times")
}

// challenge 3
print("Yep, it divides \(divideOfWhole(10, 2) ?? 0) times")

// challenge 4
let number: Int??? = 10

print(number!!!)

if let number1 = number, let number2 = number1, let number3 = number2 {
    print(number3)
}

func printNumber(_ number: Int???) {
    guard let number = number else {
        return
    }
    print(number)
}

print(number)
