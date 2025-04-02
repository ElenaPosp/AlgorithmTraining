//
//  LinkedList.swift
//  AlgorithmTraining
//
//  Created by e.pospelova on 07.03.2025.
//

import Foundation

func reverseLinkedList(head: ListNode<Int>?) -> ListNode<Int>? {
    var current = head // 1
    var prev: ListNode<Int>?  = nil //2
    var next: ListNode<Int>?  = nil
    
    while current != nil {
        next = current?.next
        
        current?.next = prev
        
        prev = current
        
        current = next
    }
    
    return prev
}


func printLList(head: ListNode<Int>?) {
    var current = head
    print("---")
    while current != nil {
        
        print("\(current?.value ?? -1) next: \(current?.next?.value ?? -1)")
        current = current?.next
    }
}
