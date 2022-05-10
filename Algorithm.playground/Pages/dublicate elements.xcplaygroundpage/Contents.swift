//: [Previous](@previous)

import Foundation

// get contiguous subarrays
// each element of subarray should appear at least twice

var arr = [1, 2, 3, 3, 3, 2, 4, 1]

func solution(arr: [Int]) -> Int {
    var result = 0
    
    for i in 0..<arr.count {
        for j in i..<arr.count {
            if atLeastTwo(array: Array(arr[i...j])) {
                result += 1
            }
        }
    }
    return result
}

func atLeastTwo(array: [Int]) -> Bool {
    var result = true
    
    if array.count > 1 {
        for i in 0..<array.count {
            var removedArray = array
            removedArray.remove(at: i)
            if !removedArray.contains(array[i]) {
                result = false
            }
        }
    } else {
        return false
    }
    return result
}

print(solution(arr: arr))
