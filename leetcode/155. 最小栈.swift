//
//  155. 最小栈.swift
//  leetcode
//
//  Created by qian on 2020/5/5.
//  Copyright © 2020 vnision. All rights reserved.
//

import Foundation

class MinStack {
    
    private class Node {
        let val: Int
        let min: Int
        var next: Node?
        
        init(val: Int, min: Int, node: Node? = nil) {
            self.val = val
            self.min = min
            self.next = node
        }
    }
    
    private var head: Node?

    /** initialize your data structure here. */
    init() {
        
    }
    
    func push(_ x: Int) {
        if let head = head {
            self.head = Node(val: x, min: min(x, head.min), node: head)
        } else {
            head = Node(val: x, min: x)
        }
    }
    
    func pop() {
        head = head?.next
    }
    
    func top() -> Int {
        return head?.val ?? 0
    }
    
    func getMin() -> Int {
        return head?.min ?? 0
    }
}
