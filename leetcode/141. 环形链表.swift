//
//  141. 环形链表.swift
//  leetcode
//
//  Created by qian on 2020/4/18.
//  Copyright © 2020 vnision. All rights reserved.
//

import Foundation

class Solution {
    
    // 超出时间限制
//    func hasCycle(_ head: ListNode?) -> Bool {
//        var array = [ListNode]()
//        var node = head
//        while node != nil {
//            if array.contains(where: { $0 === node }) {
//                return true
//            }
//            array.append(node!)
//            node = node?.next
//        }
//        return false
//    }
    
    func hasCycle(_ head: ListNode?) -> Bool {
        if head == nil || head?.next == nil {
            return false
        }
        
        var slow = head
        var fast = head?.next
        
        while slow !== fast {
            if fast == nil || fast?.next == nil {
                return false
            }
            slow = slow?.next
            fast = fast?.next?.next
        }
        return true
    }
    
}
