import Foundation

/**
 DAILY TEMPERATURES

 Given an array of integers temperatures represents the daily temperatures, return an array answer such that answer[i] is the number of days you have to wait after the ith day to get a warmer temperature. If there is no future day for which this is possible, keep answer[i] == 0 instead.
 */

func dailyTemperatures(_ temperatures: [Int]) -> [Int] {
    var result = Array(repeating: 0, count: temperatures.count)
    var stack = [Int]()
    
    for i in 0..<temperatures.count {
        while let last = stack.last, temperatures[i] > temperatures[last] {
            _ = stack.popLast()
            result[last] = i - last
        }
        stack.append(i)
    }
    
    return result
}
