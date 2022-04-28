import UIKit

// There's an integer array
// There's the number, count of the array
// It should be i-1, i, i+1
// Add them
// Add 0 if there's no value

var n = 5
var a = [4, 0, 1, -2, 3]

func solution(n: Int, a: [Int]) -> [Int] {
    var result = [Int]()
    
    if n == 1 {
        result.append(a[0])
    }else {
        for i in 0..<n {
            if i == 0 {
                result.append(0 + a[i] + a[i+1])
            }else if i == n-1 {
                result.append(a[i-1] + a[i] + 0)
            }else {
                result.append(a[i-1] + a[i] + a[i+1])
            }
        }
    }
    
    return result
}

print(solution(n: n, a: a))
