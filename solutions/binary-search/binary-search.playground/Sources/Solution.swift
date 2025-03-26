import Foundation

/**
 BINARY SEARCH
 Given an array of integers nums which is sorted in ascending order, and an integer target, write a function to search target in nums. If target exists, then return its index. Otherwise, return -1.
 
 You must write an algorithm with O(log n) runtime complexity.
 */

func search(_ nums: [Int], _ target: Int) -> Int {
    var low = 0
    var high = nums.count - 1
    
    while low <= high {
        var mid = (high + low) / 2
        if target == nums[mid] { return mid }
        if target < nums[mid] {
            high = mid - 1
        } else {
            low = mid + 1
        }
    }
    
    return -1
}
