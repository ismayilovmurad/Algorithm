//: [Previous](@previous)

import Foundation

var arr = [9, 8, 7, 6, 5]

func solution(arr: [Int]) -> Int64 {
    // check if all the items of the array are same
    if arr.allSatisfy({$0 == arr.first}) { return Int64(arr.count) }
    
    var subarrays = [[Int]]()
    // iterate through from 0 to the length of the array
    for i in 0..<arr.count {
        // iterate through from the i to the length of the array
        for j in i..<arr.count {
            // get the subarray
            let subarray = Array(arr[i...j])
            // add the subarray to the subarrays if it's decreasing
            if isDecreasing(array: subarray) {
                subarrays.append(subarray)
            }
        }
    }
    
    return Int64(subarrays.count)
}

func isDecreasing (array: [Int]) -> Bool {
    if array.count == 1 { return true }
    
    for i in 0..<array.count-1 {
        if array[i] < array[i+1] {
            return false
        }
    }
    
    return true
}

print(solution(arr: arr))
