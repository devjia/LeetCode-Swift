//
//  Deque.swift
//  leetcode
//
//  Created by qian on 2020/5/10.
//  Copyright © 2020 vnision. All rights reserved.
//

import Foundation

public struct Deque<Element> {
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
    
    public mutating func enqueueFront(_ element: Element) {
        storage.insert(element, at: 0)
    }
    
    @discardableResult public mutating func dequeue() -> Element? {
        guard !storage.isEmpty else {
            return nil
        }
        return storage.removeFirst()
    }
    
    @discardableResult public mutating func dequeueBack() -> Element? {
        guard !storage.isEmpty else {
            return nil
        }
        return storage.removeLast()
    }
    
    public func peekFront() -> Element? {
        return storage.first
    }
    
    public func peekBack() -> Element? {
        return storage.last
    }
}
