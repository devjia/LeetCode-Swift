//
//  26. 删除排序数组中的重复项.swift
//  leetcode
//
//  Created by qian on 2020/4/19.
//  Copyright © 2020 vnision. All rights reserved.
//

import Foundation

private class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        if nums.count < 2 {
            return nums.count
        }
        
        var i = 0
        for j in 1..<nums.count {
            if nums[i] != nums[j] {
                i += 1;
                nums[i] = nums[j]
            }
        }
        return i + 1
    }
}
