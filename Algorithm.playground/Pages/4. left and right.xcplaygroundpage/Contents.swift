//: [Previous](@previous)

import Foundation

var numbers = [8, 5, 6, 16, 5]
var left = 1
var right = 3

func solution(numbers: [Int], left: Int, right: Int) -> [Bool] {
    var result = [Bool]()
    // iterate through from 0 to the length of the array
    for i in 0..<numbers.count {
        // check if the i is divisible by i+1
        if numbers[i] % (i + 1) == 0 {
            // get that number
            let theNumber = numbers[i] / (i + 1)
            // check if the number is left <= theNumber <= right
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
