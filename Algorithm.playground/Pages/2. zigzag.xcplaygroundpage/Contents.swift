//: [Previous](@previous)

import Foundation

let numbers = [1, 2, 1, 3, 4]

func solution(numbers: [Int]) -> [Int] {
    var zigzagList = [Int]()
    // iterate through from 0 to the length of the numbers
    // subtract 2 because you'll add 2 to get the i+2
    for i in 0..<numbers.count-2 {
        // get the i, i+1, i+2
        let a = numbers[i]
        let b = numbers[i+1]
        let c = numbers[i+2]
        // a < b > c or a > b < c
        if (a < b && b > c) || (a > b && b < c) {
            zigzagList.append(1)
        } else {
            zigzagList.append(0)
        }
    }
    
    return zigzagList
}

print(solution(numbers: numbers))
