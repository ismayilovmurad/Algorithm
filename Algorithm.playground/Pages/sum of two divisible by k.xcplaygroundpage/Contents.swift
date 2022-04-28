//: [Previous](@previous)

import Foundation

var a = [1, 2, 3, 4, 5]
var k = 3

// 1-2, 1-3, 1-4, 1-5
// 2-3, 2-4, 2-5
// 3-4, 3-5
// 4-5

// Check if the sum of these pairs is divisible by k

func solution(a: [Int], k: Int) -> Int64 {
    var counter: Int64 = 0
    
    if a.count <= 1 {
        return 0
    }
    
    if k == 1 {
        for i in 0..<a.count-1 {
            for _ in i+1..<a.count {
                counter += 1
            }
        }
        
        return counter
    }
    
    for i in 0..<a.count-1 {
        for j in i+1..<a.count {
            if (a[i] + a[j]) % k == 0 {
                counter += 1
            }
        }
    }
    
    return counter
}

print(solution(a: a, k: k))
