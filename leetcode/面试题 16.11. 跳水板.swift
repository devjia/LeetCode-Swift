//
//  面试题 16.11. 跳水板.swift
//  leetcode
//
//  Created by devjia on 2020/7/8.
//  Copyright © 2020 vnision. All rights reserved.
//

import Foundation

class Solution {
    func divingBoard(_ shorter: Int, _ longer: Int, _ k: Int) -> [Int] {
        if k == 0 {
            return []
        }
        if shorter == longer {
            let ret = shorter * k
            return [ret]
        }
        var rets = [Int]()
        for i in 0..<k+1 {
            let ret = shorter * (k - i) + longer * i
            rets.append(ret)
        }
        return rets
    }
}
