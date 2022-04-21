//: [Previous](@previous)

import Foundation

// There're 2 arrays a & b
// They have the same length
// There's an integer k
// Iterate through a left to right, take x
// Iterate through b right to left simultaneously, take y
// It's tiny if the concatenation xy less than k
// How many tiny pairs are there?

var a = [1, 2, 3]
var b = [1, 2, 3]
var k = 31

func solution(a: [Int], b: [Int], k: Int) -> Int {
    var tinyCounter = 0
    
    for i in 0..<a.count {
        if Int(String(a[i]) + String(b[b.count-(i+1)]))! < k {
            tinyCounter += 1
        }
    }
    
    return tinyCounter
}

print(solution(a: a, b: b, k: k))
