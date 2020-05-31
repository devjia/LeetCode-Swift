//
//  Queue.swift
//  leetcode
//
//  Created by qian on 2020/5/10.
//  Copyright © 2020 vnision. All rights reserved.
//

import Foundation

public struct Queue<Element> {
    private var storage = [Element]()
    
    public var isEmpty: Bool {
        return storage.isEmpty
    }
    
    public var count: Int {
        return storage.count
    }
    
    public mutating func enqueue(_ element: Element) {
        storage.append(element)
    }
    
    @discardableResult public mutating func dequeue() -> Element? {
        guard !storage.isEmpty else {
            return nil
        }
        return storage.removeFirst()
    }
    
    public var front: Element? {
        return storage.first
    }
}
