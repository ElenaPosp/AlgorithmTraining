//
//  Lecture3.swift
//  AlgorithmTraining
//
//  Created by Elena Pospelova on 22.07.2022.
//

/// https://contest.yandex.ru/contest/27663/problems/
///

import Foundation

final class Lecture3 {}

extension Lecture3 {
    func task2() {
        let input1 = readLine()
        let input2 = readLine()

        let arr1: [Int] = input1!.components(separatedBy: " ").compactMap { return Int($0) }
        let arr2: [Int] = input2!.components(separatedBy: " ").compactMap { return Int($0) }

        let set1 = Set(arr1)
        let set2 = Set(arr2)

        let common = set1.intersection(set2)
        let sorted = Array(common).sorted().map { "\($0)"}
        
        print(sorted.joined(separator: " "))
    }
}

extension Lecture3 {
    func task1() {
        let input = readLine()
        let arr: [Int] = input!.components(separatedBy: " ").compactMap { return Int($0) }
        var table = Table()
        
        for i in 0...arr.count-1 {
            if table.values[arr[i]] != true {
                table.values[arr[i]] = true
            }
        }
        print(table.values.count)
    }
}

struct Table {
    var values: [Int: Bool] = [:]
}

