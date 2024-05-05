import Foundation

var multiplyClosure: (Int, Int) -> Int

multiplyClosure = { a, b in
    return a + b
}

multiplyClosure(4,5)

multiplyClosure = { (a, b) in
  a * b
}

func operateOnNumbers(_ a: Int, _ b: Int,
                      operation: (Int, Int) -> Int) -> Int {
  let result = operation(a, b)
  print(result)
  return result
}

operateOnNumbers(5, 7, operation: * )

func sequenced(first: ()->Void, second: ()->Void) {
  first()
  second()
}

sequenced {
    print("hello,", terminator: " ")
} second: {
    print("world")
}

let voidClosure: () -> Void = {
  print("Swift Apprentice is awesome!")
}
voidClosure()

let farmAnimals = ["🐎": 5, "🐄": 10, "🐑": 50, "🐶": 1]
let allAnimals = farmAnimals.reduce(into: []) {
  (result, this: (key: String, value: Int)) in
  for _ in 0 ..< this.value {
    result.append(this.key)
  }
}
print(allAnimals)

func isPrime(_ number: Int) -> Bool {
  if number == 1 { return false }
  if number == 2 || number == 3 { return true }

  for i in 2...Int(Double(number).squareRoot()) {
    if number % i == 0 { return false }
  }
  return true
}

var primes: [Int] = []
var i = 1
while primes.count < 10 {
  if isPrime(i) {
    primes.append(i)
  }
  i += 1
}

primes.forEach { print($0) }

let primes2 = (1...).lazy
  .filter { isPrime($0) }
  .prefix(30)
primes2.forEach { print($0) }
