//
//  DifferentStrings.swift
//  AlgorithmTraining
//
//  Created by e.pospelova on 06.03.2025.
//

import Foundation

struct DifferentStrings {
    func isDifferent(firstStr: String, secondStr: String) -> Bool {
        let first: [Character] = firstStr.map { $0 }
        let second: [Character] = secondStr.map { $0 }
        

        if max(first.count, second.count) - min(first.count, second.count) > 1 {
            return false
        }

        if first.count == second.count {
            return checkIfSameLength(first: first, second: second)
        } else if first.count > second.count {
            return checkIfFirstLonger(longest: first, second: second)
        } else {
            return checkIfFirstLonger(longest: second, second: first)
        }
    }

    private func checkIfFirstLonger(longest: [Character], second: [Character]) -> Bool {
        var firstPointer = 0
        var secondPointer = 0
        var errorsCount = 0

        while true {
            if firstPointer == longest.count - 1 {
                break
            }
            
            if longest[firstPointer] == second[secondPointer] {
                firstPointer += 1
                secondPointer += 1
            } else {
                firstPointer += 1
                errorsCount += 1
                
                if errorsCount > 1 {
                    break
                }
            }
        }

        return errorsCount < 2
    }

    private func checkIfSameLength(first: [Character], second: [Character]) -> Bool {
        var firstPointer = 0
        var secondPointer = 0
        var errorsCount = 0
        
        while true {
            if firstPointer == first.count - 1 {
                break
            }
            if first[firstPointer] == second[secondPointer] {
                firstPointer += 1
                secondPointer += 1
            } else {
                firstPointer += 1
                secondPointer += 1
                errorsCount += 1
                
                if errorsCount > 1 {
                    break
                }
            }
        }
        
        return errorsCount < 2
    }
}
