//: [Previous](@previous)

import Foundation

/// Calculates the average of three values
/// - Parameters:
///   - a: The first value.
///   - b: The second value.
///   - c: The third value.
/// - Returns: The average of the three values.
func calculateAverage(of a: Double, and b: Double, and c: Double) -> Double {
  let total = a + b + c
  let average = total / 3
  return average
}
calculateAverage(of: 1, and: 3, and: 5)

for index in stride(from: 10, to: 22, by: 4) {
  print(index, terminator: " ")
}
print()
// prints 10, 14, 18

for index in stride(from: 10, through: 22, by: 4) {
  print(index, terminator: " ")
}
// prints 10, 14, 18, and 22
