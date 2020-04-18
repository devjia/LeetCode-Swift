//
//  142. 环形链表 II.swift
//  leetcode
//
//  Created by qian on 2020/4/19.
//  Copyright © 2020 vnision. All rights reserved.
//

import Foundation

private class Solution {
    
    func detectCycle(_ head: ListNode?) -> ListNode? {
        if head == nil {
            return nil
        }
        
        let intersect = getIntersect(head)
        if intersect == nil {
            return nil
        }
        
        var slow: ListNode? = head
        var fast: ListNode? = intersect
        while slow !== fast {
            slow = slow?.next
            fast = fast?.next
        }
        return slow
    }
    
    // 快慢指针寻找交点
    private func getIntersect(_ head: ListNode?) -> ListNode? {
        var slow: ListNode? = head, fast: ListNode? = head
        while fast != nil && fast?.next != nil {
            slow = slow?.next
            fast = fast?.next?.next
            if slow === fast {
                return slow
            }
        }
        return nil
    }
}
