//
//  206. 反转链表.swift
//  leetcode
//
//  Created by qian on 2020/4/18.
//  Copyright © 2020 vnision. All rights reserved.
//

import Foundation

private class Solution {

    /// 迭代
    func reverseList(_ head: ListNode?) -> ListNode? {
        var current: ListNode? = head
        var pre: ListNode? = nil
        while current != nil {
            let next = current?.next
            current?.next = pre
            pre = current
            current = next
        }
        return pre
    }
    
    /// 递归
    func reverseList2(_ head: ListNode?) -> ListNode? {
        if head == nil || head?.next == nil {
            return head
        }
        let p = reverseList2(head?.next)
        head?.next?.next = head
        head?.next = nil
        return p
    }
}

