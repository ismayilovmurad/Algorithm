//: [Previous](@previous)

import Foundation

// return true if you can equalize the pieces with the arr by arranging

var arr = [1, 2, 5, 3]
var pieces = [[5], [1, 2], [3]]
// this should return true

func solution(arr: [Int], pieces: [[Int]]) -> Bool {
    var result = false
    // check if there's only one piece
    if pieces.count == 1 {
        // check if that only piece is equal to the arr
        if pieces[0] == arr { return true }
    } else {
        
        var array = [Int]()
        
        for i in 0..<pieces.count {
            array.append(i)
        }
        
        print(array)
        
        for i in permute(array) {
            var a = [[Int]]()
            
            for j in i {
                a.append(pieces[j])
            }
            
            var b = [Int]()
            
            for x in a {
                for y in x {
                    b.append(y)
                }
            }
            
            if b == arr {
                result = true
                break
            }
        }
        
    }
    
    return result
}

var newArray = [[Int]]()

func permute(_ str: [Int]) -> [[Int]] {
        var nums = str
        findPermutation(&nums, left: 0, right: str.count)
        return newArray
}
    
func findPermutation(_ num: inout [Int], left: Int, right: Int) {
        if left == right {
            newArray.append(num)
        }
        for i in left ..< right {
            num.swapAt(i, left)
            findPermutation(&num, left: left+1, right: right)
            num.swapAt(i, left)
        }
}

print(solution(arr: arr, pieces: pieces))
