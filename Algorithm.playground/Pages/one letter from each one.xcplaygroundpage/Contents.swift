//: [Previous](@previous)

import Foundation

var arr = ["Daisy", "Rose", "Hyacinth", "Poppy"]

// The output should be "DRHPaoyoisapsecpyiynth"

func solution(arr: [String]) -> String {
    let lettersArrays = eachStringAsAnArray(array: arr)
    let longestArray = getLongestArray(array: lettersArrays)
    var result = ""
    
    for i in 0..<longestArray.count {
        for j in 0..<lettersArrays.count {
            if i > lettersArrays[j].count-1 {
                continue
            }else {
                result += lettersArrays[j][i]
            }
            
        }
    }
        
    return result
}

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
