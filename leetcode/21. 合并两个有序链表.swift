//
//  21. 合并两个有序链表.swift
//  leetcode
//
//  Created by qian on 2020/5/5.
//  Copyright © 2020 vnision. All rights reserved.
//

import Foundation

class Solution {
    
    // 递归
    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        guard let l1 = l1 else {
            return l2
        }
        guard let l2 = l2 else {
            return l1
        }
        if l1.val < l2.val {
            l1.next = mergeTwoLists(l1.next, l2)
            return l1
        } else {
            l2.next = mergeTwoLists(l1, l2.next)
            return l2
        }
    }
    
    //迭代
    func mergeTwoLists2(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        
        let dummy = ListNode(0)
        var prev: ListNode? = dummy
        
        var l1: ListNode? = l1
        var l2: ListNode? = l2
        
        while l1 != nil && l2 != nil  {
            if l1!.val < l2!.val {
                prev?.next = l1
                prev = l1
                l1 = l1?.next
            } else {
                prev?.next = l2
                prev = l2
                l2 = l2?.next
            }
        }
        
        if l1 != nil || l2 != nil {
            prev?.next = l1 == nil ? l2 : l1
        }
        
        return dummy.next
    }
}
