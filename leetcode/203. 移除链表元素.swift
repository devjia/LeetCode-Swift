//
//  203. 移除链表元素.swift
//  leetcode
//
//  Created by devjia on 2020/7/27.
//  Copyright © 2020 vnision. All rights reserved.
//

import Foundation

class Solution {
    func removeElements(_ head: ListNode?, _ val: Int) -> ListNode? {
        let sentinel = ListNode(0)
        sentinel.next = head
        
        var prev: ListNode? = sentinel
        var current: ListNode? = sentinel
        
        while current != nil {
            if current?.val == val {
                prev?.next = current?.next
            } else {
                prev = current;
            }
            current = current?.next
        }
        
        return sentinel.next
    }
}
