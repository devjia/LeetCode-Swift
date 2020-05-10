//
//  98. 验证二叉搜索树.swift
//  leetcode
//
//  Created by qian on 2020/5/5.
//  Copyright © 2020 vnision. All rights reserved.
//

import Foundation

class Solution {
    
    // 递归
    func isValidBST(_ root: TreeNode?) -> Bool {
        
        func helper(node: TreeNode?, lower: Int?, upper: Int?) -> Bool {
            guard let node = node else {
                return true
            }
            
            let val = node.val
            if let lower = lower, val <= lower {
                return false
            }
            if let upper = upper, val >= upper {
                return false
            }
            
            if !helper(node: node.left, lower: lower, upper: val) {
                return false
            }
            if !helper(node: node.right, lower: val, upper: upper) {
                return false
            }
            
            return true
        }
        
        return helper(node: root, lower: nil, upper: nil)
    }
    
    // 中序遍历
    func isValidBST_b(_ root: TreeNode?) -> Bool {
        let stack = Stack<TreeNode>()
        
    }
    
}
