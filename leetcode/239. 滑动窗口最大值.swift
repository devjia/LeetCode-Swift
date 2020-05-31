//
//  239. 滑动窗口最大值.swift
//  leetcode
//
//  Created by qian on 2020/5/10.
//  Copyright © 2020 vnision. All rights reserved.
//

import Foundation

class Solution {
    
    // 暴力解法 O(n*k)
    func maxSlidingWindow_A(_ nums: [Int], _ k: Int) -> [Int] {
        let count = nums.count
        if count * k == 0 {
            return []
        }
        var result = [Int]()
        for i in 0..<count - k + 1 {
            var maxValue = Int.min
            for j in i..<i+k {
                maxValue = max(maxValue, nums[j])
            }
            result.append(maxValue)
        }
        return result
    }
    
    //双端队列 O(n)
    func maxSlidingWindow_B(_ nums: [Int], _ k: Int) -> [Int] {
        let count = nums.count
        if count * k == 0 {
            return []
        }
        if k == 1 {
            return nums
        }
        var result = [Int]()
        var deq = Deque<Int>()
        for i in 0..<k {
            while !deq.isEmpty && nums[deq.peekBack()!] < nums[i] {
                deq.dequeueBack()
            }
            deq.enqueue(i)
        }
        result.append(nums[deq.peekFront()!])
        
        for i in k..<count {
            if !deq.isEmpty && deq.peekFront()! <= i - k {
                deq.dequeue()
            }
            while !deq.isEmpty && nums[deq.peekBack()!] < nums[i] {
                deq.dequeueBack()
            }
            deq.enqueue(i)
            result.append(nums[deq.peekFront()!])
        }
        
        return result
    }
    
    func maxSlidingWindow(_ nums: [Int], _ k: Int) -> [Int] {
        
        if nums.isEmpty || k < 1 { return [] }
        if k == 1 { return nums }
        
        var maxIndex = -1
        var res = [Int]()
        
        for index in 0 ..< nums.count - k + 1 {
            
            if maxIndex < index {
                // 最大值所在位置已经出栈, 重新计算当前 window 中最大值
                maxIndex = index
                
                let currentWindowMaxIndex = index + k - 1
                for j in index ... currentWindowMaxIndex {
                    if nums[j] >= nums[maxIndex] {
                        maxIndex = j
                    }
                }
                
            } else {
                // 最大值在窗口中, 比较即将进栈的值的大小
                let currentWindowMaxIndex = index + k - 1
                if nums[currentWindowMaxIndex] > nums[maxIndex] {
                    maxIndex = index + k - 1
                }
            }
            
            res.append(nums[maxIndex])
        }
        
        return res
    }
}
