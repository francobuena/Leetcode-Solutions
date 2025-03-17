import Foundation

/**
CONTAINER WITH MOST WATER
 You are given an integer array height of length n. There are n vertical lines drawn such that the two endpoints of the ith line are (i, 0) and (i, height[i]).

 Find two lines that together with the x-axis form a container, such that the container contains the most water.

 Return the maximum amount of water a container can store.

 Notice that you may not slant the container
 */

func maxArea(_ height: [Int]) -> Int {
    var maxArea: Int = 0
    var i: Int = 0
    var j: Int = height.count - 1
    
    while i < j {
        
        let currentArea = min(height[i], height[j]) * (j - i)
        maxArea = max(maxArea, currentArea)
        
        if height[j] >= height[i] {
            i += 1
        } else {
            j -= 1
        }
        
    }
    
    return maxArea
}
