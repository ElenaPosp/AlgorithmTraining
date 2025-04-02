//
//  TwoLinkedList.swift
//  AlgorithmTraining
//
//  Created by e.pospelova on 21.03.2025.
//

import Foundation

class ListNode<T: Equatable> {

    var value: T
    var previous: ListNode?
    var next: ListNode?
    
    init(value: T) {
        self.value = value
    }
}

struct LinkedList<T: Equatable>: CustomStringConvertible {
    
    private var head: ListNode<T>?
    private var tail: ListNode<T>?
    
    var first: ListNode<T>? {
        return head
    }
    
    var last: ListNode<T>? {
        return tail
    }

    mutating func append(value: T) {
        let node = ListNode(value: value)
        if head == nil {
            head = node
            tail = node
        } else {
            addNodeToEnd(node: node)
        }
    }
    
    private mutating func addNodeToEnd(node: ListNode<T>) {
        tail?.next = node
        node.previous = tail
        tail = node
    }

    mutating func removeNode(nodeToRemove: ListNode<T>) {
        let next = nodeToRemove.next
        let previous = nodeToRemove.previous
       
        print(description)
        
        if let previous {
            previous.next = next
            next?.previous = previous
        } else {
            head = next
        }
        
        if next == nil {
            tail = previous
        }
        print(description)

        nodeToRemove.next = nil
        nodeToRemove.previous = nil
    }

    
    
    var description: String {
        var text = "["
        var node = head
        
        while node != nil {
            
            text += "\(node!.value)"
            node = node?.next
            if node == nil {
                text += "]"
            } else {
                text += ", "
            }
            
        }
        return text
    }
    
    
}
