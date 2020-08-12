//
//  1290. 二进制链表转整数.swift
//  leetcode
//
//  Created by devjia on 2020/8/12.
//  Copyright © 2020 vnision. All rights reserved.
//

import Foundation

class Solution {
    func getDecimalValue(_ head: ListNode?) -> Int {
        var current: ListNode? = head
        var result: Int = 0
        while current != nil {
            result = result * 2 + current!.val
            current = current?.next
        }
        return result
    }
}
