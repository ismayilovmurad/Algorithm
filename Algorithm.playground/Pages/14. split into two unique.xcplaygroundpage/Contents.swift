//: [Previous](@previous)

import Foundation

var a = [2, 1, 2, 3, 3, 4]

func solution(a: [Int]) -> [[Int]] {
    var arrayOne = [Int]()
    var arrayTwo = [Int]()
        
    var moreThan2Finder = [Int]()
    var moreThan2Counter = 0
    // iterate through the a
    for i in a {
        // check if the moreThan2Finder already contains the number
        if moreThan2Finder.contains(i) {
            // check if the moreThan2Counter is equal to 2
            // there's no solution if the number appears more than 2, so return an empty array
            if moreThan2Counter == 2 { return [[Int]]() }
            // get the same numbers and divide it between two arrays
            arrayOne.append(i)
            arrayTwo.append(i)
            // increase the moreThan2Counter
            moreThan2Counter += 1
        }
        // add it to the moreThan2Finder
        moreThan2Finder.append(i)
    }
    // the array will have only the numbers which occurs only 1 time
    var newA = [Int]()
    // iterate through the a
    for i in a {
        // check if the arrayOne contains the i
        if !arrayOne.contains(i){
            newA.append(i)
        }
    }
    
    if !newA.isEmpty {
        // iterate through from 0 to the end the newA
        // subtract 1 because you'll get the i+1
        for i in 0..<newA.count-1 {
            // add the i and the next number to the arrays
            arrayOne.append(newA[i])
            arrayTwo.append(newA[i+1])
        }
    }
    
    return [arrayOne, arrayTwo]
}

print(solution(a: a))
