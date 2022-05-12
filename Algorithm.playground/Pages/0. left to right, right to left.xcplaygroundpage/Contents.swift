//: [Previous](@previous)

import Foundation

let a = [1, 2, 3]
let b = [1, 2, 3]
let k = 31

func solution(a: [Int], b: [Int], k: Int) -> Int {
    var tinyCounter = 0
    // iterate through from 0 to the length of the a or b, they are the same length
    for i in 0..<a.count {
        // x = i-th item of the a, from the left
        let x = String(a[i])
        // y = i-th item of the b, from the right
        let y = String(b[b.count-(i+1)])
        // concatenate xy
        let xy = Int(x + y)!
        // check if it's less than k
        if xy < k {tinyCounter += 1}
    }
    
    return tinyCounter
}

print(solution(a: a, b: b, k: k))
