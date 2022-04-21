//: [Previous](@previous)

import Foundation

// There's a string s
// Take all the prefixes of the s
// Choose the longest palindrome
// Chosen palindrome (prefix) should be at least 2 characters
// Cut that palindrome (prefix) from the string
// Then continue with the new string the same thing again starting with taking all the prefixes

var s = "aaacodedoc"

func solution(s: String) -> String {
    var result = s
    
    while (longestPalindrome(s: result).count >= 2) {
        result = String(result.dropFirst(longestPalindrome(s: result).count))
    }
    
    return result
}

func longestPalindrome(s: String) -> String {
    var result = ""
    
    for i in 0..<s.count {
        let candidate = String(s.prefix(i+1))
        let reversed = String(candidate.reversed())
        
        if candidate == reversed {
            if candidate.count > result.count {
                result = candidate
            }
        }
        
    }
    
    return result
}

print(solution(s: s))
