//: [Previous](@previous)

import Foundation

var a = [1, -1, 2, 3]

func solution(a: [Int]) -> Int {
    var result = 0
     
    for i in 0..<a.count {
        for j in i..<a.count {
            if isPowerOfTwo(number: a[i] + a[j]) {
                result += 1
            }
        }
    }
    
    return result
}

func isPowerOfTwo(number: Int) -> Bool {
    if number == 1 {return true}
    if number <= 0 {return false}
    
    var result = true
    var mutableNumber = number
    
    while mutableNumber > 1 {
        if mutableNumber % 2 != 0 {
            result = false
        }
        mutableNumber /= 2
    }
    
    return result
}

print(solution(a: a))
