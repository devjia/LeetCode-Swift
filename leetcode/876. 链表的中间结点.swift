//
//  876. 链表的中间结点.swift
//  leetcode
//
//  Created by devjia on 2020/8/11.
//  Copyright © 2020 vnision. All rights reserved.
//

import Foundation

class Solution {
    func middleNode(_ head: ListNode?) -> ListNode? {
        var slow: ListNode? = head
        var fast: ListNode? = head
        
        while fast != nil && fast?.next != nil {
            slow = slow?.next
            fast = fast?.next?.next
        }
        
        return slow
    }
}
