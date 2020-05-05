//
//  283. 移动零.swift
//  leetcode
//
//  Created by qian on 2020/4/15.
//  Copyright © 2020 vnision. All rights reserved.
//

import Foundation

class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        guard !nums.isEmpty else {
            return
        }
        var j = 0
        for i in 0..<nums.count {
            if nums[i] != 0 {
                nums[j] = nums[i]
                if i != j {
                    nums[i] = 0
                }
                j += 1
            }
        }
    }
}
