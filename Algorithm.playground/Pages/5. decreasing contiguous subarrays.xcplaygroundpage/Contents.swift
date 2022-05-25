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
            if isSorted(is: subarray) {
                subarrays.append(subarray)
            }
        }
    }
    
    return Int64(subarrays.count)
}
// check if the array is sorted
func isSorted(is array: [Int]) -> Bool {
    // iterate through from 0 to the end of the array
    // subtract 1 because you'll get the i+1
    for i in 0..<array.count-1 {
        // check if the left number is greater than or equal to the right number
        if array[i] <= array[i + 1] { return false }
    }
    
    return true
}

print(solution(arr: arr))
