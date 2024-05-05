import Foundation

class Solution {
    func minimumOperations(_ grid: [[Int]]) -> Int {
        let gridCount = grid.count
        let gridRow = grid[0].count
        var result = 0
        var list = [Int: Int]()
        for i in 1...grid.count {
            list[-i] = 0
        }
        for i in 0..<grid[0].count {
            var dict = [Int: Int]()
            for j in 0..<grid.count {
                let key = grid[j][i]
                if let val = dict[key] {
                    dict[key] = val + 1
                } else {
                    dict[key] = 1
                }
            }
            var newList = [Int: Int]()
            for (key, val) in dict {
                var add = 0
//                print(key, val)
                for i in list {
                    if key != i.key {
                        if add < (val + i.value) {
                            add = val + i.value
                        }
                    } else if gridCount != 1 {
                        add = i.value
                    }
                }
                newList[key] = add
            }
            print(newList)
            list = newList
            newList = [:]
            dict = [:]
        }
        result = gridRow * gridCount - (list.values.max() ?? 0)
        if gridCount == 1 { return result / 2 }
        return result
    }
}


//[
//    [5, 5, 6, 6, 6, 5, 4, 6, 6, 5],
//    [5, 6, 6, 3, 4, 6, 6, 6, 6, 6],
//    [6, 6, 5, 5, 6, 4, 6, 5, 5, 6],
//    [6, 6, 4, 5, 5, 6, 6, 6, 5, 5],
//    [5, 6, 3, 5, 6, 6, 6, 6, 6, 5],
//    [5, 6, 5, 4, 6, 5, 6, 5, 6, 6]
//]

Solution().minimumOperations([[1,1,1],[0,0,0]])
