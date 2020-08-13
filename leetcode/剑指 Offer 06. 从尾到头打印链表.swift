//
//  剑指 Offer 06. 从尾到头打印链表.swift
//  leetcode
//
//  Created by devjia on 2020/8/13.
//  Copyright © 2020 vnision. All rights reserved.
//

import Foundation

class Solution {
    func reversePrint(_ head: ListNode?) -> [Int] {
        var result = [Int]()
        var current: ListNode? = head
        while current != nil {
            result.insert(current!.val, at: 0)
            current = current?.next
        }
        return result
    }
}
