//: [Previous](@previous)

import Foundation

// Split a into two arrays whose items are unique to each other
// There's no solution if the number appears more than 2

var a = [2, 1, 2, 3, 3, 4]

func solution(a: [Int]) -> [[Int]] {
    var arrayOne = [Int]()
    var arrayTwo = [Int]()
        
    var moreThan2Finder = [Int]()
    var moreThan2Counter = 0
    
    for i in a {
        if moreThan2Finder.contains(i) {
            if moreThan2Counter == 2 {
                return [[Int]]()
            }
            arrayOne.append(i)
            arrayTwo.append(i)
            moreThan2Counter += 1
        }
        moreThan2Finder.append(i)
    }
    
    var newA = [Int]()
    
    for i in a {
        if !arrayOne.contains(i){
            newA.append(i)
        }
    }
    
    if newA.count != 0 {
        for i in 0..<newA.count-1 {
            arrayOne.append(newA[i])
            arrayTwo.append(newA[i+1])
        }
    }
    
    return [arrayOne, arrayTwo]
}

print(solution(a: a))
