//: [Previous](@previous)

import Foundation

var a = [1, 2, 1, 3, 1, 2, 1]
var queries = [[1, 3, 3], [0, 4, 1], [2, 5, 2], [5, 6, 1]]

func solution(a: [Int], queries: [[Int]]) -> Int {
    var result = 0
    // iterate through the queries
    for i in queries {
        // count the occurences
        var occurenceCounter = 0
        // for the [1, 3, 3], get the subarray from 1 to 3 in the a
        // here the subarray is [2, 1, 3]
        let subarray = a[i[0]...i[1]]
        // get the number 3
        let theNumber = i[2]
        // iterate through the subarray
        // here the subarray is [2, 1, 3]
        for i in subarray {
            // count the occurence if the i is equal to the number
            // here 3 appears in the [2, 1, 3] only 1 time
            if i == theNumber {
                occurenceCounter += 1
            }
        }
        // add that occurences to the result
        result += occurenceCounter
    }
    
    return result
}

print(solution(a: a, queries: queries))
