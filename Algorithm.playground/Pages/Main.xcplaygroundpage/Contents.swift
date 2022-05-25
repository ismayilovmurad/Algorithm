//: [Previous](@previous)

import Foundation

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
// get digits from a number
func getDigits(number: inout Int) -> [Int] {
    var array = [Int]()
    // loop while the number is greater than 0
    while number > 0 {
        // add the remainder
        array.append(number % 10)
        number = number / 10
    }
    // reverse
    array.reverse()
    
    return array
}
// get all the permutations of any type of an array
func permutations<T>(_ arr: [T]) -> [[T]] {
    // return the array itself if it has less than 2 items
    if arr.count < 2 { return [arr] }
    
    var result: [[T]] = []
    // get the items as an array from the arr starting from the index 1
    let rest = Array(arr[1...])
    // iterate through the permutations of the gotten array
    for p in permutations(rest) {
        // iterate through from 0 to the end of the permutations array
        for i in 0...p.count {
            result.append(Array(p[0..<i]) + [arr[0]] + Array(p[i...]))
        }
    }
    
    return result
}
// check if the number is power of 2
func isPowerOfTwo(number: inout Int) -> Bool {
    // 2^0 is 1 and 2^1 is 2
    if number == 1 && number == 2 { return true }
    // return false if the number is negative
    if number <= 0 { return false }
    // loop while the number is greater than 1
    while number > 1 {
        // check if the number is divisible by 2
        if number % 2 != 0 { return false }
        // divide the number by 2
        number /= 2
    }
    
    return true
}
