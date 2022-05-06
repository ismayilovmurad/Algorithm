//: [Previous](@previous)

import Foundation

var s = "xzxzx"

func solution(s: String) -> Int {
    var sArray = Array(s)
    
    for i in permutations(sArray) {
        var current = String(i)
        print(current)
    }
    
    return 0
}

func permutations<T>(_ arr: [T]) -> [[T]] {
    if arr.count < 2 {
        return [arr]
    }
    var ret: [[T]] = []
    let rest = Array(arr[1...])
    for p in permutations(rest) {
        for i in 0...p.count {
            ret.append(Array(p[0..<i]) + [arr[0]] + Array(p[i...]))
        }
    }
    return ret
}

solution(s: s)
