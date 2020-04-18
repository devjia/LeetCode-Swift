//
//  15. 三数之和.swift
//  leetcode
//
//  Created by qian on 2020/4/16.
//  Copyright © 2020 vnision. All rights reserved.
//

import Foundation

class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        guard nums.count > 2 else {
            return []
        }
        var result = [[Int]]()
        let sortedNums = nums.sorted { $0 < $1 }
        for i in 0..<sortedNums.count {
            if sortedNums[i] > 0  {
                continue
            }
            if i > 0 && sortedNums[i] == sortedNums[i - 1] {
                continue
            }
            var low = i + 1
            var high = sortedNums.count - 1
            while low < high {
                let sum = sortedNums[i] + sortedNums[low] + sortedNums[high]
                if sum == 0 {
                    result.append([sortedNums[i], sortedNums[low], sortedNums[high]])
                    while low < high && sortedNums[low] == sortedNums[low + 1] {
                        low = low + 1
                    }
                    while low < high && sortedNums[high] == sortedNums[high - 1] {
                        high = high - 1
                    }
                    low = low + 1
                    high = high - 1
                } else if sum < 0 {
                    low = low + 1
                } else if sum > 0{
                     high = high - 1
                }
            }
        }
        return result
    }
}
