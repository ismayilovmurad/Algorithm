//: [Previous](@previous)

import Foundation

var a = [1, -1, 2, 3]

func solution(a: [Int]) -> Int {
    var result = 0
     // iterate through from 0 to the length of the a
    for i in 0..<a.count {
        // iterate through from the i to the length of the a
        for j in i..<a.count {
            // get the sum of the pairs
            var number = a[i] + a[j]
            // check if sum of the two pairs is power of 2
            if isPowerOfTwo(number: &number) {
                result += 1
            }
        }
    }
    
    return result
}

func isPowerOfTwo(number: inout Int) -> Bool {
    // 2^0 is 1 and 2^1 is 2
    if number == 1 && number == 2 { return true }
    // return false if the number is negative
    if number <= 0 { return false }
    // loop while the number is greater than 1
    while number > 1 {
        // check if the number is divisible by 2
        if number % 2 != 0 { return false }
        // divide the number by 2
        number /= 2
    }
    
    return true
}

print(solution(a: a))
