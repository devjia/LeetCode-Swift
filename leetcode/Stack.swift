//
//  Stack.swift
//  leetcode
//
//  Created by qian on 2020/5/5.
//  Copyright © 2020 vnision. All rights reserved.
//

import Foundation

struct Stack<Element> {
    
    private var storage = [Element]()
    
    func peek() -> Element? {
        return storage.last
    }
    
    mutating func push(_ element: Element) {
        storage.append(element)
    }
    
    @discardableResult mutating func pop() -> Element? {
        return storage.popLast()
    }
    
    var isEmpty: Bool {
        return storage.isEmpty
    }
}

extension Stack: Equatable where Element: Equatable {
    static func == (lhs: Stack<Element>, rhs: Stack<Element>) -> Bool {
        return lhs.storage == rhs.storage
    }
}

extension Stack: CustomStringConvertible {
    var description: String {
        return "\(storage)"
    }
}

extension Stack: ExpressibleByArrayLiteral {
    init(arrayLiteral elements: Element...) {
        storage = elements
    }
}
