//: [Previous](@previous)

import Foundation

// Get the Character by index from a String ##########################
var s = "Hello, there"
var partOfS = s[s.index(s.startIndex, offsetBy: 4)]
//print(partOfS)


// Count occurences of the Character in a String ##########################
extension String {
    func count(of needle: Character) -> Int {
        return reduce(0) {
            $1 == needle ? $0 + 1 : $0
        }
    }
}

var s1 = "Hello, there"
//print(s1.count(of: "l"))

// All the permutations of the string ########################################
func permuteString(str: String, l: Int, r: Int) {
    var strArray = Array(str)
       
    if l==r {
        print(str)
    } else {
        for i in l..<r {
            strArray.swapAt(l, i);
            permuteString(str: String(strArray), l: l+1, r: r);
            strArray.swapAt(l, i);
        }
    }
}

//permuteString(str: "aaabb", l: 0, r: 5)

// All the permutations of the integers ########################################
func permuteIntegers(arr: [Int], l: Int, r: Int) {
    var mutableArr = Array(arr)
       
    if l==r {
        print(arr)
    } else {
        for i in l..<r {
            mutableArr.swapAt(l, i);
            permuteIntegers(arr: mutableArr, l: l+1, r: r);
            mutableArr.swapAt(l, i);
        }
    }
}

//permuteIntegers(arr: [1, 2, 3], l: 0, r: 3)

// Permutations String, int
func permutations<T>(_ arr: [T]) -> [[T]] {
    if arr.count < 2 {
        return [arr]
    }
    var ret: [[T]] = []
    let rest = Array(arr[1...])
    for p in permutations(rest) {
        for i in 0...p.count {
            ret.append(Array(p[0..<i]) + [arr[0]] + Array(p[i...]))
        }
    }
    return ret
}

//print(permutations([1,2,3]))


// All possible combination of string, int
extension Array {
    var powerset: [[Element]] {
        guard count > 0 else {
            return [[]]
        }

        // tail contains the whole array BUT the first element
        let tail = Array(self[1..<endIndex])

        // head contains only the first element
        let head = self[0]

        // computing the tail's powerset
        let withoutHead = tail.powerset

        // mergin the head with the tail's powerset
        let withHead = withoutHead.map { $0 + [head] }

        // returning the tail's powerset and the just computed withHead array
        return withHead + withoutHead
    }
}

//print([1,2,3].powerset)
