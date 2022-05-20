//: [Previous](@previous)

import Foundation

// return true if you can equalize the pieces with the arr by arranging

var arr = [1, 2, 5, 3]
var pieces = [[5], [1, 2], [3]]

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
                
        for i in permutations(array) {
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
// get all the permutations of any type of an array
func permutations<T>(_ arr: [T]) -> [[T]] {
    // return the array itself if it has less than 2 items
    if arr.count < 2 { return [arr] }
    
    var result: [[T]] = []
    // get the items as an array from the arr starting from the index 1
    let rest = Array(arr[1...])
    // iterate through the permutations of the gotten array
    for p in permutations(rest) {
        // iterate through from 0 to the end of the permutations array
        for i in 0...p.count {
            result.append(Array(p[0..<i]) + [arr[0]] + Array(p[i...]))
        }
    }
    
    return result
}

print(solution(arr: arr, pieces: pieces))
