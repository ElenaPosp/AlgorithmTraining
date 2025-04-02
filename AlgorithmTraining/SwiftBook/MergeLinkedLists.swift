//
//  MergeLinkedLists.swift
//  AlgorithmTraining
//
//  Created by e.pospelova on 12.03.2025.
//

import Foundation

func mergeSortedLinkedLists(firstHead: ListNode<Int>?, secondHead: ListNode<Int>?) -> ListNode<Int>? {
    var firstListCurrentNode = firstHead
    var secondListCurrentNode = secondHead
    
    var result = ListNode(value: -1)
    var current: ListNode? = result
    
    while firstListCurrentNode != nil || secondListCurrentNode != nil {
        guard let firstListCurrentNodeValue = firstListCurrentNode?.value else {
            current?.next = secondListCurrentNode
            current = current?.next
            secondListCurrentNode = secondListCurrentNode?.next
            continue
        }
        guard let secondListCurrentNodeValue = secondListCurrentNode?.value else {
            current?.next = firstListCurrentNode
            current = current?.next

            firstListCurrentNode = firstListCurrentNode?.next
            continue
        }
        
        if firstListCurrentNodeValue < secondListCurrentNodeValue {
            current?.next = firstListCurrentNode
            current = current?.next

            firstListCurrentNode = firstListCurrentNode?.next
        } else {
            current?.next = secondListCurrentNode
            current = current?.next

            secondListCurrentNode = secondListCurrentNode?.next
        }
    }
    
    return result.next
}
