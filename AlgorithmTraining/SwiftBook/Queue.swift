//
//  Queue.swift
//  AlgorithmTraining
//
//  Created by e.pospelova on 03.04.2025.
//

import Foundation

struct Queue<T: Equatable>: CustomStringConvertible {
    private var list = LinkedList<T>()
    
    mutating func enqueue(element: T) {
        list.append(value: element)
    }
    
    @discardableResult
    mutating func dequeue() -> T? {
        if let first = list.first {
            list.removeNode(nodeToRemove: first)
            return first.value
        } else {
            return nil
        }
    }
    
    var description: String {
        return list.description
    }
}
