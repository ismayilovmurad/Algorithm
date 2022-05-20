//: [Previous](@previous)

import Foundation

// There's an integer array
// Determine the digits that occur the most number of times
// Return the array in ascending order

var a = [25, 2, 3, 57, 38, 41]

func solution(a: [Int]) -> [Int] {
    var digitList = [Int]()
    var dictionaryHelper = [Int]()
    var dictionary = [Int: Int]()
    
    for i in 0...a.count-1 {
        if a[i] > 9 || a[i] < -9 {
            for i in String(a[i]) {
                digitList.append(Int(String(i))!)
            }
        }else {
            digitList.append(a[i])
        }
    }
    
    for i in digitList {
        if(dictionaryHelper.contains(i)) {
            dictionary[i] = dictionary[i]! + 1
            dictionaryHelper.append(i)
        }else {
            dictionary[i] = 1
            dictionaryHelper.append(i)
        }
    }
        
    var finalArray = [Int]()
    
    for i in dictionary.keys {
        if dictionary[i] == Array(dictionary.values).max() {
            finalArray.append(i)
        }
    }
    
    finalArray.sort()
    
    return finalArray
}

print(solution(a: a))
