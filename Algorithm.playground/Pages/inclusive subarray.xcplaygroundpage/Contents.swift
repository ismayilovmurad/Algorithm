//: [Previous](@previous)

import Foundation

// check the queries array arrays
// starting with the array [1, 3, 3]
// 1 is l, 3 is r, 3 is x
// how many x in the a[l...r]

var a = [1, 2, 1, 3, 1, 2, 1]
var queries = [[1, 3, 3], [0, 4, 1], [2, 5, 2], [5, 6, 1]]

func solution(a: [Int], queries: [[Int]]) -> Int {
    var result = 0
    
    for i in queries {
        var occurences = 0
        var subarray = a[i[0]...i[1]]
        var theNumber = i[2]
        
        for i in subarray {
            if i == theNumber {
                occurences += 1
            }
        }
        result += occurences
    }
    
    return result
}

print(solution(a: a, queries: queries))
