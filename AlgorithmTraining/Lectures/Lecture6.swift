//
//  Lecture6.swift
//  AlgorithmTraining
//
//  Created by Elena Pospelova on 24.07.2022.
//

import Foundation

final class Lecture6 {}

extension Lecture6 {
    func taskA() {
        let counts = readLine()!.components(separatedBy: " ")
        let countN = Int(counts.first!)!
        let countK = Int(counts.last!)!
        guard countN > 0, countK > 0 else { exit(0) }
        var nArr: [Int] = readLine()!.components(separatedBy: " ").compactMap { Int($0) }
        let kArr: [Int] = readLine()!.components(separatedBy: " ").compactMap { Int($0) }
        nArr.sort()
        kArr.forEach { k in
            let res = find(k, in: nArr)
            print(res ? "YES" : "NO")
        }
    }

    func find(_ k: Int, in arr: [Int]) -> Bool {
        var l = 0
        var r = arr.count
        while l < r {
            let m = (l + r) / 2
            if arr[m] == k {
                return true
            } else if arr[m] > k {
                r = m
            } else {
                l = m + 1
            }
        }
        return false
    }

    func findW(_ k: Int, in arr: [Int]) -> Bool {
        if arr.count < 2 {
            if arr.first == k {
                return true
            } else {
                return false
            }
        } else {
            let center: Int = arr.count/2
            if arr[center] == k {
                return true
            } else if arr[center] > k {
                let newArr = Array(arr[0...center-1])
                return find(k, in: newArr)
            } else {
                let newArr = Array(arr[center...arr.count-1])
                return find(k, in: newArr)
            }
        }
    }
}
