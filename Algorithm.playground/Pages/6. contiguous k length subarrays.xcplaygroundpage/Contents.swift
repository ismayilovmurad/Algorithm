//: [Previous](@previous)

import Foundation

var arr = [1, 2, 4, -1, 6, 1]
var k = 3
var s: Int64 = 6

func solution (arr: [Int], k: Int, s: Int64) -> Int64 {
    var subarrays = [[Int]]()
    // iterate through from 0 to the length of the array
    for i in 0..<arr.count {
        // if the i is less than the length of the array
        // subtract k because it's not possible to iterate through to the i+k if it's not less than
        if i < arr.count-k {
            // iterate through from the i to the i+k
            for j in i..<i+k {
                // get that less than or equal to k length subarray
                let subarray = Array(arr[i...j])
                // add it if the subarray's items' sum is s
                if findArrayItemSum(array: subarray) == s {
                    subarrays.append(subarray)
                }
            }
        } else {
            // iterate through from the i to the length of the array
            // because i is more than the lenght of the array subtract k
            for j in i..<arr.count {
                // get that less than or equal to k length subarray
                let subarray = Array(arr[i...j])
                // add it if the subarray's items' sum is s
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
