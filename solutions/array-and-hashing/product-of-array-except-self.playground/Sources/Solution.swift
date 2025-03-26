import Foundation

/**
 PRODUCT OF ARRAY EXCEPT SELF
 Given an integer array nums, return an array answer such that answer[i] is equal to the product of all the elements of nums except nums[i].
 
 The product of any prefix or suffix of nums is guaranteed to fit in a 32-bit integer.
 
 You must write an algorithm that runs in O(n) time and without using the division operation.
 */

func productExceptSelf(_ nums: [Int]) -> [Int] {
    var prefix = Array(repeating: 1, count: nums.count)
    var postfix = Array(repeating: 1, count: nums.count)
    var result = Array(repeating: 0, count: nums.count)
    
    for i in 1..<nums.count {
        prefix[i] = prefix[i - 1] * nums[i - 1]
    }
    
    for i in (0..<nums.count - 1).reversed() {
        postfix[i] = postfix[i + 1] * nums[i + 1]
    }
    
    for i in 0..<nums.count {
        result[i] = prefix[i] * postfix[i]
    }
    
    return result
}
