// fibonacci sequence

import Foundation

func fibonacci(_ number: Int) -> Int {
    if number == 1 || number == 2 {
        return 1
    } else {
        return fibonacci(number - 1) + fibonacci(number - 2)
    }
}

fibonacci(11)
