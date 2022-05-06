//: [Previous](@previous)

import Foundation

var numbers = [1000, 10, 100]

// Swap digits only one time and check if it's incresing
// Return false after checking all te swapings and not getting the incresing result

func solution(numbers: [Int]) -> Bool {
    var result = false
    
    if isSorted(is: numbers) {
        return true
    }

    for i in 0..<numbers.count {
        if numbers[i] > 9 {
            var currentNumber = numbers[i]
            let currentNumberDigits = getDigits(number: &currentNumber)
            let permutationsOfCurrentNumberDigits = permutations(currentNumberDigits)
                        
            for x in permutationsOfCurrentNumberDigits {
                var theNumber = ""
                for y in x {
                    theNumber += String(y)
                }
                
                var mutableNumbers = numbers
                mutableNumbers[i] = Int(theNumber)!
                
                if isSorted(is: mutableNumbers) {
                    result = true
                }
            }
        }
    }
        
    return result
}

func isSorted(is array: [Int]) -> Bool{
    // use brute force method
    for i in stride(from: 0, to: array.count - 1, by: 1){

        if array[i] >= array[i + 1]{
            return false
        }

    }
    return true
}

func permutations<T>(_ arr: [T]) -> [[T]] {
    if arr.count < 2 {
        return [arr]
    }
    var ret: [[T]] = []
    let rest = Array(arr[1...])
    for p in permutations(rest) {
        for i in 0...p.count {
            ret.append(Array(p[0..<i]) + [arr[0]] + Array(p[i...]))
        }
    }
    return ret
}

func getDigits(number: inout Int) -> [Int] {
    var array = [Int]()

    while number > 0 {
        array.append(number % 10)
        number = number / 10
    }
    array.reverse()
    
    return array
}

print(solution(numbers: numbers))
