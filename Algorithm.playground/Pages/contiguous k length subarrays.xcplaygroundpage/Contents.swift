//: [Previous](@previous)

import Foundation

// get contiguous subarrays of arr
// only the k length ones
// get the subarrays whose items' sum is s

// [1], [1, 2], [1, 2, 4]
// [2], [2, 4], [2, 4, -1]
// [4], [4, -1], [4, -1, 6]
// [-1], [-1, 6], [-1, 6, 1]
// [6], [6, 1]
// [1]

// [2, 4], [-1, 6, 1], [6]

var arr = [1, 2, 4, -1, 6, 1]
var k = 3
var s: Int64 = 6

func solution (arr: [Int], k: Int, s: Int64) -> Int64 {
    var subarrays = [[Int]]()
    
    for i in 0..<arr.count {
        if i < arr.count-k {
            for j in i..<i+k {
                let subarray = Array(arr[i...j])
                if findArrayItemSum(array: subarray) == s {
                    subarrays.append(subarray)
                }
            }
        } else {
            for j in i..<arr.count {
                let subarray = Array(arr[i...j])
                if findArrayItemSum(array: subarray) == s {
                    subarrays.append(subarray)
                }
            }
        }
    }
        
    return Int64(subarrays.count)
}

func findArrayItemSum(array: [Int]) -> Int {
    var sum = 0
    
    for i in array {
        sum += i
    }
    
    return sum
}

print(solution(arr: arr, k: k, s: s))
