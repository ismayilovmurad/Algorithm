//: [Previous](@previous)

import Foundation

// There's an integer array a
// Generate a new array b from the array b
// b[0] = a[0]
// b[1] = the last element of the a
// b[2] = a[1]
// b[3] = the second-last element of the a
// and so on
// Determine if the b is sorted in ascending order or not

var a = [1, 3, 5, 6, 4, 2]

func solution(a: [Int]) -> Bool {
    var b = [Int]()
    
    if a.count == 1 {
        return true
    }
    
    for i in 0...(a.count-1) / 2 {
        b.append(a[i])
        
        if i != a.count-(i+1) {
            b.append(a[a.count-(i+1)])
        }
    }
    
    for i in 0...b.count-1 {
        let first = i
        let next = i+1
        
        if next < b.count {
            if b[first] >= b[next] {
                return false
            }
        }
    }
    
    return true
}

print(solution(a: a))
