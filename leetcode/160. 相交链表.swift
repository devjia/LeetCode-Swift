//
//  160. 相交链表.swift
//  leetcode
//
//  Created by devjia on 2020/7/15.
//  Copyright © 2020 vnision. All rights reserved.
//

import Foundation

class Solution {
    
    // 哈希Map 解法
    func getIntersectionNode_A(_ headA: ListNode?, _ headB: ListNode?) -> ListNode? {
        var map = [ListNode: Bool]()
        var currentA: ListNode? = headA
        while currentA != nil  {
            map[currentA!] = true
            currentA = currentA?.next
        }
        
        var currentB: ListNode? = headB
        while currentB != nil {
            if map[currentB!] != nil {
                return currentB
            }
            currentB = currentB?.next
        }
        
        return nil
    }
    
    // 双指针
    func getIntersectionNode(_ headA: ListNode?, _ headB: ListNode?) -> ListNode? {
        if headA == nil && headB == nil {
            return nil
        }
        var currentA: ListNode? = headA
        var currentB: ListNode? = headB
        while currentA !== currentB {
            currentA = currentA == nil ? headB : currentA?.next
            currentB = currentB == nil ? headA : currentB?.next
        }
        return currentA
    }
}
