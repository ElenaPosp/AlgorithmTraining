//
//  Lecture1.swift
//  AlgorithmTraining
//
//  Created by Elena Pospelova on 20.07.2022.
//

/// contest: https://contest.yandex.ru/contest/27393/problems/
///

import Foundation

final class Lecture1 {}

extension Lecture1 {
    func task2() {
        print("Задача: Треугольник")
        let response1 = readLine()!
        let response2 = readLine()!
        let response3 = readLine()!
        
        let side1 = Int(response1)!
        let side2 = Int(response2)!
        let side3 = Int(response3)!

        
        let arr = [side1, side2, side3].sorted { $0 < $1 }
        if arr.contains(where: { $0 == 0 }) {
            print("NO")
        }
        if arr[0] + arr[1] > arr[2] {
            print("YES")
        } else {
            print("NO")
        }
    }
}

extension Lecture1 {
    func task1() {
        print("Задача: Кондиционер")
        
        enum Mode: String {
            case freeze
            case heat
            case auto
            case fan
        }
        let response1 = readLine()!
        let response2 = readLine()!
        let roomT = Int(response1.components(separatedBy: " ").first!)!
        let condT = Int(response1.components(separatedBy: " ").last!)!

        let mode = Mode(rawValue: response2)!
        
        switch mode {
        case .freeze:
            print(min(roomT,condT))

        case .heat:
            print(max(roomT,condT))

        case .auto:
            print(condT)

        case .fan:
            print(roomT)
        }
    }

}
