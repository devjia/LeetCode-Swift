//
//  QuickSort.swift
//  leetcode
//
//  Created by qian on 2020/5/18.
//  Copyright © 2020 vnision. All rights reserved.
//

import Foundation

func quickSort(a: inout [Int], low: Int, high: Int) {
    if low >= high {
        return
    }
    
    var i = low
    var j = high
    let key = a[i]
    while i < j {
        while i < j && a[j] >= key {
            j -= 1
        }
        a[i] = a[j]
        while i < j && a[i] <= key {
            i += 1
        }
        a[j] = a[i]
    }
    a[i] = key
    quickSort(a: &a, low: low, high: i - 1)
    quickSort(a: &a, low: i + 1, high: high)
}
