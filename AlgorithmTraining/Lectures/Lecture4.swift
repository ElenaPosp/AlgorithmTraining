//
//  Lecture4.swift
//  AlgorithmTraining
//
//  Created by Elena Pospelova on 23.07.2022.
//

import Foundation

final class Lecture4 {}

extension Lecture4 {
    func taskE() {
        let count = Int(readLine()!)!
        if count == 0 {
            print(0)
            exit(0)
        }
        var pairs: [Int: Int] = [:]
        for _ in 1...count {
            let pair = readLine()!.components(separatedBy: " ")
            let width = Int(pair.first!)!
            let height = Int(pair.last!)!
            let existingH = pairs[width] ?? 0
            if height > existingH {
                pairs[width] = height
            }
        }
        let sum = pairs.reduce(0) { partialResult, pair in
            return partialResult + pair.value
        }
        print(sum)
    }
}


extension Lecture4 {
    func task2() {
        var commonStr: [String] = []
        var str = readLine()!
        repeat {
            commonStr.append(str)
            str = readLine()!
        } while (!str.isEmpty)

        let strArr: [String] = commonStr.reduce([], { partialResult, arr in
            let newArr = arr.components(separatedBy: " ")
            return partialResult + newArr
        })
        var dict: [String: Int] = [:]
        strArr.forEach { item in
            let count = dict[item] ?? 0
            dict[item] = count + 1
        }
        var maxWords: [String] = []
        var maxCount = 0
        dict.forEach { key, value in
            if value > maxCount {
                maxCount = value
                maxWords = [key]
            } else if value == maxCount {
                maxWords.append(key)
            }
        }

        print(maxWords.sorted().first ?? "")
    }
}

extension Lecture4 {
    func task1() {
        let count = Int(readLine()!)!
        if count < 1 {
            print("")
            exit(0)
        }
        var leftDict: [String: String] = [:]
        var rightDict: [String: String] = [:]
        
        for _ in 1...count {
            let pair = readLine()!.components(separatedBy: " ")
            let firstWord = pair.first!
            let secWord = pair.last!
            leftDict[firstWord] = secWord
            rightDict[secWord] = firstWord
        }
        let target = readLine()!
        print(leftDict[target] ?? rightDict[target] ?? "")
    }
}



