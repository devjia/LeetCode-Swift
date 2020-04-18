//
//  11. 盛最多水的容器.swift
//  leetcode
//
//  Created by qian on 2020/4/15.
//  Copyright © 2020 vnision. All rights reserved.
//

import Foundation

private class Solution {
    func maxArea(_ height: [Int]) -> Int {
        var maxArea = 0
        var i = 0
        var j = height.count - 1
        while i < j {
            let area = (j - i) * min(height[i], height[j])
            maxArea = max(maxArea, area)
            if height[i] > height[j] {
                j -= 1
            } else {
                i += 1
            }
   
        }
        return maxArea
    }
}
