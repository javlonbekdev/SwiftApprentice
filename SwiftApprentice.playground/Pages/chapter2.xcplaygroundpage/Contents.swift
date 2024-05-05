
import Foundation

let age1 = 42
let age2 = 31
let avg1 = (Double(age1) + Double(age2))/2
print(avg1)

var coordinates3D = (x: 2, y: 3, z: 1)
let (x3, y3, z3) = coordinates3D
coordinates3D.x = 5
print(coordinates3D)

let (a, b, c) = (1, 2, 3)
print(a, b, c)

let val: UInt8 = 12
print(Int(val))

print(Double.pi, Float.pi)
