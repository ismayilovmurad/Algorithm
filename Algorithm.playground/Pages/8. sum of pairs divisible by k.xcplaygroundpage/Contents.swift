//: [Previous](@previous)

import Foundation

var a = [1, 2, 3, 4, 5]
var k = 3

func solution(a: [Int], k: Int) -> Int64 {
    var counter: Int64 = 0
    // return 0 if the a is empty
    if a.isEmpty { return 0 }
    // iterate through from 0 to the length of the array
    // subtract 1 because we need the pairs, the i and the i+1
    for i in 0..<a.count-1 {
        // iterate through from the i+1 to the length of the array
        // j is one step ahead of the i
        for j in i+1..<a.count {
            // no need to check if the number is divisible if it's 1
            // every number is divisible by the number 1
            if k == 1 {
                counter += 1
            } else {
                // check if the sum of the pairs is divisible by the number k
                if (a[i] + a[j]) % k == 0 {
                    counter += 1
                }
            }
        }
    }
    
    return counter
}

print(solution(a: a, k: k))
