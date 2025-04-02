//
//  MajorityElement.swift
//  AlgorithmTraining
//
//  Created by e.pospelova on 02.04.2025.
//

import Foundation
//169. Majority Element
class MajorityElementSolution {
    func majorityElement(_ nums: [Int]) -> Int { //[3,2,3]
        if nums.count < 3 {
            return nums.first ?? 0
        }
        var dict: [Int: Int] = [:] // [[3:2],[2:1]]
        for i in 0...nums.count-1 {
            dict[nums[i]] = (dict[nums[i]] ?? 0) + 1
            
            
        }

        var max = dict.first //[3:2]
        dict.forEach { item in
            if let localMax = max, localMax.1 < item.1 {
                max = item
            }
        }

        return max!.key
    }
}
