//: [Previous](@previous)

import Foundation

var arr = ["Daisy", "Rose", "Hyacinth", "Poppy"]

func solution(arr: [String]) -> String {
    // get the each string as an array
    let lettersArrays = eachStringAsAnArray(array: arr)
    // get the longest array in an array of arrays
    let longestArray = getLongestArray(array: lettersArrays)
    var result = ""
    // iterate through from 0 to the end of the longestArray
    for i in 0..<longestArray.count {
        // iterate through from 0 to the end of the lettersArrays
        for j in 0..<lettersArrays.count {
            if i > lettersArrays[j].count-1 {
                continue
            } else {
                result += lettersArrays[j][i]
            }
            
        }
    }
        
    return result
}
// get the each string as an array
func eachStringAsAnArray(array: [String]) -> [[String]] {
    var lettersArrays = [[String]]()
    
    for i in arr {
        var lettersArray = [String]()
        for j in i {
            lettersArray.append(String(j))
        }
        lettersArrays.append(lettersArray)
    }
    
    return lettersArrays
}
// get the longest array in an array of arrays
func getLongestArray(array: [[String]]) -> [String] {
    var longestArray = [String]()
    
    for i in array {
        if i.count > longestArray.count {
            longestArray = i
        }
    }
    
    return longestArray
}

print(solution(arr: arr))
