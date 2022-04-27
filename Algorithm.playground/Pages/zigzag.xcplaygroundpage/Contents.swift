//: [Previous](@previous)

import Foundation

// a < b > c or a > b < c
// i, i+1, i+2

var numbers = [1, 2, 1, 3, 4]

func solution(numbers: [Int]) -> [Int] {
    var zigzagList = [Int]()
    
    for i in 0..<numbers.count-2 {
        let a = numbers[i]
        let b = numbers[i+1]
        let c = numbers[i+2]
        
        if (a < b && b > c) || (a > b && b < c) {
            zigzagList.append(1)
        }else {
            zigzagList.append(0)
        }
    }
    return zigzagList
}

print(solution(numbers: numbers))
