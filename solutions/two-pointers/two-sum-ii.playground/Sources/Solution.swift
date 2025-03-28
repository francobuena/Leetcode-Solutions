import Foundation

/**
 TWO SUM II - INPUT ARRAY IS SORTED
 Given a 1-indexed array of integers numbers that is already sorted in non-decreasing order, find two numbers such that they add up to a specific target number. Let these two numbers be numbers[index1] and numbers[index2] where 1 <= index1 < index2 <= numbers.length.

 Return the indices of the two numbers, index1 and index2, added by one as an integer array [index1, index2] of length 2.

 The tests are generated such that there is exactly one solution. You may not use the same element twice.

 Your solution must use only constant extra space.
 */

func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
    var l = 0
    var r = numbers.count - 1
    
    while l < r {
        if (numbers[l] + numbers[r]) > target {
            r -= 1
        } else if (numbers[l] + numbers[r]) < target {
            l += 1
        } else if (numbers[l] + numbers[r]) == target {
            return [l + 1, r + 1]
        }
    }
    
    return [-1, -1]
}
