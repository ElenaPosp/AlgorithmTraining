//
//  Lecture2.swift
//  AlgorithmTraining
//
//  Created by Elena Pospelova on 20.07.2022.
//

/// contest: https://contest.yandex.ru/contest/27472/problems/
///

import Foundation

final class Lecture2 {}

extension Lecture2 {
    func task1() {
        let input = readLine()
        let arr: [Int] = input!.components(separatedBy: " ").compactMap { return Int($0) }
        if arr.count < 2 {
            print("YES")
            exit(0)
        }
        if !arr.contains(where: { element in
            arr[0] != element
        }) {
            print("NO")
            exit(0)
        }
        for i in 0...arr.count - 2 {
            if arr[i] > arr[i+1] {
                print("NO")
                exit(0)
            }
        }
        print("YES")
    }
}
