//: [Previous](@previous)

import Foundation

var n = 5
var a = [4, 0, 1, -2, 3]

func solution(n: Int, a: [Int]) -> [Int] {
    var result = [Int]()
    
    // return the a itself if there's only one item
    if n == 1 {
        return a
    }else {
        // iterate through from 0 to the length of the a
        for i in 0..<n {
            // take the i-1, i, i+1, and add them
            // you can't take the i-1 if it's the first index, so the i-1 is 0
            let x = i == 0 ? 0 : a[i-1]
            let y = a[i]
            // you can't take the i+1 if it's the last item, so the i+1 is 0
            let z = i == n-1 ? 0 : a[i+1]
            
            result.append(x + y + z)
        }
    }
    
    return result
}

print(solution(n: n, a: a))
