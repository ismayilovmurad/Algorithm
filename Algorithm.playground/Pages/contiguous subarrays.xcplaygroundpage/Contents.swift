//: [Previous](@previous)

import Foundation

// Get m sized contiguous subarray of a:
// 2-4-7-5, 4-7-5-3, 7-5-3-5, 5-3-5-8, 3-5-8-5, 5-8-5-1, 8-5-1-7
// Check if the new subarray (first 2-4-7-5) contains any pair whose sum is k
// Get that subarray

let a = [2, 4, 7, 5, 3, 5, 8, 5, 1, 7]
let m = 4
let k = 10

func solution(a: [Int], m: Int, k: Int) -> Int {
    var result = [[Int]]()
    
    for i in 0...k-m {
        let mInterval = Array(a[i..<i+m])
        
        for s in 0..<m {
            for t in s+1..<m {
                if s != t && mInterval[s] + mInterval[t] == k {
                    if !result.contains(mInterval) {
                        result.append(mInterval)
                    }
                }
            }
        }
    }
    
    return result.count
}

print(solution(a: a, m: m, k: k))
