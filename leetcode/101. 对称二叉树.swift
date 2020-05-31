//
//  101. 对称二叉树.swift
//  leetcode
//
//  Created by qian on 2020/5/31.
//  Copyright © 2020 vnision. All rights reserved.
//

import Foundation

class Solution {
    func isSymmetric(_ root: TreeNode?) -> Bool {
        func check(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
            if p == nil && q == nil {
                return true
            }
            if p == nil || q == nil {
                return false
            }
            return p!.val == q!.val && check(p?.left, q?.right) && check(p?.right, q?.left)
        }
        
        return check(root, root)
    }
    
    func isSymmetric_B(_ root: TreeNode?) -> Bool {
        func check(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
            var array = [TreeNode]()
            while !array.isEmpty {
                let p = array.popLast()
                let q = array.popLast()
                if p == nil && q == nil {
                    continue
                }
                if (p == nil || q == nil) || (p?.val != q?.val) {
                    return false
                }
                if (p?.left == nil || q?.right == nil) && !(p?.left == nil && q?.right == nil) {
                    return false
                }
                array.append(p!.left!)
                array.append(q!.right!)
                if (p?.right == nil || q?.left == nil) && !(p?.right == nil && q?.left == nil) {
                    return false
                }
                array.append(p!.right!)
                array.append(q!.left!)
            }
            return true
        }
        return check(root, root)
    }
}
