//
//  24. 两两交换链表中的节点.swift
//  leetcode
//
//  Created by qian on 2020/4/18.
//  Copyright © 2020 vnision. All rights reserved.
//

import Foundation

class Solution {
    
    // 迭代
    func swapPairs(_ head: ListNode?) -> ListNode? {
        let dummy = ListNode(-1)
        dummy.next = head

        var pre: ListNode? = dummy
        var head = head

        while head != nil && head?.next != nil {

            // 需要交换的节点
            let first = head
            let second = head?.next

            // 进行交换
            pre?.next = second
            first?.next = second?.next
            second?.next = first

            // 刷新 head 和 pre
            pre = first
            head = first?.next
        }

        return dummy.next
    }
    
    // 递归
    func swapPairs2(_ head: ListNode?) -> ListNode? {
        if head == nil || head?.next == nil {
            return head
        }
        
        // 需要交换的节点
        let first = head
        let second = head?.next
        
        // 交换
        first?.next = swapPairs(second?.next)
        second?.next = first
        
        // 交换后的头为 second
        return second
    }
}
