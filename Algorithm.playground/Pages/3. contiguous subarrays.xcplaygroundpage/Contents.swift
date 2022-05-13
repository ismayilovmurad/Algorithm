//: [Previous](@previous)

import Foundation

let a = [2, 4, 7, 5, 3, 5, 8, 5, 1, 7]
let m = 4
let k = 10

func solution(a: [Int], m: Int, k: Int) -> Int {
    var result = [[Int]]()
    // iterate through from 0 to the length of the a
    // subtract m to get m sized subarrays
    for i in 0...k-m {
        // get the m sized array
        let mSubarray = Array(a[i..<i+m])
        // iterate through from 0 to the length of the subarray
        // subtract 1 because the y will take the last item
        for x in 0..<m-1 {
            // iterate through from (1 step ahead from x) to the length of the subarray
            for y in x+1..<m {
                // sum of the pairs should be equal to the k
                if mSubarray[x] + mSubarray[y] == k {
                    if !result.contains(mSubarray) {
                        // add it if the subarray contains at least 1 pair (sum = k)
                        result.append(mSubarray)
                    }
                }
            }
        }
    }
    
    return result.count
}

print(solution(a: a, m: m, k: k))
