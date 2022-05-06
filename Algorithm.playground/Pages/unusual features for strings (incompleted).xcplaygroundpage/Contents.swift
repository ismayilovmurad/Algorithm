//: [Previous](@previous)

import Foundation

var s = "aaabb"

func solution (s: String) -> String {
    longestPalindrome(s: s)
}

func longestPalindrome(s: String) -> String {
    var sArray = Array(s)
    var result = ""
    var palindromes = [String]()
    
    
    
    print(s.subSets)
    
    
    return result
}

extension RangeReplaceableCollection {
    var subSets : [SubSequence] {
        guard !isEmpty else { return [] }
        let count = self.count
        let n = 1 << count - 1
        var subSequences: [SubSequence] = .init(repeating: SubSequence(), count: n-1)
        (0 ..< n).forEach { x in
            autoreleasepool {
                var counter = 0
                for element in self {
                    if x & 1 << counter > 0 {
                        subSequences[x-1].append(element)
                    }
                    counter += 1
                }
            }

        }
        return subSequences + [self[...]]
    }
}

print(solution(s: s))
