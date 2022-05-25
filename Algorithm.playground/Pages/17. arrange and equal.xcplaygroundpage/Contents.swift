//: [Previous](@previous)

import Foundation

var arr = [1, 2, 5, 3]
var pieces = [[5], [1, 2], [3]]

func solution(arr: [Int], pieces: [[Int]]) -> Bool {
    // check if there's only one piece
    if pieces.count == 1 {
        // check if that only piece is equal to the arr
        if pieces[0] == arr { return true }
    } else {
        
        var array = [Int]()
        // iterate through from 0 to the end of the pieces
        for i in 0..<pieces.count {
            // add the counts of pieces to the array
            array.append(i)
        }
        // iterate through the permutations of the array
        for i in permutations(array) {
            var a = [[Int]]()
            // iterate through the permutations
            for j in i {
                // add it to the a
                a.append(pieces[j])
            }
            
            var b = [Int]()
            // iterate through the a
            for x in a {
                // iterate through the x
                for y in x {
                    // add it to the b
                    b.append(y)
                }
            }
            // check if the b is equal to the arr after swaping the pieces
            if b == arr { return true }
        }
        
    }
    
    return false
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
