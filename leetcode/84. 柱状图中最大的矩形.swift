//
//  84. 柱状图中最大的矩形.swift
//  leetcode
//
//  Created by qian on 2020/5/10.
//  Copyright © 2020 vnision. All rights reserved.
//

import Foundation

class Solution {
    
    //暴力解法 O(n3)
    func largestRectangleArea_A(_ heights: [Int]) -> Int {
        var maxArea: Int = 0
        for i in 0..<heights.count {
            for j in i..<heights.count {
                var minHeight = Int.max
                for k in i...j {
                    minHeight = min(heights[k], minHeight)
                }
                let area = minHeight * (j - i + i)
                maxArea = max(maxArea, area)
            }
        }
        return maxArea
    }
    
    //暴力解法优化 O(n2)
    func largestRectangleArea_B(_ heights: [Int]) -> Int {
        var maxArea: Int = 0
        for i in 0..<heights.count {
            var minHeight = Int.max
            for j in i..<heights.count {
                minHeight = min(heights[j], minHeight)
                let area = minHeight * (j - i + i)
                maxArea = max(maxArea, area)
            }
        }
        return maxArea
    }
    
    //分治 O(nlogn)
    func largestRectangleArea_C(_ heights: [Int]) -> Int {
        func calculateArea(_ heights: [Int], _ start: Int, _ end: Int) -> Int {
            if start > end {
                return 0
            }
            var minIndex = start
            for i in start...end {
                if heights[i] < heights[minIndex] {
                    minIndex = i
                }
            }
            return max((end - start + 1) * heights[minIndex], max(calculateArea(heights, start, minIndex - 1), calculateArea(heights, minIndex + 1, end)))
        }
        return calculateArea(heights, 0, heights.count - 1)
    }
    
    //单调递增栈 O(n)
    func largestRectangleArea_D(_ heights: [Int]) -> Int {
        let heights = [0] + heights + [0]
        var stack = [Int]()
        var maxArea: Int = 0
        for i in 0..<heights.count {
            while !stack.isEmpty && heights[stack.last!] > heights[i] {
                let temp = stack.removeLast()
                let area = (i - stack.last! - 1) * heights[temp]
                maxArea = max(maxArea, area)
            }
            stack.append(i)
        }
        return maxArea
    }
}
    
