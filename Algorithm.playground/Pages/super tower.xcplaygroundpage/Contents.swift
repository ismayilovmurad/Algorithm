//: [Previous](@previous)

import Foundation

var s1 = "dce"
var s2 = "cccbd"

// compare each character and merge to one string
// fewer occurence character goes first

func solution(s1: String, s2: String) -> String {
    var s1CharacterArray = Array(s1)
    var s2CharacterArray = Array(s2)
    var resultArray = [Character]()
    
    while true {
        if s1CharacterArray.isEmpty && s2CharacterArray.isEmpty {
            break
        } else if s1CharacterArray.isEmpty {
            resultArray += s2CharacterArray
            break
        } else if s2CharacterArray.isEmpty {
            resultArray += s1CharacterArray
            break
        }
        
        let s1Char = s1CharacterArray[0]
        let s2Char = s2CharacterArray[0]
        
        if s1.count(of: s1Char) < s2.count(of: s2Char) {
            resultArray.append(s1Char)
            s1CharacterArray.removeFirst()
        } else if s1.count(of: s1Char) > s2.count(of: s2Char) {
            resultArray.append(s2Char)
            s2CharacterArray.removeFirst()
        } else {
            if s1Char <= s2Char {
                resultArray.append(s1Char)
                s1CharacterArray.removeFirst()
            } else {
                resultArray.append(s2Char)
                s2CharacterArray.removeFirst()
            }
        }
    }
                
    return String(resultArray)
}

extension String {
    func count(of needle: Character) -> Int {
        return reduce(0) {
            $1 == needle ? $0 + 1 : $0
        }
    }
}

print(solution(s1: s1, s2: s2))
