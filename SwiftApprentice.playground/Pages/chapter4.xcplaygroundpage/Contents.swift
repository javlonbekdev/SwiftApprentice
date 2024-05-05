iloop: for i in 1...5 {
    jloop: for j in 1...5 {
        if i > j {
            print("")
            continue iloop
        }
        print((i, j), terminator: " ")
    }
}

var sum = 0
for row in 0..<8 where row % 2 != 0 {
  for column in 0..<8 {
    sum += row * column
  }
}
print(sum)

let number = 11

switch number {
case _ where number % 2 == 0:
  print("Even")
default:
  print("Odd")
}

let person = (name: "Javlonbek", age: 13)

switch person {
case let (name, age) where age > 12:
    print("\(name) is an adult") 
default:
    print("error") 
}

var a = 10
for i in 0...10 {
    print(a)
    a -= 1
}
