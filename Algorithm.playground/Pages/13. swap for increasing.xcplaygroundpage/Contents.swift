//: [Previous](@previous)

import Foundation

var numbers = [1000, 10, 100]

func solution(numbers: [Int]) -> Bool {
    // check if it's already sorted
    if isSorted(is: numbers) { return true }
    // iterate through from 0 to the end of the numbers
    for i in 0..<numbers.count {
        // check if the number has more than 1 digits, eligible for swapings
        if numbers[i] > 9 {
            // get the current more than 1 digits number
            var currentNumber = numbers[i]
            // get the digits from the number as an array
            let currentNumberDigits = getDigits(number: &currentNumber)
            // get all the permutations from the digits as an array of arrays
            let permutationsOfCurrentNumberDigits = permutations(currentNumberDigits)
            // iterate through the array of arrays permutations
            for x in permutationsOfCurrentNumberDigits {
                var theNumber = ""
                // iterate through the array x
                for y in x {
                    // get that number
                    theNumber += String(y)
                }
                
                var mutableNumbers = numbers
                // put the swapped number in the same index
                mutableNumbers[i] = Int(theNumber)!
                // check if the array is sorted now
                if isSorted(is: mutableNumbers) { return true }
            }
        }
    }
        
    return false
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
// check if the array is sorted
func isSorted(is array: [Int]) -> Bool {
    // iterate through from 0 to the end of the array
    // subtract 1 because you'll get the i+1
    for i in 0..<array.count-1 {
        // check if the left number is greater than or equal to the right number
        if array[i] >= array[i + 1] {
            return false
        }
    }
    
    return true
}

print(solution(numbers: numbers))
