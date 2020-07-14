//
//  83. 删除排序链表中的重复元素.swift
//  leetcode
//
//  Created by devjia on 2020/7/13.
//  Copyright © 2020 vnision. All rights reserved.
//

import Foundation

class Solution {
    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
        var current: ListNode? = head
        while current != nil && current?.next != nil {
            if (current?.val == current?.next?.val) {
                current?.next = current?.next?.next
            } else {
                current = current?.next
            }
        }
        return head
    }
}
