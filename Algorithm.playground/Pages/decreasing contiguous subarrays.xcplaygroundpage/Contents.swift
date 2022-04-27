//: [Previous](@previous)

import Foundation

// 9, 9-8, 9-8-7, 9-8-7-6, 9-8-7-6-5
// 8, 8-7, 8-7-6, 8-7-6-5
// 7, 7-6, 7-6-5
// 6, 6-5
// 5
// How many of them are decreasing contiguous subarrays of arr

var arr = [9, 8, 7, 6, 5]

func solution(arr: [Int]) -> Int64 {
    if arr.allSatisfy({$0 == arr.first}) {return Int64(arr.count)}
    
    var subarrays = [[Int]]()
    
    for i in 0..<arr.count {
        for j in i..<arr.count {
            var sorted = true
            
            for k in i..<j {
                if arr[k] < arr[k+1] {
                    sorted = false
                    break
                }
            }
            
            if sorted {
                subarrays.append(Array(arr[i...j]))
            }
        }
        
    }
    
    return Int64(subarrays.count)
}

print(solution(arr: arr))
