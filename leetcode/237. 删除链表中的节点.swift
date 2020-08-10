//
//  237. 删除链表中的节点.swift
//  leetcode
//
//  Created by devjia on 2020/8/10.
//  Copyright © 2020 vnision. All rights reserved.
//

import Foundation

class Solution {
    
    func deleteNode(_ node: ListNode?) {
        node?.val = node?.next?.val ?? 0
        node?.next = node?.next?.next
    }
}
