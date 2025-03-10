//
//  ReversedString.swift
//  AlgorithmTraining
//
//  Created by e.pospelova on 06.03.2025.
//

import Foundation

struct ReversedString {
    func invoke(_ arr: inout [String]) {
        var rightPointer: Int = 0
        var leftPointer: Int = arr.count-1
        
        while rightPointer < leftPointer {
            let rightValue = arr[rightPointer]
            arr[rightPointer] = arr[leftPointer]
            arr[leftPointer] = rightValue
            rightPointer += 1
            leftPointer -= 1
        }
    }
}
