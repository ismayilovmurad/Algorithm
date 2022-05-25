//: [Previous](@previous)

import Foundation

var a = [1, 3, 5]
var b = [5, 3, 1]

func solution(a: [Int], b: [Int]) -> Int {
    var mutableA = a
    var differences = [Int]()
    // add the difference first, without swaping
    differences.append(findDifference(a: a, b: b))
    // iterate through from 0 to the end of the a
    for i in 0..<a.count {
        // iterate through from 0 to the end of the a
        for j in 0..<a.count {
            // change a's i-th element with the a's j-th element
            mutableA[i] = mutableA[j]
            // check if the new a isn't equal to a
            if mutableA != a {
                // add the difference
                differences.append(findDifference(a: mutableA, b: b))
            }
            // reset the a
            mutableA = a
        }
    }
        
    return differences.min()!
}
// find differences of two numbers
func findDifference(a: [Int], b: [Int]) -> Int {
    var difference = 0
    // iterate through from 0 to the end of the a
    for i in 0..<a.count {
        // subtract b from a
        var a = a[i] - b[i]
        // check if it's a negative number
        if a < 0 { a.negate() } // convert it to a positive number
        // add it to the difference
        difference += a
    }
    
    return difference
}

print(solution(a: a, b: b))
