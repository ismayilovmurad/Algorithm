//: [Previous](@previous)

import Foundation

// get differences by swaping one element of a to any element in a
// return the minimum one
// 1-3, [3,3,5]
// 1-5, [5,3,5]
// 3-1, [1,1,5]
// 3-5, [1,5,5]
// 5-1, [1,3,1]
// 5-2, [1,3,3]

var a = [1, 3, 5]
var b = [5, 3, 1]

func solution(a: [Int], b: [Int]) -> Int {
    var mutableA = a
    var differences = [Int]()
    
    differences.append(findDifference(a: a, b: b))
    
    for i in 0..<a.count {
        for j in 0..<a.count {
            mutableA[i] = mutableA[j]
            if mutableA != a {
                differences.append(findDifference(a: mutableA, b: b))
            }
            mutableA = a
        }
    }
        
    return differences.min()!
}

func findDifference(a: [Int], b: [Int]) -> Int {
    var difference = 0
    
    for i in 0..<a.count {
        var a = a[i] - b[i]
        if a < 0 {
            a.negate()
        }
        difference += a
    }
    
    return difference
}

print(solution(a: a, b: b))
