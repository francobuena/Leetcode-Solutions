import Foundation

/**
SEARCH A 2D MATRIX
 You are given an m x n integer matrix matrix with the following two properties:

 Each row is sorted in non-decreasing order.
 The first integer of each row is greater than the last integer of the previous row.
 Given an integer target, return true if target is in matrix or false otherwise.

 You must write a solution in O(log(m * n)) time complexity.
 */

func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
    var first = 0
    var last = matrix.count - 1
    let lastElementInRow = matrix[0].count - 1
    
    while first <= last {
        let middle = (last + first) / 2
        
        if matrix[middle][0] <= target && target <= matrix[middle][lastElementInRow] {
            return binaryRow(matrix[middle], target)
        }
        
        if matrix[middle][0] < target {
            first = middle + 1
        } else {
            last = middle - 1
        }
    }
    
    return false
}

func binaryRow(_ row: [Int], _ target: Int) -> Bool {
    
    var first = 0
    var last = row.count - 1
    
    while first <= last {
        let middle = (first + last) / 2
        
        if row[middle] == target { return true }
        
        if row[middle] < target {
            first = middle + 1
        } else {
            last = middle - 1
        }
    }
    
    return false
}
