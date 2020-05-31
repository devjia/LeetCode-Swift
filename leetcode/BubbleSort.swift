//
//  BubbleSort.swift
//  leetcode
//
//  Created by qian on 2020/5/18.
//  Copyright © 2020 vnision. All rights reserved.
//

import Foundation

func bubbleSort(_ nums: inout [Int]) {
    let n = nums.count
    
    for i in 0..<n {
        for j in 0..<(n - 1 - i) {
            if nums[j] > nums[j+1] {
                nums.swapAt(j, j+1)
            }
        }
    }
}
