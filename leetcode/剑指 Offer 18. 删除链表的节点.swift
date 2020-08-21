//
//  剑指 Offer 18. 删除链表的节点.swift
//  leetcode
//
//  Created by devjia on 2020/8/21.
//  Copyright © 2020 vnision. All rights reserved.
//

import Foundation

class Solution {
    func deleteNode(_ head: ListNode?, _ val: Int) -> ListNode? {
        let sentinel: ListNode? = ListNode(0)
        sentinel?.next = head
        
        var prev: ListNode? = sentinel
        var current: ListNode? = head
        
        while current != nil {
            if current?.val == val {
                prev?.next = current?.next
                return sentinel?.next
            }
            prev = current
            current = current?.next
        }
        
        return sentinel?.next
    }
    
    func deleteNode_b(_ head: ListNode?, _ val: Int) -> ListNode? {
        if head == nil {
            return head
        }
        if head?.val == val {
            return head?.next
        }
        head?.next = deleteNode(head?.next, val)
        return head
    }
}
