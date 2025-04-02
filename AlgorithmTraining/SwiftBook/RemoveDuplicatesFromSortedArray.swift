//
//  RemoveDuplicatesFromSortedArray.swift
//  AlgorithmTraining
//
//  Created by e.pospelova on 02.04.2025.
//

import Foundation
//80. Remove Duplicates from Sorted Array II

class MySolution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        if nums.count < 3 { return nums.count }
        var currentValue = nums.first
        var repeatCount = 0


        for i in 1...nums.count-1 {
            if currentValue == nums[i] && repeatCount > 0 {
                nums[i] = -1103
                
            } else if currentValue == nums[i] {
                repeatCount += 1
            } else {

            currentValue = nums[i]
            repeatCount = 0
            }
        }

        guard var emptyIndex = nums.firstIndex(of: -1103) else {
            return nums.count
        }
        var currentIndex = emptyIndex
        while currentIndex < nums.count {
            if nums[currentIndex] == -1103 {
                currentIndex+=1
            } else {
                nums[emptyIndex] = nums[currentIndex]
                currentIndex+=1
                emptyIndex+=1
            }
        }
        return emptyIndex
    }
}
