//: [Previous](@previous)

import Foundation

var arr = [1, 2, 3, 3, 3, 2, 4, 1]

func solution(arr: [Int]) -> Int {
    var result = 0
    // iterate through from 0 to the length of the arr
    for i in 0..<arr.count {
        // iterate through from i to the length of the arr
        for j in i..<arr.count {
            // get the subarray
            let subarray = Array(arr[i...j])
            // check if the each element of the subarray appears at least twice
            if atLeastTwo(array: subarray) {
                result += 1
            }
        }
    }
    
    return result
}

func atLeastTwo(array: [Int]) -> Bool {
    var result = true
    // check if the length of the subarray is more than 1
    if array.count > 1 {
        // iterate through from 0 to the length of the subarray
        for i in 0..<array.count {
            var mutableArray = array
            // remove the i from the mutableArray
            mutableArray.remove(at: i)
            // check if the mutableArray still contains the removed item
            if !mutableArray.contains(array[i]) {
                result = false
            }
        }
    } else { return false }
    
    return result
}

print(solution(arr: arr))
