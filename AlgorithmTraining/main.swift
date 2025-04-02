//
//  main.swift
//  AlgorithmTraining
//
//  Created by Elena Pospelova on 19.07.2022.
//

import Foundation

var list = LinkedList<Int>()
list.append(value: 1)
list.append(value: 2)
list.append(value: 3)
list.append(value: 4)

print(list.description)
list.removeNode(nodeToRemove: list.first!.next!)
print(list.description)


