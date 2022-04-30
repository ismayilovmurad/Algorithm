//: [Previous](@previous)

import Foundation

// iterate through the array
// check the numbers one by one
// find the number which is divisible by i+1
// check the left <= theNumber <= right

var numbers = [8, 5, 6, 16, 5]
var left = 1
var right = 3

func solution(numbers: [Int], left: Int, right: Int) -> [Bool] {
    var result = [Bool]()

    for i in 0..<numbers.count {
        if numbers[i] % (i + 1) == 0 {
            let theNumber = numbers[i] / (i + 1)
            if left <= theNumber && theNumber <= right {
                result.append(true)
            } else {
                result.append(false)
            }
        } else {
            result.append(false)
        }
    }
    
    return result
}

print(solution(numbers: numbers, left: left, right: right))
