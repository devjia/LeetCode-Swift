//
//  70. 爬楼梯.swift
//  leetcode
//
//  Created by qian on 2020/4/15.
//  Copyright © 2020 vnision. All rights reserved.
//

import Foundation

private class Solution {
    func climbStairs(_ n: Int) -> Int {
        guard n > 2 else {
            return n
        }
        var f1 = 1
        var f2 = 2
        var f3 = 3
        for _ in 3...n {
            f3 = f2 + f1
            f1 = f2
            f2 = f3
        }
        return f3
    }
    
    //直接用斐波那契数列公式求解
    func climbStairs2(_ n: Int) -> Int {
        let sqrt5 = sqrt(5)
        let fibn = pow(Double((1 + sqrt5) / 2), Double(n + 1)) - pow(Double((1 - sqrt5) / 2), Double(n + 1))
        return Int(fibn / sqrt5)
    }
}
