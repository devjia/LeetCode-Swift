//
//  189. 旋转数组.swift
//  leetcode
//
//  Created by qian on 2020/4/19.
//  Copyright © 2020 vnision. All rights reserved.
//

import Foundation

class Solution {
    // 暴力求解
    func rotate(_ nums: inout [Int], _ k: Int) {
        if k == 0 || nums.count < 2{
            return
        }
        for _ in 0..<k {
            let num = nums.removeLast()
            nums.insert(num, at: 0)
        }
    }
    
    // 环状替换
    func rotate2(_ nums: inout [Int], _ k: Int) {
        if k == 0 || nums.count < 2 {
            return
        }
        var count = 0
        let step = k % nums.count
        for i in 0..<nums.count {
            if count >= nums.count {
                break
            }
            
            var current = i
            var prev = nums[i]
            repeat {
                let next = (current + step) % nums.count
                let temp = nums[next]
                nums[next] = prev
                prev = temp
                current = next
                count += 1
            } while i != current
        }
    }
    
    
    // 使用反转
    func rotate3(_ nums: inout [Int], _ k: Int) {
        if k % nums.count == 0 || nums.count < 2 {
            return
        }
        let step = k % nums.count
        reverse(&nums, 0, nums.count - 1)
        reverse(&nums, 0, step - 1)
        reverse(&nums, step, nums.count - 1)
    }
    
    private func reverse(_ nums: inout [Int], _ low: Int, _ high: Int) {
        var low = low
        var high = high
        while low < high {
            nums.swapAt(low, high)
            low += 1
            high -= 1
        }
    }
}
