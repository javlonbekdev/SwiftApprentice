import Foundation

//challenge 2-3
func removingOnce(_ item: Int, from array: [Int]) -> [Int] {
    var newArray = array
    var index = 0
    if array.count > 0 {
        for i in 0..<newArray.count {
            if newArray[i - index] == item {
                newArray.remove(at: i - index)
                index += 1
            }
        }
    }
    return newArray
}
removingOnce(4, from: [3,5,5,2,6,4,7,4])

//challenge 4
func reversed(_ array: [Int]) -> [Int] {
    var newArray = [Int]()
    let arrCount = array.count
    if arrCount > 0 {
        for i in 1...arrCount {
            newArray.append(array[arrCount - i])
        }
    }
    return newArray
}
reversed([1,2,3,4,5,6])

//challenge 5
func middle(_ array: [Int]) -> Int? {
    array.count > 0 ? array[(array.count - 1)/2] : nil
}
middle([4,2,5])

//challenge 6
func minMax(of numbers: [Int]) -> (min: Int, max: Int)? {
    if !numbers.isEmpty {
        var min = numbers[0]
        var max = numbers[0]
        for i in numbers {
            if min > i {
                min = i
            }
            if max < i {
                max = i
            }
        }
        return (min, max)
    }
    return nil
}
minMax(of: [1, 2, 3, 4, 5, 6, 5])
