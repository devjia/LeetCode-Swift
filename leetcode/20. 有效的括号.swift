//
//  20. 有效的括号.swift
//  leetcode
//
//  Created by qian on 2020/5/5.
//  Copyright © 2020 vnision. All rights reserved.
//

import Foundation

class Solution {
    func isValid(_ s: String) -> Bool {
        if s.isEmpty {
            return true
        }
        let map: [Character: Character] = [")": "(", "]": "[", "}": "{"]
        var stack = Stack<Character>()
        for c in s {
            if let pair = map[c] {
                if pair != stack.pop() {
                    return false
                }
            } else {
                stack.push(c)
            }
        }
        return stack.isEmpty
    }
}
