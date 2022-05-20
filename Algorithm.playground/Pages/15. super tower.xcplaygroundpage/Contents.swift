//: [Previous](@previous)

import Foundation

var s1 = "dce"
var s2 = "cccbd"

func solution(s1: String, s2: String) -> String {
    var s1CharacterArray = Array(s1)
    var s2CharacterArray = Array(s2)
    var resultArray = [Character]()
    // start a infinite loop
    while true {
        // check if the s1 and s2 are empty
        if s1CharacterArray.isEmpty && s2CharacterArray.isEmpty {
            break
        } else if s1CharacterArray.isEmpty { // check if the s1 is empty
            resultArray += s2CharacterArray
            break
        } else if s2CharacterArray.isEmpty { // check if the s2 is empty
            resultArray += s1CharacterArray
            break
        }
        
        let s1Char = s1CharacterArray[0]
        let s2Char = s2CharacterArray[0]
        // check the character occurence
        // fewer occurence character goes first
        if s1.countCharacter(of: s1Char) < s2.countCharacter(of: s2Char) {
            resultArray.append(s1Char)
            s1CharacterArray.removeFirst()
        } else if s1.countCharacter(of: s1Char) > s2.countCharacter(of: s2Char) {
            resultArray.append(s2Char)
            s2CharacterArray.removeFirst()
        } else {
            // compare characters regularly if the character counts are same
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
// count occurences of the Character in a String
extension String {
    func countCharacter(of character: Character) -> Int {
        return reduce(0) { $1 == character ? $0 + 1 : $0 }
    }
}

print(solution(s1: s1, s2: s2))
