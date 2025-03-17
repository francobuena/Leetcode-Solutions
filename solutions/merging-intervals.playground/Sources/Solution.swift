import Foundation

/**
 MERGE INTERVALS
 
 Given an array of intervals where intervals[i] = [starti, endi], merge all overlapping intervals,
 and return an array of the non-overlapping intervals that cover all the intervals in the input.
 */

func merge(_ intervals: [[Int]]) -> [[Int]] {
    // sort the input 2d array
    let sorted = intervals.sorted { $0[0] < $1[0] }
    
    // add the first element here
    var result: [[Int]] = [sorted[0]]
    
    // start count in the second element since the first one is already in
    for i in 1..<sorted.count {
        // get last position from result
        let lastIndexOfResult = result.count - 1
        // get the previous value
        let prev = result[lastIndexOfResult]
        // compare the last element of previous value to the first element of the current value in sorted array
        let shouldMerge = sorted[i][0] <= prev[1]
        // have a check here to see if we should merge
        if shouldMerge {
            // determine what the last value of the pair should be
            let last = prev[1] <= sorted[i][1] ? sorted[i][1] : prev[1]
            // update the value of previous result
            result[lastIndexOfResult] = [prev[0], last]
        } else {
            // simply append the array if we don't need to merge
            result.append(sorted[i])
        }
        
    }
    
    return result
}
