import Foundation

/**
 THREE SUM
 Given an integer array nums, return all the triplets [nums[i], nums[j], nums[k]] such that i != j, i != k, and j != k, and nums[i] + nums[j] + nums[k] == 0.
 
 Notice that the solution set must not contain duplicate triplets.
 */

func threeSum(_ nums: [Int]) -> [[Int]] {
    var result = [[Int]]()
    var sorted = nums.sorted()
    
    for (index, val) in sorted.enumerated() {
        if index > 0 && val == sorted[index - 1] {
            continue
        }
        
        var l = index + 1
        var r = sorted.count - 1
        
        while l < r {
            let threeSum = val + sorted[l] + sorted[r]
            if threeSum > 0 {
                r -= 1
            } else if threeSum < 0 {
                l += 1
            } else {
                result.append([val, sorted[l], sorted[r]])
                l += 1
                
                while sorted[l] == sorted[l - 1] && l < r {
                    l += 1
                }
            }
        }
    }
    
    return result
}
