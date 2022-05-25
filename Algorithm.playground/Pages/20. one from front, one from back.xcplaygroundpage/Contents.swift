//: [Previous](@previous)

import Foundation

var a = [1, 3, 5, 6, 4, 2]

func solution(a: [Int]) -> Bool {
    var b = [Int]()
    // return true if the length is 1
    if a.count == 1 { return true }
    // iterate through from 0 to the half of the length
    for i in 0...(a.count-1) / 2 {
        // take from the front
        b.append(a[i])
        // check to not add the middle number twice
        if i != a.count-(i+1) {
            // take from the back
            b.append(a[a.count-(i+1)])
        }
    }
    
    return isSorted(is: b)
}
// check if the array is sorted
func isSorted(is array: [Int]) -> Bool {
    // iterate through from 0 to the end of the array
    // subtract 1 because you'll get the i+1
    for i in 0..<array.count-1 {
        // check if the left number is greater than or equal to the right number
        if array[i] >= array[i + 1] { return false }
    }
    
    return true
}

print(solution(a: a))
