//: [Previous](@previous)

import Foundation

var s1 = "dce"
var s2 = "cccbd"

// compare each character and merge to one string
// fewer occurence character goes first

func solution(s1: String, s2: String) -> String {
    var mutableS1 = s1
    var mutableS2 = s2
    var result = ""
        
    while true {
        if mutableS1.count == 0 {
            result += mutableS2
            break
        } else if mutableS2.count == 0 {
            result += mutableS1
            break
        }

        if mutableS1[mutableS1.index(mutableS1.startIndex, offsetBy: 0)] <=
            mutableS2[mutableS2.index(mutableS2.startIndex, offsetBy: 0)] {
            result += String(mutableS1[mutableS1.index(mutableS1.startIndex, offsetBy: 0)])
            mutableS1.removeFirst()
        } else {
            result += String(mutableS2[mutableS2.index(mutableS2.startIndex, offsetBy: 0)])
            mutableS2.removeFirst()
        }
    }
            
    return result
}

print(solution(s1: s1, s2: s2))
