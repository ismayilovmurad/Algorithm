//: [Previous](@previous)

import Foundation

// Remove only one digit from only one String
// s should be smaller than t after removal

var s = "ab12c"
var t = "1zz456"

func solution(s: String, t: String) -> Int {
    var sArray = Array(s)
    var tArray = Array(t)
    
    var result = 0
    
    for i in 0..<sArray.count {
        if let digit = Int(String(sArray[i])){
            sArray.remove(at: i)
            if String(sArray) < t {
                result += 1
            }
            sArray = Array(s)
        }
    }
    
    for i in 0..<tArray.count {
        if let digit = Int(String(tArray[i])){
            tArray.remove(at: i)
            if s < String(tArray) {
                result += 1
            }
            tArray = Array(t)
        }
    }
        
    return result
}

print(solution(s: s, t: t))
