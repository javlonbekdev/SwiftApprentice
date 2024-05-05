// find prime number

import Foundation

func isNumberDivisible(_ number: Int, by divisor: Int) -> Bool {
    number % divisor == 0
}

func isPrime(_ number: Int) -> Bool {
    for i in 2..<Int(sqrt(Double(number))) {
        if isNumberDivisible(number, by: i) {
            return false
        }
    }
    return true
}

isPrime(8893)
