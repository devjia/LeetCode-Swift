//
//  572. 另一个树的子树.swift
//  leetcode
//
//  Created by qian on 2020/5/7.
//  Copyright © 2020 vnision. All rights reserved.
//

/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init() { self.val = 0; self.left = nil; self.right = nil; }
 *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
 *         self.val = val
 *         self.left = left
 *         self.right = right
 *     }
 * }
 */

import Foundation

class Solution {
    func isSubtree(_ s: TreeNode?, _ t: TreeNode?) -> Bool {
        return dfs(s, t)
    }
    
    private func dfs(_ o: TreeNode?, _ t: TreeNode?) -> Bool {
        if o == nil {
            return false
        }
        return check(o, t) || dfs(o?.left, t) || dfs(o?.right, t)
    }
    
    private func check(_ o: TreeNode?, _ t: TreeNode?) -> Bool {
        if o == nil && t == nil {
            return true
        }
        if (o == nil && t != nil) || (o != nil && t == nil) || (o?.val != t?.val) {
            return false
        }
        return check(o?.left, t?.left) && check(o?.right, t?.right)
    }
}
