//: [Previous](@previous)

import Foundation

var a = [25, 2, 3, 57, 38, 41]

func solution(a: [Int]) -> [Int] {
    var digitList = [Int]()
    // iterate through the a
    for i in a {
        // check if the number has more than 1 digits
        if i > 9 {
            // get that number
            var theMoreThan1DigitNumber = i
            // get the digits from the number and add those digits to the digitList
            digitList += getDigits(number: &theMoreThan1DigitNumber)
        } else {
            // add the 1 digit number to the digitList
            digitList.append(i)
        }
    }
    // get the number of occurences of every digit
    let numberOfOccurences = countOccurencesOfEveryItem(array: digitList)
            
    var maxValues = [Int]()
    // iterate through the digits from the dictionary
    for i in numberOfOccurences.keys {
        // check if the current value is equal to the max value in the dictionary
        if numberOfOccurences[i] == Array(numberOfOccurences.values).max() {
            // add it to the maxValues
            maxValues.append(i)
        }
    }
        
    return maxValues.sorted()
}
// get digits from a number
func getDigits(number: inout Int) -> [Int] {
    var array = [Int]()
    // loop while the number is greater than 0
    while number > 0 {
        // add the remainder
        array.append(number % 10)
        number = number / 10
    }
    // reverse
    array.reverse()
    
    return array
}
// get the number of occurences of every item
func countOccurencesOfEveryItem(array: [Int]) -> [Int: Int] {
    var dictionaryHelper = [Int]()
    var dictionary = [Int: Int]()
    // iterate through the array
    for i in array {
        // check if the second dictionary contains the current item
        if(dictionaryHelper.contains(i)) {
            // increment that key
            dictionary[i] = dictionary[i]! + 1
            // add it to the second dictionary
            dictionaryHelper.append(i)
        } else {
            // add 1 to that key, because it appears first time
            dictionary[i] = 1
            // add it to the second dictionary
            dictionaryHelper.append(i)
        }
    }
    
    return dictionary
}

print(solution(a: a))
