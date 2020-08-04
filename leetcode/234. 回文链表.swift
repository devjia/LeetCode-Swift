//
//  234. 回文链表.swift
//  leetcode
//
//  Created by devjia on 2020/7/29.
//  Copyright © 2020 vnision. All rights reserved.
//

import Foundation

class Solution {
    
//链表本身具有递归性, 可以用后续遍历的方式, 用递归栈来模拟双指针
    
//    var left: ListNode?
//
//    func isPalindrome(_ head: ListNode?) -> Bool {
//        left = head
//        return traverse(head)
//    }
//
//    func traverse(_ head: ListNode?) -> Bool {
//        if head == nil {
//            return true
//        }
//        var res = traverse(head?.next)
//        res = res && (left?.val == head?.val)
//        left = left?.next
//        return res
//    }
    
    func isPalindrome(_ head: ListNode?) -> Bool {
        let midNode = getMidNode(head)
        var left = head
        var right = reverse(midNode)
        while right != nil {
            if left?.val != right?.val {
                return false
            }
            left = left?.next
            right = right?.next
        }
        return true
    }
    
    func getMidNode(_ head: ListNode?) -> ListNode? {
        var slow: ListNode? = head
        var fast: ListNode? = head
        while fast != nil && fast?.next != nil {
            slow = slow?.next
            fast = fast?.next?.next
        }
        if fast != nil {
            slow = slow?.next
        }
        return slow
    }
    
    func reverse(_ head: ListNode?) -> ListNode? {
        if head == nil || head?.next == nil {
            return head
        }
        var prev: ListNode? = nil
        var current: ListNode? = head
        while current != nil {
            let next = current?.next
            current?.next = prev
            prev = current
            current = next
        }
        current?.next = nil
        return prev
    }
    
}
