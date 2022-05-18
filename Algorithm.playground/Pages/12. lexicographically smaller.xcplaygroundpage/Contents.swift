//: [Previous](@previous)

import Foundation

var s = "ab12c"
var t = "1zz456"

func solution(s: String, t: String) -> Int {
    var sArray = Array(s)
    var tArray = Array(t)
    
    var result = 0
    // iterate through from 0 to the length of the s
    for i in 0..<sArray.count {
        // get the number in the s
        // it'll be nil if it's a String
        let digit = Int(String(sArray[i]))
        if digit != nil {
            // remove that digit from the s
            sArray.remove(at: i)
            // check if the s smaller than t
            if String(sArray) < t { result += 1 }
            // return back to the original s
            sArray = Array(s)
        }
    }
    // iterate through from 0 to the length of the t
    for i in 0..<tArray.count {
        // get the number in the t
        // it'll be nil if it's a String
        let digit = Int(String(tArray[i]))
        if digit != nil {
            // remove that digit from the t
            tArray.remove(at: i)
            // check if the s smaller than t
            if s < String(tArray) { result += 1 }
            // return back to the original t
            tArray = Array(t)
        }
    }
        
    return result
}

print(solution(s: s, t: t))
