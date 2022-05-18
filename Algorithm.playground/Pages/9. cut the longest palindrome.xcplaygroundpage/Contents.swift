//: [Previous](@previous)

import Foundation

var s = "aaacodedoc"

func solution(s: String) -> String {
    var result = s
    // loop while the longest palindrome prefix length is more than 2
    while (longestPalindrome(s: result).count >= 2) {
        // the longest palindrome prefix from the aaacodedoc is aaa
        // cut that palindrome prefix from the s
        // the longest palindrome prefix from the codedoc is codedoc
        // cut that palindrome prefix from the s
        result = String(result.dropFirst(longestPalindrome(s: result).count))
    }
    
    return result
}

func longestPalindrome(s: String) -> String {
    var result = ""
    // iterate through from the 0 to the length of the s
    for i in 0..<s.count {
        // get the prefix starting from i+1
        // because prefix method starts with 1
        let candidate = String(s.prefix(i+1))
        // get the reversed version of the candidate
        let reversed = String(candidate.reversed())
        // check if it's a palindrome
        if candidate == reversed {
            // check if it's the longest palindrome prefix
            if candidate.count > result.count {
                result = candidate
            }
        }
    }
    
    return result
}

print(solution(s: s))
